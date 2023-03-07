package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
/* loaded from: classes3.dex */
public final class Any extends GeneratedMessageLite<Any, Builder> implements MessageLiteOrBuilder {
    private static final Any DEFAULT_INSTANCE;
    private static volatile Parser<Any> PARSER = null;
    public static final int TYPE_URL_FIELD_NUMBER = 1;
    public static final int VALUE_FIELD_NUMBER = 2;
    private String typeUrl_ = "";
    private ByteString value_ = ByteString.EMPTY;

    private Any() {
    }

    /* loaded from: classes3.dex */
    public static final class Builder extends GeneratedMessageLite.Builder<Any, Builder> implements MessageLiteOrBuilder {
        /* synthetic */ Builder(C11891 c11891) {
            this();
        }

        private Builder() {
            super(Any.DEFAULT_INSTANCE);
        }
    }

    /* renamed from: com.google.protobuf.Any$1 */
    /* loaded from: classes3.dex */
    static /* synthetic */ class C11891 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f224xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f224xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f224xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f224xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f224xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f224xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f224xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f224xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C11891.f224xa1df5c61[methodToInvoke.ordinal()]) {
            case 1:
                return new Any();
            case 2:
                return new Builder(null);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\n", new Object[]{"typeUrl_", "value_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<Any> parser = PARSER;
                if (parser == null) {
                    synchronized (Any.class) {
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
        Any any = new Any();
        DEFAULT_INSTANCE = any;
        GeneratedMessageLite.registerDefaultInstance(Any.class, any);
    }
}
