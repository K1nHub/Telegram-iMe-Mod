package wallet.core.jni.proto;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLite;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes7.dex */
public final class Hedera {

    /* loaded from: classes7.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        TransactionBody getBody();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getPrivateKey();

        boolean hasBody();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getEncoded();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface TimestampOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        int getNanos();

        long getSeconds();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface TransactionBodyOrBuilder extends MessageLiteOrBuilder {
        TransactionBody.DataCase getDataCase();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getMemo();

        ByteString getMemoBytes();

        String getNodeAccountID();

        ByteString getNodeAccountIDBytes();

        long getTransactionFee();

        TransactionID getTransactionID();

        long getTransactionValidDuration();

        TransferMessage getTransfer();

        boolean hasTransactionID();

        boolean hasTransfer();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface TransactionIDOrBuilder extends MessageLiteOrBuilder {
        String getAccountID();

        ByteString getAccountIDBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        int getNonce();

        boolean getScheduled();

        Timestamp getTransactionValidStart();

        boolean hasTransactionValidStart();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface TransferMessageOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getFrom();

        ByteString getFromBytes();

        String getTo();

        ByteString getToBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Hedera() {
    }

    /* loaded from: classes7.dex */
    public static final class Timestamp extends GeneratedMessageLite<Timestamp, Builder> implements TimestampOrBuilder {
        private static final Timestamp DEFAULT_INSTANCE;
        public static final int NANOS_FIELD_NUMBER = 2;
        private static volatile Parser<Timestamp> PARSER = null;
        public static final int SECONDS_FIELD_NUMBER = 1;
        private int nanos_;
        private long seconds_;

        private Timestamp() {
        }

        @Override // wallet.core.jni.proto.Hedera.TimestampOrBuilder
        public long getSeconds() {
            return this.seconds_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSeconds(long value) {
            this.seconds_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSeconds() {
            this.seconds_ = 0L;
        }

        @Override // wallet.core.jni.proto.Hedera.TimestampOrBuilder
        public int getNanos() {
            return this.nanos_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNanos(int value) {
            this.nanos_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNanos() {
            this.nanos_ = 0;
        }

        public static Timestamp parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Timestamp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Timestamp parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Timestamp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Timestamp parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Timestamp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Timestamp parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Timestamp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Timestamp parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Timestamp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Timestamp parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Timestamp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Timestamp parseFrom(InputStream input) throws IOException {
            return (Timestamp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Timestamp parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Timestamp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Timestamp parseDelimitedFrom(InputStream input) throws IOException {
            return (Timestamp) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Timestamp parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Timestamp) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Timestamp parseFrom(CodedInputStream input) throws IOException {
            return (Timestamp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Timestamp parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Timestamp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Timestamp prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Timestamp, Builder> implements TimestampOrBuilder {
            /* synthetic */ Builder(C79371 c79371) {
                this();
            }

            private Builder() {
                super(Timestamp.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Hedera.TimestampOrBuilder
            public long getSeconds() {
                return ((Timestamp) this.instance).getSeconds();
            }

            public Builder setSeconds(long value) {
                copyOnWrite();
                ((Timestamp) this.instance).setSeconds(value);
                return this;
            }

            public Builder clearSeconds() {
                copyOnWrite();
                ((Timestamp) this.instance).clearSeconds();
                return this;
            }

            @Override // wallet.core.jni.proto.Hedera.TimestampOrBuilder
            public int getNanos() {
                return ((Timestamp) this.instance).getNanos();
            }

            public Builder setNanos(int value) {
                copyOnWrite();
                ((Timestamp) this.instance).setNanos(value);
                return this;
            }

            public Builder clearNanos() {
                copyOnWrite();
                ((Timestamp) this.instance).clearNanos();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79371.f2159xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Timestamp();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004", new Object[]{"seconds_", "nanos_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Timestamp> parser = PARSER;
                    if (parser == null) {
                        synchronized (Timestamp.class) {
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
            Timestamp timestamp = new Timestamp();
            DEFAULT_INSTANCE = timestamp;
            GeneratedMessageLite.registerDefaultInstance(Timestamp.class, timestamp);
        }

        public static Timestamp getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Timestamp> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* renamed from: wallet.core.jni.proto.Hedera$1 */
    /* loaded from: classes7.dex */
    static /* synthetic */ class C79371 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f2159xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f2159xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2159xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2159xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2159xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2159xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2159xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2159xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public static final class TransactionID extends GeneratedMessageLite<TransactionID, Builder> implements TransactionIDOrBuilder {
        public static final int ACCOUNTID_FIELD_NUMBER = 2;
        private static final TransactionID DEFAULT_INSTANCE;
        public static final int NONCE_FIELD_NUMBER = 4;
        private static volatile Parser<TransactionID> PARSER = null;
        public static final int SCHEDULED_FIELD_NUMBER = 3;
        public static final int TRANSACTIONVALIDSTART_FIELD_NUMBER = 1;
        private String accountID_ = "";
        private int nonce_;
        private boolean scheduled_;
        private Timestamp transactionValidStart_;

        private TransactionID() {
        }

        @Override // wallet.core.jni.proto.Hedera.TransactionIDOrBuilder
        public boolean hasTransactionValidStart() {
            return this.transactionValidStart_ != null;
        }

        @Override // wallet.core.jni.proto.Hedera.TransactionIDOrBuilder
        public Timestamp getTransactionValidStart() {
            Timestamp timestamp = this.transactionValidStart_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransactionValidStart(Timestamp value) {
            value.getClass();
            this.transactionValidStart_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransactionValidStart(Timestamp value) {
            value.getClass();
            Timestamp timestamp = this.transactionValidStart_;
            if (timestamp != null && timestamp != Timestamp.getDefaultInstance()) {
                this.transactionValidStart_ = Timestamp.newBuilder(this.transactionValidStart_).mergeFrom((Timestamp.Builder) value).buildPartial();
            } else {
                this.transactionValidStart_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransactionValidStart() {
            this.transactionValidStart_ = null;
        }

        @Override // wallet.core.jni.proto.Hedera.TransactionIDOrBuilder
        public String getAccountID() {
            return this.accountID_;
        }

        @Override // wallet.core.jni.proto.Hedera.TransactionIDOrBuilder
        public ByteString getAccountIDBytes() {
            return ByteString.copyFromUtf8(this.accountID_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccountID(String value) {
            value.getClass();
            this.accountID_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAccountID() {
            this.accountID_ = getDefaultInstance().getAccountID();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccountIDBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.accountID_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Hedera.TransactionIDOrBuilder
        public boolean getScheduled() {
            return this.scheduled_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setScheduled(boolean value) {
            this.scheduled_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearScheduled() {
            this.scheduled_ = false;
        }

        @Override // wallet.core.jni.proto.Hedera.TransactionIDOrBuilder
        public int getNonce() {
            return this.nonce_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNonce(int value) {
            this.nonce_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNonce() {
            this.nonce_ = 0;
        }

        public static TransactionID parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TransactionID) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionID parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionID) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionID parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TransactionID) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionID parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionID) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionID parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TransactionID) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionID parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionID) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionID parseFrom(InputStream input) throws IOException {
            return (TransactionID) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionID parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionID) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionID parseDelimitedFrom(InputStream input) throws IOException {
            return (TransactionID) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionID parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionID) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionID parseFrom(CodedInputStream input) throws IOException {
            return (TransactionID) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionID parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionID) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TransactionID prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransactionID, Builder> implements TransactionIDOrBuilder {
            /* synthetic */ Builder(C79371 c79371) {
                this();
            }

            private Builder() {
                super(TransactionID.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Hedera.TransactionIDOrBuilder
            public boolean hasTransactionValidStart() {
                return ((TransactionID) this.instance).hasTransactionValidStart();
            }

            @Override // wallet.core.jni.proto.Hedera.TransactionIDOrBuilder
            public Timestamp getTransactionValidStart() {
                return ((TransactionID) this.instance).getTransactionValidStart();
            }

            public Builder setTransactionValidStart(Timestamp value) {
                copyOnWrite();
                ((TransactionID) this.instance).setTransactionValidStart(value);
                return this;
            }

            public Builder setTransactionValidStart(Timestamp.Builder builderForValue) {
                copyOnWrite();
                ((TransactionID) this.instance).setTransactionValidStart(builderForValue.build());
                return this;
            }

            public Builder mergeTransactionValidStart(Timestamp value) {
                copyOnWrite();
                ((TransactionID) this.instance).mergeTransactionValidStart(value);
                return this;
            }

            public Builder clearTransactionValidStart() {
                copyOnWrite();
                ((TransactionID) this.instance).clearTransactionValidStart();
                return this;
            }

            @Override // wallet.core.jni.proto.Hedera.TransactionIDOrBuilder
            public String getAccountID() {
                return ((TransactionID) this.instance).getAccountID();
            }

            @Override // wallet.core.jni.proto.Hedera.TransactionIDOrBuilder
            public ByteString getAccountIDBytes() {
                return ((TransactionID) this.instance).getAccountIDBytes();
            }

            public Builder setAccountID(String value) {
                copyOnWrite();
                ((TransactionID) this.instance).setAccountID(value);
                return this;
            }

            public Builder clearAccountID() {
                copyOnWrite();
                ((TransactionID) this.instance).clearAccountID();
                return this;
            }

            public Builder setAccountIDBytes(ByteString value) {
                copyOnWrite();
                ((TransactionID) this.instance).setAccountIDBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Hedera.TransactionIDOrBuilder
            public boolean getScheduled() {
                return ((TransactionID) this.instance).getScheduled();
            }

            public Builder setScheduled(boolean value) {
                copyOnWrite();
                ((TransactionID) this.instance).setScheduled(value);
                return this;
            }

            public Builder clearScheduled() {
                copyOnWrite();
                ((TransactionID) this.instance).clearScheduled();
                return this;
            }

            @Override // wallet.core.jni.proto.Hedera.TransactionIDOrBuilder
            public int getNonce() {
                return ((TransactionID) this.instance).getNonce();
            }

            public Builder setNonce(int value) {
                copyOnWrite();
                ((TransactionID) this.instance).setNonce(value);
                return this;
            }

            public Builder clearNonce() {
                copyOnWrite();
                ((TransactionID) this.instance).clearNonce();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79371.f2159xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransactionID();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002Ȉ\u0003\u0007\u0004\u0004", new Object[]{"transactionValidStart_", "accountID_", "scheduled_", "nonce_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TransactionID> parser = PARSER;
                    if (parser == null) {
                        synchronized (TransactionID.class) {
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
            TransactionID transactionID = new TransactionID();
            DEFAULT_INSTANCE = transactionID;
            GeneratedMessageLite.registerDefaultInstance(TransactionID.class, transactionID);
        }

        public static TransactionID getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TransactionID> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class TransferMessage extends GeneratedMessageLite<TransferMessage, Builder> implements TransferMessageOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 3;
        private static final TransferMessage DEFAULT_INSTANCE;
        public static final int FROM_FIELD_NUMBER = 1;
        private static volatile Parser<TransferMessage> PARSER = null;
        public static final int TO_FIELD_NUMBER = 2;
        private long amount_;
        private String from_ = "";
        private String to_ = "";

        private TransferMessage() {
        }

        @Override // wallet.core.jni.proto.Hedera.TransferMessageOrBuilder
        public String getFrom() {
            return this.from_;
        }

        @Override // wallet.core.jni.proto.Hedera.TransferMessageOrBuilder
        public ByteString getFromBytes() {
            return ByteString.copyFromUtf8(this.from_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFrom(String value) {
            value.getClass();
            this.from_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFrom() {
            this.from_ = getDefaultInstance().getFrom();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFromBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.from_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Hedera.TransferMessageOrBuilder
        public String getTo() {
            return this.to_;
        }

        @Override // wallet.core.jni.proto.Hedera.TransferMessageOrBuilder
        public ByteString getToBytes() {
            return ByteString.copyFromUtf8(this.to_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTo(String value) {
            value.getClass();
            this.to_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTo() {
            this.to_ = getDefaultInstance().getTo();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.to_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Hedera.TransferMessageOrBuilder
        public long getAmount() {
            return this.amount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmount(long value) {
            this.amount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAmount() {
            this.amount_ = 0L;
        }

        public static TransferMessage parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransferMessage parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransferMessage parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransferMessage parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransferMessage parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransferMessage parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransferMessage parseFrom(InputStream input) throws IOException {
            return (TransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransferMessage parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransferMessage parseDelimitedFrom(InputStream input) throws IOException {
            return (TransferMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TransferMessage parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransferMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransferMessage parseFrom(CodedInputStream input) throws IOException {
            return (TransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransferMessage parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TransferMessage prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransferMessage, Builder> implements TransferMessageOrBuilder {
            /* synthetic */ Builder(C79371 c79371) {
                this();
            }

            private Builder() {
                super(TransferMessage.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Hedera.TransferMessageOrBuilder
            public String getFrom() {
                return ((TransferMessage) this.instance).getFrom();
            }

            @Override // wallet.core.jni.proto.Hedera.TransferMessageOrBuilder
            public ByteString getFromBytes() {
                return ((TransferMessage) this.instance).getFromBytes();
            }

            public Builder setFrom(String value) {
                copyOnWrite();
                ((TransferMessage) this.instance).setFrom(value);
                return this;
            }

            public Builder clearFrom() {
                copyOnWrite();
                ((TransferMessage) this.instance).clearFrom();
                return this;
            }

            public Builder setFromBytes(ByteString value) {
                copyOnWrite();
                ((TransferMessage) this.instance).setFromBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Hedera.TransferMessageOrBuilder
            public String getTo() {
                return ((TransferMessage) this.instance).getTo();
            }

            @Override // wallet.core.jni.proto.Hedera.TransferMessageOrBuilder
            public ByteString getToBytes() {
                return ((TransferMessage) this.instance).getToBytes();
            }

            public Builder setTo(String value) {
                copyOnWrite();
                ((TransferMessage) this.instance).setTo(value);
                return this;
            }

            public Builder clearTo() {
                copyOnWrite();
                ((TransferMessage) this.instance).clearTo();
                return this;
            }

            public Builder setToBytes(ByteString value) {
                copyOnWrite();
                ((TransferMessage) this.instance).setToBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Hedera.TransferMessageOrBuilder
            public long getAmount() {
                return ((TransferMessage) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((TransferMessage) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TransferMessage) this.instance).clearAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79371.f2159xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransferMessage();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u0010", new Object[]{"from_", "to_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TransferMessage> parser = PARSER;
                    if (parser == null) {
                        synchronized (TransferMessage.class) {
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
            TransferMessage transferMessage = new TransferMessage();
            DEFAULT_INSTANCE = transferMessage;
            GeneratedMessageLite.registerDefaultInstance(TransferMessage.class, transferMessage);
        }

        public static TransferMessage getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TransferMessage> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class TransactionBody extends GeneratedMessageLite<TransactionBody, Builder> implements TransactionBodyOrBuilder {
        private static final TransactionBody DEFAULT_INSTANCE;
        public static final int MEMO_FIELD_NUMBER = 5;
        public static final int NODEACCOUNTID_FIELD_NUMBER = 2;
        private static volatile Parser<TransactionBody> PARSER = null;
        public static final int TRANSACTIONFEE_FIELD_NUMBER = 3;
        public static final int TRANSACTIONID_FIELD_NUMBER = 1;
        public static final int TRANSACTIONVALIDDURATION_FIELD_NUMBER = 4;
        public static final int TRANSFER_FIELD_NUMBER = 6;
        private Object data_;
        private long transactionFee_;
        private TransactionID transactionID_;
        private long transactionValidDuration_;
        private int dataCase_ = 0;
        private String nodeAccountID_ = "";
        private String memo_ = "";

        private TransactionBody() {
        }

        /* loaded from: classes7.dex */
        public enum DataCase {
            TRANSFER(6),
            DATA_NOT_SET(0);
            
            private final int value;

            DataCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static DataCase valueOf(int value) {
                return forNumber(value);
            }

            public static DataCase forNumber(int value) {
                if (value != 0) {
                    if (value != 6) {
                        return null;
                    }
                    return TRANSFER;
                }
                return DATA_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Hedera.TransactionBodyOrBuilder
        public DataCase getDataCase() {
            return DataCase.forNumber(this.dataCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearData() {
            this.dataCase_ = 0;
            this.data_ = null;
        }

        @Override // wallet.core.jni.proto.Hedera.TransactionBodyOrBuilder
        public boolean hasTransactionID() {
            return this.transactionID_ != null;
        }

        @Override // wallet.core.jni.proto.Hedera.TransactionBodyOrBuilder
        public TransactionID getTransactionID() {
            TransactionID transactionID = this.transactionID_;
            return transactionID == null ? TransactionID.getDefaultInstance() : transactionID;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransactionID(TransactionID value) {
            value.getClass();
            this.transactionID_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransactionID(TransactionID value) {
            value.getClass();
            TransactionID transactionID = this.transactionID_;
            if (transactionID != null && transactionID != TransactionID.getDefaultInstance()) {
                this.transactionID_ = TransactionID.newBuilder(this.transactionID_).mergeFrom((TransactionID.Builder) value).buildPartial();
            } else {
                this.transactionID_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransactionID() {
            this.transactionID_ = null;
        }

        @Override // wallet.core.jni.proto.Hedera.TransactionBodyOrBuilder
        public String getNodeAccountID() {
            return this.nodeAccountID_;
        }

        @Override // wallet.core.jni.proto.Hedera.TransactionBodyOrBuilder
        public ByteString getNodeAccountIDBytes() {
            return ByteString.copyFromUtf8(this.nodeAccountID_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNodeAccountID(String value) {
            value.getClass();
            this.nodeAccountID_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNodeAccountID() {
            this.nodeAccountID_ = getDefaultInstance().getNodeAccountID();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNodeAccountIDBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.nodeAccountID_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Hedera.TransactionBodyOrBuilder
        public long getTransactionFee() {
            return this.transactionFee_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransactionFee(long value) {
            this.transactionFee_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransactionFee() {
            this.transactionFee_ = 0L;
        }

        @Override // wallet.core.jni.proto.Hedera.TransactionBodyOrBuilder
        public long getTransactionValidDuration() {
            return this.transactionValidDuration_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransactionValidDuration(long value) {
            this.transactionValidDuration_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransactionValidDuration() {
            this.transactionValidDuration_ = 0L;
        }

        @Override // wallet.core.jni.proto.Hedera.TransactionBodyOrBuilder
        public String getMemo() {
            return this.memo_;
        }

        @Override // wallet.core.jni.proto.Hedera.TransactionBodyOrBuilder
        public ByteString getMemoBytes() {
            return ByteString.copyFromUtf8(this.memo_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMemo(String value) {
            value.getClass();
            this.memo_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMemo() {
            this.memo_ = getDefaultInstance().getMemo();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMemoBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.memo_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Hedera.TransactionBodyOrBuilder
        public boolean hasTransfer() {
            return this.dataCase_ == 6;
        }

        @Override // wallet.core.jni.proto.Hedera.TransactionBodyOrBuilder
        public TransferMessage getTransfer() {
            if (this.dataCase_ == 6) {
                return (TransferMessage) this.data_;
            }
            return TransferMessage.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransfer(TransferMessage value) {
            value.getClass();
            this.data_ = value;
            this.dataCase_ = 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransfer(TransferMessage value) {
            value.getClass();
            if (this.dataCase_ == 6 && this.data_ != TransferMessage.getDefaultInstance()) {
                this.data_ = TransferMessage.newBuilder((TransferMessage) this.data_).mergeFrom((TransferMessage.Builder) value).buildPartial();
            } else {
                this.data_ = value;
            }
            this.dataCase_ = 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransfer() {
            if (this.dataCase_ == 6) {
                this.dataCase_ = 0;
                this.data_ = null;
            }
        }

        public static TransactionBody parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TransactionBody) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionBody parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionBody) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionBody parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TransactionBody) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionBody parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionBody) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionBody parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TransactionBody) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionBody parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionBody) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionBody parseFrom(InputStream input) throws IOException {
            return (TransactionBody) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionBody parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionBody) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionBody parseDelimitedFrom(InputStream input) throws IOException {
            return (TransactionBody) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionBody parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionBody) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionBody parseFrom(CodedInputStream input) throws IOException {
            return (TransactionBody) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionBody parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionBody) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TransactionBody prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransactionBody, Builder> implements TransactionBodyOrBuilder {
            /* synthetic */ Builder(C79371 c79371) {
                this();
            }

            private Builder() {
                super(TransactionBody.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Hedera.TransactionBodyOrBuilder
            public DataCase getDataCase() {
                return ((TransactionBody) this.instance).getDataCase();
            }

            public Builder clearData() {
                copyOnWrite();
                ((TransactionBody) this.instance).clearData();
                return this;
            }

            @Override // wallet.core.jni.proto.Hedera.TransactionBodyOrBuilder
            public boolean hasTransactionID() {
                return ((TransactionBody) this.instance).hasTransactionID();
            }

            @Override // wallet.core.jni.proto.Hedera.TransactionBodyOrBuilder
            public TransactionID getTransactionID() {
                return ((TransactionBody) this.instance).getTransactionID();
            }

            public Builder setTransactionID(TransactionID value) {
                copyOnWrite();
                ((TransactionBody) this.instance).setTransactionID(value);
                return this;
            }

            public Builder setTransactionID(TransactionID.Builder builderForValue) {
                copyOnWrite();
                ((TransactionBody) this.instance).setTransactionID(builderForValue.build());
                return this;
            }

            public Builder mergeTransactionID(TransactionID value) {
                copyOnWrite();
                ((TransactionBody) this.instance).mergeTransactionID(value);
                return this;
            }

            public Builder clearTransactionID() {
                copyOnWrite();
                ((TransactionBody) this.instance).clearTransactionID();
                return this;
            }

            @Override // wallet.core.jni.proto.Hedera.TransactionBodyOrBuilder
            public String getNodeAccountID() {
                return ((TransactionBody) this.instance).getNodeAccountID();
            }

            @Override // wallet.core.jni.proto.Hedera.TransactionBodyOrBuilder
            public ByteString getNodeAccountIDBytes() {
                return ((TransactionBody) this.instance).getNodeAccountIDBytes();
            }

            public Builder setNodeAccountID(String value) {
                copyOnWrite();
                ((TransactionBody) this.instance).setNodeAccountID(value);
                return this;
            }

            public Builder clearNodeAccountID() {
                copyOnWrite();
                ((TransactionBody) this.instance).clearNodeAccountID();
                return this;
            }

            public Builder setNodeAccountIDBytes(ByteString value) {
                copyOnWrite();
                ((TransactionBody) this.instance).setNodeAccountIDBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Hedera.TransactionBodyOrBuilder
            public long getTransactionFee() {
                return ((TransactionBody) this.instance).getTransactionFee();
            }

            public Builder setTransactionFee(long value) {
                copyOnWrite();
                ((TransactionBody) this.instance).setTransactionFee(value);
                return this;
            }

            public Builder clearTransactionFee() {
                copyOnWrite();
                ((TransactionBody) this.instance).clearTransactionFee();
                return this;
            }

            @Override // wallet.core.jni.proto.Hedera.TransactionBodyOrBuilder
            public long getTransactionValidDuration() {
                return ((TransactionBody) this.instance).getTransactionValidDuration();
            }

            public Builder setTransactionValidDuration(long value) {
                copyOnWrite();
                ((TransactionBody) this.instance).setTransactionValidDuration(value);
                return this;
            }

            public Builder clearTransactionValidDuration() {
                copyOnWrite();
                ((TransactionBody) this.instance).clearTransactionValidDuration();
                return this;
            }

            @Override // wallet.core.jni.proto.Hedera.TransactionBodyOrBuilder
            public String getMemo() {
                return ((TransactionBody) this.instance).getMemo();
            }

            @Override // wallet.core.jni.proto.Hedera.TransactionBodyOrBuilder
            public ByteString getMemoBytes() {
                return ((TransactionBody) this.instance).getMemoBytes();
            }

            public Builder setMemo(String value) {
                copyOnWrite();
                ((TransactionBody) this.instance).setMemo(value);
                return this;
            }

            public Builder clearMemo() {
                copyOnWrite();
                ((TransactionBody) this.instance).clearMemo();
                return this;
            }

            public Builder setMemoBytes(ByteString value) {
                copyOnWrite();
                ((TransactionBody) this.instance).setMemoBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Hedera.TransactionBodyOrBuilder
            public boolean hasTransfer() {
                return ((TransactionBody) this.instance).hasTransfer();
            }

            @Override // wallet.core.jni.proto.Hedera.TransactionBodyOrBuilder
            public TransferMessage getTransfer() {
                return ((TransactionBody) this.instance).getTransfer();
            }

            public Builder setTransfer(TransferMessage value) {
                copyOnWrite();
                ((TransactionBody) this.instance).setTransfer(value);
                return this;
            }

            public Builder setTransfer(TransferMessage.Builder builderForValue) {
                copyOnWrite();
                ((TransactionBody) this.instance).setTransfer(builderForValue.build());
                return this;
            }

            public Builder mergeTransfer(TransferMessage value) {
                copyOnWrite();
                ((TransactionBody) this.instance).mergeTransfer(value);
                return this;
            }

            public Builder clearTransfer() {
                copyOnWrite();
                ((TransactionBody) this.instance).clearTransfer();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79371.f2159xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransactionBody();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0001\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\t\u0002Ȉ\u0003\u0003\u0004\u0002\u0005Ȉ\u0006<\u0000", new Object[]{"data_", "dataCase_", "transactionID_", "nodeAccountID_", "transactionFee_", "transactionValidDuration_", "memo_", TransferMessage.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TransactionBody> parser = PARSER;
                    if (parser == null) {
                        synchronized (TransactionBody.class) {
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
            TransactionBody transactionBody = new TransactionBody();
            DEFAULT_INSTANCE = transactionBody;
            GeneratedMessageLite.registerDefaultInstance(TransactionBody.class, transactionBody);
        }

        public static TransactionBody getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TransactionBody> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int BODY_FIELD_NUMBER = 2;
        private static final SigningInput DEFAULT_INSTANCE;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 1;
        private TransactionBody body_;
        private ByteString privateKey_ = ByteString.EMPTY;

        private SigningInput() {
        }

        @Override // wallet.core.jni.proto.Hedera.SigningInputOrBuilder
        public ByteString getPrivateKey() {
            return this.privateKey_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPrivateKey(ByteString value) {
            value.getClass();
            this.privateKey_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPrivateKey() {
            this.privateKey_ = getDefaultInstance().getPrivateKey();
        }

        @Override // wallet.core.jni.proto.Hedera.SigningInputOrBuilder
        public boolean hasBody() {
            return this.body_ != null;
        }

        @Override // wallet.core.jni.proto.Hedera.SigningInputOrBuilder
        public TransactionBody getBody() {
            TransactionBody transactionBody = this.body_;
            return transactionBody == null ? TransactionBody.getDefaultInstance() : transactionBody;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBody(TransactionBody value) {
            value.getClass();
            this.body_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeBody(TransactionBody value) {
            value.getClass();
            TransactionBody transactionBody = this.body_;
            if (transactionBody != null && transactionBody != TransactionBody.getDefaultInstance()) {
                this.body_ = TransactionBody.newBuilder(this.body_).mergeFrom((TransactionBody.Builder) value).buildPartial();
            } else {
                this.body_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBody() {
            this.body_ = null;
        }

        public static SigningInput parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningInput parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningInput parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningInput parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningInput parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningInput parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningInput parseFrom(InputStream input) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningInput parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SigningInput parseDelimitedFrom(InputStream input) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningInput parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SigningInput parseFrom(CodedInputStream input) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningInput parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(SigningInput prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningInput, Builder> implements SigningInputOrBuilder {
            /* synthetic */ Builder(C79371 c79371) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Hedera.SigningInputOrBuilder
            public ByteString getPrivateKey() {
                return ((SigningInput) this.instance).getPrivateKey();
            }

            public Builder setPrivateKey(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setPrivateKey(value);
                return this;
            }

            public Builder clearPrivateKey() {
                copyOnWrite();
                ((SigningInput) this.instance).clearPrivateKey();
                return this;
            }

            @Override // wallet.core.jni.proto.Hedera.SigningInputOrBuilder
            public boolean hasBody() {
                return ((SigningInput) this.instance).hasBody();
            }

            @Override // wallet.core.jni.proto.Hedera.SigningInputOrBuilder
            public TransactionBody getBody() {
                return ((SigningInput) this.instance).getBody();
            }

            public Builder setBody(TransactionBody value) {
                copyOnWrite();
                ((SigningInput) this.instance).setBody(value);
                return this;
            }

            public Builder setBody(TransactionBody.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setBody(builderForValue.build());
                return this;
            }

            public Builder mergeBody(TransactionBody value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeBody(value);
                return this;
            }

            public Builder clearBody() {
                copyOnWrite();
                ((SigningInput) this.instance).clearBody();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79371.f2159xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\t", new Object[]{"privateKey_", "body_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<SigningInput> parser = PARSER;
                    if (parser == null) {
                        synchronized (SigningInput.class) {
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
            SigningInput signingInput = new SigningInput();
            DEFAULT_INSTANCE = signingInput;
            GeneratedMessageLite.registerDefaultInstance(SigningInput.class, signingInput);
        }

        public static SigningInput getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<SigningInput> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class SigningOutput extends GeneratedMessageLite<SigningOutput, Builder> implements SigningOutputOrBuilder {
        private static final SigningOutput DEFAULT_INSTANCE;
        public static final int ENCODED_FIELD_NUMBER = 1;
        private static volatile Parser<SigningOutput> PARSER;
        private ByteString encoded_ = ByteString.EMPTY;

        private SigningOutput() {
        }

        @Override // wallet.core.jni.proto.Hedera.SigningOutputOrBuilder
        public ByteString getEncoded() {
            return this.encoded_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEncoded(ByteString value) {
            value.getClass();
            this.encoded_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearEncoded() {
            this.encoded_ = getDefaultInstance().getEncoded();
        }

        public static SigningOutput parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningOutput parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningOutput parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningOutput parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningOutput parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningOutput parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningOutput parseFrom(InputStream input) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningOutput parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SigningOutput parseDelimitedFrom(InputStream input) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningOutput parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SigningOutput parseFrom(CodedInputStream input) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningOutput parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(SigningOutput prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningOutput, Builder> implements SigningOutputOrBuilder {
            /* synthetic */ Builder(C79371 c79371) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Hedera.SigningOutputOrBuilder
            public ByteString getEncoded() {
                return ((SigningOutput) this.instance).getEncoded();
            }

            public Builder setEncoded(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setEncoded(value);
                return this;
            }

            public Builder clearEncoded() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearEncoded();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79371.f2159xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n", new Object[]{"encoded_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<SigningOutput> parser = PARSER;
                    if (parser == null) {
                        synchronized (SigningOutput.class) {
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
            SigningOutput signingOutput = new SigningOutput();
            DEFAULT_INSTANCE = signingOutput;
            GeneratedMessageLite.registerDefaultInstance(SigningOutput.class, signingOutput);
        }

        public static SigningOutput getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<SigningOutput> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }
}
