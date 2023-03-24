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
/* loaded from: classes6.dex */
public final class Waves {

    /* loaded from: classes6.dex */
    public interface CancelLeaseMessageOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getFee();

        String getLeaseId();

        ByteString getLeaseIdBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface LeaseMessageOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getFee();

        String getTo();

        ByteString getToBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        CancelLeaseMessage getCancelLeaseMessage();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        LeaseMessage getLeaseMessage();

        SigningInput.MessageOneofCase getMessageOneofCase();

        ByteString getPrivateKey();

        long getTimestamp();

        TransferMessage getTransferMessage();

        boolean hasCancelLeaseMessage();

        boolean hasLeaseMessage();

        boolean hasTransferMessage();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getJson();

        ByteString getJsonBytes();

        ByteString getSignature();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TransferMessageOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        String getAsset();

        ByteString getAssetBytes();

        ByteString getAttachment();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getFee();

        String getFeeAsset();

        ByteString getFeeAssetBytes();

        String getTo();

        ByteString getToBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Waves() {
    }

    /* loaded from: classes6.dex */
    public static final class TransferMessage extends GeneratedMessageLite<TransferMessage, Builder> implements TransferMessageOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 1;
        public static final int ASSET_FIELD_NUMBER = 2;
        public static final int ATTACHMENT_FIELD_NUMBER = 6;
        private static final TransferMessage DEFAULT_INSTANCE;
        public static final int FEE_ASSET_FIELD_NUMBER = 4;
        public static final int FEE_FIELD_NUMBER = 3;
        private static volatile Parser<TransferMessage> PARSER = null;
        public static final int TO_FIELD_NUMBER = 5;
        private long amount_;
        private long fee_;
        private String asset_ = "";
        private String feeAsset_ = "";
        private String to_ = "";
        private ByteString attachment_ = ByteString.EMPTY;

        private TransferMessage() {
        }

        @Override // wallet.core.jni.proto.Waves.TransferMessageOrBuilder
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

        @Override // wallet.core.jni.proto.Waves.TransferMessageOrBuilder
        public String getAsset() {
            return this.asset_;
        }

        @Override // wallet.core.jni.proto.Waves.TransferMessageOrBuilder
        public ByteString getAssetBytes() {
            return ByteString.copyFromUtf8(this.asset_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAsset(String value) {
            value.getClass();
            this.asset_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAsset() {
            this.asset_ = getDefaultInstance().getAsset();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAssetBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.asset_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Waves.TransferMessageOrBuilder
        public long getFee() {
            return this.fee_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFee(long value) {
            this.fee_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFee() {
            this.fee_ = 0L;
        }

        @Override // wallet.core.jni.proto.Waves.TransferMessageOrBuilder
        public String getFeeAsset() {
            return this.feeAsset_;
        }

        @Override // wallet.core.jni.proto.Waves.TransferMessageOrBuilder
        public ByteString getFeeAssetBytes() {
            return ByteString.copyFromUtf8(this.feeAsset_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFeeAsset(String value) {
            value.getClass();
            this.feeAsset_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFeeAsset() {
            this.feeAsset_ = getDefaultInstance().getFeeAsset();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFeeAssetBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.feeAsset_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Waves.TransferMessageOrBuilder
        public String getTo() {
            return this.to_;
        }

        @Override // wallet.core.jni.proto.Waves.TransferMessageOrBuilder
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

        @Override // wallet.core.jni.proto.Waves.TransferMessageOrBuilder
        public ByteString getAttachment() {
            return this.attachment_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAttachment(ByteString value) {
            value.getClass();
            this.attachment_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAttachment() {
            this.attachment_ = getDefaultInstance().getAttachment();
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

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransferMessage, Builder> implements TransferMessageOrBuilder {
            /* synthetic */ Builder(C68211 c68211) {
                this();
            }

            private Builder() {
                super(TransferMessage.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Waves.TransferMessageOrBuilder
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

            @Override // wallet.core.jni.proto.Waves.TransferMessageOrBuilder
            public String getAsset() {
                return ((TransferMessage) this.instance).getAsset();
            }

            @Override // wallet.core.jni.proto.Waves.TransferMessageOrBuilder
            public ByteString getAssetBytes() {
                return ((TransferMessage) this.instance).getAssetBytes();
            }

            public Builder setAsset(String value) {
                copyOnWrite();
                ((TransferMessage) this.instance).setAsset(value);
                return this;
            }

            public Builder clearAsset() {
                copyOnWrite();
                ((TransferMessage) this.instance).clearAsset();
                return this;
            }

            public Builder setAssetBytes(ByteString value) {
                copyOnWrite();
                ((TransferMessage) this.instance).setAssetBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Waves.TransferMessageOrBuilder
            public long getFee() {
                return ((TransferMessage) this.instance).getFee();
            }

            public Builder setFee(long value) {
                copyOnWrite();
                ((TransferMessage) this.instance).setFee(value);
                return this;
            }

            public Builder clearFee() {
                copyOnWrite();
                ((TransferMessage) this.instance).clearFee();
                return this;
            }

            @Override // wallet.core.jni.proto.Waves.TransferMessageOrBuilder
            public String getFeeAsset() {
                return ((TransferMessage) this.instance).getFeeAsset();
            }

            @Override // wallet.core.jni.proto.Waves.TransferMessageOrBuilder
            public ByteString getFeeAssetBytes() {
                return ((TransferMessage) this.instance).getFeeAssetBytes();
            }

            public Builder setFeeAsset(String value) {
                copyOnWrite();
                ((TransferMessage) this.instance).setFeeAsset(value);
                return this;
            }

            public Builder clearFeeAsset() {
                copyOnWrite();
                ((TransferMessage) this.instance).clearFeeAsset();
                return this;
            }

            public Builder setFeeAssetBytes(ByteString value) {
                copyOnWrite();
                ((TransferMessage) this.instance).setFeeAssetBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Waves.TransferMessageOrBuilder
            public String getTo() {
                return ((TransferMessage) this.instance).getTo();
            }

            @Override // wallet.core.jni.proto.Waves.TransferMessageOrBuilder
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

            @Override // wallet.core.jni.proto.Waves.TransferMessageOrBuilder
            public ByteString getAttachment() {
                return ((TransferMessage) this.instance).getAttachment();
            }

            public Builder setAttachment(ByteString value) {
                copyOnWrite();
                ((TransferMessage) this.instance).setAttachment(value);
                return this;
            }

            public Builder clearAttachment() {
                copyOnWrite();
                ((TransferMessage) this.instance).clearAttachment();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68211.f1903xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransferMessage();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0002\u0002Ȉ\u0003\u0002\u0004Ȉ\u0005Ȉ\u0006\n", new Object[]{"amount_", "asset_", "fee_", "feeAsset_", "to_", "attachment_"});
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

    /* renamed from: wallet.core.jni.proto.Waves$1 */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C68211 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1903xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1903xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1903xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1903xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1903xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1903xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1903xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1903xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class LeaseMessage extends GeneratedMessageLite<LeaseMessage, Builder> implements LeaseMessageOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 1;
        private static final LeaseMessage DEFAULT_INSTANCE;
        public static final int FEE_FIELD_NUMBER = 3;
        private static volatile Parser<LeaseMessage> PARSER = null;
        public static final int TO_FIELD_NUMBER = 2;
        private long amount_;
        private long fee_;
        private String to_ = "";

        private LeaseMessage() {
        }

        @Override // wallet.core.jni.proto.Waves.LeaseMessageOrBuilder
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

        @Override // wallet.core.jni.proto.Waves.LeaseMessageOrBuilder
        public String getTo() {
            return this.to_;
        }

        @Override // wallet.core.jni.proto.Waves.LeaseMessageOrBuilder
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

        @Override // wallet.core.jni.proto.Waves.LeaseMessageOrBuilder
        public long getFee() {
            return this.fee_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFee(long value) {
            this.fee_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFee() {
            this.fee_ = 0L;
        }

        public static LeaseMessage parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (LeaseMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static LeaseMessage parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (LeaseMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static LeaseMessage parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (LeaseMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static LeaseMessage parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (LeaseMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static LeaseMessage parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (LeaseMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static LeaseMessage parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (LeaseMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static LeaseMessage parseFrom(InputStream input) throws IOException {
            return (LeaseMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static LeaseMessage parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (LeaseMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static LeaseMessage parseDelimitedFrom(InputStream input) throws IOException {
            return (LeaseMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static LeaseMessage parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (LeaseMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static LeaseMessage parseFrom(CodedInputStream input) throws IOException {
            return (LeaseMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static LeaseMessage parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (LeaseMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(LeaseMessage prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<LeaseMessage, Builder> implements LeaseMessageOrBuilder {
            /* synthetic */ Builder(C68211 c68211) {
                this();
            }

            private Builder() {
                super(LeaseMessage.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Waves.LeaseMessageOrBuilder
            public long getAmount() {
                return ((LeaseMessage) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((LeaseMessage) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((LeaseMessage) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Waves.LeaseMessageOrBuilder
            public String getTo() {
                return ((LeaseMessage) this.instance).getTo();
            }

            @Override // wallet.core.jni.proto.Waves.LeaseMessageOrBuilder
            public ByteString getToBytes() {
                return ((LeaseMessage) this.instance).getToBytes();
            }

            public Builder setTo(String value) {
                copyOnWrite();
                ((LeaseMessage) this.instance).setTo(value);
                return this;
            }

            public Builder clearTo() {
                copyOnWrite();
                ((LeaseMessage) this.instance).clearTo();
                return this;
            }

            public Builder setToBytes(ByteString value) {
                copyOnWrite();
                ((LeaseMessage) this.instance).setToBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Waves.LeaseMessageOrBuilder
            public long getFee() {
                return ((LeaseMessage) this.instance).getFee();
            }

            public Builder setFee(long value) {
                copyOnWrite();
                ((LeaseMessage) this.instance).setFee(value);
                return this;
            }

            public Builder clearFee() {
                copyOnWrite();
                ((LeaseMessage) this.instance).clearFee();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68211.f1903xa1df5c61[method.ordinal()]) {
                case 1:
                    return new LeaseMessage();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0002\u0002Ȉ\u0003\u0002", new Object[]{"amount_", "to_", "fee_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<LeaseMessage> parser = PARSER;
                    if (parser == null) {
                        synchronized (LeaseMessage.class) {
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
            LeaseMessage leaseMessage = new LeaseMessage();
            DEFAULT_INSTANCE = leaseMessage;
            GeneratedMessageLite.registerDefaultInstance(LeaseMessage.class, leaseMessage);
        }

        public static LeaseMessage getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<LeaseMessage> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class CancelLeaseMessage extends GeneratedMessageLite<CancelLeaseMessage, Builder> implements CancelLeaseMessageOrBuilder {
        private static final CancelLeaseMessage DEFAULT_INSTANCE;
        public static final int FEE_FIELD_NUMBER = 2;
        public static final int LEASE_ID_FIELD_NUMBER = 1;
        private static volatile Parser<CancelLeaseMessage> PARSER;
        private long fee_;
        private String leaseId_ = "";

        private CancelLeaseMessage() {
        }

        @Override // wallet.core.jni.proto.Waves.CancelLeaseMessageOrBuilder
        public String getLeaseId() {
            return this.leaseId_;
        }

        @Override // wallet.core.jni.proto.Waves.CancelLeaseMessageOrBuilder
        public ByteString getLeaseIdBytes() {
            return ByteString.copyFromUtf8(this.leaseId_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLeaseId(String value) {
            value.getClass();
            this.leaseId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearLeaseId() {
            this.leaseId_ = getDefaultInstance().getLeaseId();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLeaseIdBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.leaseId_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Waves.CancelLeaseMessageOrBuilder
        public long getFee() {
            return this.fee_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFee(long value) {
            this.fee_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFee() {
            this.fee_ = 0L;
        }

        public static CancelLeaseMessage parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (CancelLeaseMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CancelLeaseMessage parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CancelLeaseMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CancelLeaseMessage parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (CancelLeaseMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CancelLeaseMessage parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CancelLeaseMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CancelLeaseMessage parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (CancelLeaseMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CancelLeaseMessage parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CancelLeaseMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CancelLeaseMessage parseFrom(InputStream input) throws IOException {
            return (CancelLeaseMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static CancelLeaseMessage parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CancelLeaseMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static CancelLeaseMessage parseDelimitedFrom(InputStream input) throws IOException {
            return (CancelLeaseMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static CancelLeaseMessage parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CancelLeaseMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static CancelLeaseMessage parseFrom(CodedInputStream input) throws IOException {
            return (CancelLeaseMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static CancelLeaseMessage parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CancelLeaseMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(CancelLeaseMessage prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<CancelLeaseMessage, Builder> implements CancelLeaseMessageOrBuilder {
            /* synthetic */ Builder(C68211 c68211) {
                this();
            }

            private Builder() {
                super(CancelLeaseMessage.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Waves.CancelLeaseMessageOrBuilder
            public String getLeaseId() {
                return ((CancelLeaseMessage) this.instance).getLeaseId();
            }

            @Override // wallet.core.jni.proto.Waves.CancelLeaseMessageOrBuilder
            public ByteString getLeaseIdBytes() {
                return ((CancelLeaseMessage) this.instance).getLeaseIdBytes();
            }

            public Builder setLeaseId(String value) {
                copyOnWrite();
                ((CancelLeaseMessage) this.instance).setLeaseId(value);
                return this;
            }

            public Builder clearLeaseId() {
                copyOnWrite();
                ((CancelLeaseMessage) this.instance).clearLeaseId();
                return this;
            }

            public Builder setLeaseIdBytes(ByteString value) {
                copyOnWrite();
                ((CancelLeaseMessage) this.instance).setLeaseIdBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Waves.CancelLeaseMessageOrBuilder
            public long getFee() {
                return ((CancelLeaseMessage) this.instance).getFee();
            }

            public Builder setFee(long value) {
                copyOnWrite();
                ((CancelLeaseMessage) this.instance).setFee(value);
                return this;
            }

            public Builder clearFee() {
                copyOnWrite();
                ((CancelLeaseMessage) this.instance).clearFee();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68211.f1903xa1df5c61[method.ordinal()]) {
                case 1:
                    return new CancelLeaseMessage();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\u0002", new Object[]{"leaseId_", "fee_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<CancelLeaseMessage> parser = PARSER;
                    if (parser == null) {
                        synchronized (CancelLeaseMessage.class) {
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
            CancelLeaseMessage cancelLeaseMessage = new CancelLeaseMessage();
            DEFAULT_INSTANCE = cancelLeaseMessage;
            GeneratedMessageLite.registerDefaultInstance(CancelLeaseMessage.class, cancelLeaseMessage);
        }

        public static CancelLeaseMessage getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CancelLeaseMessage> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int CANCEL_LEASE_MESSAGE_FIELD_NUMBER = 5;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int LEASE_MESSAGE_FIELD_NUMBER = 4;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 2;
        public static final int TIMESTAMP_FIELD_NUMBER = 1;
        public static final int TRANSFER_MESSAGE_FIELD_NUMBER = 3;
        private Object messageOneof_;
        private long timestamp_;
        private int messageOneofCase_ = 0;
        private ByteString privateKey_ = ByteString.EMPTY;

        private SigningInput() {
        }

        /* loaded from: classes6.dex */
        public enum MessageOneofCase {
            TRANSFER_MESSAGE(3),
            LEASE_MESSAGE(4),
            CANCEL_LEASE_MESSAGE(5),
            MESSAGEONEOF_NOT_SET(0);
            
            private final int value;

            MessageOneofCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static MessageOneofCase valueOf(int value) {
                return forNumber(value);
            }

            public static MessageOneofCase forNumber(int value) {
                if (value != 0) {
                    if (value != 3) {
                        if (value != 4) {
                            if (value != 5) {
                                return null;
                            }
                            return CANCEL_LEASE_MESSAGE;
                        }
                        return LEASE_MESSAGE;
                    }
                    return TRANSFER_MESSAGE;
                }
                return MESSAGEONEOF_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Waves.SigningInputOrBuilder
        public MessageOneofCase getMessageOneofCase() {
            return MessageOneofCase.forNumber(this.messageOneofCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMessageOneof() {
            this.messageOneofCase_ = 0;
            this.messageOneof_ = null;
        }

        @Override // wallet.core.jni.proto.Waves.SigningInputOrBuilder
        public long getTimestamp() {
            return this.timestamp_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTimestamp(long value) {
            this.timestamp_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTimestamp() {
            this.timestamp_ = 0L;
        }

        @Override // wallet.core.jni.proto.Waves.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Waves.SigningInputOrBuilder
        public boolean hasTransferMessage() {
            return this.messageOneofCase_ == 3;
        }

        @Override // wallet.core.jni.proto.Waves.SigningInputOrBuilder
        public TransferMessage getTransferMessage() {
            if (this.messageOneofCase_ == 3) {
                return (TransferMessage) this.messageOneof_;
            }
            return TransferMessage.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransferMessage(TransferMessage value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransferMessage(TransferMessage value) {
            value.getClass();
            if (this.messageOneofCase_ == 3 && this.messageOneof_ != TransferMessage.getDefaultInstance()) {
                this.messageOneof_ = TransferMessage.newBuilder((TransferMessage) this.messageOneof_).mergeFrom((TransferMessage.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransferMessage() {
            if (this.messageOneofCase_ == 3) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Waves.SigningInputOrBuilder
        public boolean hasLeaseMessage() {
            return this.messageOneofCase_ == 4;
        }

        @Override // wallet.core.jni.proto.Waves.SigningInputOrBuilder
        public LeaseMessage getLeaseMessage() {
            if (this.messageOneofCase_ == 4) {
                return (LeaseMessage) this.messageOneof_;
            }
            return LeaseMessage.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLeaseMessage(LeaseMessage value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeLeaseMessage(LeaseMessage value) {
            value.getClass();
            if (this.messageOneofCase_ == 4 && this.messageOneof_ != LeaseMessage.getDefaultInstance()) {
                this.messageOneof_ = LeaseMessage.newBuilder((LeaseMessage) this.messageOneof_).mergeFrom((LeaseMessage.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearLeaseMessage() {
            if (this.messageOneofCase_ == 4) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Waves.SigningInputOrBuilder
        public boolean hasCancelLeaseMessage() {
            return this.messageOneofCase_ == 5;
        }

        @Override // wallet.core.jni.proto.Waves.SigningInputOrBuilder
        public CancelLeaseMessage getCancelLeaseMessage() {
            if (this.messageOneofCase_ == 5) {
                return (CancelLeaseMessage) this.messageOneof_;
            }
            return CancelLeaseMessage.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCancelLeaseMessage(CancelLeaseMessage value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeCancelLeaseMessage(CancelLeaseMessage value) {
            value.getClass();
            if (this.messageOneofCase_ == 5 && this.messageOneof_ != CancelLeaseMessage.getDefaultInstance()) {
                this.messageOneof_ = CancelLeaseMessage.newBuilder((CancelLeaseMessage) this.messageOneof_).mergeFrom((CancelLeaseMessage.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCancelLeaseMessage() {
            if (this.messageOneofCase_ == 5) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
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

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningInput, Builder> implements SigningInputOrBuilder {
            /* synthetic */ Builder(C68211 c68211) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Waves.SigningInputOrBuilder
            public MessageOneofCase getMessageOneofCase() {
                return ((SigningInput) this.instance).getMessageOneofCase();
            }

            public Builder clearMessageOneof() {
                copyOnWrite();
                ((SigningInput) this.instance).clearMessageOneof();
                return this;
            }

            @Override // wallet.core.jni.proto.Waves.SigningInputOrBuilder
            public long getTimestamp() {
                return ((SigningInput) this.instance).getTimestamp();
            }

            public Builder setTimestamp(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTimestamp(value);
                return this;
            }

            public Builder clearTimestamp() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTimestamp();
                return this;
            }

            @Override // wallet.core.jni.proto.Waves.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Waves.SigningInputOrBuilder
            public boolean hasTransferMessage() {
                return ((SigningInput) this.instance).hasTransferMessage();
            }

            @Override // wallet.core.jni.proto.Waves.SigningInputOrBuilder
            public TransferMessage getTransferMessage() {
                return ((SigningInput) this.instance).getTransferMessage();
            }

            public Builder setTransferMessage(TransferMessage value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTransferMessage(value);
                return this;
            }

            public Builder setTransferMessage(TransferMessage.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setTransferMessage(builderForValue.build());
                return this;
            }

            public Builder mergeTransferMessage(TransferMessage value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeTransferMessage(value);
                return this;
            }

            public Builder clearTransferMessage() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTransferMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Waves.SigningInputOrBuilder
            public boolean hasLeaseMessage() {
                return ((SigningInput) this.instance).hasLeaseMessage();
            }

            @Override // wallet.core.jni.proto.Waves.SigningInputOrBuilder
            public LeaseMessage getLeaseMessage() {
                return ((SigningInput) this.instance).getLeaseMessage();
            }

            public Builder setLeaseMessage(LeaseMessage value) {
                copyOnWrite();
                ((SigningInput) this.instance).setLeaseMessage(value);
                return this;
            }

            public Builder setLeaseMessage(LeaseMessage.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setLeaseMessage(builderForValue.build());
                return this;
            }

            public Builder mergeLeaseMessage(LeaseMessage value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeLeaseMessage(value);
                return this;
            }

            public Builder clearLeaseMessage() {
                copyOnWrite();
                ((SigningInput) this.instance).clearLeaseMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Waves.SigningInputOrBuilder
            public boolean hasCancelLeaseMessage() {
                return ((SigningInput) this.instance).hasCancelLeaseMessage();
            }

            @Override // wallet.core.jni.proto.Waves.SigningInputOrBuilder
            public CancelLeaseMessage getCancelLeaseMessage() {
                return ((SigningInput) this.instance).getCancelLeaseMessage();
            }

            public Builder setCancelLeaseMessage(CancelLeaseMessage value) {
                copyOnWrite();
                ((SigningInput) this.instance).setCancelLeaseMessage(value);
                return this;
            }

            public Builder setCancelLeaseMessage(CancelLeaseMessage.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setCancelLeaseMessage(builderForValue.build());
                return this;
            }

            public Builder mergeCancelLeaseMessage(CancelLeaseMessage value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeCancelLeaseMessage(value);
                return this;
            }

            public Builder clearCancelLeaseMessage() {
                copyOnWrite();
                ((SigningInput) this.instance).clearCancelLeaseMessage();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68211.f1903xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0001\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0002\u0002\n\u0003<\u0000\u0004<\u0000\u0005<\u0000", new Object[]{"messageOneof_", "messageOneofCase_", "timestamp_", "privateKey_", TransferMessage.class, LeaseMessage.class, CancelLeaseMessage.class});
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

    /* loaded from: classes6.dex */
    public static final class SigningOutput extends GeneratedMessageLite<SigningOutput, Builder> implements SigningOutputOrBuilder {
        private static final SigningOutput DEFAULT_INSTANCE;
        public static final int JSON_FIELD_NUMBER = 2;
        private static volatile Parser<SigningOutput> PARSER = null;
        public static final int SIGNATURE_FIELD_NUMBER = 1;
        private ByteString signature_ = ByteString.EMPTY;
        private String json_ = "";

        private SigningOutput() {
        }

        @Override // wallet.core.jni.proto.Waves.SigningOutputOrBuilder
        public ByteString getSignature() {
            return this.signature_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSignature(ByteString value) {
            value.getClass();
            this.signature_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSignature() {
            this.signature_ = getDefaultInstance().getSignature();
        }

        @Override // wallet.core.jni.proto.Waves.SigningOutputOrBuilder
        public String getJson() {
            return this.json_;
        }

        @Override // wallet.core.jni.proto.Waves.SigningOutputOrBuilder
        public ByteString getJsonBytes() {
            return ByteString.copyFromUtf8(this.json_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setJson(String value) {
            value.getClass();
            this.json_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearJson() {
            this.json_ = getDefaultInstance().getJson();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setJsonBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.json_ = value.toStringUtf8();
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

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningOutput, Builder> implements SigningOutputOrBuilder {
            /* synthetic */ Builder(C68211 c68211) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Waves.SigningOutputOrBuilder
            public ByteString getSignature() {
                return ((SigningOutput) this.instance).getSignature();
            }

            public Builder setSignature(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setSignature(value);
                return this;
            }

            public Builder clearSignature() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearSignature();
                return this;
            }

            @Override // wallet.core.jni.proto.Waves.SigningOutputOrBuilder
            public String getJson() {
                return ((SigningOutput) this.instance).getJson();
            }

            @Override // wallet.core.jni.proto.Waves.SigningOutputOrBuilder
            public ByteString getJsonBytes() {
                return ((SigningOutput) this.instance).getJsonBytes();
            }

            public Builder setJson(String value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setJson(value);
                return this;
            }

            public Builder clearJson() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearJson();
                return this;
            }

            public Builder setJsonBytes(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setJsonBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68211.f1903xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002Ȉ", new Object[]{"signature_", "json_"});
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
