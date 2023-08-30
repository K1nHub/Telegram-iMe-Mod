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
public final class Algorand {

    /* loaded from: classes7.dex */
    public interface AssetOptInOrBuilder extends MessageLiteOrBuilder {
        long getAssetId();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface AssetTransferOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        long getAssetId();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getToAddress();

        ByteString getToAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        AssetOptIn getAssetOptIn();

        AssetTransfer getAssetTransfer();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getFee();

        long getFirstRound();

        ByteString getGenesisHash();

        String getGenesisId();

        ByteString getGenesisIdBytes();

        long getLastRound();

        SigningInput.MessageOneofCase getMessageOneofCase();

        ByteString getNote();

        ByteString getPrivateKey();

        Transfer getTransfer();

        boolean hasAssetOptIn();

        boolean hasAssetTransfer();

        boolean hasTransfer();

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
    public interface TransferOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getToAddress();

        ByteString getToAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Algorand() {
    }

    /* loaded from: classes7.dex */
    public static final class Transfer extends GeneratedMessageLite<Transfer, Builder> implements TransferOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 2;
        private static final Transfer DEFAULT_INSTANCE;
        private static volatile Parser<Transfer> PARSER = null;
        public static final int TO_ADDRESS_FIELD_NUMBER = 1;
        private long amount_;
        private String toAddress_ = "";

        private Transfer() {
        }

        @Override // wallet.core.jni.proto.Algorand.TransferOrBuilder
        public String getToAddress() {
            return this.toAddress_;
        }

        @Override // wallet.core.jni.proto.Algorand.TransferOrBuilder
        public ByteString getToAddressBytes() {
            return ByteString.copyFromUtf8(this.toAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToAddress(String value) {
            value.getClass();
            this.toAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearToAddress() {
            this.toAddress_ = getDefaultInstance().getToAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.toAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Algorand.TransferOrBuilder
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

        public static Transfer parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Transfer parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Transfer parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Transfer parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Transfer parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Transfer parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Transfer parseFrom(InputStream input) throws IOException {
            return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Transfer parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Transfer parseDelimitedFrom(InputStream input) throws IOException {
            return (Transfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Transfer parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Transfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Transfer parseFrom(CodedInputStream input) throws IOException {
            return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Transfer parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Transfer prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Transfer, Builder> implements TransferOrBuilder {
            /* synthetic */ Builder(C74021 c74021) {
                this();
            }

            private Builder() {
                super(Transfer.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Algorand.TransferOrBuilder
            public String getToAddress() {
                return ((Transfer) this.instance).getToAddress();
            }

            @Override // wallet.core.jni.proto.Algorand.TransferOrBuilder
            public ByteString getToAddressBytes() {
                return ((Transfer) this.instance).getToAddressBytes();
            }

            public Builder setToAddress(String value) {
                copyOnWrite();
                ((Transfer) this.instance).setToAddress(value);
                return this;
            }

            public Builder clearToAddress() {
                copyOnWrite();
                ((Transfer) this.instance).clearToAddress();
                return this;
            }

            public Builder setToAddressBytes(ByteString value) {
                copyOnWrite();
                ((Transfer) this.instance).setToAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Algorand.TransferOrBuilder
            public long getAmount() {
                return ((Transfer) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((Transfer) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((Transfer) this.instance).clearAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C74021.f1942xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Transfer();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\u0003", new Object[]{"toAddress_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Transfer> parser = PARSER;
                    if (parser == null) {
                        synchronized (Transfer.class) {
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
            Transfer transfer = new Transfer();
            DEFAULT_INSTANCE = transfer;
            GeneratedMessageLite.registerDefaultInstance(Transfer.class, transfer);
        }

        public static Transfer getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Transfer> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* renamed from: wallet.core.jni.proto.Algorand$1 */
    /* loaded from: classes7.dex */
    static /* synthetic */ class C74021 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1942xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1942xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1942xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1942xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1942xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1942xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1942xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1942xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public static final class AssetTransfer extends GeneratedMessageLite<AssetTransfer, Builder> implements AssetTransferOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 2;
        public static final int ASSET_ID_FIELD_NUMBER = 3;
        private static final AssetTransfer DEFAULT_INSTANCE;
        private static volatile Parser<AssetTransfer> PARSER = null;
        public static final int TO_ADDRESS_FIELD_NUMBER = 1;
        private long amount_;
        private long assetId_;
        private String toAddress_ = "";

        private AssetTransfer() {
        }

        @Override // wallet.core.jni.proto.Algorand.AssetTransferOrBuilder
        public String getToAddress() {
            return this.toAddress_;
        }

        @Override // wallet.core.jni.proto.Algorand.AssetTransferOrBuilder
        public ByteString getToAddressBytes() {
            return ByteString.copyFromUtf8(this.toAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToAddress(String value) {
            value.getClass();
            this.toAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearToAddress() {
            this.toAddress_ = getDefaultInstance().getToAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.toAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Algorand.AssetTransferOrBuilder
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

        @Override // wallet.core.jni.proto.Algorand.AssetTransferOrBuilder
        public long getAssetId() {
            return this.assetId_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAssetId(long value) {
            this.assetId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAssetId() {
            this.assetId_ = 0L;
        }

        public static AssetTransfer parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (AssetTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static AssetTransfer parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (AssetTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static AssetTransfer parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (AssetTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static AssetTransfer parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (AssetTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static AssetTransfer parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (AssetTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static AssetTransfer parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (AssetTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static AssetTransfer parseFrom(InputStream input) throws IOException {
            return (AssetTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static AssetTransfer parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (AssetTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static AssetTransfer parseDelimitedFrom(InputStream input) throws IOException {
            return (AssetTransfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static AssetTransfer parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (AssetTransfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static AssetTransfer parseFrom(CodedInputStream input) throws IOException {
            return (AssetTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static AssetTransfer parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (AssetTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(AssetTransfer prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<AssetTransfer, Builder> implements AssetTransferOrBuilder {
            /* synthetic */ Builder(C74021 c74021) {
                this();
            }

            private Builder() {
                super(AssetTransfer.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Algorand.AssetTransferOrBuilder
            public String getToAddress() {
                return ((AssetTransfer) this.instance).getToAddress();
            }

            @Override // wallet.core.jni.proto.Algorand.AssetTransferOrBuilder
            public ByteString getToAddressBytes() {
                return ((AssetTransfer) this.instance).getToAddressBytes();
            }

            public Builder setToAddress(String value) {
                copyOnWrite();
                ((AssetTransfer) this.instance).setToAddress(value);
                return this;
            }

            public Builder clearToAddress() {
                copyOnWrite();
                ((AssetTransfer) this.instance).clearToAddress();
                return this;
            }

            public Builder setToAddressBytes(ByteString value) {
                copyOnWrite();
                ((AssetTransfer) this.instance).setToAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Algorand.AssetTransferOrBuilder
            public long getAmount() {
                return ((AssetTransfer) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((AssetTransfer) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((AssetTransfer) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Algorand.AssetTransferOrBuilder
            public long getAssetId() {
                return ((AssetTransfer) this.instance).getAssetId();
            }

            public Builder setAssetId(long value) {
                copyOnWrite();
                ((AssetTransfer) this.instance).setAssetId(value);
                return this;
            }

            public Builder clearAssetId() {
                copyOnWrite();
                ((AssetTransfer) this.instance).clearAssetId();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C74021.f1942xa1df5c61[method.ordinal()]) {
                case 1:
                    return new AssetTransfer();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\u0003\u0003\u0003", new Object[]{"toAddress_", "amount_", "assetId_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<AssetTransfer> parser = PARSER;
                    if (parser == null) {
                        synchronized (AssetTransfer.class) {
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
            AssetTransfer assetTransfer = new AssetTransfer();
            DEFAULT_INSTANCE = assetTransfer;
            GeneratedMessageLite.registerDefaultInstance(AssetTransfer.class, assetTransfer);
        }

        public static AssetTransfer getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<AssetTransfer> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class AssetOptIn extends GeneratedMessageLite<AssetOptIn, Builder> implements AssetOptInOrBuilder {
        public static final int ASSET_ID_FIELD_NUMBER = 1;
        private static final AssetOptIn DEFAULT_INSTANCE;
        private static volatile Parser<AssetOptIn> PARSER;
        private long assetId_;

        private AssetOptIn() {
        }

        @Override // wallet.core.jni.proto.Algorand.AssetOptInOrBuilder
        public long getAssetId() {
            return this.assetId_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAssetId(long value) {
            this.assetId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAssetId() {
            this.assetId_ = 0L;
        }

        public static AssetOptIn parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (AssetOptIn) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static AssetOptIn parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (AssetOptIn) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static AssetOptIn parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (AssetOptIn) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static AssetOptIn parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (AssetOptIn) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static AssetOptIn parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (AssetOptIn) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static AssetOptIn parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (AssetOptIn) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static AssetOptIn parseFrom(InputStream input) throws IOException {
            return (AssetOptIn) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static AssetOptIn parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (AssetOptIn) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static AssetOptIn parseDelimitedFrom(InputStream input) throws IOException {
            return (AssetOptIn) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static AssetOptIn parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (AssetOptIn) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static AssetOptIn parseFrom(CodedInputStream input) throws IOException {
            return (AssetOptIn) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static AssetOptIn parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (AssetOptIn) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(AssetOptIn prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<AssetOptIn, Builder> implements AssetOptInOrBuilder {
            /* synthetic */ Builder(C74021 c74021) {
                this();
            }

            private Builder() {
                super(AssetOptIn.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Algorand.AssetOptInOrBuilder
            public long getAssetId() {
                return ((AssetOptIn) this.instance).getAssetId();
            }

            public Builder setAssetId(long value) {
                copyOnWrite();
                ((AssetOptIn) this.instance).setAssetId(value);
                return this;
            }

            public Builder clearAssetId() {
                copyOnWrite();
                ((AssetOptIn) this.instance).clearAssetId();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C74021.f1942xa1df5c61[method.ordinal()]) {
                case 1:
                    return new AssetOptIn();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0003", new Object[]{"assetId_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<AssetOptIn> parser = PARSER;
                    if (parser == null) {
                        synchronized (AssetOptIn.class) {
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
            AssetOptIn assetOptIn = new AssetOptIn();
            DEFAULT_INSTANCE = assetOptIn;
            GeneratedMessageLite.registerDefaultInstance(AssetOptIn.class, assetOptIn);
        }

        public static AssetOptIn getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<AssetOptIn> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int ASSET_OPT_IN_FIELD_NUMBER = 12;
        public static final int ASSET_TRANSFER_FIELD_NUMBER = 11;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int FEE_FIELD_NUMBER = 7;
        public static final int FIRST_ROUND_FIELD_NUMBER = 5;
        public static final int GENESIS_HASH_FIELD_NUMBER = 2;
        public static final int GENESIS_ID_FIELD_NUMBER = 1;
        public static final int LAST_ROUND_FIELD_NUMBER = 6;
        public static final int NOTE_FIELD_NUMBER = 3;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 4;
        public static final int TRANSFER_FIELD_NUMBER = 10;
        private long fee_;
        private long firstRound_;
        private ByteString genesisHash_;
        private long lastRound_;
        private Object messageOneof_;
        private ByteString note_;
        private ByteString privateKey_;
        private int messageOneofCase_ = 0;
        private String genesisId_ = "";

        private SigningInput() {
            ByteString byteString = ByteString.EMPTY;
            this.genesisHash_ = byteString;
            this.note_ = byteString;
            this.privateKey_ = byteString;
        }

        /* loaded from: classes7.dex */
        public enum MessageOneofCase {
            TRANSFER(10),
            ASSET_TRANSFER(11),
            ASSET_OPT_IN(12),
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
                    switch (value) {
                        case 10:
                            return TRANSFER;
                        case 11:
                            return ASSET_TRANSFER;
                        case 12:
                            return ASSET_OPT_IN;
                        default:
                            return null;
                    }
                }
                return MESSAGEONEOF_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
        public MessageOneofCase getMessageOneofCase() {
            return MessageOneofCase.forNumber(this.messageOneofCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMessageOneof() {
            this.messageOneofCase_ = 0;
            this.messageOneof_ = null;
        }

        @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
        public String getGenesisId() {
            return this.genesisId_;
        }

        @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
        public ByteString getGenesisIdBytes() {
            return ByteString.copyFromUtf8(this.genesisId_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGenesisId(String value) {
            value.getClass();
            this.genesisId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGenesisId() {
            this.genesisId_ = getDefaultInstance().getGenesisId();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGenesisIdBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.genesisId_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
        public ByteString getGenesisHash() {
            return this.genesisHash_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGenesisHash(ByteString value) {
            value.getClass();
            this.genesisHash_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGenesisHash() {
            this.genesisHash_ = getDefaultInstance().getGenesisHash();
        }

        @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
        public ByteString getNote() {
            return this.note_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNote(ByteString value) {
            value.getClass();
            this.note_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNote() {
            this.note_ = getDefaultInstance().getNote();
        }

        @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
        public long getFirstRound() {
            return this.firstRound_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFirstRound(long value) {
            this.firstRound_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFirstRound() {
            this.firstRound_ = 0L;
        }

        @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
        public long getLastRound() {
            return this.lastRound_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLastRound(long value) {
            this.lastRound_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearLastRound() {
            this.lastRound_ = 0L;
        }

        @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
        public boolean hasTransfer() {
            return this.messageOneofCase_ == 10;
        }

        @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
        public Transfer getTransfer() {
            if (this.messageOneofCase_ == 10) {
                return (Transfer) this.messageOneof_;
            }
            return Transfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransfer(Transfer value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransfer(Transfer value) {
            value.getClass();
            if (this.messageOneofCase_ == 10 && this.messageOneof_ != Transfer.getDefaultInstance()) {
                this.messageOneof_ = Transfer.newBuilder((Transfer) this.messageOneof_).mergeFrom((Transfer.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransfer() {
            if (this.messageOneofCase_ == 10) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
        public boolean hasAssetTransfer() {
            return this.messageOneofCase_ == 11;
        }

        @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
        public AssetTransfer getAssetTransfer() {
            if (this.messageOneofCase_ == 11) {
                return (AssetTransfer) this.messageOneof_;
            }
            return AssetTransfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAssetTransfer(AssetTransfer value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeAssetTransfer(AssetTransfer value) {
            value.getClass();
            if (this.messageOneofCase_ == 11 && this.messageOneof_ != AssetTransfer.getDefaultInstance()) {
                this.messageOneof_ = AssetTransfer.newBuilder((AssetTransfer) this.messageOneof_).mergeFrom((AssetTransfer.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAssetTransfer() {
            if (this.messageOneofCase_ == 11) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
        public boolean hasAssetOptIn() {
            return this.messageOneofCase_ == 12;
        }

        @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
        public AssetOptIn getAssetOptIn() {
            if (this.messageOneofCase_ == 12) {
                return (AssetOptIn) this.messageOneof_;
            }
            return AssetOptIn.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAssetOptIn(AssetOptIn value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeAssetOptIn(AssetOptIn value) {
            value.getClass();
            if (this.messageOneofCase_ == 12 && this.messageOneof_ != AssetOptIn.getDefaultInstance()) {
                this.messageOneof_ = AssetOptIn.newBuilder((AssetOptIn) this.messageOneof_).mergeFrom((AssetOptIn.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAssetOptIn() {
            if (this.messageOneofCase_ == 12) {
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

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningInput, Builder> implements SigningInputOrBuilder {
            /* synthetic */ Builder(C74021 c74021) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
            public MessageOneofCase getMessageOneofCase() {
                return ((SigningInput) this.instance).getMessageOneofCase();
            }

            public Builder clearMessageOneof() {
                copyOnWrite();
                ((SigningInput) this.instance).clearMessageOneof();
                return this;
            }

            @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
            public String getGenesisId() {
                return ((SigningInput) this.instance).getGenesisId();
            }

            @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
            public ByteString getGenesisIdBytes() {
                return ((SigningInput) this.instance).getGenesisIdBytes();
            }

            public Builder setGenesisId(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setGenesisId(value);
                return this;
            }

            public Builder clearGenesisId() {
                copyOnWrite();
                ((SigningInput) this.instance).clearGenesisId();
                return this;
            }

            public Builder setGenesisIdBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setGenesisIdBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
            public ByteString getGenesisHash() {
                return ((SigningInput) this.instance).getGenesisHash();
            }

            public Builder setGenesisHash(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setGenesisHash(value);
                return this;
            }

            public Builder clearGenesisHash() {
                copyOnWrite();
                ((SigningInput) this.instance).clearGenesisHash();
                return this;
            }

            @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
            public ByteString getNote() {
                return ((SigningInput) this.instance).getNote();
            }

            public Builder setNote(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setNote(value);
                return this;
            }

            public Builder clearNote() {
                copyOnWrite();
                ((SigningInput) this.instance).clearNote();
                return this;
            }

            @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
            public long getFirstRound() {
                return ((SigningInput) this.instance).getFirstRound();
            }

            public Builder setFirstRound(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setFirstRound(value);
                return this;
            }

            public Builder clearFirstRound() {
                copyOnWrite();
                ((SigningInput) this.instance).clearFirstRound();
                return this;
            }

            @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
            public long getLastRound() {
                return ((SigningInput) this.instance).getLastRound();
            }

            public Builder setLastRound(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setLastRound(value);
                return this;
            }

            public Builder clearLastRound() {
                copyOnWrite();
                ((SigningInput) this.instance).clearLastRound();
                return this;
            }

            @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
            public long getFee() {
                return ((SigningInput) this.instance).getFee();
            }

            public Builder setFee(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setFee(value);
                return this;
            }

            public Builder clearFee() {
                copyOnWrite();
                ((SigningInput) this.instance).clearFee();
                return this;
            }

            @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
            public boolean hasTransfer() {
                return ((SigningInput) this.instance).hasTransfer();
            }

            @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
            public Transfer getTransfer() {
                return ((SigningInput) this.instance).getTransfer();
            }

            public Builder setTransfer(Transfer value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTransfer(value);
                return this;
            }

            public Builder setTransfer(Transfer.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setTransfer(builderForValue.build());
                return this;
            }

            public Builder mergeTransfer(Transfer value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeTransfer(value);
                return this;
            }

            public Builder clearTransfer() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTransfer();
                return this;
            }

            @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
            public boolean hasAssetTransfer() {
                return ((SigningInput) this.instance).hasAssetTransfer();
            }

            @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
            public AssetTransfer getAssetTransfer() {
                return ((SigningInput) this.instance).getAssetTransfer();
            }

            public Builder setAssetTransfer(AssetTransfer value) {
                copyOnWrite();
                ((SigningInput) this.instance).setAssetTransfer(value);
                return this;
            }

            public Builder setAssetTransfer(AssetTransfer.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setAssetTransfer(builderForValue.build());
                return this;
            }

            public Builder mergeAssetTransfer(AssetTransfer value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeAssetTransfer(value);
                return this;
            }

            public Builder clearAssetTransfer() {
                copyOnWrite();
                ((SigningInput) this.instance).clearAssetTransfer();
                return this;
            }

            @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
            public boolean hasAssetOptIn() {
                return ((SigningInput) this.instance).hasAssetOptIn();
            }

            @Override // wallet.core.jni.proto.Algorand.SigningInputOrBuilder
            public AssetOptIn getAssetOptIn() {
                return ((SigningInput) this.instance).getAssetOptIn();
            }

            public Builder setAssetOptIn(AssetOptIn value) {
                copyOnWrite();
                ((SigningInput) this.instance).setAssetOptIn(value);
                return this;
            }

            public Builder setAssetOptIn(AssetOptIn.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setAssetOptIn(builderForValue.build());
                return this;
            }

            public Builder mergeAssetOptIn(AssetOptIn value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeAssetOptIn(value);
                return this;
            }

            public Builder clearAssetOptIn() {
                copyOnWrite();
                ((SigningInput) this.instance).clearAssetOptIn();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C74021.f1942xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\n\u0001\u0000\u0001\f\n\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\n\u0004\n\u0005\u0003\u0006\u0003\u0007\u0003\n<\u0000\u000b<\u0000\f<\u0000", new Object[]{"messageOneof_", "messageOneofCase_", "genesisId_", "genesisHash_", "note_", "privateKey_", "firstRound_", "lastRound_", "fee_", Transfer.class, AssetTransfer.class, AssetOptIn.class});
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

        @Override // wallet.core.jni.proto.Algorand.SigningOutputOrBuilder
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
            /* synthetic */ Builder(C74021 c74021) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Algorand.SigningOutputOrBuilder
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
            switch (C74021.f1942xa1df5c61[method.ordinal()]) {
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
