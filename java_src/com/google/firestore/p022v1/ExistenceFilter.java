package com.google.firestore.p022v1;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
/* renamed from: com.google.firestore.v1.ExistenceFilter */
/* loaded from: classes3.dex */
public final class ExistenceFilter extends GeneratedMessageLite<ExistenceFilter, Builder> implements MessageLiteOrBuilder {
    public static final int COUNT_FIELD_NUMBER = 2;
    private static final ExistenceFilter DEFAULT_INSTANCE;
    private static volatile Parser<ExistenceFilter> PARSER = null;
    public static final int TARGET_ID_FIELD_NUMBER = 1;
    private int count_;
    private int targetId_;

    private ExistenceFilter() {
    }

    public int getTargetId() {
        return this.targetId_;
    }

    public int getCount() {
        return this.count_;
    }

    /* renamed from: com.google.firestore.v1.ExistenceFilter$Builder */
    /* loaded from: classes3.dex */
    public static final class Builder extends GeneratedMessageLite.Builder<ExistenceFilter, Builder> implements MessageLiteOrBuilder {
        /* synthetic */ Builder(C10551 c10551) {
            this();
        }

        private Builder() {
            super(ExistenceFilter.DEFAULT_INSTANCE);
        }
    }

    /* renamed from: com.google.firestore.v1.ExistenceFilter$1 */
    /* loaded from: classes3.dex */
    static /* synthetic */ class C10551 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f209xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f209xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f209xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f209xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f209xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f209xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f209xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f209xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C10551.f209xa1df5c61[methodToInvoke.ordinal()]) {
            case 1:
                return new ExistenceFilter();
            case 2:
                return new Builder(null);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0002\u0004", new Object[]{"targetId_", "count_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<ExistenceFilter> parser = PARSER;
                if (parser == null) {
                    synchronized (ExistenceFilter.class) {
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
        ExistenceFilter existenceFilter = new ExistenceFilter();
        DEFAULT_INSTANCE = existenceFilter;
        GeneratedMessageLite.registerDefaultInstance(ExistenceFilter.class, existenceFilter);
    }

    public static ExistenceFilter getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }
}
