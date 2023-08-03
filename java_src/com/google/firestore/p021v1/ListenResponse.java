package com.google.firestore.p021v1;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
/* renamed from: com.google.firestore.v1.ListenResponse */
/* loaded from: classes3.dex */
public final class ListenResponse extends GeneratedMessageLite<ListenResponse, Builder> implements MessageLiteOrBuilder {
    private static final ListenResponse DEFAULT_INSTANCE;
    public static final int DOCUMENT_CHANGE_FIELD_NUMBER = 3;
    public static final int DOCUMENT_DELETE_FIELD_NUMBER = 4;
    public static final int DOCUMENT_REMOVE_FIELD_NUMBER = 6;
    public static final int FILTER_FIELD_NUMBER = 5;
    private static volatile Parser<ListenResponse> PARSER = null;
    public static final int TARGET_CHANGE_FIELD_NUMBER = 2;
    private int responseTypeCase_ = 0;
    private Object responseType_;

    private ListenResponse() {
    }

    /* renamed from: com.google.firestore.v1.ListenResponse$ResponseTypeCase */
    /* loaded from: classes3.dex */
    public enum ResponseTypeCase {
        TARGET_CHANGE(2),
        DOCUMENT_CHANGE(3),
        DOCUMENT_DELETE(4),
        DOCUMENT_REMOVE(6),
        FILTER(5),
        RESPONSETYPE_NOT_SET(0);
        
        private final int value;

        ResponseTypeCase(int i) {
            this.value = i;
        }

        @Deprecated
        public static ResponseTypeCase valueOf(int i) {
            return forNumber(i);
        }

        public static ResponseTypeCase forNumber(int i) {
            if (i != 0) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                if (i != 6) {
                                    return null;
                                }
                                return DOCUMENT_REMOVE;
                            }
                            return FILTER;
                        }
                        return DOCUMENT_DELETE;
                    }
                    return DOCUMENT_CHANGE;
                }
                return TARGET_CHANGE;
            }
            return RESPONSETYPE_NOT_SET;
        }

        public int getNumber() {
            return this.value;
        }
    }

    public ResponseTypeCase getResponseTypeCase() {
        return ResponseTypeCase.forNumber(this.responseTypeCase_);
    }

    public TargetChange getTargetChange() {
        if (this.responseTypeCase_ == 2) {
            return (TargetChange) this.responseType_;
        }
        return TargetChange.getDefaultInstance();
    }

    public DocumentChange getDocumentChange() {
        if (this.responseTypeCase_ == 3) {
            return (DocumentChange) this.responseType_;
        }
        return DocumentChange.getDefaultInstance();
    }

    public DocumentDelete getDocumentDelete() {
        if (this.responseTypeCase_ == 4) {
            return (DocumentDelete) this.responseType_;
        }
        return DocumentDelete.getDefaultInstance();
    }

    public DocumentRemove getDocumentRemove() {
        if (this.responseTypeCase_ == 6) {
            return (DocumentRemove) this.responseType_;
        }
        return DocumentRemove.getDefaultInstance();
    }

    public ExistenceFilter getFilter() {
        if (this.responseTypeCase_ == 5) {
            return (ExistenceFilter) this.responseType_;
        }
        return ExistenceFilter.getDefaultInstance();
    }

    /* renamed from: com.google.firestore.v1.ListenResponse$Builder */
    /* loaded from: classes3.dex */
    public static final class Builder extends GeneratedMessageLite.Builder<ListenResponse, Builder> implements MessageLiteOrBuilder {
        /* synthetic */ Builder(C10671 c10671) {
            this();
        }

        private Builder() {
            super(ListenResponse.DEFAULT_INSTANCE);
        }
    }

    /* renamed from: com.google.firestore.v1.ListenResponse$1 */
    /* loaded from: classes3.dex */
    static /* synthetic */ class C10671 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f295xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f295xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f295xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f295xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f295xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f295xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f295xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f295xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C10671.f295xa1df5c61[methodToInvoke.ordinal()]) {
            case 1:
                return new ListenResponse();
            case 2:
                return new Builder(null);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0001\u0000\u0002\u0006\u0005\u0000\u0000\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000", new Object[]{"responseType_", "responseTypeCase_", TargetChange.class, DocumentChange.class, DocumentDelete.class, ExistenceFilter.class, DocumentRemove.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<ListenResponse> parser = PARSER;
                if (parser == null) {
                    synchronized (ListenResponse.class) {
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
        ListenResponse listenResponse = new ListenResponse();
        DEFAULT_INSTANCE = listenResponse;
        GeneratedMessageLite.registerDefaultInstance(ListenResponse.class, listenResponse);
    }

    public static ListenResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }
}
