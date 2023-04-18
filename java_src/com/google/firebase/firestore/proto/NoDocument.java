package com.google.firebase.firestore.proto;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.Timestamp;
/* loaded from: classes3.dex */
public final class NoDocument extends GeneratedMessageLite<NoDocument, Builder> implements MessageLiteOrBuilder {
    private static final NoDocument DEFAULT_INSTANCE;
    public static final int NAME_FIELD_NUMBER = 1;
    private static volatile Parser<NoDocument> PARSER = null;
    public static final int READ_TIME_FIELD_NUMBER = 2;
    private String name_ = "";
    private Timestamp readTime_;

    private NoDocument() {
    }

    public String getName() {
        return this.name_;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setName(String str) {
        str.getClass();
        this.name_ = str;
    }

    public Timestamp getReadTime() {
        Timestamp timestamp = this.readTime_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setReadTime(Timestamp timestamp) {
        timestamp.getClass();
        this.readTime_ = timestamp;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    /* loaded from: classes3.dex */
    public static final class Builder extends GeneratedMessageLite.Builder<NoDocument, Builder> implements MessageLiteOrBuilder {
        /* synthetic */ Builder(C10131 c10131) {
            this();
        }

        private Builder() {
            super(NoDocument.DEFAULT_INSTANCE);
        }

        public Builder setName(String str) {
            copyOnWrite();
            ((NoDocument) this.instance).setName(str);
            return this;
        }

        public Builder setReadTime(Timestamp timestamp) {
            copyOnWrite();
            ((NoDocument) this.instance).setReadTime(timestamp);
            return this;
        }
    }

    /* renamed from: com.google.firebase.firestore.proto.NoDocument$1 */
    /* loaded from: classes3.dex */
    static /* synthetic */ class C10131 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f179xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f179xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f179xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f179xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f179xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f179xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f179xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f179xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C10131.f179xa1df5c61[methodToInvoke.ordinal()]) {
            case 1:
                return new NoDocument();
            case 2:
                return new Builder(null);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\t", new Object[]{"name_", "readTime_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<NoDocument> parser = PARSER;
                if (parser == null) {
                    synchronized (NoDocument.class) {
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
        NoDocument noDocument = new NoDocument();
        DEFAULT_INSTANCE = noDocument;
        GeneratedMessageLite.registerDefaultInstance(NoDocument.class, noDocument);
    }

    public static NoDocument getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }
}
