package com.google.firestore.p022v1;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.Timestamp;
/* renamed from: com.google.firestore.v1.WriteResult */
/* loaded from: classes3.dex */
public final class WriteResult extends GeneratedMessageLite<WriteResult, Builder> implements MessageLiteOrBuilder {
    private static final WriteResult DEFAULT_INSTANCE;
    private static volatile Parser<WriteResult> PARSER = null;
    public static final int TRANSFORM_RESULTS_FIELD_NUMBER = 2;
    public static final int UPDATE_TIME_FIELD_NUMBER = 1;
    private Internal.ProtobufList<Value> transformResults_ = GeneratedMessageLite.emptyProtobufList();
    private Timestamp updateTime_;

    private WriteResult() {
    }

    public Timestamp getUpdateTime() {
        Timestamp timestamp = this.updateTime_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public int getTransformResultsCount() {
        return this.transformResults_.size();
    }

    public Value getTransformResults(int i) {
        return this.transformResults_.get(i);
    }

    /* renamed from: com.google.firestore.v1.WriteResult$Builder */
    /* loaded from: classes3.dex */
    public static final class Builder extends GeneratedMessageLite.Builder<WriteResult, Builder> implements MessageLiteOrBuilder {
        /* synthetic */ Builder(C10801 c10801) {
            this();
        }

        private Builder() {
            super(WriteResult.DEFAULT_INSTANCE);
        }
    }

    /* renamed from: com.google.firestore.v1.WriteResult$1 */
    /* loaded from: classes3.dex */
    static /* synthetic */ class C10801 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f222xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f222xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f222xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f222xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f222xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f222xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f222xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f222xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C10801.f222xa1df5c61[methodToInvoke.ordinal()]) {
            case 1:
                return new WriteResult();
            case 2:
                return new Builder(null);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\t\u0002\u001b", new Object[]{"updateTime_", "transformResults_", Value.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<WriteResult> parser = PARSER;
                if (parser == null) {
                    synchronized (WriteResult.class) {
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
        WriteResult writeResult = new WriteResult();
        DEFAULT_INSTANCE = writeResult;
        GeneratedMessageLite.registerDefaultInstance(WriteResult.class, writeResult);
    }
}
