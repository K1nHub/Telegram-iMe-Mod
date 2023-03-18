package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
/* loaded from: classes3.dex */
public final class Int32Value extends GeneratedMessageLite<Int32Value, Builder> implements MessageLiteOrBuilder {
    private static final Int32Value DEFAULT_INSTANCE;
    private static volatile Parser<Int32Value> PARSER = null;
    public static final int VALUE_FIELD_NUMBER = 1;
    private int value_;

    private Int32Value() {
    }

    public int getValue() {
        return this.value_;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValue(int i) {
        this.value_ = i;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    /* loaded from: classes3.dex */
    public static final class Builder extends GeneratedMessageLite.Builder<Int32Value, Builder> implements MessageLiteOrBuilder {
        /* synthetic */ Builder(C11941 c11941) {
            this();
        }

        private Builder() {
            super(Int32Value.DEFAULT_INSTANCE);
        }

        public Builder setValue(int i) {
            copyOnWrite();
            ((Int32Value) this.instance).setValue(i);
            return this;
        }
    }

    /* renamed from: com.google.protobuf.Int32Value$1 */
    /* loaded from: classes3.dex */
    static /* synthetic */ class C11941 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f226xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f226xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f226xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f226xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f226xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f226xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f226xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f226xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C11941.f226xa1df5c61[methodToInvoke.ordinal()]) {
            case 1:
                return new Int32Value();
            case 2:
                return new Builder(null);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0004", new Object[]{"value_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<Int32Value> parser = PARSER;
                if (parser == null) {
                    synchronized (Int32Value.class) {
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
        Int32Value int32Value = new Int32Value();
        DEFAULT_INSTANCE = int32Value;
        GeneratedMessageLite.registerDefaultInstance(Int32Value.class, int32Value);
    }

    public static Int32Value getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }
}
