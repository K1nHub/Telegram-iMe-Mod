package com.google.firebase.firestore.local;

import com.google.firebase.Timestamp;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.model.ObjectValue;
import com.google.firebase.firestore.model.SnapshotVersion;
import com.google.firebase.firestore.model.mutation.MutationBatch;
import com.google.firebase.firestore.proto.MaybeDocument;
import com.google.firebase.firestore.proto.NoDocument;
import com.google.firebase.firestore.proto.Target;
import com.google.firebase.firestore.proto.UnknownDocument;
import com.google.firebase.firestore.proto.WriteBatch;
import com.google.firebase.firestore.remote.RemoteSerializer;
import com.google.firebase.firestore.util.Assert;
import com.google.firestore.p021v1.Document;
import com.google.firestore.p021v1.DocumentTransform;
import com.google.firestore.p021v1.Write;
import com.google.protobuf.ByteString;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public final class LocalSerializer {
    private final RemoteSerializer rpcSerializer;

    public LocalSerializer(RemoteSerializer remoteSerializer) {
        this.rpcSerializer = remoteSerializer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MaybeDocument encodeMaybeDocument(MutableDocument mutableDocument) {
        MaybeDocument.Builder newBuilder = MaybeDocument.newBuilder();
        if (mutableDocument.isNoDocument()) {
            newBuilder.setNoDocument(encodeNoDocument(mutableDocument));
        } else if (mutableDocument.isFoundDocument()) {
            newBuilder.setDocument(encodeDocument(mutableDocument));
        } else if (mutableDocument.isUnknownDocument()) {
            newBuilder.setUnknownDocument(encodeUnknownDocument(mutableDocument));
        } else {
            throw Assert.fail("Cannot encode invalid document %s", mutableDocument);
        }
        newBuilder.setHasCommittedMutations(mutableDocument.hasCommittedMutations());
        return newBuilder.build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MutableDocument decodeMaybeDocument(MaybeDocument maybeDocument) {
        int i = C10151.f252xe45654f0[maybeDocument.getDocumentTypeCase().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return decodeUnknownDocument(maybeDocument.getUnknownDocument());
                }
                throw Assert.fail("Unknown MaybeDocument %s", maybeDocument);
            }
            return decodeNoDocument(maybeDocument.getNoDocument(), maybeDocument.getHasCommittedMutations());
        }
        return decodeDocument(maybeDocument.getDocument(), maybeDocument.getHasCommittedMutations());
    }

    private Document encodeDocument(MutableDocument mutableDocument) {
        Document.Builder newBuilder = Document.newBuilder();
        newBuilder.setName(this.rpcSerializer.encodeKey(mutableDocument.getKey()));
        newBuilder.putAllFields(mutableDocument.getData().getFieldsMap());
        newBuilder.setUpdateTime(this.rpcSerializer.encodeTimestamp(mutableDocument.getVersion().getTimestamp()));
        return newBuilder.build();
    }

    private MutableDocument decodeDocument(Document document, boolean z) {
        MutableDocument newFoundDocument = MutableDocument.newFoundDocument(this.rpcSerializer.decodeKey(document.getName()), this.rpcSerializer.decodeVersion(document.getUpdateTime()), ObjectValue.fromMap(document.getFieldsMap()));
        return z ? newFoundDocument.setHasCommittedMutations() : newFoundDocument;
    }

    private NoDocument encodeNoDocument(MutableDocument mutableDocument) {
        NoDocument.Builder newBuilder = NoDocument.newBuilder();
        newBuilder.setName(this.rpcSerializer.encodeKey(mutableDocument.getKey()));
        newBuilder.setReadTime(this.rpcSerializer.encodeTimestamp(mutableDocument.getVersion().getTimestamp()));
        return newBuilder.build();
    }

    private MutableDocument decodeNoDocument(NoDocument noDocument, boolean z) {
        MutableDocument newNoDocument = MutableDocument.newNoDocument(this.rpcSerializer.decodeKey(noDocument.getName()), this.rpcSerializer.decodeVersion(noDocument.getReadTime()));
        return z ? newNoDocument.setHasCommittedMutations() : newNoDocument;
    }

    private UnknownDocument encodeUnknownDocument(MutableDocument mutableDocument) {
        UnknownDocument.Builder newBuilder = UnknownDocument.newBuilder();
        newBuilder.setName(this.rpcSerializer.encodeKey(mutableDocument.getKey()));
        newBuilder.setVersion(this.rpcSerializer.encodeTimestamp(mutableDocument.getVersion().getTimestamp()));
        return newBuilder.build();
    }

    private MutableDocument decodeUnknownDocument(UnknownDocument unknownDocument) {
        return MutableDocument.newUnknownDocument(this.rpcSerializer.decodeKey(unknownDocument.getName()), this.rpcSerializer.decodeVersion(unknownDocument.getVersion()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MutationBatch decodeMutationBatch(WriteBatch writeBatch) {
        int batchId = writeBatch.getBatchId();
        Timestamp decodeTimestamp = this.rpcSerializer.decodeTimestamp(writeBatch.getLocalWriteTime());
        int baseWritesCount = writeBatch.getBaseWritesCount();
        ArrayList arrayList = new ArrayList(baseWritesCount);
        for (int i = 0; i < baseWritesCount; i++) {
            arrayList.add(this.rpcSerializer.decodeMutation(writeBatch.getBaseWrites(i)));
        }
        ArrayList arrayList2 = new ArrayList(writeBatch.getWritesCount());
        int i2 = 0;
        while (i2 < writeBatch.getWritesCount()) {
            Write writes = writeBatch.getWrites(i2);
            int i3 = i2 + 1;
            if (i3 < writeBatch.getWritesCount() && writeBatch.getWrites(i3).hasTransform()) {
                Assert.hardAssert(writeBatch.getWrites(i2).hasUpdate(), "TransformMutation should be preceded by a patch or set mutation", new Object[0]);
                Write.Builder newBuilder = Write.newBuilder(writes);
                for (DocumentTransform.FieldTransform fieldTransform : writeBatch.getWrites(i3).getTransform().getFieldTransformsList()) {
                    newBuilder.addUpdateTransforms(fieldTransform);
                }
                arrayList2.add(this.rpcSerializer.decodeMutation(newBuilder.build()));
                i2 = i3;
            } else {
                arrayList2.add(this.rpcSerializer.decodeMutation(writes));
            }
            i2++;
        }
        return new MutationBatch(batchId, decodeTimestamp, arrayList, arrayList2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Target encodeTargetData(TargetData targetData) {
        QueryPurpose queryPurpose = QueryPurpose.LISTEN;
        Assert.hardAssert(queryPurpose.equals(targetData.getPurpose()), "Only queries with purpose %s may be stored, got %s", queryPurpose, targetData.getPurpose());
        Target.Builder newBuilder = Target.newBuilder();
        newBuilder.setTargetId(targetData.getTargetId()).setLastListenSequenceNumber(targetData.getSequenceNumber()).setLastLimboFreeSnapshotVersion(this.rpcSerializer.encodeVersion(targetData.getLastLimboFreeSnapshotVersion())).setSnapshotVersion(this.rpcSerializer.encodeVersion(targetData.getSnapshotVersion())).setResumeToken(targetData.getResumeToken());
        com.google.firebase.firestore.core.Target target = targetData.getTarget();
        if (target.isDocumentQuery()) {
            newBuilder.setDocuments(this.rpcSerializer.encodeDocumentsTarget(target));
        } else {
            newBuilder.setQuery(this.rpcSerializer.encodeQueryTarget(target));
        }
        return newBuilder.build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TargetData decodeTargetData(Target target) {
        com.google.firebase.firestore.core.Target decodeDocumentsTarget;
        int targetId = target.getTargetId();
        SnapshotVersion decodeVersion = this.rpcSerializer.decodeVersion(target.getSnapshotVersion());
        SnapshotVersion decodeVersion2 = this.rpcSerializer.decodeVersion(target.getLastLimboFreeSnapshotVersion());
        ByteString resumeToken = target.getResumeToken();
        long lastListenSequenceNumber = target.getLastListenSequenceNumber();
        int i = C10151.f253x5167ea64[target.getTargetTypeCase().ordinal()];
        if (i == 1) {
            decodeDocumentsTarget = this.rpcSerializer.decodeDocumentsTarget(target.getDocuments());
        } else if (i != 2) {
            throw Assert.fail("Unknown targetType %d", target.getTargetTypeCase());
        } else {
            decodeDocumentsTarget = this.rpcSerializer.decodeQueryTarget(target.getQuery());
        }
        return new TargetData(decodeDocumentsTarget, targetId, lastListenSequenceNumber, QueryPurpose.LISTEN, decodeVersion, decodeVersion2, resumeToken);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.firestore.local.LocalSerializer$1 */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C10151 {

        /* renamed from: $SwitchMap$com$google$firebase$firestore$proto$MaybeDocument$DocumentTypeCase */
        static final /* synthetic */ int[] f252xe45654f0;

        /* renamed from: $SwitchMap$com$google$firebase$firestore$proto$Target$TargetTypeCase */
        static final /* synthetic */ int[] f253x5167ea64;

        static {
            int[] iArr = new int[Target.TargetTypeCase.values().length];
            f253x5167ea64 = iArr;
            try {
                iArr[Target.TargetTypeCase.DOCUMENTS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f253x5167ea64[Target.TargetTypeCase.QUERY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[MaybeDocument.DocumentTypeCase.values().length];
            f252xe45654f0 = iArr2;
            try {
                iArr2[MaybeDocument.DocumentTypeCase.DOCUMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f252xe45654f0[MaybeDocument.DocumentTypeCase.NO_DOCUMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f252xe45654f0[MaybeDocument.DocumentTypeCase.UNKNOWN_DOCUMENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }
}
