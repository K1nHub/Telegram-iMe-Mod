package com.google.firebase.firestore.proto;

import com.google.firestore.p022v1.Document;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
/* loaded from: classes3.dex */
public final class MaybeDocument extends GeneratedMessageLite<MaybeDocument, Builder> implements MessageLiteOrBuilder {
    private static final MaybeDocument DEFAULT_INSTANCE;
    public static final int DOCUMENT_FIELD_NUMBER = 2;
    public static final int HAS_COMMITTED_MUTATIONS_FIELD_NUMBER = 4;
    public static final int NO_DOCUMENT_FIELD_NUMBER = 1;
    private static volatile Parser<MaybeDocument> PARSER = null;
    public static final int UNKNOWN_DOCUMENT_FIELD_NUMBER = 3;
    private int documentTypeCase_ = 0;
    private Object documentType_;
    private boolean hasCommittedMutations_;

    private MaybeDocument() {
    }

    /* loaded from: classes3.dex */
    public enum DocumentTypeCase {
        NO_DOCUMENT(1),
        DOCUMENT(2),
        UNKNOWN_DOCUMENT(3),
        DOCUMENTTYPE_NOT_SET(0);
        
        private final int value;

        DocumentTypeCase(int i) {
            this.value = i;
        }

        @Deprecated
        public static DocumentTypeCase valueOf(int i) {
            return forNumber(i);
        }

        public static DocumentTypeCase forNumber(int i) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return null;
                        }
                        return UNKNOWN_DOCUMENT;
                    }
                    return DOCUMENT;
                }
                return NO_DOCUMENT;
            }
            return DOCUMENTTYPE_NOT_SET;
        }

        public int getNumber() {
            return this.value;
        }
    }

    public DocumentTypeCase getDocumentTypeCase() {
        return DocumentTypeCase.forNumber(this.documentTypeCase_);
    }

    public NoDocument getNoDocument() {
        if (this.documentTypeCase_ == 1) {
            return (NoDocument) this.documentType_;
        }
        return NoDocument.getDefaultInstance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNoDocument(NoDocument noDocument) {
        noDocument.getClass();
        this.documentType_ = noDocument;
        this.documentTypeCase_ = 1;
    }

    public Document getDocument() {
        if (this.documentTypeCase_ == 2) {
            return (Document) this.documentType_;
        }
        return Document.getDefaultInstance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDocument(Document document) {
        document.getClass();
        this.documentType_ = document;
        this.documentTypeCase_ = 2;
    }

    public UnknownDocument getUnknownDocument() {
        if (this.documentTypeCase_ == 3) {
            return (UnknownDocument) this.documentType_;
        }
        return UnknownDocument.getDefaultInstance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUnknownDocument(UnknownDocument unknownDocument) {
        unknownDocument.getClass();
        this.documentType_ = unknownDocument;
        this.documentTypeCase_ = 3;
    }

    public boolean getHasCommittedMutations() {
        return this.hasCommittedMutations_;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHasCommittedMutations(boolean z) {
        this.hasCommittedMutations_ = z;
    }

    public static MaybeDocument parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (MaybeDocument) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    /* loaded from: classes3.dex */
    public static final class Builder extends GeneratedMessageLite.Builder<MaybeDocument, Builder> implements MessageLiteOrBuilder {
        /* synthetic */ Builder(C10131 c10131) {
            this();
        }

        private Builder() {
            super(MaybeDocument.DEFAULT_INSTANCE);
        }

        public Builder setNoDocument(NoDocument noDocument) {
            copyOnWrite();
            ((MaybeDocument) this.instance).setNoDocument(noDocument);
            return this;
        }

        public Builder setDocument(Document document) {
            copyOnWrite();
            ((MaybeDocument) this.instance).setDocument(document);
            return this;
        }

        public Builder setUnknownDocument(UnknownDocument unknownDocument) {
            copyOnWrite();
            ((MaybeDocument) this.instance).setUnknownDocument(unknownDocument);
            return this;
        }

        public Builder setHasCommittedMutations(boolean z) {
            copyOnWrite();
            ((MaybeDocument) this.instance).setHasCommittedMutations(z);
            return this;
        }
    }

    /* renamed from: com.google.firebase.firestore.proto.MaybeDocument$1 */
    /* loaded from: classes3.dex */
    static /* synthetic */ class C10131 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f181xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f181xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f181xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f181xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f181xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f181xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f181xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f181xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C10131.f181xa1df5c61[methodToInvoke.ordinal()]) {
            case 1:
                return new MaybeDocument();
            case 2:
                return new Builder(null);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004\u0007", new Object[]{"documentType_", "documentTypeCase_", NoDocument.class, Document.class, UnknownDocument.class, "hasCommittedMutations_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<MaybeDocument> parser = PARSER;
                if (parser == null) {
                    synchronized (MaybeDocument.class) {
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
        MaybeDocument maybeDocument = new MaybeDocument();
        DEFAULT_INSTANCE = maybeDocument;
        GeneratedMessageLite.registerDefaultInstance(MaybeDocument.class, maybeDocument);
    }
}
