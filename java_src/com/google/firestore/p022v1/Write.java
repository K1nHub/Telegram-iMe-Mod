package com.google.firestore.p022v1;

import com.google.firestore.p022v1.DocumentTransform;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import java.util.List;
/* renamed from: com.google.firestore.v1.Write */
/* loaded from: classes3.dex */
public final class Write extends GeneratedMessageLite<Write, Builder> implements MessageLiteOrBuilder {
    public static final int CURRENT_DOCUMENT_FIELD_NUMBER = 4;
    private static final Write DEFAULT_INSTANCE;
    public static final int DELETE_FIELD_NUMBER = 2;
    private static volatile Parser<Write> PARSER = null;
    public static final int TRANSFORM_FIELD_NUMBER = 6;
    public static final int UPDATE_FIELD_NUMBER = 1;
    public static final int UPDATE_MASK_FIELD_NUMBER = 3;
    public static final int UPDATE_TRANSFORMS_FIELD_NUMBER = 7;
    public static final int VERIFY_FIELD_NUMBER = 5;
    private Precondition currentDocument_;
    private Object operation_;
    private DocumentMask updateMask_;
    private int operationCase_ = 0;
    private Internal.ProtobufList<DocumentTransform.FieldTransform> updateTransforms_ = GeneratedMessageLite.emptyProtobufList();

    private Write() {
    }

    /* renamed from: com.google.firestore.v1.Write$OperationCase */
    /* loaded from: classes3.dex */
    public enum OperationCase {
        UPDATE(1),
        DELETE(2),
        VERIFY(5),
        TRANSFORM(6),
        OPERATION_NOT_SET(0);
        
        private final int value;

        OperationCase(int i) {
            this.value = i;
        }

        @Deprecated
        public static OperationCase valueOf(int i) {
            return forNumber(i);
        }

        public static OperationCase forNumber(int i) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 5) {
                            if (i != 6) {
                                return null;
                            }
                            return TRANSFORM;
                        }
                        return VERIFY;
                    }
                    return DELETE;
                }
                return UPDATE;
            }
            return OPERATION_NOT_SET;
        }

        public int getNumber() {
            return this.value;
        }
    }

    public OperationCase getOperationCase() {
        return OperationCase.forNumber(this.operationCase_);
    }

    public boolean hasUpdate() {
        return this.operationCase_ == 1;
    }

    public Document getUpdate() {
        if (this.operationCase_ == 1) {
            return (Document) this.operation_;
        }
        return Document.getDefaultInstance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUpdate(Document document) {
        document.getClass();
        this.operation_ = document;
        this.operationCase_ = 1;
    }

    public String getDelete() {
        return this.operationCase_ == 2 ? (String) this.operation_ : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDelete(String str) {
        str.getClass();
        this.operationCase_ = 2;
        this.operation_ = str;
    }

    public String getVerify() {
        return this.operationCase_ == 5 ? (String) this.operation_ : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVerify(String str) {
        str.getClass();
        this.operationCase_ = 5;
        this.operation_ = str;
    }

    public boolean hasTransform() {
        return this.operationCase_ == 6;
    }

    public DocumentTransform getTransform() {
        if (this.operationCase_ == 6) {
            return (DocumentTransform) this.operation_;
        }
        return DocumentTransform.getDefaultInstance();
    }

    public boolean hasUpdateMask() {
        return this.updateMask_ != null;
    }

    public DocumentMask getUpdateMask() {
        DocumentMask documentMask = this.updateMask_;
        return documentMask == null ? DocumentMask.getDefaultInstance() : documentMask;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUpdateMask(DocumentMask documentMask) {
        documentMask.getClass();
        this.updateMask_ = documentMask;
    }

    public List<DocumentTransform.FieldTransform> getUpdateTransformsList() {
        return this.updateTransforms_;
    }

    private void ensureUpdateTransformsIsMutable() {
        Internal.ProtobufList<DocumentTransform.FieldTransform> protobufList = this.updateTransforms_;
        if (protobufList.isModifiable()) {
            return;
        }
        this.updateTransforms_ = GeneratedMessageLite.mutableCopy(protobufList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addUpdateTransforms(DocumentTransform.FieldTransform fieldTransform) {
        fieldTransform.getClass();
        ensureUpdateTransformsIsMutable();
        this.updateTransforms_.add(fieldTransform);
    }

    public boolean hasCurrentDocument() {
        return this.currentDocument_ != null;
    }

    public Precondition getCurrentDocument() {
        Precondition precondition = this.currentDocument_;
        return precondition == null ? Precondition.getDefaultInstance() : precondition;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentDocument(Precondition precondition) {
        precondition.getClass();
        this.currentDocument_ = precondition;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static Builder newBuilder(Write write) {
        return DEFAULT_INSTANCE.createBuilder(write);
    }

    /* renamed from: com.google.firestore.v1.Write$Builder */
    /* loaded from: classes3.dex */
    public static final class Builder extends GeneratedMessageLite.Builder<Write, Builder> implements MessageLiteOrBuilder {
        /* synthetic */ Builder(C10771 c10771) {
            this();
        }

        private Builder() {
            super(Write.DEFAULT_INSTANCE);
        }

        public Builder setUpdate(Document document) {
            copyOnWrite();
            ((Write) this.instance).setUpdate(document);
            return this;
        }

        public Builder setDelete(String str) {
            copyOnWrite();
            ((Write) this.instance).setDelete(str);
            return this;
        }

        public Builder setVerify(String str) {
            copyOnWrite();
            ((Write) this.instance).setVerify(str);
            return this;
        }

        public Builder setUpdateMask(DocumentMask documentMask) {
            copyOnWrite();
            ((Write) this.instance).setUpdateMask(documentMask);
            return this;
        }

        public Builder addUpdateTransforms(DocumentTransform.FieldTransform fieldTransform) {
            copyOnWrite();
            ((Write) this.instance).addUpdateTransforms(fieldTransform);
            return this;
        }

        public Builder setCurrentDocument(Precondition precondition) {
            copyOnWrite();
            ((Write) this.instance).setCurrentDocument(precondition);
            return this;
        }
    }

    /* renamed from: com.google.firestore.v1.Write$1 */
    /* loaded from: classes3.dex */
    static /* synthetic */ class C10771 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f219xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f219xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f219xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f219xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f219xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f219xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f219xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f219xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C10771.f219xa1df5c61[methodToInvoke.ordinal()]) {
            case 1:
                return new Write();
            case 2:
                return new Builder(null);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0007\u0001\u0000\u0001\u0007\u0007\u0000\u0001\u0000\u0001<\u0000\u0002Ȼ\u0000\u0003\t\u0004\t\u0005Ȼ\u0000\u0006<\u0000\u0007\u001b", new Object[]{"operation_", "operationCase_", Document.class, "updateMask_", "currentDocument_", DocumentTransform.class, "updateTransforms_", DocumentTransform.FieldTransform.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<Write> parser = PARSER;
                if (parser == null) {
                    synchronized (Write.class) {
                        parser = PARSER;
                        if (parser == null) {
                            parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                            PARSER = parser;
                        }
                    }
                }
                return parser;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    static {
        Write write = new Write();
        DEFAULT_INSTANCE = write;
        GeneratedMessageLite.registerDefaultInstance(Write.class, write);
    }
}
