package com.google.firebase.firestore.remote;

import com.google.firebase.firestore.core.FieldFilter;
import com.google.firebase.firestore.core.Filter;
import com.google.firebase.firestore.core.OrderBy;
import com.google.firebase.firestore.core.Query;
import com.google.firebase.firestore.local.QueryPurpose;
import com.google.firebase.firestore.local.TargetData;
import com.google.firebase.firestore.model.DatabaseId;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.model.FieldPath;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.model.ObjectValue;
import com.google.firebase.firestore.model.ResourcePath;
import com.google.firebase.firestore.model.SnapshotVersion;
import com.google.firebase.firestore.model.Values;
import com.google.firebase.firestore.model.mutation.ArrayTransformOperation;
import com.google.firebase.firestore.model.mutation.DeleteMutation;
import com.google.firebase.firestore.model.mutation.FieldMask;
import com.google.firebase.firestore.model.mutation.FieldTransform;
import com.google.firebase.firestore.model.mutation.Mutation;
import com.google.firebase.firestore.model.mutation.MutationResult;
import com.google.firebase.firestore.model.mutation.NumericIncrementTransformOperation;
import com.google.firebase.firestore.model.mutation.PatchMutation;
import com.google.firebase.firestore.model.mutation.Precondition;
import com.google.firebase.firestore.model.mutation.ServerTimestampOperation;
import com.google.firebase.firestore.model.mutation.SetMutation;
import com.google.firebase.firestore.model.mutation.TransformOperation;
import com.google.firebase.firestore.model.mutation.VerifyMutation;
import com.google.firebase.firestore.remote.WatchChange;
import com.google.firebase.firestore.util.Assert;
import com.google.firestore.p022v1.ArrayValue;
import com.google.firestore.p022v1.Cursor;
import com.google.firestore.p022v1.Document;
import com.google.firestore.p022v1.DocumentChange;
import com.google.firestore.p022v1.DocumentDelete;
import com.google.firestore.p022v1.DocumentMask;
import com.google.firestore.p022v1.DocumentRemove;
import com.google.firestore.p022v1.DocumentTransform;
import com.google.firestore.p022v1.ListenResponse;
import com.google.firestore.p022v1.Precondition;
import com.google.firestore.p022v1.StructuredQuery;
import com.google.firestore.p022v1.Target;
import com.google.firestore.p022v1.TargetChange;
import com.google.firestore.p022v1.Write;
import com.google.firestore.p022v1.WriteResult;
import com.google.protobuf.Int32Value;
import com.google.protobuf.Timestamp;
import io.grpc.Status;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public final class RemoteSerializer {
    private final DatabaseId databaseId;
    private final String databaseName;

    public RemoteSerializer(DatabaseId databaseId) {
        this.databaseId = databaseId;
        this.databaseName = encodedDatabaseId(databaseId).canonicalString();
    }

    public Timestamp encodeTimestamp(com.google.firebase.Timestamp timestamp) {
        Timestamp.Builder newBuilder = Timestamp.newBuilder();
        newBuilder.setSeconds(timestamp.getSeconds());
        newBuilder.setNanos(timestamp.getNanoseconds());
        return newBuilder.build();
    }

    public com.google.firebase.Timestamp decodeTimestamp(Timestamp timestamp) {
        return new com.google.firebase.Timestamp(timestamp.getSeconds(), timestamp.getNanos());
    }

    public Timestamp encodeVersion(SnapshotVersion snapshotVersion) {
        return encodeTimestamp(snapshotVersion.getTimestamp());
    }

    public SnapshotVersion decodeVersion(Timestamp timestamp) {
        if (timestamp.getSeconds() == 0 && timestamp.getNanos() == 0) {
            return SnapshotVersion.NONE;
        }
        return new SnapshotVersion(decodeTimestamp(timestamp));
    }

    public String encodeKey(DocumentKey documentKey) {
        return encodeResourceName(this.databaseId, documentKey.getPath());
    }

    public DocumentKey decodeKey(String str) {
        ResourcePath decodeResourceName = decodeResourceName(str);
        Assert.hardAssert(decodeResourceName.getSegment(1).equals(this.databaseId.getProjectId()), "Tried to deserialize key from different project.", new Object[0]);
        Assert.hardAssert(decodeResourceName.getSegment(3).equals(this.databaseId.getDatabaseId()), "Tried to deserialize key from different database.", new Object[0]);
        return DocumentKey.fromPath(extractLocalPathFromResourceName(decodeResourceName));
    }

    private String encodeQueryPath(ResourcePath resourcePath) {
        return encodeResourceName(this.databaseId, resourcePath);
    }

    private ResourcePath decodeQueryPath(String str) {
        ResourcePath decodeResourceName = decodeResourceName(str);
        if (decodeResourceName.length() == 4) {
            return ResourcePath.EMPTY;
        }
        return extractLocalPathFromResourceName(decodeResourceName);
    }

    private String encodeResourceName(DatabaseId databaseId, ResourcePath resourcePath) {
        return encodedDatabaseId(databaseId).append("documents").append(resourcePath).canonicalString();
    }

    private ResourcePath decodeResourceName(String str) {
        ResourcePath fromString = ResourcePath.fromString(str);
        Assert.hardAssert(isValidResourceName(fromString), "Tried to deserialize invalid key %s", fromString);
        return fromString;
    }

    private static ResourcePath encodedDatabaseId(DatabaseId databaseId) {
        return ResourcePath.fromSegments(Arrays.asList("projects", databaseId.getProjectId(), "databases", databaseId.getDatabaseId()));
    }

    private static ResourcePath extractLocalPathFromResourceName(ResourcePath resourcePath) {
        Assert.hardAssert(resourcePath.length() > 4 && resourcePath.getSegment(4).equals("documents"), "Tried to deserialize invalid key %s", resourcePath);
        return resourcePath.popFirst(5);
    }

    private static boolean isValidResourceName(ResourcePath resourcePath) {
        return resourcePath.length() >= 4 && resourcePath.getSegment(0).equals("projects") && resourcePath.getSegment(2).equals("databases");
    }

    public String databaseName() {
        return this.databaseName;
    }

    public Document encodeDocument(DocumentKey documentKey, ObjectValue objectValue) {
        Document.Builder newBuilder = Document.newBuilder();
        newBuilder.setName(encodeKey(documentKey));
        newBuilder.putAllFields(objectValue.getFieldsMap());
        return newBuilder.build();
    }

    public Write encodeMutation(Mutation mutation) {
        Write.Builder newBuilder = Write.newBuilder();
        if (mutation instanceof SetMutation) {
            newBuilder.setUpdate(encodeDocument(mutation.getKey(), ((SetMutation) mutation).getValue()));
        } else if (mutation instanceof PatchMutation) {
            PatchMutation patchMutation = (PatchMutation) mutation;
            newBuilder.setUpdate(encodeDocument(mutation.getKey(), patchMutation.getValue()));
            newBuilder.setUpdateMask(encodeDocumentMask(patchMutation.getMask()));
        } else if (mutation instanceof DeleteMutation) {
            newBuilder.setDelete(encodeKey(mutation.getKey()));
        } else if (!(mutation instanceof VerifyMutation)) {
            throw Assert.fail("unknown mutation type %s", mutation.getClass());
        } else {
            newBuilder.setVerify(encodeKey(mutation.getKey()));
        }
        for (FieldTransform fieldTransform : mutation.getFieldTransforms()) {
            newBuilder.addUpdateTransforms(encodeFieldTransform(fieldTransform));
        }
        if (!mutation.getPrecondition().isNone()) {
            newBuilder.setCurrentDocument(encodePrecondition(mutation.getPrecondition()));
        }
        return newBuilder.build();
    }

    public Mutation decodeMutation(Write write) {
        Precondition precondition;
        if (write.hasCurrentDocument()) {
            precondition = decodePrecondition(write.getCurrentDocument());
        } else {
            precondition = Precondition.NONE;
        }
        Precondition precondition2 = precondition;
        ArrayList arrayList = new ArrayList();
        for (DocumentTransform.FieldTransform fieldTransform : write.getUpdateTransformsList()) {
            arrayList.add(decodeFieldTransform(fieldTransform));
        }
        int i = C10231.$SwitchMap$com$google$firestore$v1$Write$OperationCase[write.getOperationCase().ordinal()];
        if (i == 1) {
            if (write.hasUpdateMask()) {
                return new PatchMutation(decodeKey(write.getUpdate().getName()), ObjectValue.fromMap(write.getUpdate().getFieldsMap()), decodeDocumentMask(write.getUpdateMask()), precondition2, arrayList);
            }
            return new SetMutation(decodeKey(write.getUpdate().getName()), ObjectValue.fromMap(write.getUpdate().getFieldsMap()), precondition2, arrayList);
        } else if (i != 2) {
            if (i == 3) {
                return new VerifyMutation(decodeKey(write.getVerify()), precondition2);
            }
            throw Assert.fail("Unknown mutation operation: %d", write.getOperationCase());
        } else {
            return new DeleteMutation(decodeKey(write.getDelete()), precondition2);
        }
    }

    private com.google.firestore.p022v1.Precondition encodePrecondition(Precondition precondition) {
        Assert.hardAssert(!precondition.isNone(), "Can't serialize an empty precondition", new Object[0]);
        Precondition.Builder newBuilder = com.google.firestore.p022v1.Precondition.newBuilder();
        if (precondition.getUpdateTime() != null) {
            return newBuilder.setUpdateTime(encodeVersion(precondition.getUpdateTime())).build();
        }
        if (precondition.getExists() != null) {
            return newBuilder.setExists(precondition.getExists().booleanValue()).build();
        }
        throw Assert.fail("Unknown Precondition", new Object[0]);
    }

    private com.google.firebase.firestore.model.mutation.Precondition decodePrecondition(com.google.firestore.p022v1.Precondition precondition) {
        int i = C10231.f189x8f18ca41[precondition.getConditionTypeCase().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return com.google.firebase.firestore.model.mutation.Precondition.NONE;
                }
                throw Assert.fail("Unknown precondition", new Object[0]);
            }
            return com.google.firebase.firestore.model.mutation.Precondition.exists(precondition.getExists());
        }
        return com.google.firebase.firestore.model.mutation.Precondition.updateTime(decodeVersion(precondition.getUpdateTime()));
    }

    private DocumentMask encodeDocumentMask(FieldMask fieldMask) {
        DocumentMask.Builder newBuilder = DocumentMask.newBuilder();
        for (FieldPath fieldPath : fieldMask.getMask()) {
            newBuilder.addFieldPaths(fieldPath.canonicalString());
        }
        return newBuilder.build();
    }

    private FieldMask decodeDocumentMask(DocumentMask documentMask) {
        int fieldPathsCount = documentMask.getFieldPathsCount();
        HashSet hashSet = new HashSet(fieldPathsCount);
        for (int i = 0; i < fieldPathsCount; i++) {
            hashSet.add(FieldPath.fromServerFormat(documentMask.getFieldPaths(i)));
        }
        return FieldMask.fromSet(hashSet);
    }

    private DocumentTransform.FieldTransform encodeFieldTransform(FieldTransform fieldTransform) {
        TransformOperation operation = fieldTransform.getOperation();
        if (operation instanceof ServerTimestampOperation) {
            return DocumentTransform.FieldTransform.newBuilder().setFieldPath(fieldTransform.getFieldPath().canonicalString()).setSetToServerValue(DocumentTransform.FieldTransform.ServerValue.REQUEST_TIME).build();
        }
        if (operation instanceof ArrayTransformOperation.Union) {
            return DocumentTransform.FieldTransform.newBuilder().setFieldPath(fieldTransform.getFieldPath().canonicalString()).setAppendMissingElements(ArrayValue.newBuilder().addAllValues(((ArrayTransformOperation.Union) operation).getElements())).build();
        }
        if (operation instanceof ArrayTransformOperation.Remove) {
            return DocumentTransform.FieldTransform.newBuilder().setFieldPath(fieldTransform.getFieldPath().canonicalString()).setRemoveAllFromArray(ArrayValue.newBuilder().addAllValues(((ArrayTransformOperation.Remove) operation).getElements())).build();
        }
        if (operation instanceof NumericIncrementTransformOperation) {
            return DocumentTransform.FieldTransform.newBuilder().setFieldPath(fieldTransform.getFieldPath().canonicalString()).setIncrement(((NumericIncrementTransformOperation) operation).getOperand()).build();
        }
        throw Assert.fail("Unknown transform: %s", operation);
    }

    private FieldTransform decodeFieldTransform(DocumentTransform.FieldTransform fieldTransform) {
        int i = C10231.f187xdd498c9f[fieldTransform.getTransformTypeCase().ordinal()];
        if (i == 1) {
            Assert.hardAssert(fieldTransform.getSetToServerValue() == DocumentTransform.FieldTransform.ServerValue.REQUEST_TIME, "Unknown transform setToServerValue: %s", fieldTransform.getSetToServerValue());
            return new FieldTransform(FieldPath.fromServerFormat(fieldTransform.getFieldPath()), ServerTimestampOperation.getInstance());
        } else if (i != 2) {
            if (i != 3) {
                if (i == 4) {
                    return new FieldTransform(FieldPath.fromServerFormat(fieldTransform.getFieldPath()), new NumericIncrementTransformOperation(fieldTransform.getIncrement()));
                }
                throw Assert.fail("Unknown FieldTransform proto: %s", fieldTransform);
            }
            return new FieldTransform(FieldPath.fromServerFormat(fieldTransform.getFieldPath()), new ArrayTransformOperation.Remove(fieldTransform.getRemoveAllFromArray().getValuesList()));
        } else {
            return new FieldTransform(FieldPath.fromServerFormat(fieldTransform.getFieldPath()), new ArrayTransformOperation.Union(fieldTransform.getAppendMissingElements().getValuesList()));
        }
    }

    public MutationResult decodeMutationResult(WriteResult writeResult, SnapshotVersion snapshotVersion) {
        SnapshotVersion decodeVersion = decodeVersion(writeResult.getUpdateTime());
        if (!SnapshotVersion.NONE.equals(decodeVersion)) {
            snapshotVersion = decodeVersion;
        }
        int transformResultsCount = writeResult.getTransformResultsCount();
        ArrayList arrayList = new ArrayList(transformResultsCount);
        for (int i = 0; i < transformResultsCount; i++) {
            arrayList.add(writeResult.getTransformResults(i));
        }
        return new MutationResult(snapshotVersion, arrayList);
    }

    public Map<String, String> encodeListenRequestLabels(TargetData targetData) {
        String encodeLabel = encodeLabel(targetData.getPurpose());
        if (encodeLabel == null) {
            return null;
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("goog-listen-tags", encodeLabel);
        return hashMap;
    }

    private String encodeLabel(QueryPurpose queryPurpose) {
        int i = C10231.$SwitchMap$com$google$firebase$firestore$local$QueryPurpose[queryPurpose.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return "limbo-document";
                }
                throw Assert.fail("Unrecognized query purpose: %s", queryPurpose);
            }
            return "existence-filter-mismatch";
        }
        return null;
    }

    public Target encodeTarget(TargetData targetData) {
        Target.Builder newBuilder = Target.newBuilder();
        com.google.firebase.firestore.core.Target target = targetData.getTarget();
        if (target.isDocumentQuery()) {
            newBuilder.setDocuments(encodeDocumentsTarget(target));
        } else {
            newBuilder.setQuery(encodeQueryTarget(target));
        }
        newBuilder.setTargetId(targetData.getTargetId());
        if (targetData.getResumeToken().isEmpty() && targetData.getSnapshotVersion().compareTo(SnapshotVersion.NONE) > 0) {
            newBuilder.setReadTime(encodeTimestamp(targetData.getSnapshotVersion().getTimestamp()));
        } else {
            newBuilder.setResumeToken(targetData.getResumeToken());
        }
        return newBuilder.build();
    }

    public Target.DocumentsTarget encodeDocumentsTarget(com.google.firebase.firestore.core.Target target) {
        Target.DocumentsTarget.Builder newBuilder = Target.DocumentsTarget.newBuilder();
        newBuilder.addDocuments(encodeQueryPath(target.getPath()));
        return newBuilder.build();
    }

    public com.google.firebase.firestore.core.Target decodeDocumentsTarget(Target.DocumentsTarget documentsTarget) {
        int documentsCount = documentsTarget.getDocumentsCount();
        Assert.hardAssert(documentsCount == 1, "DocumentsTarget contained other than 1 document %d", Integer.valueOf(documentsCount));
        return Query.atPath(decodeQueryPath(documentsTarget.getDocuments(0))).toTarget();
    }

    public Target.QueryTarget encodeQueryTarget(com.google.firebase.firestore.core.Target target) {
        Target.QueryTarget.Builder newBuilder = Target.QueryTarget.newBuilder();
        StructuredQuery.Builder newBuilder2 = StructuredQuery.newBuilder();
        ResourcePath path = target.getPath();
        if (target.getCollectionGroup() != null) {
            Assert.hardAssert(path.length() % 2 == 0, "Collection Group queries should be within a document path or root.", new Object[0]);
            newBuilder.setParent(encodeQueryPath(path));
            StructuredQuery.CollectionSelector.Builder newBuilder3 = StructuredQuery.CollectionSelector.newBuilder();
            newBuilder3.setCollectionId(target.getCollectionGroup());
            newBuilder3.setAllDescendants(true);
            newBuilder2.addFrom(newBuilder3);
        } else {
            Assert.hardAssert(path.length() % 2 != 0, "Document queries with filters are not supported.", new Object[0]);
            newBuilder.setParent(encodeQueryPath(path.popLast()));
            StructuredQuery.CollectionSelector.Builder newBuilder4 = StructuredQuery.CollectionSelector.newBuilder();
            newBuilder4.setCollectionId(path.getLastSegment());
            newBuilder2.addFrom(newBuilder4);
        }
        if (target.getFilters().size() > 0) {
            newBuilder2.setWhere(encodeFilters(target.getFilters()));
        }
        for (OrderBy orderBy : target.getOrderBy()) {
            newBuilder2.addOrderBy(encodeOrderBy(orderBy));
        }
        if (target.hasLimit()) {
            newBuilder2.setLimit(Int32Value.newBuilder().setValue((int) target.getLimit()));
        }
        if (target.getStartAt() != null) {
            Cursor.Builder newBuilder5 = Cursor.newBuilder();
            newBuilder5.addAllValues(target.getStartAt().getPosition());
            newBuilder5.setBefore(target.getStartAt().isInclusive());
            newBuilder2.setStartAt(newBuilder5);
        }
        if (target.getEndAt() != null) {
            Cursor.Builder newBuilder6 = Cursor.newBuilder();
            newBuilder6.addAllValues(target.getEndAt().getPosition());
            newBuilder6.setBefore(!target.getEndAt().isInclusive());
            newBuilder2.setEndAt(newBuilder6);
        }
        newBuilder.setStructuredQuery(newBuilder2);
        return newBuilder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.firebase.firestore.core.Target decodeQueryTarget(java.lang.String r14, com.google.firestore.p022v1.StructuredQuery r15) {
        /*
            r13 = this;
            com.google.firebase.firestore.model.ResourcePath r14 = r13.decodeQueryPath(r14)
            int r0 = r15.getFromCount()
            r1 = 0
            r2 = 0
            r3 = 1
            if (r0 <= 0) goto L34
            if (r0 != r3) goto L11
            r0 = r3
            goto L12
        L11:
            r0 = r2
        L12:
            java.lang.Object[] r4 = new java.lang.Object[r2]
            java.lang.String r5 = "StructuredQuery.from with more than one collection is not supported."
            com.google.firebase.firestore.util.Assert.hardAssert(r0, r5, r4)
            com.google.firestore.v1.StructuredQuery$CollectionSelector r0 = r15.getFrom(r2)
            boolean r4 = r0.getAllDescendants()
            if (r4 == 0) goto L2a
            java.lang.String r0 = r0.getCollectionId()
            r5 = r14
            r6 = r0
            goto L36
        L2a:
            java.lang.String r0 = r0.getCollectionId()
            com.google.firebase.firestore.model.BasePath r14 = r14.append(r0)
            com.google.firebase.firestore.model.ResourcePath r14 = (com.google.firebase.firestore.model.ResourcePath) r14
        L34:
            r5 = r14
            r6 = r1
        L36:
            boolean r14 = r15.hasWhere()
            if (r14 == 0) goto L45
            com.google.firestore.v1.StructuredQuery$Filter r14 = r15.getWhere()
            java.util.List r14 = r13.decodeFilters(r14)
            goto L49
        L45:
            java.util.List r14 = java.util.Collections.emptyList()
        L49:
            r7 = r14
            int r14 = r15.getOrderByCount()
            if (r14 <= 0) goto L67
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>(r14)
        L55:
            if (r2 >= r14) goto L65
            com.google.firestore.v1.StructuredQuery$Order r4 = r15.getOrderBy(r2)
            com.google.firebase.firestore.core.OrderBy r4 = r13.decodeOrderBy(r4)
            r0.add(r4)
            int r2 = r2 + 1
            goto L55
        L65:
            r8 = r0
            goto L6c
        L67:
            java.util.List r14 = java.util.Collections.emptyList()
            r8 = r14
        L6c:
            r9 = -1
            boolean r14 = r15.hasLimit()
            if (r14 == 0) goto L7d
            com.google.protobuf.Int32Value r14 = r15.getLimit()
            int r14 = r14.getValue()
            long r9 = (long) r14
        L7d:
            boolean r14 = r15.hasStartAt()
            if (r14 == 0) goto L9a
            com.google.firebase.firestore.core.Bound r14 = new com.google.firebase.firestore.core.Bound
            com.google.firestore.v1.Cursor r0 = r15.getStartAt()
            java.util.List r0 = r0.getValuesList()
            com.google.firestore.v1.Cursor r2 = r15.getStartAt()
            boolean r2 = r2.getBefore()
            r14.<init>(r0, r2)
            r11 = r14
            goto L9b
        L9a:
            r11 = r1
        L9b:
            boolean r14 = r15.hasEndAt()
            if (r14 == 0) goto Lb7
            com.google.firebase.firestore.core.Bound r1 = new com.google.firebase.firestore.core.Bound
            com.google.firestore.v1.Cursor r14 = r15.getEndAt()
            java.util.List r14 = r14.getValuesList()
            com.google.firestore.v1.Cursor r15 = r15.getEndAt()
            boolean r15 = r15.getBefore()
            r15 = r15 ^ r3
            r1.<init>(r14, r15)
        Lb7:
            r12 = r1
            com.google.firebase.firestore.core.Target r14 = new com.google.firebase.firestore.core.Target
            r4 = r14
            r4.<init>(r5, r6, r7, r8, r9, r11, r12)
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.firestore.remote.RemoteSerializer.decodeQueryTarget(java.lang.String, com.google.firestore.v1.StructuredQuery):com.google.firebase.firestore.core.Target");
    }

    public com.google.firebase.firestore.core.Target decodeQueryTarget(Target.QueryTarget queryTarget) {
        return decodeQueryTarget(queryTarget.getParent(), queryTarget.getStructuredQuery());
    }

    private StructuredQuery.Filter encodeFilters(List<Filter> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (Filter filter : list) {
            if (filter instanceof FieldFilter) {
                arrayList.add(encodeUnaryOrFieldFilter((FieldFilter) filter));
            }
        }
        if (list.size() == 1) {
            return (StructuredQuery.Filter) arrayList.get(0);
        }
        StructuredQuery.CompositeFilter.Builder newBuilder = StructuredQuery.CompositeFilter.newBuilder();
        newBuilder.setOp(StructuredQuery.CompositeFilter.Operator.AND);
        newBuilder.addAllFilters(arrayList);
        return StructuredQuery.Filter.newBuilder().setCompositeFilter(newBuilder).build();
    }

    private List<Filter> decodeFilters(StructuredQuery.Filter filter) {
        List<StructuredQuery.Filter> singletonList;
        if (filter.getFilterTypeCase() == StructuredQuery.Filter.FilterTypeCase.COMPOSITE_FILTER) {
            Assert.hardAssert(filter.getCompositeFilter().getOp() == StructuredQuery.CompositeFilter.Operator.AND, "Only AND-type composite filters are supported, got %d", filter.getCompositeFilter().getOp());
            singletonList = filter.getCompositeFilter().getFiltersList();
        } else {
            singletonList = Collections.singletonList(filter);
        }
        ArrayList arrayList = new ArrayList(singletonList.size());
        for (StructuredQuery.Filter filter2 : singletonList) {
            int i = C10231.f191x9d2ee979[filter2.getFilterTypeCase().ordinal()];
            if (i == 1) {
                throw Assert.fail("Nested composite filters are not supported.", new Object[0]);
            }
            if (i == 2) {
                arrayList.add(decodeFieldFilter(filter2.getFieldFilter()));
            } else if (i != 3) {
                throw Assert.fail("Unrecognized Filter.filterType %d", filter2.getFilterTypeCase());
            } else {
                arrayList.add(decodeUnaryFilter(filter2.getUnaryFilter()));
            }
        }
        return arrayList;
    }

    StructuredQuery.Filter encodeUnaryOrFieldFilter(FieldFilter fieldFilter) {
        StructuredQuery.UnaryFilter.Operator operator;
        StructuredQuery.UnaryFilter.Operator operator2;
        Filter.Operator operator3 = fieldFilter.getOperator();
        Filter.Operator operator4 = Filter.Operator.EQUAL;
        if (operator3 == operator4 || fieldFilter.getOperator() == Filter.Operator.NOT_EQUAL) {
            StructuredQuery.UnaryFilter.Builder newBuilder = StructuredQuery.UnaryFilter.newBuilder();
            newBuilder.setField(encodeFieldPath(fieldFilter.getField()));
            if (Values.isNanValue(fieldFilter.getValue())) {
                if (fieldFilter.getOperator() == operator4) {
                    operator2 = StructuredQuery.UnaryFilter.Operator.IS_NAN;
                } else {
                    operator2 = StructuredQuery.UnaryFilter.Operator.IS_NOT_NAN;
                }
                newBuilder.setOp(operator2);
                return StructuredQuery.Filter.newBuilder().setUnaryFilter(newBuilder).build();
            } else if (Values.isNullValue(fieldFilter.getValue())) {
                if (fieldFilter.getOperator() == operator4) {
                    operator = StructuredQuery.UnaryFilter.Operator.IS_NULL;
                } else {
                    operator = StructuredQuery.UnaryFilter.Operator.IS_NOT_NULL;
                }
                newBuilder.setOp(operator);
                return StructuredQuery.Filter.newBuilder().setUnaryFilter(newBuilder).build();
            }
        }
        StructuredQuery.FieldFilter.Builder newBuilder2 = StructuredQuery.FieldFilter.newBuilder();
        newBuilder2.setField(encodeFieldPath(fieldFilter.getField()));
        newBuilder2.setOp(encodeFieldFilterOperator(fieldFilter.getOperator()));
        newBuilder2.setValue(fieldFilter.getValue());
        return StructuredQuery.Filter.newBuilder().setFieldFilter(newBuilder2).build();
    }

    FieldFilter decodeFieldFilter(StructuredQuery.FieldFilter fieldFilter) {
        return FieldFilter.create(FieldPath.fromServerFormat(fieldFilter.getField().getFieldPath()), decodeFieldFilterOperator(fieldFilter.getOp()), fieldFilter.getValue());
    }

    private Filter decodeUnaryFilter(StructuredQuery.UnaryFilter unaryFilter) {
        FieldPath fromServerFormat = FieldPath.fromServerFormat(unaryFilter.getField().getFieldPath());
        int i = C10231.f192xf473b456[unaryFilter.getOp().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return FieldFilter.create(fromServerFormat, Filter.Operator.NOT_EQUAL, Values.NULL_VALUE);
                    }
                    throw Assert.fail("Unrecognized UnaryFilter.operator %d", unaryFilter.getOp());
                }
                return FieldFilter.create(fromServerFormat, Filter.Operator.NOT_EQUAL, Values.NAN_VALUE);
            }
            return FieldFilter.create(fromServerFormat, Filter.Operator.EQUAL, Values.NULL_VALUE);
        }
        return FieldFilter.create(fromServerFormat, Filter.Operator.EQUAL, Values.NAN_VALUE);
    }

    private StructuredQuery.FieldReference encodeFieldPath(FieldPath fieldPath) {
        return StructuredQuery.FieldReference.newBuilder().setFieldPath(fieldPath.canonicalString()).build();
    }

    private StructuredQuery.FieldFilter.Operator encodeFieldFilterOperator(Filter.Operator operator) {
        switch (C10231.$SwitchMap$com$google$firebase$firestore$core$Filter$Operator[operator.ordinal()]) {
            case 1:
                return StructuredQuery.FieldFilter.Operator.LESS_THAN;
            case 2:
                return StructuredQuery.FieldFilter.Operator.LESS_THAN_OR_EQUAL;
            case 3:
                return StructuredQuery.FieldFilter.Operator.EQUAL;
            case 4:
                return StructuredQuery.FieldFilter.Operator.NOT_EQUAL;
            case 5:
                return StructuredQuery.FieldFilter.Operator.GREATER_THAN;
            case 6:
                return StructuredQuery.FieldFilter.Operator.GREATER_THAN_OR_EQUAL;
            case 7:
                return StructuredQuery.FieldFilter.Operator.ARRAY_CONTAINS;
            case 8:
                return StructuredQuery.FieldFilter.Operator.IN;
            case 9:
                return StructuredQuery.FieldFilter.Operator.ARRAY_CONTAINS_ANY;
            case 10:
                return StructuredQuery.FieldFilter.Operator.NOT_IN;
            default:
                throw Assert.fail("Unknown operator %d", operator);
        }
    }

    private Filter.Operator decodeFieldFilterOperator(StructuredQuery.FieldFilter.Operator operator) {
        switch (C10231.f190xaf95d2b[operator.ordinal()]) {
            case 1:
                return Filter.Operator.LESS_THAN;
            case 2:
                return Filter.Operator.LESS_THAN_OR_EQUAL;
            case 3:
                return Filter.Operator.EQUAL;
            case 4:
                return Filter.Operator.NOT_EQUAL;
            case 5:
                return Filter.Operator.GREATER_THAN_OR_EQUAL;
            case 6:
                return Filter.Operator.GREATER_THAN;
            case 7:
                return Filter.Operator.ARRAY_CONTAINS;
            case 8:
                return Filter.Operator.IN;
            case 9:
                return Filter.Operator.ARRAY_CONTAINS_ANY;
            case 10:
                return Filter.Operator.NOT_IN;
            default:
                throw Assert.fail("Unhandled FieldFilter.operator %d", operator);
        }
    }

    private StructuredQuery.Order encodeOrderBy(OrderBy orderBy) {
        StructuredQuery.Order.Builder newBuilder = StructuredQuery.Order.newBuilder();
        if (orderBy.getDirection().equals(OrderBy.Direction.ASCENDING)) {
            newBuilder.setDirection(StructuredQuery.Direction.ASCENDING);
        } else {
            newBuilder.setDirection(StructuredQuery.Direction.DESCENDING);
        }
        newBuilder.setField(encodeFieldPath(orderBy.getField()));
        return newBuilder.build();
    }

    private OrderBy decodeOrderBy(StructuredQuery.Order order) {
        OrderBy.Direction direction;
        FieldPath fromServerFormat = FieldPath.fromServerFormat(order.getField().getFieldPath());
        int i = C10231.$SwitchMap$com$google$firestore$v1$StructuredQuery$Direction[order.getDirection().ordinal()];
        if (i == 1) {
            direction = OrderBy.Direction.ASCENDING;
        } else if (i != 2) {
            throw Assert.fail("Unrecognized direction %d", order.getDirection());
        } else {
            direction = OrderBy.Direction.DESCENDING;
        }
        return OrderBy.getInstance(direction, fromServerFormat);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.firestore.remote.RemoteSerializer$1 */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C10231 {
        static final /* synthetic */ int[] $SwitchMap$com$google$firebase$firestore$core$Filter$Operator;
        static final /* synthetic */ int[] $SwitchMap$com$google$firebase$firestore$local$QueryPurpose;

        /* renamed from: $SwitchMap$com$google$firestore$v1$DocumentTransform$FieldTransform$TransformTypeCase */
        static final /* synthetic */ int[] f187xdd498c9f;

        /* renamed from: $SwitchMap$com$google$firestore$v1$ListenResponse$ResponseTypeCase */
        static final /* synthetic */ int[] f188x1837d9f;

        /* renamed from: $SwitchMap$com$google$firestore$v1$Precondition$ConditionTypeCase */
        static final /* synthetic */ int[] f189x8f18ca41;
        static final /* synthetic */ int[] $SwitchMap$com$google$firestore$v1$StructuredQuery$Direction;

        /* renamed from: $SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator */
        static final /* synthetic */ int[] f190xaf95d2b;

        /* renamed from: $SwitchMap$com$google$firestore$v1$StructuredQuery$Filter$FilterTypeCase */
        static final /* synthetic */ int[] f191x9d2ee979;

        /* renamed from: $SwitchMap$com$google$firestore$v1$StructuredQuery$UnaryFilter$Operator */
        static final /* synthetic */ int[] f192xf473b456;
        static final /* synthetic */ int[] $SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType;
        static final /* synthetic */ int[] $SwitchMap$com$google$firestore$v1$Write$OperationCase;

        static {
            int[] iArr = new int[ListenResponse.ResponseTypeCase.values().length];
            f188x1837d9f = iArr;
            try {
                iArr[ListenResponse.ResponseTypeCase.TARGET_CHANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f188x1837d9f[ListenResponse.ResponseTypeCase.DOCUMENT_CHANGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f188x1837d9f[ListenResponse.ResponseTypeCase.DOCUMENT_DELETE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f188x1837d9f[ListenResponse.ResponseTypeCase.DOCUMENT_REMOVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f188x1837d9f[ListenResponse.ResponseTypeCase.FILTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f188x1837d9f[ListenResponse.ResponseTypeCase.RESPONSETYPE_NOT_SET.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[TargetChange.TargetChangeType.values().length];
            $SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType = iArr2;
            try {
                iArr2[TargetChange.TargetChangeType.NO_CHANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType[TargetChange.TargetChangeType.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType[TargetChange.TargetChangeType.REMOVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType[TargetChange.TargetChangeType.CURRENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType[TargetChange.TargetChangeType.RESET.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType[TargetChange.TargetChangeType.UNRECOGNIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            int[] iArr3 = new int[StructuredQuery.Direction.values().length];
            $SwitchMap$com$google$firestore$v1$StructuredQuery$Direction = iArr3;
            try {
                iArr3[StructuredQuery.Direction.ASCENDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$firestore$v1$StructuredQuery$Direction[StructuredQuery.Direction.DESCENDING.ordinal()] = 2;
            } catch (NoSuchFieldError unused14) {
            }
            int[] iArr4 = new int[StructuredQuery.FieldFilter.Operator.values().length];
            f190xaf95d2b = iArr4;
            try {
                iArr4[StructuredQuery.FieldFilter.Operator.LESS_THAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f190xaf95d2b[StructuredQuery.FieldFilter.Operator.LESS_THAN_OR_EQUAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f190xaf95d2b[StructuredQuery.FieldFilter.Operator.EQUAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f190xaf95d2b[StructuredQuery.FieldFilter.Operator.NOT_EQUAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f190xaf95d2b[StructuredQuery.FieldFilter.Operator.GREATER_THAN_OR_EQUAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f190xaf95d2b[StructuredQuery.FieldFilter.Operator.GREATER_THAN.ordinal()] = 6;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f190xaf95d2b[StructuredQuery.FieldFilter.Operator.ARRAY_CONTAINS.ordinal()] = 7;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f190xaf95d2b[StructuredQuery.FieldFilter.Operator.IN.ordinal()] = 8;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f190xaf95d2b[StructuredQuery.FieldFilter.Operator.ARRAY_CONTAINS_ANY.ordinal()] = 9;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f190xaf95d2b[StructuredQuery.FieldFilter.Operator.NOT_IN.ordinal()] = 10;
            } catch (NoSuchFieldError unused24) {
            }
            int[] iArr5 = new int[Filter.Operator.values().length];
            $SwitchMap$com$google$firebase$firestore$core$Filter$Operator = iArr5;
            try {
                iArr5[Filter.Operator.LESS_THAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$google$firebase$firestore$core$Filter$Operator[Filter.Operator.LESS_THAN_OR_EQUAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$google$firebase$firestore$core$Filter$Operator[Filter.Operator.EQUAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$google$firebase$firestore$core$Filter$Operator[Filter.Operator.NOT_EQUAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$google$firebase$firestore$core$Filter$Operator[Filter.Operator.GREATER_THAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$google$firebase$firestore$core$Filter$Operator[Filter.Operator.GREATER_THAN_OR_EQUAL.ordinal()] = 6;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$google$firebase$firestore$core$Filter$Operator[Filter.Operator.ARRAY_CONTAINS.ordinal()] = 7;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$google$firebase$firestore$core$Filter$Operator[Filter.Operator.IN.ordinal()] = 8;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$google$firebase$firestore$core$Filter$Operator[Filter.Operator.ARRAY_CONTAINS_ANY.ordinal()] = 9;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$com$google$firebase$firestore$core$Filter$Operator[Filter.Operator.NOT_IN.ordinal()] = 10;
            } catch (NoSuchFieldError unused34) {
            }
            int[] iArr6 = new int[StructuredQuery.UnaryFilter.Operator.values().length];
            f192xf473b456 = iArr6;
            try {
                iArr6[StructuredQuery.UnaryFilter.Operator.IS_NAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                f192xf473b456[StructuredQuery.UnaryFilter.Operator.IS_NULL.ordinal()] = 2;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                f192xf473b456[StructuredQuery.UnaryFilter.Operator.IS_NOT_NAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                f192xf473b456[StructuredQuery.UnaryFilter.Operator.IS_NOT_NULL.ordinal()] = 4;
            } catch (NoSuchFieldError unused38) {
            }
            int[] iArr7 = new int[StructuredQuery.Filter.FilterTypeCase.values().length];
            f191x9d2ee979 = iArr7;
            try {
                iArr7[StructuredQuery.Filter.FilterTypeCase.COMPOSITE_FILTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                f191x9d2ee979[StructuredQuery.Filter.FilterTypeCase.FIELD_FILTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                f191x9d2ee979[StructuredQuery.Filter.FilterTypeCase.UNARY_FILTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused41) {
            }
            int[] iArr8 = new int[QueryPurpose.values().length];
            $SwitchMap$com$google$firebase$firestore$local$QueryPurpose = iArr8;
            try {
                iArr8[QueryPurpose.LISTEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                $SwitchMap$com$google$firebase$firestore$local$QueryPurpose[QueryPurpose.EXISTENCE_FILTER_MISMATCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                $SwitchMap$com$google$firebase$firestore$local$QueryPurpose[QueryPurpose.LIMBO_RESOLUTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused44) {
            }
            int[] iArr9 = new int[DocumentTransform.FieldTransform.TransformTypeCase.values().length];
            f187xdd498c9f = iArr9;
            try {
                iArr9[DocumentTransform.FieldTransform.TransformTypeCase.SET_TO_SERVER_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                f187xdd498c9f[DocumentTransform.FieldTransform.TransformTypeCase.APPEND_MISSING_ELEMENTS.ordinal()] = 2;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                f187xdd498c9f[DocumentTransform.FieldTransform.TransformTypeCase.REMOVE_ALL_FROM_ARRAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                f187xdd498c9f[DocumentTransform.FieldTransform.TransformTypeCase.INCREMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused48) {
            }
            int[] iArr10 = new int[Precondition.ConditionTypeCase.values().length];
            f189x8f18ca41 = iArr10;
            try {
                iArr10[Precondition.ConditionTypeCase.UPDATE_TIME.ordinal()] = 1;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                f189x8f18ca41[Precondition.ConditionTypeCase.EXISTS.ordinal()] = 2;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                f189x8f18ca41[Precondition.ConditionTypeCase.CONDITIONTYPE_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused51) {
            }
            int[] iArr11 = new int[Write.OperationCase.values().length];
            $SwitchMap$com$google$firestore$v1$Write$OperationCase = iArr11;
            try {
                iArr11[Write.OperationCase.UPDATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                $SwitchMap$com$google$firestore$v1$Write$OperationCase[Write.OperationCase.DELETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                $SwitchMap$com$google$firestore$v1$Write$OperationCase[Write.OperationCase.VERIFY.ordinal()] = 3;
            } catch (NoSuchFieldError unused54) {
            }
        }
    }

    public WatchChange decodeWatchChange(ListenResponse listenResponse) {
        WatchChange.WatchTargetChangeType watchTargetChangeType;
        WatchChange watchTargetChange;
        int i = C10231.f188x1837d9f[listenResponse.getResponseTypeCase().ordinal()];
        Status status = null;
        if (i == 1) {
            com.google.firestore.p022v1.TargetChange targetChange = listenResponse.getTargetChange();
            int i2 = C10231.$SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType[targetChange.getTargetChangeType().ordinal()];
            if (i2 == 1) {
                watchTargetChangeType = WatchChange.WatchTargetChangeType.NoChange;
            } else if (i2 == 2) {
                watchTargetChangeType = WatchChange.WatchTargetChangeType.Added;
            } else if (i2 == 3) {
                watchTargetChangeType = WatchChange.WatchTargetChangeType.Removed;
                status = fromStatus(targetChange.getCause());
            } else if (i2 == 4) {
                watchTargetChangeType = WatchChange.WatchTargetChangeType.Current;
            } else if (i2 == 5) {
                watchTargetChangeType = WatchChange.WatchTargetChangeType.Reset;
            } else {
                throw new IllegalArgumentException("Unknown target change type");
            }
            watchTargetChange = new WatchChange.WatchTargetChange(watchTargetChangeType, targetChange.getTargetIdsList(), targetChange.getResumeToken(), status);
        } else if (i == 2) {
            DocumentChange documentChange = listenResponse.getDocumentChange();
            List<Integer> targetIdsList = documentChange.getTargetIdsList();
            List<Integer> removedTargetIdsList = documentChange.getRemovedTargetIdsList();
            DocumentKey decodeKey = decodeKey(documentChange.getDocument().getName());
            SnapshotVersion decodeVersion = decodeVersion(documentChange.getDocument().getUpdateTime());
            Assert.hardAssert(!decodeVersion.equals(SnapshotVersion.NONE), "Got a document change without an update time", new Object[0]);
            MutableDocument newFoundDocument = MutableDocument.newFoundDocument(decodeKey, decodeVersion, ObjectValue.fromMap(documentChange.getDocument().getFieldsMap()));
            watchTargetChange = new WatchChange.DocumentChange(targetIdsList, removedTargetIdsList, newFoundDocument.getKey(), newFoundDocument);
        } else if (i == 3) {
            DocumentDelete documentDelete = listenResponse.getDocumentDelete();
            List<Integer> removedTargetIdsList2 = documentDelete.getRemovedTargetIdsList();
            MutableDocument newNoDocument = MutableDocument.newNoDocument(decodeKey(documentDelete.getDocument()), decodeVersion(documentDelete.getReadTime()));
            return new WatchChange.DocumentChange(Collections.emptyList(), removedTargetIdsList2, newNoDocument.getKey(), newNoDocument);
        } else if (i != 4) {
            if (i == 5) {
                com.google.firestore.p022v1.ExistenceFilter filter = listenResponse.getFilter();
                return new WatchChange.ExistenceFilterWatchChange(filter.getTargetId(), new ExistenceFilter(filter.getCount()));
            }
            throw new IllegalArgumentException("Unknown change type set");
        } else {
            DocumentRemove documentRemove = listenResponse.getDocumentRemove();
            watchTargetChange = new WatchChange.DocumentChange(Collections.emptyList(), documentRemove.getRemovedTargetIdsList(), decodeKey(documentRemove.getDocument()), null);
        }
        return watchTargetChange;
    }

    public SnapshotVersion decodeVersionFromListenResponse(ListenResponse listenResponse) {
        if (listenResponse.getResponseTypeCase() != ListenResponse.ResponseTypeCase.TARGET_CHANGE) {
            return SnapshotVersion.NONE;
        }
        if (listenResponse.getTargetChange().getTargetIdsCount() != 0) {
            return SnapshotVersion.NONE;
        }
        return decodeVersion(listenResponse.getTargetChange().getReadTime());
    }

    private Status fromStatus(com.google.rpc.Status status) {
        return Status.fromCodeValue(status.getCode()).withDescription(status.getMessage());
    }
}
