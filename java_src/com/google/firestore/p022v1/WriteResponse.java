package com.google.firestore.p022v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.Timestamp;
/* renamed from: com.google.firestore.v1.WriteResponse */
/* loaded from: classes3.dex */
public final class WriteResponse extends GeneratedMessageLite<WriteResponse, Builder> implements MessageLiteOrBuilder {
    public static final int COMMIT_TIME_FIELD_NUMBER = 4;
    private static final WriteResponse DEFAULT_INSTANCE;
    private static volatile Parser<WriteResponse> PARSER = null;
    public static final int STREAM_ID_FIELD_NUMBER = 1;
    public static final int STREAM_TOKEN_FIELD_NUMBER = 2;
    public static final int WRITE_RESULTS_FIELD_NUMBER = 3;
    private Timestamp commitTime_;
    private String streamId_ = "";
    private ByteString streamToken_ = ByteString.EMPTY;
    private Internal.ProtobufList<WriteResult> writeResults_ = GeneratedMessageLite.emptyProtobufList();

    private WriteResponse() {
    }

    public ByteString getStreamToken() {
        return this.streamToken_;
    }

    public int getWriteResultsCount() {
        return this.writeResults_.size();
    }

    public WriteResult getWriteResults(int i) {
        return this.writeResults_.get(i);
    }

    public Timestamp getCommitTime() {
        Timestamp timestamp = this.commitTime_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    /* renamed from: com.google.firestore.v1.WriteResponse$Builder */
    /* loaded from: classes3.dex */
    public static final class Builder extends GeneratedMessageLite.Builder<WriteResponse, Builder> implements MessageLiteOrBuilder {
        /* synthetic */ Builder(C10861 c10861) {
            this();
        }

        private Builder() {
            super(WriteResponse.DEFAULT_INSTANCE);
        }
    }

    /* renamed from: com.google.firestore.v1.WriteResponse$1 */
    /* loaded from: classes3.dex */
    static /* synthetic */ class C10861 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f221xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f221xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f221xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f221xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f221xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f221xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f221xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f221xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C10861.f221xa1df5c61[methodToInvoke.ordinal()]) {
            case 1:
                return new WriteResponse();
            case 2:
                return new Builder(null);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001Ȉ\u0002\n\u0003\u001b\u0004\t", new Object[]{"streamId_", "streamToken_", "writeResults_", WriteResult.class, "commitTime_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<WriteResponse> parser = PARSER;
                if (parser == null) {
                    synchronized (WriteResponse.class) {
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
        WriteResponse writeResponse = new WriteResponse();
        DEFAULT_INSTANCE = writeResponse;
        GeneratedMessageLite.registerDefaultInstance(WriteResponse.class, writeResponse);
    }

    public static WriteResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }
}
