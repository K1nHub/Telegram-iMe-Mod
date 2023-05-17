package com.google.firebase.firestore.proto;

import com.google.firestore.p021v1.Write;
import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.Timestamp;
/* loaded from: classes3.dex */
public final class WriteBatch extends GeneratedMessageLite<WriteBatch, Builder> implements MessageLiteOrBuilder {
    public static final int BASE_WRITES_FIELD_NUMBER = 4;
    public static final int BATCH_ID_FIELD_NUMBER = 1;
    private static final WriteBatch DEFAULT_INSTANCE;
    public static final int LOCAL_WRITE_TIME_FIELD_NUMBER = 3;
    private static volatile Parser<WriteBatch> PARSER = null;
    public static final int WRITES_FIELD_NUMBER = 2;
    private int batchId_;
    private Timestamp localWriteTime_;
    private Internal.ProtobufList<Write> writes_ = GeneratedMessageLite.emptyProtobufList();
    private Internal.ProtobufList<Write> baseWrites_ = GeneratedMessageLite.emptyProtobufList();

    private WriteBatch() {
    }

    public int getBatchId() {
        return this.batchId_;
    }

    public int getWritesCount() {
        return this.writes_.size();
    }

    public Write getWrites(int i) {
        return this.writes_.get(i);
    }

    public Timestamp getLocalWriteTime() {
        Timestamp timestamp = this.localWriteTime_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public int getBaseWritesCount() {
        return this.baseWrites_.size();
    }

    public Write getBaseWrites(int i) {
        return this.baseWrites_.get(i);
    }

    public static WriteBatch parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (WriteBatch) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static WriteBatch parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (WriteBatch) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    /* loaded from: classes3.dex */
    public static final class Builder extends GeneratedMessageLite.Builder<WriteBatch, Builder> implements MessageLiteOrBuilder {
        /* synthetic */ Builder(C10211 c10211) {
            this();
        }

        private Builder() {
            super(WriteBatch.DEFAULT_INSTANCE);
        }
    }

    /* renamed from: com.google.firebase.firestore.proto.WriteBatch$1 */
    /* loaded from: classes3.dex */
    static /* synthetic */ class C10211 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f185xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f185xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f185xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f185xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f185xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f185xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f185xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f185xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C10211.f185xa1df5c61[methodToInvoke.ordinal()]) {
            case 1:
                return new WriteBatch();
            case 2:
                return new Builder(null);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u0004\u0002\u001b\u0003\t\u0004\u001b", new Object[]{"batchId_", "writes_", Write.class, "localWriteTime_", "baseWrites_", Write.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<WriteBatch> parser = PARSER;
                if (parser == null) {
                    synchronized (WriteBatch.class) {
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
        WriteBatch writeBatch = new WriteBatch();
        DEFAULT_INSTANCE = writeBatch;
        GeneratedMessageLite.registerDefaultInstance(WriteBatch.class, writeBatch);
    }
}
