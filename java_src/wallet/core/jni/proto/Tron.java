package wallet.core.jni.proto;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLite;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
/* loaded from: classes7.dex */
public final class Tron {

    /* loaded from: classes7.dex */
    public interface BlockHeaderOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getNumber();

        ByteString getParentHash();

        long getTimestamp();

        ByteString getTxTrieRoot();

        int getVersion();

        ByteString getWitnessAddress();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface DelegateResourceContractOrBuilder extends MessageLiteOrBuilder {
        long getBalance();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        boolean getLock();

        String getOwnerAddress();

        ByteString getOwnerAddressBytes();

        String getReceiverAddress();

        ByteString getReceiverAddressBytes();

        String getResource();

        ByteString getResourceBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface FreezeBalanceContractOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getFrozenBalance();

        long getFrozenDuration();

        String getOwnerAddress();

        ByteString getOwnerAddressBytes();

        String getReceiverAddress();

        ByteString getReceiverAddressBytes();

        String getResource();

        ByteString getResourceBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface FreezeBalanceV2ContractOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getFrozenBalance();

        String getOwnerAddress();

        ByteString getOwnerAddressBytes();

        String getResource();

        ByteString getResourceBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getPrivateKey();

        Transaction getTransaction();

        boolean hasTransaction();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getId();

        String getJson();

        ByteString getJsonBytes();

        ByteString getRefBlockBytes();

        ByteString getRefBlockHash();

        ByteString getSignature();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface TransactionOrBuilder extends MessageLiteOrBuilder {
        BlockHeader getBlockHeader();

        Transaction.ContractOneofCase getContractOneofCase();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        DelegateResourceContract getDelegateResource();

        long getExpiration();

        long getFeeLimit();

        FreezeBalanceContract getFreezeBalance();

        FreezeBalanceV2Contract getFreezeBalanceV2();

        long getTimestamp();

        TransferContract getTransfer();

        TransferAssetContract getTransferAsset();

        TransferTRC20Contract getTransferTrc20Contract();

        TriggerSmartContract getTriggerSmartContract();

        UnDelegateResourceContract getUndelegateResource();

        UnfreezeAssetContract getUnfreezeAsset();

        UnfreezeBalanceContract getUnfreezeBalance();

        UnfreezeBalanceV2Contract getUnfreezeBalanceV2();

        VoteAssetContract getVoteAsset();

        VoteWitnessContract getVoteWitness();

        WithdrawBalanceContract getWithdrawBalance();

        WithdrawExpireUnfreezeContract getWithdrawExpireUnfreeze();

        boolean hasBlockHeader();

        boolean hasDelegateResource();

        boolean hasFreezeBalance();

        boolean hasFreezeBalanceV2();

        boolean hasTransfer();

        boolean hasTransferAsset();

        boolean hasTransferTrc20Contract();

        boolean hasTriggerSmartContract();

        boolean hasUndelegateResource();

        boolean hasUnfreezeAsset();

        boolean hasUnfreezeBalance();

        boolean hasUnfreezeBalanceV2();

        boolean hasVoteAsset();

        boolean hasVoteWitness();

        boolean hasWithdrawBalance();

        boolean hasWithdrawExpireUnfreeze();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface TransferAssetContractOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        String getAssetName();

        ByteString getAssetNameBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getOwnerAddress();

        ByteString getOwnerAddressBytes();

        String getToAddress();

        ByteString getToAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface TransferContractOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getOwnerAddress();

        ByteString getOwnerAddressBytes();

        String getToAddress();

        ByteString getToAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface TransferTRC20ContractOrBuilder extends MessageLiteOrBuilder {
        ByteString getAmount();

        String getContractAddress();

        ByteString getContractAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getOwnerAddress();

        ByteString getOwnerAddressBytes();

        String getToAddress();

        ByteString getToAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface TriggerSmartContractOrBuilder extends MessageLiteOrBuilder {
        long getCallTokenValue();

        long getCallValue();

        String getContractAddress();

        ByteString getContractAddressBytes();

        ByteString getData();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getOwnerAddress();

        ByteString getOwnerAddressBytes();

        long getTokenId();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface UnDelegateResourceContractOrBuilder extends MessageLiteOrBuilder {
        long getBalance();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getOwnerAddress();

        ByteString getOwnerAddressBytes();

        String getReceiverAddress();

        ByteString getReceiverAddressBytes();

        String getResource();

        ByteString getResourceBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface UnfreezeAssetContractOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getOwnerAddress();

        ByteString getOwnerAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface UnfreezeBalanceContractOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getOwnerAddress();

        ByteString getOwnerAddressBytes();

        String getReceiverAddress();

        ByteString getReceiverAddressBytes();

        String getResource();

        ByteString getResourceBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface UnfreezeBalanceV2ContractOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getOwnerAddress();

        ByteString getOwnerAddressBytes();

        String getResource();

        ByteString getResourceBytes();

        long getUnfreezeBalance();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface VoteAssetContractOrBuilder extends MessageLiteOrBuilder {
        int getCount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getOwnerAddress();

        ByteString getOwnerAddressBytes();

        boolean getSupport();

        String getVoteAddress(int index);

        ByteString getVoteAddressBytes(int index);

        int getVoteAddressCount();

        List<String> getVoteAddressList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface VoteWitnessContractOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getOwnerAddress();

        ByteString getOwnerAddressBytes();

        boolean getSupport();

        VoteWitnessContract.Vote getVotes(int index);

        int getVotesCount();

        List<VoteWitnessContract.Vote> getVotesList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface WithdrawBalanceContractOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getOwnerAddress();

        ByteString getOwnerAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface WithdrawExpireUnfreezeContractOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getOwnerAddress();

        ByteString getOwnerAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Tron() {
    }

    /* loaded from: classes7.dex */
    public static final class TransferContract extends GeneratedMessageLite<TransferContract, Builder> implements TransferContractOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 3;
        private static final TransferContract DEFAULT_INSTANCE;
        public static final int OWNER_ADDRESS_FIELD_NUMBER = 1;
        private static volatile Parser<TransferContract> PARSER = null;
        public static final int TO_ADDRESS_FIELD_NUMBER = 2;
        private long amount_;
        private String ownerAddress_ = "";
        private String toAddress_ = "";

        private TransferContract() {
        }

        @Override // wallet.core.jni.proto.Tron.TransferContractOrBuilder
        public String getOwnerAddress() {
            return this.ownerAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.TransferContractOrBuilder
        public ByteString getOwnerAddressBytes() {
            return ByteString.copyFromUtf8(this.ownerAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddress(String value) {
            value.getClass();
            this.ownerAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOwnerAddress() {
            this.ownerAddress_ = getDefaultInstance().getOwnerAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.ownerAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tron.TransferContractOrBuilder
        public String getToAddress() {
            return this.toAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.TransferContractOrBuilder
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

        @Override // wallet.core.jni.proto.Tron.TransferContractOrBuilder
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

        public static TransferContract parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TransferContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransferContract parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransferContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransferContract parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TransferContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransferContract parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransferContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransferContract parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TransferContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransferContract parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransferContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransferContract parseFrom(InputStream input) throws IOException {
            return (TransferContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransferContract parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransferContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransferContract parseDelimitedFrom(InputStream input) throws IOException {
            return (TransferContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TransferContract parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransferContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransferContract parseFrom(CodedInputStream input) throws IOException {
            return (TransferContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransferContract parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransferContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TransferContract prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransferContract, Builder> implements TransferContractOrBuilder {
            /* synthetic */ Builder(C72451 c72451) {
                this();
            }

            private Builder() {
                super(TransferContract.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tron.TransferContractOrBuilder
            public String getOwnerAddress() {
                return ((TransferContract) this.instance).getOwnerAddress();
            }

            @Override // wallet.core.jni.proto.Tron.TransferContractOrBuilder
            public ByteString getOwnerAddressBytes() {
                return ((TransferContract) this.instance).getOwnerAddressBytes();
            }

            public Builder setOwnerAddress(String value) {
                copyOnWrite();
                ((TransferContract) this.instance).setOwnerAddress(value);
                return this;
            }

            public Builder clearOwnerAddress() {
                copyOnWrite();
                ((TransferContract) this.instance).clearOwnerAddress();
                return this;
            }

            public Builder setOwnerAddressBytes(ByteString value) {
                copyOnWrite();
                ((TransferContract) this.instance).setOwnerAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransferContractOrBuilder
            public String getToAddress() {
                return ((TransferContract) this.instance).getToAddress();
            }

            @Override // wallet.core.jni.proto.Tron.TransferContractOrBuilder
            public ByteString getToAddressBytes() {
                return ((TransferContract) this.instance).getToAddressBytes();
            }

            public Builder setToAddress(String value) {
                copyOnWrite();
                ((TransferContract) this.instance).setToAddress(value);
                return this;
            }

            public Builder clearToAddress() {
                copyOnWrite();
                ((TransferContract) this.instance).clearToAddress();
                return this;
            }

            public Builder setToAddressBytes(ByteString value) {
                copyOnWrite();
                ((TransferContract) this.instance).setToAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransferContractOrBuilder
            public long getAmount() {
                return ((TransferContract) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((TransferContract) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TransferContract) this.instance).clearAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C72451.f1969xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransferContract();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u0002", new Object[]{"ownerAddress_", "toAddress_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TransferContract> parser = PARSER;
                    if (parser == null) {
                        synchronized (TransferContract.class) {
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
            TransferContract transferContract = new TransferContract();
            DEFAULT_INSTANCE = transferContract;
            GeneratedMessageLite.registerDefaultInstance(TransferContract.class, transferContract);
        }

        public static TransferContract getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TransferContract> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* renamed from: wallet.core.jni.proto.Tron$1 */
    /* loaded from: classes7.dex */
    static /* synthetic */ class C72451 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1969xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1969xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1969xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1969xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1969xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1969xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1969xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1969xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public static final class TransferAssetContract extends GeneratedMessageLite<TransferAssetContract, Builder> implements TransferAssetContractOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 4;
        public static final int ASSET_NAME_FIELD_NUMBER = 1;
        private static final TransferAssetContract DEFAULT_INSTANCE;
        public static final int OWNER_ADDRESS_FIELD_NUMBER = 2;
        private static volatile Parser<TransferAssetContract> PARSER = null;
        public static final int TO_ADDRESS_FIELD_NUMBER = 3;
        private long amount_;
        private String assetName_ = "";
        private String ownerAddress_ = "";
        private String toAddress_ = "";

        private TransferAssetContract() {
        }

        @Override // wallet.core.jni.proto.Tron.TransferAssetContractOrBuilder
        public String getAssetName() {
            return this.assetName_;
        }

        @Override // wallet.core.jni.proto.Tron.TransferAssetContractOrBuilder
        public ByteString getAssetNameBytes() {
            return ByteString.copyFromUtf8(this.assetName_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAssetName(String value) {
            value.getClass();
            this.assetName_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAssetName() {
            this.assetName_ = getDefaultInstance().getAssetName();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAssetNameBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.assetName_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tron.TransferAssetContractOrBuilder
        public String getOwnerAddress() {
            return this.ownerAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.TransferAssetContractOrBuilder
        public ByteString getOwnerAddressBytes() {
            return ByteString.copyFromUtf8(this.ownerAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddress(String value) {
            value.getClass();
            this.ownerAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOwnerAddress() {
            this.ownerAddress_ = getDefaultInstance().getOwnerAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.ownerAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tron.TransferAssetContractOrBuilder
        public String getToAddress() {
            return this.toAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.TransferAssetContractOrBuilder
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

        @Override // wallet.core.jni.proto.Tron.TransferAssetContractOrBuilder
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

        public static TransferAssetContract parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TransferAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransferAssetContract parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransferAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransferAssetContract parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TransferAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransferAssetContract parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransferAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransferAssetContract parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TransferAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransferAssetContract parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransferAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransferAssetContract parseFrom(InputStream input) throws IOException {
            return (TransferAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransferAssetContract parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransferAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransferAssetContract parseDelimitedFrom(InputStream input) throws IOException {
            return (TransferAssetContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TransferAssetContract parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransferAssetContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransferAssetContract parseFrom(CodedInputStream input) throws IOException {
            return (TransferAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransferAssetContract parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransferAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TransferAssetContract prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransferAssetContract, Builder> implements TransferAssetContractOrBuilder {
            /* synthetic */ Builder(C72451 c72451) {
                this();
            }

            private Builder() {
                super(TransferAssetContract.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tron.TransferAssetContractOrBuilder
            public String getAssetName() {
                return ((TransferAssetContract) this.instance).getAssetName();
            }

            @Override // wallet.core.jni.proto.Tron.TransferAssetContractOrBuilder
            public ByteString getAssetNameBytes() {
                return ((TransferAssetContract) this.instance).getAssetNameBytes();
            }

            public Builder setAssetName(String value) {
                copyOnWrite();
                ((TransferAssetContract) this.instance).setAssetName(value);
                return this;
            }

            public Builder clearAssetName() {
                copyOnWrite();
                ((TransferAssetContract) this.instance).clearAssetName();
                return this;
            }

            public Builder setAssetNameBytes(ByteString value) {
                copyOnWrite();
                ((TransferAssetContract) this.instance).setAssetNameBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransferAssetContractOrBuilder
            public String getOwnerAddress() {
                return ((TransferAssetContract) this.instance).getOwnerAddress();
            }

            @Override // wallet.core.jni.proto.Tron.TransferAssetContractOrBuilder
            public ByteString getOwnerAddressBytes() {
                return ((TransferAssetContract) this.instance).getOwnerAddressBytes();
            }

            public Builder setOwnerAddress(String value) {
                copyOnWrite();
                ((TransferAssetContract) this.instance).setOwnerAddress(value);
                return this;
            }

            public Builder clearOwnerAddress() {
                copyOnWrite();
                ((TransferAssetContract) this.instance).clearOwnerAddress();
                return this;
            }

            public Builder setOwnerAddressBytes(ByteString value) {
                copyOnWrite();
                ((TransferAssetContract) this.instance).setOwnerAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransferAssetContractOrBuilder
            public String getToAddress() {
                return ((TransferAssetContract) this.instance).getToAddress();
            }

            @Override // wallet.core.jni.proto.Tron.TransferAssetContractOrBuilder
            public ByteString getToAddressBytes() {
                return ((TransferAssetContract) this.instance).getToAddressBytes();
            }

            public Builder setToAddress(String value) {
                copyOnWrite();
                ((TransferAssetContract) this.instance).setToAddress(value);
                return this;
            }

            public Builder clearToAddress() {
                copyOnWrite();
                ((TransferAssetContract) this.instance).clearToAddress();
                return this;
            }

            public Builder setToAddressBytes(ByteString value) {
                copyOnWrite();
                ((TransferAssetContract) this.instance).setToAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransferAssetContractOrBuilder
            public long getAmount() {
                return ((TransferAssetContract) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((TransferAssetContract) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TransferAssetContract) this.instance).clearAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C72451.f1969xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransferAssetContract();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004\u0002", new Object[]{"assetName_", "ownerAddress_", "toAddress_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TransferAssetContract> parser = PARSER;
                    if (parser == null) {
                        synchronized (TransferAssetContract.class) {
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
            TransferAssetContract transferAssetContract = new TransferAssetContract();
            DEFAULT_INSTANCE = transferAssetContract;
            GeneratedMessageLite.registerDefaultInstance(TransferAssetContract.class, transferAssetContract);
        }

        public static TransferAssetContract getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TransferAssetContract> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class TransferTRC20Contract extends GeneratedMessageLite<TransferTRC20Contract, Builder> implements TransferTRC20ContractOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 4;
        public static final int CONTRACT_ADDRESS_FIELD_NUMBER = 1;
        private static final TransferTRC20Contract DEFAULT_INSTANCE;
        public static final int OWNER_ADDRESS_FIELD_NUMBER = 2;
        private static volatile Parser<TransferTRC20Contract> PARSER = null;
        public static final int TO_ADDRESS_FIELD_NUMBER = 3;
        private String contractAddress_ = "";
        private String ownerAddress_ = "";
        private String toAddress_ = "";
        private ByteString amount_ = ByteString.EMPTY;

        private TransferTRC20Contract() {
        }

        @Override // wallet.core.jni.proto.Tron.TransferTRC20ContractOrBuilder
        public String getContractAddress() {
            return this.contractAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.TransferTRC20ContractOrBuilder
        public ByteString getContractAddressBytes() {
            return ByteString.copyFromUtf8(this.contractAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setContractAddress(String value) {
            value.getClass();
            this.contractAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearContractAddress() {
            this.contractAddress_ = getDefaultInstance().getContractAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setContractAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.contractAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tron.TransferTRC20ContractOrBuilder
        public String getOwnerAddress() {
            return this.ownerAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.TransferTRC20ContractOrBuilder
        public ByteString getOwnerAddressBytes() {
            return ByteString.copyFromUtf8(this.ownerAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddress(String value) {
            value.getClass();
            this.ownerAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOwnerAddress() {
            this.ownerAddress_ = getDefaultInstance().getOwnerAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.ownerAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tron.TransferTRC20ContractOrBuilder
        public String getToAddress() {
            return this.toAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.TransferTRC20ContractOrBuilder
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

        @Override // wallet.core.jni.proto.Tron.TransferTRC20ContractOrBuilder
        public ByteString getAmount() {
            return this.amount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmount(ByteString value) {
            value.getClass();
            this.amount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAmount() {
            this.amount_ = getDefaultInstance().getAmount();
        }

        public static TransferTRC20Contract parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TransferTRC20Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransferTRC20Contract parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransferTRC20Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransferTRC20Contract parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TransferTRC20Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransferTRC20Contract parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransferTRC20Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransferTRC20Contract parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TransferTRC20Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransferTRC20Contract parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransferTRC20Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransferTRC20Contract parseFrom(InputStream input) throws IOException {
            return (TransferTRC20Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransferTRC20Contract parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransferTRC20Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransferTRC20Contract parseDelimitedFrom(InputStream input) throws IOException {
            return (TransferTRC20Contract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TransferTRC20Contract parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransferTRC20Contract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransferTRC20Contract parseFrom(CodedInputStream input) throws IOException {
            return (TransferTRC20Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransferTRC20Contract parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransferTRC20Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TransferTRC20Contract prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransferTRC20Contract, Builder> implements TransferTRC20ContractOrBuilder {
            /* synthetic */ Builder(C72451 c72451) {
                this();
            }

            private Builder() {
                super(TransferTRC20Contract.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tron.TransferTRC20ContractOrBuilder
            public String getContractAddress() {
                return ((TransferTRC20Contract) this.instance).getContractAddress();
            }

            @Override // wallet.core.jni.proto.Tron.TransferTRC20ContractOrBuilder
            public ByteString getContractAddressBytes() {
                return ((TransferTRC20Contract) this.instance).getContractAddressBytes();
            }

            public Builder setContractAddress(String value) {
                copyOnWrite();
                ((TransferTRC20Contract) this.instance).setContractAddress(value);
                return this;
            }

            public Builder clearContractAddress() {
                copyOnWrite();
                ((TransferTRC20Contract) this.instance).clearContractAddress();
                return this;
            }

            public Builder setContractAddressBytes(ByteString value) {
                copyOnWrite();
                ((TransferTRC20Contract) this.instance).setContractAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransferTRC20ContractOrBuilder
            public String getOwnerAddress() {
                return ((TransferTRC20Contract) this.instance).getOwnerAddress();
            }

            @Override // wallet.core.jni.proto.Tron.TransferTRC20ContractOrBuilder
            public ByteString getOwnerAddressBytes() {
                return ((TransferTRC20Contract) this.instance).getOwnerAddressBytes();
            }

            public Builder setOwnerAddress(String value) {
                copyOnWrite();
                ((TransferTRC20Contract) this.instance).setOwnerAddress(value);
                return this;
            }

            public Builder clearOwnerAddress() {
                copyOnWrite();
                ((TransferTRC20Contract) this.instance).clearOwnerAddress();
                return this;
            }

            public Builder setOwnerAddressBytes(ByteString value) {
                copyOnWrite();
                ((TransferTRC20Contract) this.instance).setOwnerAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransferTRC20ContractOrBuilder
            public String getToAddress() {
                return ((TransferTRC20Contract) this.instance).getToAddress();
            }

            @Override // wallet.core.jni.proto.Tron.TransferTRC20ContractOrBuilder
            public ByteString getToAddressBytes() {
                return ((TransferTRC20Contract) this.instance).getToAddressBytes();
            }

            public Builder setToAddress(String value) {
                copyOnWrite();
                ((TransferTRC20Contract) this.instance).setToAddress(value);
                return this;
            }

            public Builder clearToAddress() {
                copyOnWrite();
                ((TransferTRC20Contract) this.instance).clearToAddress();
                return this;
            }

            public Builder setToAddressBytes(ByteString value) {
                copyOnWrite();
                ((TransferTRC20Contract) this.instance).setToAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransferTRC20ContractOrBuilder
            public ByteString getAmount() {
                return ((TransferTRC20Contract) this.instance).getAmount();
            }

            public Builder setAmount(ByteString value) {
                copyOnWrite();
                ((TransferTRC20Contract) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TransferTRC20Contract) this.instance).clearAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C72451.f1969xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransferTRC20Contract();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004\n", new Object[]{"contractAddress_", "ownerAddress_", "toAddress_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TransferTRC20Contract> parser = PARSER;
                    if (parser == null) {
                        synchronized (TransferTRC20Contract.class) {
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
            TransferTRC20Contract transferTRC20Contract = new TransferTRC20Contract();
            DEFAULT_INSTANCE = transferTRC20Contract;
            GeneratedMessageLite.registerDefaultInstance(TransferTRC20Contract.class, transferTRC20Contract);
        }

        public static TransferTRC20Contract getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TransferTRC20Contract> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class FreezeBalanceContract extends GeneratedMessageLite<FreezeBalanceContract, Builder> implements FreezeBalanceContractOrBuilder {
        private static final FreezeBalanceContract DEFAULT_INSTANCE;
        public static final int FROZEN_BALANCE_FIELD_NUMBER = 2;
        public static final int FROZEN_DURATION_FIELD_NUMBER = 3;
        public static final int OWNER_ADDRESS_FIELD_NUMBER = 1;
        private static volatile Parser<FreezeBalanceContract> PARSER = null;
        public static final int RECEIVER_ADDRESS_FIELD_NUMBER = 15;
        public static final int RESOURCE_FIELD_NUMBER = 10;
        private long frozenBalance_;
        private long frozenDuration_;
        private String ownerAddress_ = "";
        private String resource_ = "";
        private String receiverAddress_ = "";

        private FreezeBalanceContract() {
        }

        @Override // wallet.core.jni.proto.Tron.FreezeBalanceContractOrBuilder
        public String getOwnerAddress() {
            return this.ownerAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.FreezeBalanceContractOrBuilder
        public ByteString getOwnerAddressBytes() {
            return ByteString.copyFromUtf8(this.ownerAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddress(String value) {
            value.getClass();
            this.ownerAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOwnerAddress() {
            this.ownerAddress_ = getDefaultInstance().getOwnerAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.ownerAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tron.FreezeBalanceContractOrBuilder
        public long getFrozenBalance() {
            return this.frozenBalance_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFrozenBalance(long value) {
            this.frozenBalance_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFrozenBalance() {
            this.frozenBalance_ = 0L;
        }

        @Override // wallet.core.jni.proto.Tron.FreezeBalanceContractOrBuilder
        public long getFrozenDuration() {
            return this.frozenDuration_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFrozenDuration(long value) {
            this.frozenDuration_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFrozenDuration() {
            this.frozenDuration_ = 0L;
        }

        @Override // wallet.core.jni.proto.Tron.FreezeBalanceContractOrBuilder
        public String getResource() {
            return this.resource_;
        }

        @Override // wallet.core.jni.proto.Tron.FreezeBalanceContractOrBuilder
        public ByteString getResourceBytes() {
            return ByteString.copyFromUtf8(this.resource_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setResource(String value) {
            value.getClass();
            this.resource_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearResource() {
            this.resource_ = getDefaultInstance().getResource();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setResourceBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.resource_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tron.FreezeBalanceContractOrBuilder
        public String getReceiverAddress() {
            return this.receiverAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.FreezeBalanceContractOrBuilder
        public ByteString getReceiverAddressBytes() {
            return ByteString.copyFromUtf8(this.receiverAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReceiverAddress(String value) {
            value.getClass();
            this.receiverAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearReceiverAddress() {
            this.receiverAddress_ = getDefaultInstance().getReceiverAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReceiverAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.receiverAddress_ = value.toStringUtf8();
        }

        public static FreezeBalanceContract parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (FreezeBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static FreezeBalanceContract parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (FreezeBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static FreezeBalanceContract parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (FreezeBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static FreezeBalanceContract parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (FreezeBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static FreezeBalanceContract parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (FreezeBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static FreezeBalanceContract parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (FreezeBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static FreezeBalanceContract parseFrom(InputStream input) throws IOException {
            return (FreezeBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static FreezeBalanceContract parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (FreezeBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static FreezeBalanceContract parseDelimitedFrom(InputStream input) throws IOException {
            return (FreezeBalanceContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static FreezeBalanceContract parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (FreezeBalanceContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static FreezeBalanceContract parseFrom(CodedInputStream input) throws IOException {
            return (FreezeBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static FreezeBalanceContract parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (FreezeBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(FreezeBalanceContract prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<FreezeBalanceContract, Builder> implements FreezeBalanceContractOrBuilder {
            /* synthetic */ Builder(C72451 c72451) {
                this();
            }

            private Builder() {
                super(FreezeBalanceContract.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tron.FreezeBalanceContractOrBuilder
            public String getOwnerAddress() {
                return ((FreezeBalanceContract) this.instance).getOwnerAddress();
            }

            @Override // wallet.core.jni.proto.Tron.FreezeBalanceContractOrBuilder
            public ByteString getOwnerAddressBytes() {
                return ((FreezeBalanceContract) this.instance).getOwnerAddressBytes();
            }

            public Builder setOwnerAddress(String value) {
                copyOnWrite();
                ((FreezeBalanceContract) this.instance).setOwnerAddress(value);
                return this;
            }

            public Builder clearOwnerAddress() {
                copyOnWrite();
                ((FreezeBalanceContract) this.instance).clearOwnerAddress();
                return this;
            }

            public Builder setOwnerAddressBytes(ByteString value) {
                copyOnWrite();
                ((FreezeBalanceContract) this.instance).setOwnerAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.FreezeBalanceContractOrBuilder
            public long getFrozenBalance() {
                return ((FreezeBalanceContract) this.instance).getFrozenBalance();
            }

            public Builder setFrozenBalance(long value) {
                copyOnWrite();
                ((FreezeBalanceContract) this.instance).setFrozenBalance(value);
                return this;
            }

            public Builder clearFrozenBalance() {
                copyOnWrite();
                ((FreezeBalanceContract) this.instance).clearFrozenBalance();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.FreezeBalanceContractOrBuilder
            public long getFrozenDuration() {
                return ((FreezeBalanceContract) this.instance).getFrozenDuration();
            }

            public Builder setFrozenDuration(long value) {
                copyOnWrite();
                ((FreezeBalanceContract) this.instance).setFrozenDuration(value);
                return this;
            }

            public Builder clearFrozenDuration() {
                copyOnWrite();
                ((FreezeBalanceContract) this.instance).clearFrozenDuration();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.FreezeBalanceContractOrBuilder
            public String getResource() {
                return ((FreezeBalanceContract) this.instance).getResource();
            }

            @Override // wallet.core.jni.proto.Tron.FreezeBalanceContractOrBuilder
            public ByteString getResourceBytes() {
                return ((FreezeBalanceContract) this.instance).getResourceBytes();
            }

            public Builder setResource(String value) {
                copyOnWrite();
                ((FreezeBalanceContract) this.instance).setResource(value);
                return this;
            }

            public Builder clearResource() {
                copyOnWrite();
                ((FreezeBalanceContract) this.instance).clearResource();
                return this;
            }

            public Builder setResourceBytes(ByteString value) {
                copyOnWrite();
                ((FreezeBalanceContract) this.instance).setResourceBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.FreezeBalanceContractOrBuilder
            public String getReceiverAddress() {
                return ((FreezeBalanceContract) this.instance).getReceiverAddress();
            }

            @Override // wallet.core.jni.proto.Tron.FreezeBalanceContractOrBuilder
            public ByteString getReceiverAddressBytes() {
                return ((FreezeBalanceContract) this.instance).getReceiverAddressBytes();
            }

            public Builder setReceiverAddress(String value) {
                copyOnWrite();
                ((FreezeBalanceContract) this.instance).setReceiverAddress(value);
                return this;
            }

            public Builder clearReceiverAddress() {
                copyOnWrite();
                ((FreezeBalanceContract) this.instance).clearReceiverAddress();
                return this;
            }

            public Builder setReceiverAddressBytes(ByteString value) {
                copyOnWrite();
                ((FreezeBalanceContract) this.instance).setReceiverAddressBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C72451.f1969xa1df5c61[method.ordinal()]) {
                case 1:
                    return new FreezeBalanceContract();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u000f\u0005\u0000\u0000\u0000\u0001Ȉ\u0002\u0002\u0003\u0002\nȈ\u000fȈ", new Object[]{"ownerAddress_", "frozenBalance_", "frozenDuration_", "resource_", "receiverAddress_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<FreezeBalanceContract> parser = PARSER;
                    if (parser == null) {
                        synchronized (FreezeBalanceContract.class) {
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
            FreezeBalanceContract freezeBalanceContract = new FreezeBalanceContract();
            DEFAULT_INSTANCE = freezeBalanceContract;
            GeneratedMessageLite.registerDefaultInstance(FreezeBalanceContract.class, freezeBalanceContract);
        }

        public static FreezeBalanceContract getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<FreezeBalanceContract> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class FreezeBalanceV2Contract extends GeneratedMessageLite<FreezeBalanceV2Contract, Builder> implements FreezeBalanceV2ContractOrBuilder {
        private static final FreezeBalanceV2Contract DEFAULT_INSTANCE;
        public static final int FROZEN_BALANCE_FIELD_NUMBER = 2;
        public static final int OWNER_ADDRESS_FIELD_NUMBER = 1;
        private static volatile Parser<FreezeBalanceV2Contract> PARSER = null;
        public static final int RESOURCE_FIELD_NUMBER = 3;
        private long frozenBalance_;
        private String ownerAddress_ = "";
        private String resource_ = "";

        private FreezeBalanceV2Contract() {
        }

        @Override // wallet.core.jni.proto.Tron.FreezeBalanceV2ContractOrBuilder
        public String getOwnerAddress() {
            return this.ownerAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.FreezeBalanceV2ContractOrBuilder
        public ByteString getOwnerAddressBytes() {
            return ByteString.copyFromUtf8(this.ownerAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddress(String value) {
            value.getClass();
            this.ownerAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOwnerAddress() {
            this.ownerAddress_ = getDefaultInstance().getOwnerAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.ownerAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tron.FreezeBalanceV2ContractOrBuilder
        public long getFrozenBalance() {
            return this.frozenBalance_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFrozenBalance(long value) {
            this.frozenBalance_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFrozenBalance() {
            this.frozenBalance_ = 0L;
        }

        @Override // wallet.core.jni.proto.Tron.FreezeBalanceV2ContractOrBuilder
        public String getResource() {
            return this.resource_;
        }

        @Override // wallet.core.jni.proto.Tron.FreezeBalanceV2ContractOrBuilder
        public ByteString getResourceBytes() {
            return ByteString.copyFromUtf8(this.resource_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setResource(String value) {
            value.getClass();
            this.resource_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearResource() {
            this.resource_ = getDefaultInstance().getResource();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setResourceBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.resource_ = value.toStringUtf8();
        }

        public static FreezeBalanceV2Contract parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (FreezeBalanceV2Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static FreezeBalanceV2Contract parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (FreezeBalanceV2Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static FreezeBalanceV2Contract parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (FreezeBalanceV2Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static FreezeBalanceV2Contract parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (FreezeBalanceV2Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static FreezeBalanceV2Contract parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (FreezeBalanceV2Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static FreezeBalanceV2Contract parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (FreezeBalanceV2Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static FreezeBalanceV2Contract parseFrom(InputStream input) throws IOException {
            return (FreezeBalanceV2Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static FreezeBalanceV2Contract parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (FreezeBalanceV2Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static FreezeBalanceV2Contract parseDelimitedFrom(InputStream input) throws IOException {
            return (FreezeBalanceV2Contract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static FreezeBalanceV2Contract parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (FreezeBalanceV2Contract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static FreezeBalanceV2Contract parseFrom(CodedInputStream input) throws IOException {
            return (FreezeBalanceV2Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static FreezeBalanceV2Contract parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (FreezeBalanceV2Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(FreezeBalanceV2Contract prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<FreezeBalanceV2Contract, Builder> implements FreezeBalanceV2ContractOrBuilder {
            /* synthetic */ Builder(C72451 c72451) {
                this();
            }

            private Builder() {
                super(FreezeBalanceV2Contract.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tron.FreezeBalanceV2ContractOrBuilder
            public String getOwnerAddress() {
                return ((FreezeBalanceV2Contract) this.instance).getOwnerAddress();
            }

            @Override // wallet.core.jni.proto.Tron.FreezeBalanceV2ContractOrBuilder
            public ByteString getOwnerAddressBytes() {
                return ((FreezeBalanceV2Contract) this.instance).getOwnerAddressBytes();
            }

            public Builder setOwnerAddress(String value) {
                copyOnWrite();
                ((FreezeBalanceV2Contract) this.instance).setOwnerAddress(value);
                return this;
            }

            public Builder clearOwnerAddress() {
                copyOnWrite();
                ((FreezeBalanceV2Contract) this.instance).clearOwnerAddress();
                return this;
            }

            public Builder setOwnerAddressBytes(ByteString value) {
                copyOnWrite();
                ((FreezeBalanceV2Contract) this.instance).setOwnerAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.FreezeBalanceV2ContractOrBuilder
            public long getFrozenBalance() {
                return ((FreezeBalanceV2Contract) this.instance).getFrozenBalance();
            }

            public Builder setFrozenBalance(long value) {
                copyOnWrite();
                ((FreezeBalanceV2Contract) this.instance).setFrozenBalance(value);
                return this;
            }

            public Builder clearFrozenBalance() {
                copyOnWrite();
                ((FreezeBalanceV2Contract) this.instance).clearFrozenBalance();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.FreezeBalanceV2ContractOrBuilder
            public String getResource() {
                return ((FreezeBalanceV2Contract) this.instance).getResource();
            }

            @Override // wallet.core.jni.proto.Tron.FreezeBalanceV2ContractOrBuilder
            public ByteString getResourceBytes() {
                return ((FreezeBalanceV2Contract) this.instance).getResourceBytes();
            }

            public Builder setResource(String value) {
                copyOnWrite();
                ((FreezeBalanceV2Contract) this.instance).setResource(value);
                return this;
            }

            public Builder clearResource() {
                copyOnWrite();
                ((FreezeBalanceV2Contract) this.instance).clearResource();
                return this;
            }

            public Builder setResourceBytes(ByteString value) {
                copyOnWrite();
                ((FreezeBalanceV2Contract) this.instance).setResourceBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C72451.f1969xa1df5c61[method.ordinal()]) {
                case 1:
                    return new FreezeBalanceV2Contract();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\u0002\u0003Ȉ", new Object[]{"ownerAddress_", "frozenBalance_", "resource_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<FreezeBalanceV2Contract> parser = PARSER;
                    if (parser == null) {
                        synchronized (FreezeBalanceV2Contract.class) {
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
            FreezeBalanceV2Contract freezeBalanceV2Contract = new FreezeBalanceV2Contract();
            DEFAULT_INSTANCE = freezeBalanceV2Contract;
            GeneratedMessageLite.registerDefaultInstance(FreezeBalanceV2Contract.class, freezeBalanceV2Contract);
        }

        public static FreezeBalanceV2Contract getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<FreezeBalanceV2Contract> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class UnfreezeBalanceV2Contract extends GeneratedMessageLite<UnfreezeBalanceV2Contract, Builder> implements UnfreezeBalanceV2ContractOrBuilder {
        private static final UnfreezeBalanceV2Contract DEFAULT_INSTANCE;
        public static final int OWNER_ADDRESS_FIELD_NUMBER = 1;
        private static volatile Parser<UnfreezeBalanceV2Contract> PARSER = null;
        public static final int RESOURCE_FIELD_NUMBER = 3;
        public static final int UNFREEZE_BALANCE_FIELD_NUMBER = 2;
        private String ownerAddress_ = "";
        private String resource_ = "";
        private long unfreezeBalance_;

        private UnfreezeBalanceV2Contract() {
        }

        @Override // wallet.core.jni.proto.Tron.UnfreezeBalanceV2ContractOrBuilder
        public String getOwnerAddress() {
            return this.ownerAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.UnfreezeBalanceV2ContractOrBuilder
        public ByteString getOwnerAddressBytes() {
            return ByteString.copyFromUtf8(this.ownerAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddress(String value) {
            value.getClass();
            this.ownerAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOwnerAddress() {
            this.ownerAddress_ = getDefaultInstance().getOwnerAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.ownerAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tron.UnfreezeBalanceV2ContractOrBuilder
        public long getUnfreezeBalance() {
            return this.unfreezeBalance_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUnfreezeBalance(long value) {
            this.unfreezeBalance_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUnfreezeBalance() {
            this.unfreezeBalance_ = 0L;
        }

        @Override // wallet.core.jni.proto.Tron.UnfreezeBalanceV2ContractOrBuilder
        public String getResource() {
            return this.resource_;
        }

        @Override // wallet.core.jni.proto.Tron.UnfreezeBalanceV2ContractOrBuilder
        public ByteString getResourceBytes() {
            return ByteString.copyFromUtf8(this.resource_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setResource(String value) {
            value.getClass();
            this.resource_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearResource() {
            this.resource_ = getDefaultInstance().getResource();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setResourceBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.resource_ = value.toStringUtf8();
        }

        public static UnfreezeBalanceV2Contract parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (UnfreezeBalanceV2Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static UnfreezeBalanceV2Contract parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (UnfreezeBalanceV2Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static UnfreezeBalanceV2Contract parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (UnfreezeBalanceV2Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static UnfreezeBalanceV2Contract parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (UnfreezeBalanceV2Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static UnfreezeBalanceV2Contract parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (UnfreezeBalanceV2Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static UnfreezeBalanceV2Contract parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (UnfreezeBalanceV2Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static UnfreezeBalanceV2Contract parseFrom(InputStream input) throws IOException {
            return (UnfreezeBalanceV2Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static UnfreezeBalanceV2Contract parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UnfreezeBalanceV2Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static UnfreezeBalanceV2Contract parseDelimitedFrom(InputStream input) throws IOException {
            return (UnfreezeBalanceV2Contract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static UnfreezeBalanceV2Contract parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UnfreezeBalanceV2Contract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static UnfreezeBalanceV2Contract parseFrom(CodedInputStream input) throws IOException {
            return (UnfreezeBalanceV2Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static UnfreezeBalanceV2Contract parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UnfreezeBalanceV2Contract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(UnfreezeBalanceV2Contract prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<UnfreezeBalanceV2Contract, Builder> implements UnfreezeBalanceV2ContractOrBuilder {
            /* synthetic */ Builder(C72451 c72451) {
                this();
            }

            private Builder() {
                super(UnfreezeBalanceV2Contract.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tron.UnfreezeBalanceV2ContractOrBuilder
            public String getOwnerAddress() {
                return ((UnfreezeBalanceV2Contract) this.instance).getOwnerAddress();
            }

            @Override // wallet.core.jni.proto.Tron.UnfreezeBalanceV2ContractOrBuilder
            public ByteString getOwnerAddressBytes() {
                return ((UnfreezeBalanceV2Contract) this.instance).getOwnerAddressBytes();
            }

            public Builder setOwnerAddress(String value) {
                copyOnWrite();
                ((UnfreezeBalanceV2Contract) this.instance).setOwnerAddress(value);
                return this;
            }

            public Builder clearOwnerAddress() {
                copyOnWrite();
                ((UnfreezeBalanceV2Contract) this.instance).clearOwnerAddress();
                return this;
            }

            public Builder setOwnerAddressBytes(ByteString value) {
                copyOnWrite();
                ((UnfreezeBalanceV2Contract) this.instance).setOwnerAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.UnfreezeBalanceV2ContractOrBuilder
            public long getUnfreezeBalance() {
                return ((UnfreezeBalanceV2Contract) this.instance).getUnfreezeBalance();
            }

            public Builder setUnfreezeBalance(long value) {
                copyOnWrite();
                ((UnfreezeBalanceV2Contract) this.instance).setUnfreezeBalance(value);
                return this;
            }

            public Builder clearUnfreezeBalance() {
                copyOnWrite();
                ((UnfreezeBalanceV2Contract) this.instance).clearUnfreezeBalance();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.UnfreezeBalanceV2ContractOrBuilder
            public String getResource() {
                return ((UnfreezeBalanceV2Contract) this.instance).getResource();
            }

            @Override // wallet.core.jni.proto.Tron.UnfreezeBalanceV2ContractOrBuilder
            public ByteString getResourceBytes() {
                return ((UnfreezeBalanceV2Contract) this.instance).getResourceBytes();
            }

            public Builder setResource(String value) {
                copyOnWrite();
                ((UnfreezeBalanceV2Contract) this.instance).setResource(value);
                return this;
            }

            public Builder clearResource() {
                copyOnWrite();
                ((UnfreezeBalanceV2Contract) this.instance).clearResource();
                return this;
            }

            public Builder setResourceBytes(ByteString value) {
                copyOnWrite();
                ((UnfreezeBalanceV2Contract) this.instance).setResourceBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C72451.f1969xa1df5c61[method.ordinal()]) {
                case 1:
                    return new UnfreezeBalanceV2Contract();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\u0002\u0003Ȉ", new Object[]{"ownerAddress_", "unfreezeBalance_", "resource_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<UnfreezeBalanceV2Contract> parser = PARSER;
                    if (parser == null) {
                        synchronized (UnfreezeBalanceV2Contract.class) {
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
            UnfreezeBalanceV2Contract unfreezeBalanceV2Contract = new UnfreezeBalanceV2Contract();
            DEFAULT_INSTANCE = unfreezeBalanceV2Contract;
            GeneratedMessageLite.registerDefaultInstance(UnfreezeBalanceV2Contract.class, unfreezeBalanceV2Contract);
        }

        public static UnfreezeBalanceV2Contract getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<UnfreezeBalanceV2Contract> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class WithdrawExpireUnfreezeContract extends GeneratedMessageLite<WithdrawExpireUnfreezeContract, Builder> implements WithdrawExpireUnfreezeContractOrBuilder {
        private static final WithdrawExpireUnfreezeContract DEFAULT_INSTANCE;
        public static final int OWNER_ADDRESS_FIELD_NUMBER = 1;
        private static volatile Parser<WithdrawExpireUnfreezeContract> PARSER;
        private String ownerAddress_ = "";

        private WithdrawExpireUnfreezeContract() {
        }

        @Override // wallet.core.jni.proto.Tron.WithdrawExpireUnfreezeContractOrBuilder
        public String getOwnerAddress() {
            return this.ownerAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.WithdrawExpireUnfreezeContractOrBuilder
        public ByteString getOwnerAddressBytes() {
            return ByteString.copyFromUtf8(this.ownerAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddress(String value) {
            value.getClass();
            this.ownerAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOwnerAddress() {
            this.ownerAddress_ = getDefaultInstance().getOwnerAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.ownerAddress_ = value.toStringUtf8();
        }

        public static WithdrawExpireUnfreezeContract parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (WithdrawExpireUnfreezeContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static WithdrawExpireUnfreezeContract parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (WithdrawExpireUnfreezeContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static WithdrawExpireUnfreezeContract parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (WithdrawExpireUnfreezeContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static WithdrawExpireUnfreezeContract parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (WithdrawExpireUnfreezeContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static WithdrawExpireUnfreezeContract parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (WithdrawExpireUnfreezeContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static WithdrawExpireUnfreezeContract parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (WithdrawExpireUnfreezeContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static WithdrawExpireUnfreezeContract parseFrom(InputStream input) throws IOException {
            return (WithdrawExpireUnfreezeContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static WithdrawExpireUnfreezeContract parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (WithdrawExpireUnfreezeContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static WithdrawExpireUnfreezeContract parseDelimitedFrom(InputStream input) throws IOException {
            return (WithdrawExpireUnfreezeContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static WithdrawExpireUnfreezeContract parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (WithdrawExpireUnfreezeContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static WithdrawExpireUnfreezeContract parseFrom(CodedInputStream input) throws IOException {
            return (WithdrawExpireUnfreezeContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static WithdrawExpireUnfreezeContract parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (WithdrawExpireUnfreezeContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(WithdrawExpireUnfreezeContract prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<WithdrawExpireUnfreezeContract, Builder> implements WithdrawExpireUnfreezeContractOrBuilder {
            /* synthetic */ Builder(C72451 c72451) {
                this();
            }

            private Builder() {
                super(WithdrawExpireUnfreezeContract.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tron.WithdrawExpireUnfreezeContractOrBuilder
            public String getOwnerAddress() {
                return ((WithdrawExpireUnfreezeContract) this.instance).getOwnerAddress();
            }

            @Override // wallet.core.jni.proto.Tron.WithdrawExpireUnfreezeContractOrBuilder
            public ByteString getOwnerAddressBytes() {
                return ((WithdrawExpireUnfreezeContract) this.instance).getOwnerAddressBytes();
            }

            public Builder setOwnerAddress(String value) {
                copyOnWrite();
                ((WithdrawExpireUnfreezeContract) this.instance).setOwnerAddress(value);
                return this;
            }

            public Builder clearOwnerAddress() {
                copyOnWrite();
                ((WithdrawExpireUnfreezeContract) this.instance).clearOwnerAddress();
                return this;
            }

            public Builder setOwnerAddressBytes(ByteString value) {
                copyOnWrite();
                ((WithdrawExpireUnfreezeContract) this.instance).setOwnerAddressBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C72451.f1969xa1df5c61[method.ordinal()]) {
                case 1:
                    return new WithdrawExpireUnfreezeContract();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"ownerAddress_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<WithdrawExpireUnfreezeContract> parser = PARSER;
                    if (parser == null) {
                        synchronized (WithdrawExpireUnfreezeContract.class) {
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
            WithdrawExpireUnfreezeContract withdrawExpireUnfreezeContract = new WithdrawExpireUnfreezeContract();
            DEFAULT_INSTANCE = withdrawExpireUnfreezeContract;
            GeneratedMessageLite.registerDefaultInstance(WithdrawExpireUnfreezeContract.class, withdrawExpireUnfreezeContract);
        }

        public static WithdrawExpireUnfreezeContract getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<WithdrawExpireUnfreezeContract> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class DelegateResourceContract extends GeneratedMessageLite<DelegateResourceContract, Builder> implements DelegateResourceContractOrBuilder {
        public static final int BALANCE_FIELD_NUMBER = 3;
        private static final DelegateResourceContract DEFAULT_INSTANCE;
        public static final int LOCK_FIELD_NUMBER = 5;
        public static final int OWNER_ADDRESS_FIELD_NUMBER = 1;
        private static volatile Parser<DelegateResourceContract> PARSER = null;
        public static final int RECEIVER_ADDRESS_FIELD_NUMBER = 4;
        public static final int RESOURCE_FIELD_NUMBER = 2;
        private long balance_;
        private boolean lock_;
        private String ownerAddress_ = "";
        private String resource_ = "";
        private String receiverAddress_ = "";

        private DelegateResourceContract() {
        }

        @Override // wallet.core.jni.proto.Tron.DelegateResourceContractOrBuilder
        public String getOwnerAddress() {
            return this.ownerAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.DelegateResourceContractOrBuilder
        public ByteString getOwnerAddressBytes() {
            return ByteString.copyFromUtf8(this.ownerAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddress(String value) {
            value.getClass();
            this.ownerAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOwnerAddress() {
            this.ownerAddress_ = getDefaultInstance().getOwnerAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.ownerAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tron.DelegateResourceContractOrBuilder
        public String getResource() {
            return this.resource_;
        }

        @Override // wallet.core.jni.proto.Tron.DelegateResourceContractOrBuilder
        public ByteString getResourceBytes() {
            return ByteString.copyFromUtf8(this.resource_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setResource(String value) {
            value.getClass();
            this.resource_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearResource() {
            this.resource_ = getDefaultInstance().getResource();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setResourceBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.resource_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tron.DelegateResourceContractOrBuilder
        public long getBalance() {
            return this.balance_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBalance(long value) {
            this.balance_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBalance() {
            this.balance_ = 0L;
        }

        @Override // wallet.core.jni.proto.Tron.DelegateResourceContractOrBuilder
        public String getReceiverAddress() {
            return this.receiverAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.DelegateResourceContractOrBuilder
        public ByteString getReceiverAddressBytes() {
            return ByteString.copyFromUtf8(this.receiverAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReceiverAddress(String value) {
            value.getClass();
            this.receiverAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearReceiverAddress() {
            this.receiverAddress_ = getDefaultInstance().getReceiverAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReceiverAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.receiverAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tron.DelegateResourceContractOrBuilder
        public boolean getLock() {
            return this.lock_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLock(boolean value) {
            this.lock_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearLock() {
            this.lock_ = false;
        }

        public static DelegateResourceContract parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (DelegateResourceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DelegateResourceContract parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DelegateResourceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DelegateResourceContract parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (DelegateResourceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DelegateResourceContract parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DelegateResourceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DelegateResourceContract parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (DelegateResourceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DelegateResourceContract parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DelegateResourceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DelegateResourceContract parseFrom(InputStream input) throws IOException {
            return (DelegateResourceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DelegateResourceContract parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DelegateResourceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DelegateResourceContract parseDelimitedFrom(InputStream input) throws IOException {
            return (DelegateResourceContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static DelegateResourceContract parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DelegateResourceContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DelegateResourceContract parseFrom(CodedInputStream input) throws IOException {
            return (DelegateResourceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DelegateResourceContract parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DelegateResourceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(DelegateResourceContract prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<DelegateResourceContract, Builder> implements DelegateResourceContractOrBuilder {
            /* synthetic */ Builder(C72451 c72451) {
                this();
            }

            private Builder() {
                super(DelegateResourceContract.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tron.DelegateResourceContractOrBuilder
            public String getOwnerAddress() {
                return ((DelegateResourceContract) this.instance).getOwnerAddress();
            }

            @Override // wallet.core.jni.proto.Tron.DelegateResourceContractOrBuilder
            public ByteString getOwnerAddressBytes() {
                return ((DelegateResourceContract) this.instance).getOwnerAddressBytes();
            }

            public Builder setOwnerAddress(String value) {
                copyOnWrite();
                ((DelegateResourceContract) this.instance).setOwnerAddress(value);
                return this;
            }

            public Builder clearOwnerAddress() {
                copyOnWrite();
                ((DelegateResourceContract) this.instance).clearOwnerAddress();
                return this;
            }

            public Builder setOwnerAddressBytes(ByteString value) {
                copyOnWrite();
                ((DelegateResourceContract) this.instance).setOwnerAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.DelegateResourceContractOrBuilder
            public String getResource() {
                return ((DelegateResourceContract) this.instance).getResource();
            }

            @Override // wallet.core.jni.proto.Tron.DelegateResourceContractOrBuilder
            public ByteString getResourceBytes() {
                return ((DelegateResourceContract) this.instance).getResourceBytes();
            }

            public Builder setResource(String value) {
                copyOnWrite();
                ((DelegateResourceContract) this.instance).setResource(value);
                return this;
            }

            public Builder clearResource() {
                copyOnWrite();
                ((DelegateResourceContract) this.instance).clearResource();
                return this;
            }

            public Builder setResourceBytes(ByteString value) {
                copyOnWrite();
                ((DelegateResourceContract) this.instance).setResourceBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.DelegateResourceContractOrBuilder
            public long getBalance() {
                return ((DelegateResourceContract) this.instance).getBalance();
            }

            public Builder setBalance(long value) {
                copyOnWrite();
                ((DelegateResourceContract) this.instance).setBalance(value);
                return this;
            }

            public Builder clearBalance() {
                copyOnWrite();
                ((DelegateResourceContract) this.instance).clearBalance();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.DelegateResourceContractOrBuilder
            public String getReceiverAddress() {
                return ((DelegateResourceContract) this.instance).getReceiverAddress();
            }

            @Override // wallet.core.jni.proto.Tron.DelegateResourceContractOrBuilder
            public ByteString getReceiverAddressBytes() {
                return ((DelegateResourceContract) this.instance).getReceiverAddressBytes();
            }

            public Builder setReceiverAddress(String value) {
                copyOnWrite();
                ((DelegateResourceContract) this.instance).setReceiverAddress(value);
                return this;
            }

            public Builder clearReceiverAddress() {
                copyOnWrite();
                ((DelegateResourceContract) this.instance).clearReceiverAddress();
                return this;
            }

            public Builder setReceiverAddressBytes(ByteString value) {
                copyOnWrite();
                ((DelegateResourceContract) this.instance).setReceiverAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.DelegateResourceContractOrBuilder
            public boolean getLock() {
                return ((DelegateResourceContract) this.instance).getLock();
            }

            public Builder setLock(boolean value) {
                copyOnWrite();
                ((DelegateResourceContract) this.instance).setLock(value);
                return this;
            }

            public Builder clearLock() {
                copyOnWrite();
                ((DelegateResourceContract) this.instance).clearLock();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C72451.f1969xa1df5c61[method.ordinal()]) {
                case 1:
                    return new DelegateResourceContract();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u0002\u0004Ȉ\u0005\u0007", new Object[]{"ownerAddress_", "resource_", "balance_", "receiverAddress_", "lock_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<DelegateResourceContract> parser = PARSER;
                    if (parser == null) {
                        synchronized (DelegateResourceContract.class) {
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
            DelegateResourceContract delegateResourceContract = new DelegateResourceContract();
            DEFAULT_INSTANCE = delegateResourceContract;
            GeneratedMessageLite.registerDefaultInstance(DelegateResourceContract.class, delegateResourceContract);
        }

        public static DelegateResourceContract getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<DelegateResourceContract> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class UnDelegateResourceContract extends GeneratedMessageLite<UnDelegateResourceContract, Builder> implements UnDelegateResourceContractOrBuilder {
        public static final int BALANCE_FIELD_NUMBER = 3;
        private static final UnDelegateResourceContract DEFAULT_INSTANCE;
        public static final int OWNER_ADDRESS_FIELD_NUMBER = 1;
        private static volatile Parser<UnDelegateResourceContract> PARSER = null;
        public static final int RECEIVER_ADDRESS_FIELD_NUMBER = 4;
        public static final int RESOURCE_FIELD_NUMBER = 2;
        private long balance_;
        private String ownerAddress_ = "";
        private String resource_ = "";
        private String receiverAddress_ = "";

        private UnDelegateResourceContract() {
        }

        @Override // wallet.core.jni.proto.Tron.UnDelegateResourceContractOrBuilder
        public String getOwnerAddress() {
            return this.ownerAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.UnDelegateResourceContractOrBuilder
        public ByteString getOwnerAddressBytes() {
            return ByteString.copyFromUtf8(this.ownerAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddress(String value) {
            value.getClass();
            this.ownerAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOwnerAddress() {
            this.ownerAddress_ = getDefaultInstance().getOwnerAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.ownerAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tron.UnDelegateResourceContractOrBuilder
        public String getResource() {
            return this.resource_;
        }

        @Override // wallet.core.jni.proto.Tron.UnDelegateResourceContractOrBuilder
        public ByteString getResourceBytes() {
            return ByteString.copyFromUtf8(this.resource_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setResource(String value) {
            value.getClass();
            this.resource_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearResource() {
            this.resource_ = getDefaultInstance().getResource();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setResourceBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.resource_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tron.UnDelegateResourceContractOrBuilder
        public long getBalance() {
            return this.balance_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBalance(long value) {
            this.balance_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBalance() {
            this.balance_ = 0L;
        }

        @Override // wallet.core.jni.proto.Tron.UnDelegateResourceContractOrBuilder
        public String getReceiverAddress() {
            return this.receiverAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.UnDelegateResourceContractOrBuilder
        public ByteString getReceiverAddressBytes() {
            return ByteString.copyFromUtf8(this.receiverAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReceiverAddress(String value) {
            value.getClass();
            this.receiverAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearReceiverAddress() {
            this.receiverAddress_ = getDefaultInstance().getReceiverAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReceiverAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.receiverAddress_ = value.toStringUtf8();
        }

        public static UnDelegateResourceContract parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (UnDelegateResourceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static UnDelegateResourceContract parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (UnDelegateResourceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static UnDelegateResourceContract parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (UnDelegateResourceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static UnDelegateResourceContract parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (UnDelegateResourceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static UnDelegateResourceContract parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (UnDelegateResourceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static UnDelegateResourceContract parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (UnDelegateResourceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static UnDelegateResourceContract parseFrom(InputStream input) throws IOException {
            return (UnDelegateResourceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static UnDelegateResourceContract parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UnDelegateResourceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static UnDelegateResourceContract parseDelimitedFrom(InputStream input) throws IOException {
            return (UnDelegateResourceContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static UnDelegateResourceContract parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UnDelegateResourceContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static UnDelegateResourceContract parseFrom(CodedInputStream input) throws IOException {
            return (UnDelegateResourceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static UnDelegateResourceContract parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UnDelegateResourceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(UnDelegateResourceContract prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<UnDelegateResourceContract, Builder> implements UnDelegateResourceContractOrBuilder {
            /* synthetic */ Builder(C72451 c72451) {
                this();
            }

            private Builder() {
                super(UnDelegateResourceContract.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tron.UnDelegateResourceContractOrBuilder
            public String getOwnerAddress() {
                return ((UnDelegateResourceContract) this.instance).getOwnerAddress();
            }

            @Override // wallet.core.jni.proto.Tron.UnDelegateResourceContractOrBuilder
            public ByteString getOwnerAddressBytes() {
                return ((UnDelegateResourceContract) this.instance).getOwnerAddressBytes();
            }

            public Builder setOwnerAddress(String value) {
                copyOnWrite();
                ((UnDelegateResourceContract) this.instance).setOwnerAddress(value);
                return this;
            }

            public Builder clearOwnerAddress() {
                copyOnWrite();
                ((UnDelegateResourceContract) this.instance).clearOwnerAddress();
                return this;
            }

            public Builder setOwnerAddressBytes(ByteString value) {
                copyOnWrite();
                ((UnDelegateResourceContract) this.instance).setOwnerAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.UnDelegateResourceContractOrBuilder
            public String getResource() {
                return ((UnDelegateResourceContract) this.instance).getResource();
            }

            @Override // wallet.core.jni.proto.Tron.UnDelegateResourceContractOrBuilder
            public ByteString getResourceBytes() {
                return ((UnDelegateResourceContract) this.instance).getResourceBytes();
            }

            public Builder setResource(String value) {
                copyOnWrite();
                ((UnDelegateResourceContract) this.instance).setResource(value);
                return this;
            }

            public Builder clearResource() {
                copyOnWrite();
                ((UnDelegateResourceContract) this.instance).clearResource();
                return this;
            }

            public Builder setResourceBytes(ByteString value) {
                copyOnWrite();
                ((UnDelegateResourceContract) this.instance).setResourceBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.UnDelegateResourceContractOrBuilder
            public long getBalance() {
                return ((UnDelegateResourceContract) this.instance).getBalance();
            }

            public Builder setBalance(long value) {
                copyOnWrite();
                ((UnDelegateResourceContract) this.instance).setBalance(value);
                return this;
            }

            public Builder clearBalance() {
                copyOnWrite();
                ((UnDelegateResourceContract) this.instance).clearBalance();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.UnDelegateResourceContractOrBuilder
            public String getReceiverAddress() {
                return ((UnDelegateResourceContract) this.instance).getReceiverAddress();
            }

            @Override // wallet.core.jni.proto.Tron.UnDelegateResourceContractOrBuilder
            public ByteString getReceiverAddressBytes() {
                return ((UnDelegateResourceContract) this.instance).getReceiverAddressBytes();
            }

            public Builder setReceiverAddress(String value) {
                copyOnWrite();
                ((UnDelegateResourceContract) this.instance).setReceiverAddress(value);
                return this;
            }

            public Builder clearReceiverAddress() {
                copyOnWrite();
                ((UnDelegateResourceContract) this.instance).clearReceiverAddress();
                return this;
            }

            public Builder setReceiverAddressBytes(ByteString value) {
                copyOnWrite();
                ((UnDelegateResourceContract) this.instance).setReceiverAddressBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C72451.f1969xa1df5c61[method.ordinal()]) {
                case 1:
                    return new UnDelegateResourceContract();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u0002\u0004Ȉ", new Object[]{"ownerAddress_", "resource_", "balance_", "receiverAddress_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<UnDelegateResourceContract> parser = PARSER;
                    if (parser == null) {
                        synchronized (UnDelegateResourceContract.class) {
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
            UnDelegateResourceContract unDelegateResourceContract = new UnDelegateResourceContract();
            DEFAULT_INSTANCE = unDelegateResourceContract;
            GeneratedMessageLite.registerDefaultInstance(UnDelegateResourceContract.class, unDelegateResourceContract);
        }

        public static UnDelegateResourceContract getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<UnDelegateResourceContract> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class UnfreezeBalanceContract extends GeneratedMessageLite<UnfreezeBalanceContract, Builder> implements UnfreezeBalanceContractOrBuilder {
        private static final UnfreezeBalanceContract DEFAULT_INSTANCE;
        public static final int OWNER_ADDRESS_FIELD_NUMBER = 1;
        private static volatile Parser<UnfreezeBalanceContract> PARSER = null;
        public static final int RECEIVER_ADDRESS_FIELD_NUMBER = 15;
        public static final int RESOURCE_FIELD_NUMBER = 10;
        private String ownerAddress_ = "";
        private String resource_ = "";
        private String receiverAddress_ = "";

        private UnfreezeBalanceContract() {
        }

        @Override // wallet.core.jni.proto.Tron.UnfreezeBalanceContractOrBuilder
        public String getOwnerAddress() {
            return this.ownerAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.UnfreezeBalanceContractOrBuilder
        public ByteString getOwnerAddressBytes() {
            return ByteString.copyFromUtf8(this.ownerAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddress(String value) {
            value.getClass();
            this.ownerAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOwnerAddress() {
            this.ownerAddress_ = getDefaultInstance().getOwnerAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.ownerAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tron.UnfreezeBalanceContractOrBuilder
        public String getResource() {
            return this.resource_;
        }

        @Override // wallet.core.jni.proto.Tron.UnfreezeBalanceContractOrBuilder
        public ByteString getResourceBytes() {
            return ByteString.copyFromUtf8(this.resource_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setResource(String value) {
            value.getClass();
            this.resource_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearResource() {
            this.resource_ = getDefaultInstance().getResource();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setResourceBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.resource_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tron.UnfreezeBalanceContractOrBuilder
        public String getReceiverAddress() {
            return this.receiverAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.UnfreezeBalanceContractOrBuilder
        public ByteString getReceiverAddressBytes() {
            return ByteString.copyFromUtf8(this.receiverAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReceiverAddress(String value) {
            value.getClass();
            this.receiverAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearReceiverAddress() {
            this.receiverAddress_ = getDefaultInstance().getReceiverAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReceiverAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.receiverAddress_ = value.toStringUtf8();
        }

        public static UnfreezeBalanceContract parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (UnfreezeBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static UnfreezeBalanceContract parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (UnfreezeBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static UnfreezeBalanceContract parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (UnfreezeBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static UnfreezeBalanceContract parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (UnfreezeBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static UnfreezeBalanceContract parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (UnfreezeBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static UnfreezeBalanceContract parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (UnfreezeBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static UnfreezeBalanceContract parseFrom(InputStream input) throws IOException {
            return (UnfreezeBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static UnfreezeBalanceContract parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UnfreezeBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static UnfreezeBalanceContract parseDelimitedFrom(InputStream input) throws IOException {
            return (UnfreezeBalanceContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static UnfreezeBalanceContract parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UnfreezeBalanceContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static UnfreezeBalanceContract parseFrom(CodedInputStream input) throws IOException {
            return (UnfreezeBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static UnfreezeBalanceContract parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UnfreezeBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(UnfreezeBalanceContract prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<UnfreezeBalanceContract, Builder> implements UnfreezeBalanceContractOrBuilder {
            /* synthetic */ Builder(C72451 c72451) {
                this();
            }

            private Builder() {
                super(UnfreezeBalanceContract.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tron.UnfreezeBalanceContractOrBuilder
            public String getOwnerAddress() {
                return ((UnfreezeBalanceContract) this.instance).getOwnerAddress();
            }

            @Override // wallet.core.jni.proto.Tron.UnfreezeBalanceContractOrBuilder
            public ByteString getOwnerAddressBytes() {
                return ((UnfreezeBalanceContract) this.instance).getOwnerAddressBytes();
            }

            public Builder setOwnerAddress(String value) {
                copyOnWrite();
                ((UnfreezeBalanceContract) this.instance).setOwnerAddress(value);
                return this;
            }

            public Builder clearOwnerAddress() {
                copyOnWrite();
                ((UnfreezeBalanceContract) this.instance).clearOwnerAddress();
                return this;
            }

            public Builder setOwnerAddressBytes(ByteString value) {
                copyOnWrite();
                ((UnfreezeBalanceContract) this.instance).setOwnerAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.UnfreezeBalanceContractOrBuilder
            public String getResource() {
                return ((UnfreezeBalanceContract) this.instance).getResource();
            }

            @Override // wallet.core.jni.proto.Tron.UnfreezeBalanceContractOrBuilder
            public ByteString getResourceBytes() {
                return ((UnfreezeBalanceContract) this.instance).getResourceBytes();
            }

            public Builder setResource(String value) {
                copyOnWrite();
                ((UnfreezeBalanceContract) this.instance).setResource(value);
                return this;
            }

            public Builder clearResource() {
                copyOnWrite();
                ((UnfreezeBalanceContract) this.instance).clearResource();
                return this;
            }

            public Builder setResourceBytes(ByteString value) {
                copyOnWrite();
                ((UnfreezeBalanceContract) this.instance).setResourceBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.UnfreezeBalanceContractOrBuilder
            public String getReceiverAddress() {
                return ((UnfreezeBalanceContract) this.instance).getReceiverAddress();
            }

            @Override // wallet.core.jni.proto.Tron.UnfreezeBalanceContractOrBuilder
            public ByteString getReceiverAddressBytes() {
                return ((UnfreezeBalanceContract) this.instance).getReceiverAddressBytes();
            }

            public Builder setReceiverAddress(String value) {
                copyOnWrite();
                ((UnfreezeBalanceContract) this.instance).setReceiverAddress(value);
                return this;
            }

            public Builder clearReceiverAddress() {
                copyOnWrite();
                ((UnfreezeBalanceContract) this.instance).clearReceiverAddress();
                return this;
            }

            public Builder setReceiverAddressBytes(ByteString value) {
                copyOnWrite();
                ((UnfreezeBalanceContract) this.instance).setReceiverAddressBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C72451.f1969xa1df5c61[method.ordinal()]) {
                case 1:
                    return new UnfreezeBalanceContract();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u000f\u0003\u0000\u0000\u0000\u0001Ȉ\nȈ\u000fȈ", new Object[]{"ownerAddress_", "resource_", "receiverAddress_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<UnfreezeBalanceContract> parser = PARSER;
                    if (parser == null) {
                        synchronized (UnfreezeBalanceContract.class) {
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
            UnfreezeBalanceContract unfreezeBalanceContract = new UnfreezeBalanceContract();
            DEFAULT_INSTANCE = unfreezeBalanceContract;
            GeneratedMessageLite.registerDefaultInstance(UnfreezeBalanceContract.class, unfreezeBalanceContract);
        }

        public static UnfreezeBalanceContract getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<UnfreezeBalanceContract> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class UnfreezeAssetContract extends GeneratedMessageLite<UnfreezeAssetContract, Builder> implements UnfreezeAssetContractOrBuilder {
        private static final UnfreezeAssetContract DEFAULT_INSTANCE;
        public static final int OWNER_ADDRESS_FIELD_NUMBER = 1;
        private static volatile Parser<UnfreezeAssetContract> PARSER;
        private String ownerAddress_ = "";

        private UnfreezeAssetContract() {
        }

        @Override // wallet.core.jni.proto.Tron.UnfreezeAssetContractOrBuilder
        public String getOwnerAddress() {
            return this.ownerAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.UnfreezeAssetContractOrBuilder
        public ByteString getOwnerAddressBytes() {
            return ByteString.copyFromUtf8(this.ownerAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddress(String value) {
            value.getClass();
            this.ownerAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOwnerAddress() {
            this.ownerAddress_ = getDefaultInstance().getOwnerAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.ownerAddress_ = value.toStringUtf8();
        }

        public static UnfreezeAssetContract parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (UnfreezeAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static UnfreezeAssetContract parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (UnfreezeAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static UnfreezeAssetContract parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (UnfreezeAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static UnfreezeAssetContract parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (UnfreezeAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static UnfreezeAssetContract parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (UnfreezeAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static UnfreezeAssetContract parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (UnfreezeAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static UnfreezeAssetContract parseFrom(InputStream input) throws IOException {
            return (UnfreezeAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static UnfreezeAssetContract parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UnfreezeAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static UnfreezeAssetContract parseDelimitedFrom(InputStream input) throws IOException {
            return (UnfreezeAssetContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static UnfreezeAssetContract parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UnfreezeAssetContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static UnfreezeAssetContract parseFrom(CodedInputStream input) throws IOException {
            return (UnfreezeAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static UnfreezeAssetContract parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UnfreezeAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(UnfreezeAssetContract prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<UnfreezeAssetContract, Builder> implements UnfreezeAssetContractOrBuilder {
            /* synthetic */ Builder(C72451 c72451) {
                this();
            }

            private Builder() {
                super(UnfreezeAssetContract.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tron.UnfreezeAssetContractOrBuilder
            public String getOwnerAddress() {
                return ((UnfreezeAssetContract) this.instance).getOwnerAddress();
            }

            @Override // wallet.core.jni.proto.Tron.UnfreezeAssetContractOrBuilder
            public ByteString getOwnerAddressBytes() {
                return ((UnfreezeAssetContract) this.instance).getOwnerAddressBytes();
            }

            public Builder setOwnerAddress(String value) {
                copyOnWrite();
                ((UnfreezeAssetContract) this.instance).setOwnerAddress(value);
                return this;
            }

            public Builder clearOwnerAddress() {
                copyOnWrite();
                ((UnfreezeAssetContract) this.instance).clearOwnerAddress();
                return this;
            }

            public Builder setOwnerAddressBytes(ByteString value) {
                copyOnWrite();
                ((UnfreezeAssetContract) this.instance).setOwnerAddressBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C72451.f1969xa1df5c61[method.ordinal()]) {
                case 1:
                    return new UnfreezeAssetContract();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"ownerAddress_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<UnfreezeAssetContract> parser = PARSER;
                    if (parser == null) {
                        synchronized (UnfreezeAssetContract.class) {
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
            UnfreezeAssetContract unfreezeAssetContract = new UnfreezeAssetContract();
            DEFAULT_INSTANCE = unfreezeAssetContract;
            GeneratedMessageLite.registerDefaultInstance(UnfreezeAssetContract.class, unfreezeAssetContract);
        }

        public static UnfreezeAssetContract getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<UnfreezeAssetContract> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class VoteAssetContract extends GeneratedMessageLite<VoteAssetContract, Builder> implements VoteAssetContractOrBuilder {
        public static final int COUNT_FIELD_NUMBER = 5;
        private static final VoteAssetContract DEFAULT_INSTANCE;
        public static final int OWNER_ADDRESS_FIELD_NUMBER = 1;
        private static volatile Parser<VoteAssetContract> PARSER = null;
        public static final int SUPPORT_FIELD_NUMBER = 3;
        public static final int VOTE_ADDRESS_FIELD_NUMBER = 2;
        private int count_;
        private boolean support_;
        private String ownerAddress_ = "";
        private Internal.ProtobufList<String> voteAddress_ = GeneratedMessageLite.emptyProtobufList();

        private VoteAssetContract() {
        }

        @Override // wallet.core.jni.proto.Tron.VoteAssetContractOrBuilder
        public String getOwnerAddress() {
            return this.ownerAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.VoteAssetContractOrBuilder
        public ByteString getOwnerAddressBytes() {
            return ByteString.copyFromUtf8(this.ownerAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddress(String value) {
            value.getClass();
            this.ownerAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOwnerAddress() {
            this.ownerAddress_ = getDefaultInstance().getOwnerAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.ownerAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tron.VoteAssetContractOrBuilder
        public List<String> getVoteAddressList() {
            return this.voteAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.VoteAssetContractOrBuilder
        public int getVoteAddressCount() {
            return this.voteAddress_.size();
        }

        @Override // wallet.core.jni.proto.Tron.VoteAssetContractOrBuilder
        public String getVoteAddress(int index) {
            return this.voteAddress_.get(index);
        }

        @Override // wallet.core.jni.proto.Tron.VoteAssetContractOrBuilder
        public ByteString getVoteAddressBytes(int index) {
            return ByteString.copyFromUtf8(this.voteAddress_.get(index));
        }

        private void ensureVoteAddressIsMutable() {
            Internal.ProtobufList<String> protobufList = this.voteAddress_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.voteAddress_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setVoteAddress(int index, String value) {
            value.getClass();
            ensureVoteAddressIsMutable();
            this.voteAddress_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addVoteAddress(String value) {
            value.getClass();
            ensureVoteAddressIsMutable();
            this.voteAddress_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllVoteAddress(Iterable<String> values) {
            ensureVoteAddressIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.voteAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearVoteAddress() {
            this.voteAddress_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addVoteAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            ensureVoteAddressIsMutable();
            this.voteAddress_.add(value.toStringUtf8());
        }

        @Override // wallet.core.jni.proto.Tron.VoteAssetContractOrBuilder
        public boolean getSupport() {
            return this.support_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSupport(boolean value) {
            this.support_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSupport() {
            this.support_ = false;
        }

        @Override // wallet.core.jni.proto.Tron.VoteAssetContractOrBuilder
        public int getCount() {
            return this.count_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCount(int value) {
            this.count_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCount() {
            this.count_ = 0;
        }

        public static VoteAssetContract parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (VoteAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static VoteAssetContract parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (VoteAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static VoteAssetContract parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (VoteAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static VoteAssetContract parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (VoteAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static VoteAssetContract parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (VoteAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static VoteAssetContract parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (VoteAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static VoteAssetContract parseFrom(InputStream input) throws IOException {
            return (VoteAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static VoteAssetContract parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (VoteAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static VoteAssetContract parseDelimitedFrom(InputStream input) throws IOException {
            return (VoteAssetContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static VoteAssetContract parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (VoteAssetContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static VoteAssetContract parseFrom(CodedInputStream input) throws IOException {
            return (VoteAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static VoteAssetContract parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (VoteAssetContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(VoteAssetContract prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<VoteAssetContract, Builder> implements VoteAssetContractOrBuilder {
            /* synthetic */ Builder(C72451 c72451) {
                this();
            }

            private Builder() {
                super(VoteAssetContract.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tron.VoteAssetContractOrBuilder
            public String getOwnerAddress() {
                return ((VoteAssetContract) this.instance).getOwnerAddress();
            }

            @Override // wallet.core.jni.proto.Tron.VoteAssetContractOrBuilder
            public ByteString getOwnerAddressBytes() {
                return ((VoteAssetContract) this.instance).getOwnerAddressBytes();
            }

            public Builder setOwnerAddress(String value) {
                copyOnWrite();
                ((VoteAssetContract) this.instance).setOwnerAddress(value);
                return this;
            }

            public Builder clearOwnerAddress() {
                copyOnWrite();
                ((VoteAssetContract) this.instance).clearOwnerAddress();
                return this;
            }

            public Builder setOwnerAddressBytes(ByteString value) {
                copyOnWrite();
                ((VoteAssetContract) this.instance).setOwnerAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.VoteAssetContractOrBuilder
            public List<String> getVoteAddressList() {
                return Collections.unmodifiableList(((VoteAssetContract) this.instance).getVoteAddressList());
            }

            @Override // wallet.core.jni.proto.Tron.VoteAssetContractOrBuilder
            public int getVoteAddressCount() {
                return ((VoteAssetContract) this.instance).getVoteAddressCount();
            }

            @Override // wallet.core.jni.proto.Tron.VoteAssetContractOrBuilder
            public String getVoteAddress(int index) {
                return ((VoteAssetContract) this.instance).getVoteAddress(index);
            }

            @Override // wallet.core.jni.proto.Tron.VoteAssetContractOrBuilder
            public ByteString getVoteAddressBytes(int index) {
                return ((VoteAssetContract) this.instance).getVoteAddressBytes(index);
            }

            public Builder setVoteAddress(int index, String value) {
                copyOnWrite();
                ((VoteAssetContract) this.instance).setVoteAddress(index, value);
                return this;
            }

            public Builder addVoteAddress(String value) {
                copyOnWrite();
                ((VoteAssetContract) this.instance).addVoteAddress(value);
                return this;
            }

            public Builder addAllVoteAddress(Iterable<String> values) {
                copyOnWrite();
                ((VoteAssetContract) this.instance).addAllVoteAddress(values);
                return this;
            }

            public Builder clearVoteAddress() {
                copyOnWrite();
                ((VoteAssetContract) this.instance).clearVoteAddress();
                return this;
            }

            public Builder addVoteAddressBytes(ByteString value) {
                copyOnWrite();
                ((VoteAssetContract) this.instance).addVoteAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.VoteAssetContractOrBuilder
            public boolean getSupport() {
                return ((VoteAssetContract) this.instance).getSupport();
            }

            public Builder setSupport(boolean value) {
                copyOnWrite();
                ((VoteAssetContract) this.instance).setSupport(value);
                return this;
            }

            public Builder clearSupport() {
                copyOnWrite();
                ((VoteAssetContract) this.instance).clearSupport();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.VoteAssetContractOrBuilder
            public int getCount() {
                return ((VoteAssetContract) this.instance).getCount();
            }

            public Builder setCount(int value) {
                copyOnWrite();
                ((VoteAssetContract) this.instance).setCount(value);
                return this;
            }

            public Builder clearCount() {
                copyOnWrite();
                ((VoteAssetContract) this.instance).clearCount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C72451.f1969xa1df5c61[method.ordinal()]) {
                case 1:
                    return new VoteAssetContract();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0005\u0004\u0000\u0001\u0000\u0001Ȉ\u0002Ț\u0003\u0007\u0005\u0004", new Object[]{"ownerAddress_", "voteAddress_", "support_", "count_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<VoteAssetContract> parser = PARSER;
                    if (parser == null) {
                        synchronized (VoteAssetContract.class) {
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
            VoteAssetContract voteAssetContract = new VoteAssetContract();
            DEFAULT_INSTANCE = voteAssetContract;
            GeneratedMessageLite.registerDefaultInstance(VoteAssetContract.class, voteAssetContract);
        }

        public static VoteAssetContract getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<VoteAssetContract> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class VoteWitnessContract extends GeneratedMessageLite<VoteWitnessContract, Builder> implements VoteWitnessContractOrBuilder {
        private static final VoteWitnessContract DEFAULT_INSTANCE;
        public static final int OWNER_ADDRESS_FIELD_NUMBER = 1;
        private static volatile Parser<VoteWitnessContract> PARSER = null;
        public static final int SUPPORT_FIELD_NUMBER = 3;
        public static final int VOTES_FIELD_NUMBER = 2;
        private boolean support_;
        private String ownerAddress_ = "";
        private Internal.ProtobufList<Vote> votes_ = GeneratedMessageLite.emptyProtobufList();

        /* loaded from: classes7.dex */
        public interface VoteOrBuilder extends MessageLiteOrBuilder {
            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getVoteAddress();

            ByteString getVoteAddressBytes();

            long getVoteCount();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        private VoteWitnessContract() {
        }

        /* loaded from: classes7.dex */
        public static final class Vote extends GeneratedMessageLite<Vote, Builder> implements VoteOrBuilder {
            private static final Vote DEFAULT_INSTANCE;
            private static volatile Parser<Vote> PARSER = null;
            public static final int VOTE_ADDRESS_FIELD_NUMBER = 1;
            public static final int VOTE_COUNT_FIELD_NUMBER = 2;
            private String voteAddress_ = "";
            private long voteCount_;

            private Vote() {
            }

            @Override // wallet.core.jni.proto.Tron.VoteWitnessContract.VoteOrBuilder
            public String getVoteAddress() {
                return this.voteAddress_;
            }

            @Override // wallet.core.jni.proto.Tron.VoteWitnessContract.VoteOrBuilder
            public ByteString getVoteAddressBytes() {
                return ByteString.copyFromUtf8(this.voteAddress_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setVoteAddress(String value) {
                value.getClass();
                this.voteAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearVoteAddress() {
                this.voteAddress_ = getDefaultInstance().getVoteAddress();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setVoteAddressBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.voteAddress_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Tron.VoteWitnessContract.VoteOrBuilder
            public long getVoteCount() {
                return this.voteCount_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setVoteCount(long value) {
                this.voteCount_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearVoteCount() {
                this.voteCount_ = 0L;
            }

            public static Vote parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (Vote) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Vote parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Vote) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Vote parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (Vote) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Vote parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Vote) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Vote parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (Vote) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Vote parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Vote) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Vote parseFrom(InputStream input) throws IOException {
                return (Vote) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Vote parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Vote) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Vote parseDelimitedFrom(InputStream input) throws IOException {
                return (Vote) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static Vote parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Vote) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Vote parseFrom(CodedInputStream input) throws IOException {
                return (Vote) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Vote parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Vote) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(Vote prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes7.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<Vote, Builder> implements VoteOrBuilder {
                /* synthetic */ Builder(C72451 c72451) {
                    this();
                }

                private Builder() {
                    super(Vote.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Tron.VoteWitnessContract.VoteOrBuilder
                public String getVoteAddress() {
                    return ((Vote) this.instance).getVoteAddress();
                }

                @Override // wallet.core.jni.proto.Tron.VoteWitnessContract.VoteOrBuilder
                public ByteString getVoteAddressBytes() {
                    return ((Vote) this.instance).getVoteAddressBytes();
                }

                public Builder setVoteAddress(String value) {
                    copyOnWrite();
                    ((Vote) this.instance).setVoteAddress(value);
                    return this;
                }

                public Builder clearVoteAddress() {
                    copyOnWrite();
                    ((Vote) this.instance).clearVoteAddress();
                    return this;
                }

                public Builder setVoteAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((Vote) this.instance).setVoteAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Tron.VoteWitnessContract.VoteOrBuilder
                public long getVoteCount() {
                    return ((Vote) this.instance).getVoteCount();
                }

                public Builder setVoteCount(long value) {
                    copyOnWrite();
                    ((Vote) this.instance).setVoteCount(value);
                    return this;
                }

                public Builder clearVoteCount() {
                    copyOnWrite();
                    ((Vote) this.instance).clearVoteCount();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C72451.f1969xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new Vote();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\u0002", new Object[]{"voteAddress_", "voteCount_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<Vote> parser = PARSER;
                        if (parser == null) {
                            synchronized (Vote.class) {
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
                Vote vote = new Vote();
                DEFAULT_INSTANCE = vote;
                GeneratedMessageLite.registerDefaultInstance(Vote.class, vote);
            }

            public static Vote getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Vote> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        @Override // wallet.core.jni.proto.Tron.VoteWitnessContractOrBuilder
        public String getOwnerAddress() {
            return this.ownerAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.VoteWitnessContractOrBuilder
        public ByteString getOwnerAddressBytes() {
            return ByteString.copyFromUtf8(this.ownerAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddress(String value) {
            value.getClass();
            this.ownerAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOwnerAddress() {
            this.ownerAddress_ = getDefaultInstance().getOwnerAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.ownerAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tron.VoteWitnessContractOrBuilder
        public List<Vote> getVotesList() {
            return this.votes_;
        }

        public List<? extends VoteOrBuilder> getVotesOrBuilderList() {
            return this.votes_;
        }

        @Override // wallet.core.jni.proto.Tron.VoteWitnessContractOrBuilder
        public int getVotesCount() {
            return this.votes_.size();
        }

        @Override // wallet.core.jni.proto.Tron.VoteWitnessContractOrBuilder
        public Vote getVotes(int index) {
            return this.votes_.get(index);
        }

        public VoteOrBuilder getVotesOrBuilder(int index) {
            return this.votes_.get(index);
        }

        private void ensureVotesIsMutable() {
            Internal.ProtobufList<Vote> protobufList = this.votes_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.votes_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setVotes(int index, Vote value) {
            value.getClass();
            ensureVotesIsMutable();
            this.votes_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addVotes(Vote value) {
            value.getClass();
            ensureVotesIsMutable();
            this.votes_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addVotes(int index, Vote value) {
            value.getClass();
            ensureVotesIsMutable();
            this.votes_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllVotes(Iterable<? extends Vote> values) {
            ensureVotesIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.votes_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearVotes() {
            this.votes_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeVotes(int index) {
            ensureVotesIsMutable();
            this.votes_.remove(index);
        }

        @Override // wallet.core.jni.proto.Tron.VoteWitnessContractOrBuilder
        public boolean getSupport() {
            return this.support_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSupport(boolean value) {
            this.support_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSupport() {
            this.support_ = false;
        }

        public static VoteWitnessContract parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (VoteWitnessContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static VoteWitnessContract parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (VoteWitnessContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static VoteWitnessContract parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (VoteWitnessContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static VoteWitnessContract parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (VoteWitnessContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static VoteWitnessContract parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (VoteWitnessContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static VoteWitnessContract parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (VoteWitnessContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static VoteWitnessContract parseFrom(InputStream input) throws IOException {
            return (VoteWitnessContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static VoteWitnessContract parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (VoteWitnessContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static VoteWitnessContract parseDelimitedFrom(InputStream input) throws IOException {
            return (VoteWitnessContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static VoteWitnessContract parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (VoteWitnessContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static VoteWitnessContract parseFrom(CodedInputStream input) throws IOException {
            return (VoteWitnessContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static VoteWitnessContract parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (VoteWitnessContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(VoteWitnessContract prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<VoteWitnessContract, Builder> implements VoteWitnessContractOrBuilder {
            /* synthetic */ Builder(C72451 c72451) {
                this();
            }

            private Builder() {
                super(VoteWitnessContract.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tron.VoteWitnessContractOrBuilder
            public String getOwnerAddress() {
                return ((VoteWitnessContract) this.instance).getOwnerAddress();
            }

            @Override // wallet.core.jni.proto.Tron.VoteWitnessContractOrBuilder
            public ByteString getOwnerAddressBytes() {
                return ((VoteWitnessContract) this.instance).getOwnerAddressBytes();
            }

            public Builder setOwnerAddress(String value) {
                copyOnWrite();
                ((VoteWitnessContract) this.instance).setOwnerAddress(value);
                return this;
            }

            public Builder clearOwnerAddress() {
                copyOnWrite();
                ((VoteWitnessContract) this.instance).clearOwnerAddress();
                return this;
            }

            public Builder setOwnerAddressBytes(ByteString value) {
                copyOnWrite();
                ((VoteWitnessContract) this.instance).setOwnerAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.VoteWitnessContractOrBuilder
            public List<Vote> getVotesList() {
                return Collections.unmodifiableList(((VoteWitnessContract) this.instance).getVotesList());
            }

            @Override // wallet.core.jni.proto.Tron.VoteWitnessContractOrBuilder
            public int getVotesCount() {
                return ((VoteWitnessContract) this.instance).getVotesCount();
            }

            @Override // wallet.core.jni.proto.Tron.VoteWitnessContractOrBuilder
            public Vote getVotes(int index) {
                return ((VoteWitnessContract) this.instance).getVotes(index);
            }

            public Builder setVotes(int index, Vote value) {
                copyOnWrite();
                ((VoteWitnessContract) this.instance).setVotes(index, value);
                return this;
            }

            public Builder setVotes(int index, Vote.Builder builderForValue) {
                copyOnWrite();
                ((VoteWitnessContract) this.instance).setVotes(index, builderForValue.build());
                return this;
            }

            public Builder addVotes(Vote value) {
                copyOnWrite();
                ((VoteWitnessContract) this.instance).addVotes(value);
                return this;
            }

            public Builder addVotes(int index, Vote value) {
                copyOnWrite();
                ((VoteWitnessContract) this.instance).addVotes(index, value);
                return this;
            }

            public Builder addVotes(Vote.Builder builderForValue) {
                copyOnWrite();
                ((VoteWitnessContract) this.instance).addVotes(builderForValue.build());
                return this;
            }

            public Builder addVotes(int index, Vote.Builder builderForValue) {
                copyOnWrite();
                ((VoteWitnessContract) this.instance).addVotes(index, builderForValue.build());
                return this;
            }

            public Builder addAllVotes(Iterable<? extends Vote> values) {
                copyOnWrite();
                ((VoteWitnessContract) this.instance).addAllVotes(values);
                return this;
            }

            public Builder clearVotes() {
                copyOnWrite();
                ((VoteWitnessContract) this.instance).clearVotes();
                return this;
            }

            public Builder removeVotes(int index) {
                copyOnWrite();
                ((VoteWitnessContract) this.instance).removeVotes(index);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.VoteWitnessContractOrBuilder
            public boolean getSupport() {
                return ((VoteWitnessContract) this.instance).getSupport();
            }

            public Builder setSupport(boolean value) {
                copyOnWrite();
                ((VoteWitnessContract) this.instance).setSupport(value);
                return this;
            }

            public Builder clearSupport() {
                copyOnWrite();
                ((VoteWitnessContract) this.instance).clearSupport();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C72451.f1969xa1df5c61[method.ordinal()]) {
                case 1:
                    return new VoteWitnessContract();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001Ȉ\u0002\u001b\u0003\u0007", new Object[]{"ownerAddress_", "votes_", Vote.class, "support_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<VoteWitnessContract> parser = PARSER;
                    if (parser == null) {
                        synchronized (VoteWitnessContract.class) {
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
            VoteWitnessContract voteWitnessContract = new VoteWitnessContract();
            DEFAULT_INSTANCE = voteWitnessContract;
            GeneratedMessageLite.registerDefaultInstance(VoteWitnessContract.class, voteWitnessContract);
        }

        public static VoteWitnessContract getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<VoteWitnessContract> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class WithdrawBalanceContract extends GeneratedMessageLite<WithdrawBalanceContract, Builder> implements WithdrawBalanceContractOrBuilder {
        private static final WithdrawBalanceContract DEFAULT_INSTANCE;
        public static final int OWNER_ADDRESS_FIELD_NUMBER = 1;
        private static volatile Parser<WithdrawBalanceContract> PARSER;
        private String ownerAddress_ = "";

        private WithdrawBalanceContract() {
        }

        @Override // wallet.core.jni.proto.Tron.WithdrawBalanceContractOrBuilder
        public String getOwnerAddress() {
            return this.ownerAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.WithdrawBalanceContractOrBuilder
        public ByteString getOwnerAddressBytes() {
            return ByteString.copyFromUtf8(this.ownerAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddress(String value) {
            value.getClass();
            this.ownerAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOwnerAddress() {
            this.ownerAddress_ = getDefaultInstance().getOwnerAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.ownerAddress_ = value.toStringUtf8();
        }

        public static WithdrawBalanceContract parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (WithdrawBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static WithdrawBalanceContract parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (WithdrawBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static WithdrawBalanceContract parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (WithdrawBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static WithdrawBalanceContract parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (WithdrawBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static WithdrawBalanceContract parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (WithdrawBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static WithdrawBalanceContract parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (WithdrawBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static WithdrawBalanceContract parseFrom(InputStream input) throws IOException {
            return (WithdrawBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static WithdrawBalanceContract parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (WithdrawBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static WithdrawBalanceContract parseDelimitedFrom(InputStream input) throws IOException {
            return (WithdrawBalanceContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static WithdrawBalanceContract parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (WithdrawBalanceContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static WithdrawBalanceContract parseFrom(CodedInputStream input) throws IOException {
            return (WithdrawBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static WithdrawBalanceContract parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (WithdrawBalanceContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(WithdrawBalanceContract prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<WithdrawBalanceContract, Builder> implements WithdrawBalanceContractOrBuilder {
            /* synthetic */ Builder(C72451 c72451) {
                this();
            }

            private Builder() {
                super(WithdrawBalanceContract.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tron.WithdrawBalanceContractOrBuilder
            public String getOwnerAddress() {
                return ((WithdrawBalanceContract) this.instance).getOwnerAddress();
            }

            @Override // wallet.core.jni.proto.Tron.WithdrawBalanceContractOrBuilder
            public ByteString getOwnerAddressBytes() {
                return ((WithdrawBalanceContract) this.instance).getOwnerAddressBytes();
            }

            public Builder setOwnerAddress(String value) {
                copyOnWrite();
                ((WithdrawBalanceContract) this.instance).setOwnerAddress(value);
                return this;
            }

            public Builder clearOwnerAddress() {
                copyOnWrite();
                ((WithdrawBalanceContract) this.instance).clearOwnerAddress();
                return this;
            }

            public Builder setOwnerAddressBytes(ByteString value) {
                copyOnWrite();
                ((WithdrawBalanceContract) this.instance).setOwnerAddressBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C72451.f1969xa1df5c61[method.ordinal()]) {
                case 1:
                    return new WithdrawBalanceContract();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"ownerAddress_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<WithdrawBalanceContract> parser = PARSER;
                    if (parser == null) {
                        synchronized (WithdrawBalanceContract.class) {
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
            WithdrawBalanceContract withdrawBalanceContract = new WithdrawBalanceContract();
            DEFAULT_INSTANCE = withdrawBalanceContract;
            GeneratedMessageLite.registerDefaultInstance(WithdrawBalanceContract.class, withdrawBalanceContract);
        }

        public static WithdrawBalanceContract getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<WithdrawBalanceContract> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class TriggerSmartContract extends GeneratedMessageLite<TriggerSmartContract, Builder> implements TriggerSmartContractOrBuilder {
        public static final int CALL_TOKEN_VALUE_FIELD_NUMBER = 5;
        public static final int CALL_VALUE_FIELD_NUMBER = 3;
        public static final int CONTRACT_ADDRESS_FIELD_NUMBER = 2;
        public static final int DATA_FIELD_NUMBER = 4;
        private static final TriggerSmartContract DEFAULT_INSTANCE;
        public static final int OWNER_ADDRESS_FIELD_NUMBER = 1;
        private static volatile Parser<TriggerSmartContract> PARSER = null;
        public static final int TOKEN_ID_FIELD_NUMBER = 6;
        private long callTokenValue_;
        private long callValue_;
        private long tokenId_;
        private String ownerAddress_ = "";
        private String contractAddress_ = "";
        private ByteString data_ = ByteString.EMPTY;

        private TriggerSmartContract() {
        }

        @Override // wallet.core.jni.proto.Tron.TriggerSmartContractOrBuilder
        public String getOwnerAddress() {
            return this.ownerAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.TriggerSmartContractOrBuilder
        public ByteString getOwnerAddressBytes() {
            return ByteString.copyFromUtf8(this.ownerAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddress(String value) {
            value.getClass();
            this.ownerAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOwnerAddress() {
            this.ownerAddress_ = getDefaultInstance().getOwnerAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.ownerAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tron.TriggerSmartContractOrBuilder
        public String getContractAddress() {
            return this.contractAddress_;
        }

        @Override // wallet.core.jni.proto.Tron.TriggerSmartContractOrBuilder
        public ByteString getContractAddressBytes() {
            return ByteString.copyFromUtf8(this.contractAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setContractAddress(String value) {
            value.getClass();
            this.contractAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearContractAddress() {
            this.contractAddress_ = getDefaultInstance().getContractAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setContractAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.contractAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tron.TriggerSmartContractOrBuilder
        public long getCallValue() {
            return this.callValue_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCallValue(long value) {
            this.callValue_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCallValue() {
            this.callValue_ = 0L;
        }

        @Override // wallet.core.jni.proto.Tron.TriggerSmartContractOrBuilder
        public ByteString getData() {
            return this.data_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setData(ByteString value) {
            value.getClass();
            this.data_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearData() {
            this.data_ = getDefaultInstance().getData();
        }

        @Override // wallet.core.jni.proto.Tron.TriggerSmartContractOrBuilder
        public long getCallTokenValue() {
            return this.callTokenValue_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCallTokenValue(long value) {
            this.callTokenValue_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCallTokenValue() {
            this.callTokenValue_ = 0L;
        }

        @Override // wallet.core.jni.proto.Tron.TriggerSmartContractOrBuilder
        public long getTokenId() {
            return this.tokenId_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTokenId(long value) {
            this.tokenId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTokenId() {
            this.tokenId_ = 0L;
        }

        public static TriggerSmartContract parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TriggerSmartContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TriggerSmartContract parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TriggerSmartContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TriggerSmartContract parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TriggerSmartContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TriggerSmartContract parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TriggerSmartContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TriggerSmartContract parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TriggerSmartContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TriggerSmartContract parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TriggerSmartContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TriggerSmartContract parseFrom(InputStream input) throws IOException {
            return (TriggerSmartContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TriggerSmartContract parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TriggerSmartContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TriggerSmartContract parseDelimitedFrom(InputStream input) throws IOException {
            return (TriggerSmartContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TriggerSmartContract parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TriggerSmartContract) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TriggerSmartContract parseFrom(CodedInputStream input) throws IOException {
            return (TriggerSmartContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TriggerSmartContract parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TriggerSmartContract) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TriggerSmartContract prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TriggerSmartContract, Builder> implements TriggerSmartContractOrBuilder {
            /* synthetic */ Builder(C72451 c72451) {
                this();
            }

            private Builder() {
                super(TriggerSmartContract.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tron.TriggerSmartContractOrBuilder
            public String getOwnerAddress() {
                return ((TriggerSmartContract) this.instance).getOwnerAddress();
            }

            @Override // wallet.core.jni.proto.Tron.TriggerSmartContractOrBuilder
            public ByteString getOwnerAddressBytes() {
                return ((TriggerSmartContract) this.instance).getOwnerAddressBytes();
            }

            public Builder setOwnerAddress(String value) {
                copyOnWrite();
                ((TriggerSmartContract) this.instance).setOwnerAddress(value);
                return this;
            }

            public Builder clearOwnerAddress() {
                copyOnWrite();
                ((TriggerSmartContract) this.instance).clearOwnerAddress();
                return this;
            }

            public Builder setOwnerAddressBytes(ByteString value) {
                copyOnWrite();
                ((TriggerSmartContract) this.instance).setOwnerAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TriggerSmartContractOrBuilder
            public String getContractAddress() {
                return ((TriggerSmartContract) this.instance).getContractAddress();
            }

            @Override // wallet.core.jni.proto.Tron.TriggerSmartContractOrBuilder
            public ByteString getContractAddressBytes() {
                return ((TriggerSmartContract) this.instance).getContractAddressBytes();
            }

            public Builder setContractAddress(String value) {
                copyOnWrite();
                ((TriggerSmartContract) this.instance).setContractAddress(value);
                return this;
            }

            public Builder clearContractAddress() {
                copyOnWrite();
                ((TriggerSmartContract) this.instance).clearContractAddress();
                return this;
            }

            public Builder setContractAddressBytes(ByteString value) {
                copyOnWrite();
                ((TriggerSmartContract) this.instance).setContractAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TriggerSmartContractOrBuilder
            public long getCallValue() {
                return ((TriggerSmartContract) this.instance).getCallValue();
            }

            public Builder setCallValue(long value) {
                copyOnWrite();
                ((TriggerSmartContract) this.instance).setCallValue(value);
                return this;
            }

            public Builder clearCallValue() {
                copyOnWrite();
                ((TriggerSmartContract) this.instance).clearCallValue();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TriggerSmartContractOrBuilder
            public ByteString getData() {
                return ((TriggerSmartContract) this.instance).getData();
            }

            public Builder setData(ByteString value) {
                copyOnWrite();
                ((TriggerSmartContract) this.instance).setData(value);
                return this;
            }

            public Builder clearData() {
                copyOnWrite();
                ((TriggerSmartContract) this.instance).clearData();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TriggerSmartContractOrBuilder
            public long getCallTokenValue() {
                return ((TriggerSmartContract) this.instance).getCallTokenValue();
            }

            public Builder setCallTokenValue(long value) {
                copyOnWrite();
                ((TriggerSmartContract) this.instance).setCallTokenValue(value);
                return this;
            }

            public Builder clearCallTokenValue() {
                copyOnWrite();
                ((TriggerSmartContract) this.instance).clearCallTokenValue();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TriggerSmartContractOrBuilder
            public long getTokenId() {
                return ((TriggerSmartContract) this.instance).getTokenId();
            }

            public Builder setTokenId(long value) {
                copyOnWrite();
                ((TriggerSmartContract) this.instance).setTokenId(value);
                return this;
            }

            public Builder clearTokenId() {
                copyOnWrite();
                ((TriggerSmartContract) this.instance).clearTokenId();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C72451.f1969xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TriggerSmartContract();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u0002\u0004\n\u0005\u0002\u0006\u0002", new Object[]{"ownerAddress_", "contractAddress_", "callValue_", "data_", "callTokenValue_", "tokenId_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TriggerSmartContract> parser = PARSER;
                    if (parser == null) {
                        synchronized (TriggerSmartContract.class) {
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
            TriggerSmartContract triggerSmartContract = new TriggerSmartContract();
            DEFAULT_INSTANCE = triggerSmartContract;
            GeneratedMessageLite.registerDefaultInstance(TriggerSmartContract.class, triggerSmartContract);
        }

        public static TriggerSmartContract getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TriggerSmartContract> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class BlockHeader extends GeneratedMessageLite<BlockHeader, Builder> implements BlockHeaderOrBuilder {
        private static final BlockHeader DEFAULT_INSTANCE;
        public static final int NUMBER_FIELD_NUMBER = 7;
        public static final int PARENT_HASH_FIELD_NUMBER = 3;
        private static volatile Parser<BlockHeader> PARSER = null;
        public static final int TIMESTAMP_FIELD_NUMBER = 1;
        public static final int TX_TRIE_ROOT_FIELD_NUMBER = 2;
        public static final int VERSION_FIELD_NUMBER = 10;
        public static final int WITNESS_ADDRESS_FIELD_NUMBER = 9;
        private long number_;
        private ByteString parentHash_;
        private long timestamp_;
        private ByteString txTrieRoot_;
        private int version_;
        private ByteString witnessAddress_;

        private BlockHeader() {
            ByteString byteString = ByteString.EMPTY;
            this.txTrieRoot_ = byteString;
            this.parentHash_ = byteString;
            this.witnessAddress_ = byteString;
        }

        @Override // wallet.core.jni.proto.Tron.BlockHeaderOrBuilder
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

        @Override // wallet.core.jni.proto.Tron.BlockHeaderOrBuilder
        public ByteString getTxTrieRoot() {
            return this.txTrieRoot_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTxTrieRoot(ByteString value) {
            value.getClass();
            this.txTrieRoot_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTxTrieRoot() {
            this.txTrieRoot_ = getDefaultInstance().getTxTrieRoot();
        }

        @Override // wallet.core.jni.proto.Tron.BlockHeaderOrBuilder
        public ByteString getParentHash() {
            return this.parentHash_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setParentHash(ByteString value) {
            value.getClass();
            this.parentHash_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearParentHash() {
            this.parentHash_ = getDefaultInstance().getParentHash();
        }

        @Override // wallet.core.jni.proto.Tron.BlockHeaderOrBuilder
        public long getNumber() {
            return this.number_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNumber(long value) {
            this.number_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNumber() {
            this.number_ = 0L;
        }

        @Override // wallet.core.jni.proto.Tron.BlockHeaderOrBuilder
        public ByteString getWitnessAddress() {
            return this.witnessAddress_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWitnessAddress(ByteString value) {
            value.getClass();
            this.witnessAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearWitnessAddress() {
            this.witnessAddress_ = getDefaultInstance().getWitnessAddress();
        }

        @Override // wallet.core.jni.proto.Tron.BlockHeaderOrBuilder
        public int getVersion() {
            return this.version_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setVersion(int value) {
            this.version_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearVersion() {
            this.version_ = 0;
        }

        public static BlockHeader parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (BlockHeader) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static BlockHeader parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (BlockHeader) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static BlockHeader parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (BlockHeader) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static BlockHeader parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (BlockHeader) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static BlockHeader parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (BlockHeader) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static BlockHeader parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (BlockHeader) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static BlockHeader parseFrom(InputStream input) throws IOException {
            return (BlockHeader) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static BlockHeader parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (BlockHeader) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static BlockHeader parseDelimitedFrom(InputStream input) throws IOException {
            return (BlockHeader) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static BlockHeader parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (BlockHeader) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static BlockHeader parseFrom(CodedInputStream input) throws IOException {
            return (BlockHeader) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static BlockHeader parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (BlockHeader) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(BlockHeader prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<BlockHeader, Builder> implements BlockHeaderOrBuilder {
            /* synthetic */ Builder(C72451 c72451) {
                this();
            }

            private Builder() {
                super(BlockHeader.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tron.BlockHeaderOrBuilder
            public long getTimestamp() {
                return ((BlockHeader) this.instance).getTimestamp();
            }

            public Builder setTimestamp(long value) {
                copyOnWrite();
                ((BlockHeader) this.instance).setTimestamp(value);
                return this;
            }

            public Builder clearTimestamp() {
                copyOnWrite();
                ((BlockHeader) this.instance).clearTimestamp();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.BlockHeaderOrBuilder
            public ByteString getTxTrieRoot() {
                return ((BlockHeader) this.instance).getTxTrieRoot();
            }

            public Builder setTxTrieRoot(ByteString value) {
                copyOnWrite();
                ((BlockHeader) this.instance).setTxTrieRoot(value);
                return this;
            }

            public Builder clearTxTrieRoot() {
                copyOnWrite();
                ((BlockHeader) this.instance).clearTxTrieRoot();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.BlockHeaderOrBuilder
            public ByteString getParentHash() {
                return ((BlockHeader) this.instance).getParentHash();
            }

            public Builder setParentHash(ByteString value) {
                copyOnWrite();
                ((BlockHeader) this.instance).setParentHash(value);
                return this;
            }

            public Builder clearParentHash() {
                copyOnWrite();
                ((BlockHeader) this.instance).clearParentHash();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.BlockHeaderOrBuilder
            public long getNumber() {
                return ((BlockHeader) this.instance).getNumber();
            }

            public Builder setNumber(long value) {
                copyOnWrite();
                ((BlockHeader) this.instance).setNumber(value);
                return this;
            }

            public Builder clearNumber() {
                copyOnWrite();
                ((BlockHeader) this.instance).clearNumber();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.BlockHeaderOrBuilder
            public ByteString getWitnessAddress() {
                return ((BlockHeader) this.instance).getWitnessAddress();
            }

            public Builder setWitnessAddress(ByteString value) {
                copyOnWrite();
                ((BlockHeader) this.instance).setWitnessAddress(value);
                return this;
            }

            public Builder clearWitnessAddress() {
                copyOnWrite();
                ((BlockHeader) this.instance).clearWitnessAddress();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.BlockHeaderOrBuilder
            public int getVersion() {
                return ((BlockHeader) this.instance).getVersion();
            }

            public Builder setVersion(int value) {
                copyOnWrite();
                ((BlockHeader) this.instance).setVersion(value);
                return this;
            }

            public Builder clearVersion() {
                copyOnWrite();
                ((BlockHeader) this.instance).clearVersion();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C72451.f1969xa1df5c61[method.ordinal()]) {
                case 1:
                    return new BlockHeader();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0000\u0000\u0001\n\u0006\u0000\u0000\u0000\u0001\u0002\u0002\n\u0003\n\u0007\u0002\t\n\n\u0004", new Object[]{"timestamp_", "txTrieRoot_", "parentHash_", "number_", "witnessAddress_", "version_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<BlockHeader> parser = PARSER;
                    if (parser == null) {
                        synchronized (BlockHeader.class) {
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
            BlockHeader blockHeader = new BlockHeader();
            DEFAULT_INSTANCE = blockHeader;
            GeneratedMessageLite.registerDefaultInstance(BlockHeader.class, blockHeader);
        }

        public static BlockHeader getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<BlockHeader> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class Transaction extends GeneratedMessageLite<Transaction, Builder> implements TransactionOrBuilder {
        public static final int BLOCK_HEADER_FIELD_NUMBER = 3;
        private static final Transaction DEFAULT_INSTANCE;
        public static final int DELEGATE_RESOURCE_FIELD_NUMBER = 24;
        public static final int EXPIRATION_FIELD_NUMBER = 2;
        public static final int FEE_LIMIT_FIELD_NUMBER = 4;
        public static final int FREEZE_BALANCE_FIELD_NUMBER = 12;
        public static final int FREEZE_BALANCE_V2_FIELD_NUMBER = 20;
        private static volatile Parser<Transaction> PARSER = null;
        public static final int TIMESTAMP_FIELD_NUMBER = 1;
        public static final int TRANSFER_ASSET_FIELD_NUMBER = 11;
        public static final int TRANSFER_FIELD_NUMBER = 10;
        public static final int TRANSFER_TRC20_CONTRACT_FIELD_NUMBER = 19;
        public static final int TRIGGER_SMART_CONTRACT_FIELD_NUMBER = 18;
        public static final int UNDELEGATE_RESOURCE_FIELD_NUMBER = 25;
        public static final int UNFREEZE_ASSET_FIELD_NUMBER = 14;
        public static final int UNFREEZE_BALANCE_FIELD_NUMBER = 13;
        public static final int UNFREEZE_BALANCE_V2_FIELD_NUMBER = 21;
        public static final int VOTE_ASSET_FIELD_NUMBER = 16;
        public static final int VOTE_WITNESS_FIELD_NUMBER = 17;
        public static final int WITHDRAW_BALANCE_FIELD_NUMBER = 15;
        public static final int WITHDRAW_EXPIRE_UNFREEZE_FIELD_NUMBER = 23;
        private BlockHeader blockHeader_;
        private int contractOneofCase_ = 0;
        private Object contractOneof_;
        private long expiration_;
        private long feeLimit_;
        private long timestamp_;

        private Transaction() {
        }

        /* loaded from: classes7.dex */
        public enum ContractOneofCase {
            TRANSFER(10),
            TRANSFER_ASSET(11),
            FREEZE_BALANCE(12),
            UNFREEZE_BALANCE(13),
            UNFREEZE_ASSET(14),
            WITHDRAW_BALANCE(15),
            VOTE_ASSET(16),
            VOTE_WITNESS(17),
            TRIGGER_SMART_CONTRACT(18),
            TRANSFER_TRC20_CONTRACT(19),
            FREEZE_BALANCE_V2(20),
            UNFREEZE_BALANCE_V2(21),
            WITHDRAW_EXPIRE_UNFREEZE(23),
            DELEGATE_RESOURCE(24),
            UNDELEGATE_RESOURCE(25),
            CONTRACTONEOF_NOT_SET(0);
            
            private final int value;

            ContractOneofCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static ContractOneofCase valueOf(int value) {
                return forNumber(value);
            }

            public static ContractOneofCase forNumber(int value) {
                if (value != 0) {
                    switch (value) {
                        case 10:
                            return TRANSFER;
                        case 11:
                            return TRANSFER_ASSET;
                        case 12:
                            return FREEZE_BALANCE;
                        case 13:
                            return UNFREEZE_BALANCE;
                        case 14:
                            return UNFREEZE_ASSET;
                        case 15:
                            return WITHDRAW_BALANCE;
                        case 16:
                            return VOTE_ASSET;
                        case 17:
                            return VOTE_WITNESS;
                        case 18:
                            return TRIGGER_SMART_CONTRACT;
                        case 19:
                            return TRANSFER_TRC20_CONTRACT;
                        case 20:
                            return FREEZE_BALANCE_V2;
                        case 21:
                            return UNFREEZE_BALANCE_V2;
                        default:
                            switch (value) {
                                case 23:
                                    return WITHDRAW_EXPIRE_UNFREEZE;
                                case 24:
                                    return DELEGATE_RESOURCE;
                                case 25:
                                    return UNDELEGATE_RESOURCE;
                                default:
                                    return null;
                            }
                    }
                }
                return CONTRACTONEOF_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public ContractOneofCase getContractOneofCase() {
            return ContractOneofCase.forNumber(this.contractOneofCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearContractOneof() {
            this.contractOneofCase_ = 0;
            this.contractOneof_ = null;
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
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

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public long getExpiration() {
            return this.expiration_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setExpiration(long value) {
            this.expiration_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearExpiration() {
            this.expiration_ = 0L;
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public boolean hasBlockHeader() {
            return this.blockHeader_ != null;
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public BlockHeader getBlockHeader() {
            BlockHeader blockHeader = this.blockHeader_;
            return blockHeader == null ? BlockHeader.getDefaultInstance() : blockHeader;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBlockHeader(BlockHeader value) {
            value.getClass();
            this.blockHeader_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeBlockHeader(BlockHeader value) {
            value.getClass();
            BlockHeader blockHeader = this.blockHeader_;
            if (blockHeader != null && blockHeader != BlockHeader.getDefaultInstance()) {
                this.blockHeader_ = BlockHeader.newBuilder(this.blockHeader_).mergeFrom((BlockHeader.Builder) value).buildPartial();
            } else {
                this.blockHeader_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBlockHeader() {
            this.blockHeader_ = null;
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public long getFeeLimit() {
            return this.feeLimit_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFeeLimit(long value) {
            this.feeLimit_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFeeLimit() {
            this.feeLimit_ = 0L;
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public boolean hasTransfer() {
            return this.contractOneofCase_ == 10;
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public TransferContract getTransfer() {
            if (this.contractOneofCase_ == 10) {
                return (TransferContract) this.contractOneof_;
            }
            return TransferContract.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransfer(TransferContract value) {
            value.getClass();
            this.contractOneof_ = value;
            this.contractOneofCase_ = 10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransfer(TransferContract value) {
            value.getClass();
            if (this.contractOneofCase_ == 10 && this.contractOneof_ != TransferContract.getDefaultInstance()) {
                this.contractOneof_ = TransferContract.newBuilder((TransferContract) this.contractOneof_).mergeFrom((TransferContract.Builder) value).buildPartial();
            } else {
                this.contractOneof_ = value;
            }
            this.contractOneofCase_ = 10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransfer() {
            if (this.contractOneofCase_ == 10) {
                this.contractOneofCase_ = 0;
                this.contractOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public boolean hasTransferAsset() {
            return this.contractOneofCase_ == 11;
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public TransferAssetContract getTransferAsset() {
            if (this.contractOneofCase_ == 11) {
                return (TransferAssetContract) this.contractOneof_;
            }
            return TransferAssetContract.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransferAsset(TransferAssetContract value) {
            value.getClass();
            this.contractOneof_ = value;
            this.contractOneofCase_ = 11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransferAsset(TransferAssetContract value) {
            value.getClass();
            if (this.contractOneofCase_ == 11 && this.contractOneof_ != TransferAssetContract.getDefaultInstance()) {
                this.contractOneof_ = TransferAssetContract.newBuilder((TransferAssetContract) this.contractOneof_).mergeFrom((TransferAssetContract.Builder) value).buildPartial();
            } else {
                this.contractOneof_ = value;
            }
            this.contractOneofCase_ = 11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransferAsset() {
            if (this.contractOneofCase_ == 11) {
                this.contractOneofCase_ = 0;
                this.contractOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public boolean hasFreezeBalance() {
            return this.contractOneofCase_ == 12;
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public FreezeBalanceContract getFreezeBalance() {
            if (this.contractOneofCase_ == 12) {
                return (FreezeBalanceContract) this.contractOneof_;
            }
            return FreezeBalanceContract.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFreezeBalance(FreezeBalanceContract value) {
            value.getClass();
            this.contractOneof_ = value;
            this.contractOneofCase_ = 12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeFreezeBalance(FreezeBalanceContract value) {
            value.getClass();
            if (this.contractOneofCase_ == 12 && this.contractOneof_ != FreezeBalanceContract.getDefaultInstance()) {
                this.contractOneof_ = FreezeBalanceContract.newBuilder((FreezeBalanceContract) this.contractOneof_).mergeFrom((FreezeBalanceContract.Builder) value).buildPartial();
            } else {
                this.contractOneof_ = value;
            }
            this.contractOneofCase_ = 12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFreezeBalance() {
            if (this.contractOneofCase_ == 12) {
                this.contractOneofCase_ = 0;
                this.contractOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public boolean hasUnfreezeBalance() {
            return this.contractOneofCase_ == 13;
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public UnfreezeBalanceContract getUnfreezeBalance() {
            if (this.contractOneofCase_ == 13) {
                return (UnfreezeBalanceContract) this.contractOneof_;
            }
            return UnfreezeBalanceContract.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUnfreezeBalance(UnfreezeBalanceContract value) {
            value.getClass();
            this.contractOneof_ = value;
            this.contractOneofCase_ = 13;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeUnfreezeBalance(UnfreezeBalanceContract value) {
            value.getClass();
            if (this.contractOneofCase_ == 13 && this.contractOneof_ != UnfreezeBalanceContract.getDefaultInstance()) {
                this.contractOneof_ = UnfreezeBalanceContract.newBuilder((UnfreezeBalanceContract) this.contractOneof_).mergeFrom((UnfreezeBalanceContract.Builder) value).buildPartial();
            } else {
                this.contractOneof_ = value;
            }
            this.contractOneofCase_ = 13;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUnfreezeBalance() {
            if (this.contractOneofCase_ == 13) {
                this.contractOneofCase_ = 0;
                this.contractOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public boolean hasUnfreezeAsset() {
            return this.contractOneofCase_ == 14;
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public UnfreezeAssetContract getUnfreezeAsset() {
            if (this.contractOneofCase_ == 14) {
                return (UnfreezeAssetContract) this.contractOneof_;
            }
            return UnfreezeAssetContract.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUnfreezeAsset(UnfreezeAssetContract value) {
            value.getClass();
            this.contractOneof_ = value;
            this.contractOneofCase_ = 14;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeUnfreezeAsset(UnfreezeAssetContract value) {
            value.getClass();
            if (this.contractOneofCase_ == 14 && this.contractOneof_ != UnfreezeAssetContract.getDefaultInstance()) {
                this.contractOneof_ = UnfreezeAssetContract.newBuilder((UnfreezeAssetContract) this.contractOneof_).mergeFrom((UnfreezeAssetContract.Builder) value).buildPartial();
            } else {
                this.contractOneof_ = value;
            }
            this.contractOneofCase_ = 14;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUnfreezeAsset() {
            if (this.contractOneofCase_ == 14) {
                this.contractOneofCase_ = 0;
                this.contractOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public boolean hasWithdrawBalance() {
            return this.contractOneofCase_ == 15;
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public WithdrawBalanceContract getWithdrawBalance() {
            if (this.contractOneofCase_ == 15) {
                return (WithdrawBalanceContract) this.contractOneof_;
            }
            return WithdrawBalanceContract.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWithdrawBalance(WithdrawBalanceContract value) {
            value.getClass();
            this.contractOneof_ = value;
            this.contractOneofCase_ = 15;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeWithdrawBalance(WithdrawBalanceContract value) {
            value.getClass();
            if (this.contractOneofCase_ == 15 && this.contractOneof_ != WithdrawBalanceContract.getDefaultInstance()) {
                this.contractOneof_ = WithdrawBalanceContract.newBuilder((WithdrawBalanceContract) this.contractOneof_).mergeFrom((WithdrawBalanceContract.Builder) value).buildPartial();
            } else {
                this.contractOneof_ = value;
            }
            this.contractOneofCase_ = 15;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearWithdrawBalance() {
            if (this.contractOneofCase_ == 15) {
                this.contractOneofCase_ = 0;
                this.contractOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public boolean hasVoteAsset() {
            return this.contractOneofCase_ == 16;
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public VoteAssetContract getVoteAsset() {
            if (this.contractOneofCase_ == 16) {
                return (VoteAssetContract) this.contractOneof_;
            }
            return VoteAssetContract.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setVoteAsset(VoteAssetContract value) {
            value.getClass();
            this.contractOneof_ = value;
            this.contractOneofCase_ = 16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeVoteAsset(VoteAssetContract value) {
            value.getClass();
            if (this.contractOneofCase_ == 16 && this.contractOneof_ != VoteAssetContract.getDefaultInstance()) {
                this.contractOneof_ = VoteAssetContract.newBuilder((VoteAssetContract) this.contractOneof_).mergeFrom((VoteAssetContract.Builder) value).buildPartial();
            } else {
                this.contractOneof_ = value;
            }
            this.contractOneofCase_ = 16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearVoteAsset() {
            if (this.contractOneofCase_ == 16) {
                this.contractOneofCase_ = 0;
                this.contractOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public boolean hasVoteWitness() {
            return this.contractOneofCase_ == 17;
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public VoteWitnessContract getVoteWitness() {
            if (this.contractOneofCase_ == 17) {
                return (VoteWitnessContract) this.contractOneof_;
            }
            return VoteWitnessContract.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setVoteWitness(VoteWitnessContract value) {
            value.getClass();
            this.contractOneof_ = value;
            this.contractOneofCase_ = 17;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeVoteWitness(VoteWitnessContract value) {
            value.getClass();
            if (this.contractOneofCase_ == 17 && this.contractOneof_ != VoteWitnessContract.getDefaultInstance()) {
                this.contractOneof_ = VoteWitnessContract.newBuilder((VoteWitnessContract) this.contractOneof_).mergeFrom((VoteWitnessContract.Builder) value).buildPartial();
            } else {
                this.contractOneof_ = value;
            }
            this.contractOneofCase_ = 17;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearVoteWitness() {
            if (this.contractOneofCase_ == 17) {
                this.contractOneofCase_ = 0;
                this.contractOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public boolean hasTriggerSmartContract() {
            return this.contractOneofCase_ == 18;
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public TriggerSmartContract getTriggerSmartContract() {
            if (this.contractOneofCase_ == 18) {
                return (TriggerSmartContract) this.contractOneof_;
            }
            return TriggerSmartContract.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTriggerSmartContract(TriggerSmartContract value) {
            value.getClass();
            this.contractOneof_ = value;
            this.contractOneofCase_ = 18;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTriggerSmartContract(TriggerSmartContract value) {
            value.getClass();
            if (this.contractOneofCase_ == 18 && this.contractOneof_ != TriggerSmartContract.getDefaultInstance()) {
                this.contractOneof_ = TriggerSmartContract.newBuilder((TriggerSmartContract) this.contractOneof_).mergeFrom((TriggerSmartContract.Builder) value).buildPartial();
            } else {
                this.contractOneof_ = value;
            }
            this.contractOneofCase_ = 18;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTriggerSmartContract() {
            if (this.contractOneofCase_ == 18) {
                this.contractOneofCase_ = 0;
                this.contractOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public boolean hasTransferTrc20Contract() {
            return this.contractOneofCase_ == 19;
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public TransferTRC20Contract getTransferTrc20Contract() {
            if (this.contractOneofCase_ == 19) {
                return (TransferTRC20Contract) this.contractOneof_;
            }
            return TransferTRC20Contract.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransferTrc20Contract(TransferTRC20Contract value) {
            value.getClass();
            this.contractOneof_ = value;
            this.contractOneofCase_ = 19;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransferTrc20Contract(TransferTRC20Contract value) {
            value.getClass();
            if (this.contractOneofCase_ == 19 && this.contractOneof_ != TransferTRC20Contract.getDefaultInstance()) {
                this.contractOneof_ = TransferTRC20Contract.newBuilder((TransferTRC20Contract) this.contractOneof_).mergeFrom((TransferTRC20Contract.Builder) value).buildPartial();
            } else {
                this.contractOneof_ = value;
            }
            this.contractOneofCase_ = 19;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransferTrc20Contract() {
            if (this.contractOneofCase_ == 19) {
                this.contractOneofCase_ = 0;
                this.contractOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public boolean hasFreezeBalanceV2() {
            return this.contractOneofCase_ == 20;
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public FreezeBalanceV2Contract getFreezeBalanceV2() {
            if (this.contractOneofCase_ == 20) {
                return (FreezeBalanceV2Contract) this.contractOneof_;
            }
            return FreezeBalanceV2Contract.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFreezeBalanceV2(FreezeBalanceV2Contract value) {
            value.getClass();
            this.contractOneof_ = value;
            this.contractOneofCase_ = 20;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeFreezeBalanceV2(FreezeBalanceV2Contract value) {
            value.getClass();
            if (this.contractOneofCase_ == 20 && this.contractOneof_ != FreezeBalanceV2Contract.getDefaultInstance()) {
                this.contractOneof_ = FreezeBalanceV2Contract.newBuilder((FreezeBalanceV2Contract) this.contractOneof_).mergeFrom((FreezeBalanceV2Contract.Builder) value).buildPartial();
            } else {
                this.contractOneof_ = value;
            }
            this.contractOneofCase_ = 20;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFreezeBalanceV2() {
            if (this.contractOneofCase_ == 20) {
                this.contractOneofCase_ = 0;
                this.contractOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public boolean hasUnfreezeBalanceV2() {
            return this.contractOneofCase_ == 21;
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public UnfreezeBalanceV2Contract getUnfreezeBalanceV2() {
            if (this.contractOneofCase_ == 21) {
                return (UnfreezeBalanceV2Contract) this.contractOneof_;
            }
            return UnfreezeBalanceV2Contract.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUnfreezeBalanceV2(UnfreezeBalanceV2Contract value) {
            value.getClass();
            this.contractOneof_ = value;
            this.contractOneofCase_ = 21;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeUnfreezeBalanceV2(UnfreezeBalanceV2Contract value) {
            value.getClass();
            if (this.contractOneofCase_ == 21 && this.contractOneof_ != UnfreezeBalanceV2Contract.getDefaultInstance()) {
                this.contractOneof_ = UnfreezeBalanceV2Contract.newBuilder((UnfreezeBalanceV2Contract) this.contractOneof_).mergeFrom((UnfreezeBalanceV2Contract.Builder) value).buildPartial();
            } else {
                this.contractOneof_ = value;
            }
            this.contractOneofCase_ = 21;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUnfreezeBalanceV2() {
            if (this.contractOneofCase_ == 21) {
                this.contractOneofCase_ = 0;
                this.contractOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public boolean hasWithdrawExpireUnfreeze() {
            return this.contractOneofCase_ == 23;
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public WithdrawExpireUnfreezeContract getWithdrawExpireUnfreeze() {
            if (this.contractOneofCase_ == 23) {
                return (WithdrawExpireUnfreezeContract) this.contractOneof_;
            }
            return WithdrawExpireUnfreezeContract.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWithdrawExpireUnfreeze(WithdrawExpireUnfreezeContract value) {
            value.getClass();
            this.contractOneof_ = value;
            this.contractOneofCase_ = 23;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeWithdrawExpireUnfreeze(WithdrawExpireUnfreezeContract value) {
            value.getClass();
            if (this.contractOneofCase_ == 23 && this.contractOneof_ != WithdrawExpireUnfreezeContract.getDefaultInstance()) {
                this.contractOneof_ = WithdrawExpireUnfreezeContract.newBuilder((WithdrawExpireUnfreezeContract) this.contractOneof_).mergeFrom((WithdrawExpireUnfreezeContract.Builder) value).buildPartial();
            } else {
                this.contractOneof_ = value;
            }
            this.contractOneofCase_ = 23;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearWithdrawExpireUnfreeze() {
            if (this.contractOneofCase_ == 23) {
                this.contractOneofCase_ = 0;
                this.contractOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public boolean hasDelegateResource() {
            return this.contractOneofCase_ == 24;
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public DelegateResourceContract getDelegateResource() {
            if (this.contractOneofCase_ == 24) {
                return (DelegateResourceContract) this.contractOneof_;
            }
            return DelegateResourceContract.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDelegateResource(DelegateResourceContract value) {
            value.getClass();
            this.contractOneof_ = value;
            this.contractOneofCase_ = 24;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeDelegateResource(DelegateResourceContract value) {
            value.getClass();
            if (this.contractOneofCase_ == 24 && this.contractOneof_ != DelegateResourceContract.getDefaultInstance()) {
                this.contractOneof_ = DelegateResourceContract.newBuilder((DelegateResourceContract) this.contractOneof_).mergeFrom((DelegateResourceContract.Builder) value).buildPartial();
            } else {
                this.contractOneof_ = value;
            }
            this.contractOneofCase_ = 24;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDelegateResource() {
            if (this.contractOneofCase_ == 24) {
                this.contractOneofCase_ = 0;
                this.contractOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public boolean hasUndelegateResource() {
            return this.contractOneofCase_ == 25;
        }

        @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
        public UnDelegateResourceContract getUndelegateResource() {
            if (this.contractOneofCase_ == 25) {
                return (UnDelegateResourceContract) this.contractOneof_;
            }
            return UnDelegateResourceContract.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUndelegateResource(UnDelegateResourceContract value) {
            value.getClass();
            this.contractOneof_ = value;
            this.contractOneofCase_ = 25;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeUndelegateResource(UnDelegateResourceContract value) {
            value.getClass();
            if (this.contractOneofCase_ == 25 && this.contractOneof_ != UnDelegateResourceContract.getDefaultInstance()) {
                this.contractOneof_ = UnDelegateResourceContract.newBuilder((UnDelegateResourceContract) this.contractOneof_).mergeFrom((UnDelegateResourceContract.Builder) value).buildPartial();
            } else {
                this.contractOneof_ = value;
            }
            this.contractOneofCase_ = 25;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUndelegateResource() {
            if (this.contractOneofCase_ == 25) {
                this.contractOneofCase_ = 0;
                this.contractOneof_ = null;
            }
        }

        public static Transaction parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Transaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Transaction parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Transaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Transaction parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Transaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Transaction parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Transaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Transaction parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Transaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Transaction parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Transaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Transaction parseFrom(InputStream input) throws IOException {
            return (Transaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Transaction parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Transaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Transaction parseDelimitedFrom(InputStream input) throws IOException {
            return (Transaction) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Transaction parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Transaction) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Transaction parseFrom(CodedInputStream input) throws IOException {
            return (Transaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Transaction parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Transaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Transaction prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Transaction, Builder> implements TransactionOrBuilder {
            /* synthetic */ Builder(C72451 c72451) {
                this();
            }

            private Builder() {
                super(Transaction.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public ContractOneofCase getContractOneofCase() {
                return ((Transaction) this.instance).getContractOneofCase();
            }

            public Builder clearContractOneof() {
                copyOnWrite();
                ((Transaction) this.instance).clearContractOneof();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public long getTimestamp() {
                return ((Transaction) this.instance).getTimestamp();
            }

            public Builder setTimestamp(long value) {
                copyOnWrite();
                ((Transaction) this.instance).setTimestamp(value);
                return this;
            }

            public Builder clearTimestamp() {
                copyOnWrite();
                ((Transaction) this.instance).clearTimestamp();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public long getExpiration() {
                return ((Transaction) this.instance).getExpiration();
            }

            public Builder setExpiration(long value) {
                copyOnWrite();
                ((Transaction) this.instance).setExpiration(value);
                return this;
            }

            public Builder clearExpiration() {
                copyOnWrite();
                ((Transaction) this.instance).clearExpiration();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public boolean hasBlockHeader() {
                return ((Transaction) this.instance).hasBlockHeader();
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public BlockHeader getBlockHeader() {
                return ((Transaction) this.instance).getBlockHeader();
            }

            public Builder setBlockHeader(BlockHeader value) {
                copyOnWrite();
                ((Transaction) this.instance).setBlockHeader(value);
                return this;
            }

            public Builder setBlockHeader(BlockHeader.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setBlockHeader(builderForValue.build());
                return this;
            }

            public Builder mergeBlockHeader(BlockHeader value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeBlockHeader(value);
                return this;
            }

            public Builder clearBlockHeader() {
                copyOnWrite();
                ((Transaction) this.instance).clearBlockHeader();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public long getFeeLimit() {
                return ((Transaction) this.instance).getFeeLimit();
            }

            public Builder setFeeLimit(long value) {
                copyOnWrite();
                ((Transaction) this.instance).setFeeLimit(value);
                return this;
            }

            public Builder clearFeeLimit() {
                copyOnWrite();
                ((Transaction) this.instance).clearFeeLimit();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public boolean hasTransfer() {
                return ((Transaction) this.instance).hasTransfer();
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public TransferContract getTransfer() {
                return ((Transaction) this.instance).getTransfer();
            }

            public Builder setTransfer(TransferContract value) {
                copyOnWrite();
                ((Transaction) this.instance).setTransfer(value);
                return this;
            }

            public Builder setTransfer(TransferContract.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setTransfer(builderForValue.build());
                return this;
            }

            public Builder mergeTransfer(TransferContract value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeTransfer(value);
                return this;
            }

            public Builder clearTransfer() {
                copyOnWrite();
                ((Transaction) this.instance).clearTransfer();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public boolean hasTransferAsset() {
                return ((Transaction) this.instance).hasTransferAsset();
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public TransferAssetContract getTransferAsset() {
                return ((Transaction) this.instance).getTransferAsset();
            }

            public Builder setTransferAsset(TransferAssetContract value) {
                copyOnWrite();
                ((Transaction) this.instance).setTransferAsset(value);
                return this;
            }

            public Builder setTransferAsset(TransferAssetContract.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setTransferAsset(builderForValue.build());
                return this;
            }

            public Builder mergeTransferAsset(TransferAssetContract value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeTransferAsset(value);
                return this;
            }

            public Builder clearTransferAsset() {
                copyOnWrite();
                ((Transaction) this.instance).clearTransferAsset();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public boolean hasFreezeBalance() {
                return ((Transaction) this.instance).hasFreezeBalance();
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public FreezeBalanceContract getFreezeBalance() {
                return ((Transaction) this.instance).getFreezeBalance();
            }

            public Builder setFreezeBalance(FreezeBalanceContract value) {
                copyOnWrite();
                ((Transaction) this.instance).setFreezeBalance(value);
                return this;
            }

            public Builder setFreezeBalance(FreezeBalanceContract.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setFreezeBalance(builderForValue.build());
                return this;
            }

            public Builder mergeFreezeBalance(FreezeBalanceContract value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeFreezeBalance(value);
                return this;
            }

            public Builder clearFreezeBalance() {
                copyOnWrite();
                ((Transaction) this.instance).clearFreezeBalance();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public boolean hasUnfreezeBalance() {
                return ((Transaction) this.instance).hasUnfreezeBalance();
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public UnfreezeBalanceContract getUnfreezeBalance() {
                return ((Transaction) this.instance).getUnfreezeBalance();
            }

            public Builder setUnfreezeBalance(UnfreezeBalanceContract value) {
                copyOnWrite();
                ((Transaction) this.instance).setUnfreezeBalance(value);
                return this;
            }

            public Builder setUnfreezeBalance(UnfreezeBalanceContract.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setUnfreezeBalance(builderForValue.build());
                return this;
            }

            public Builder mergeUnfreezeBalance(UnfreezeBalanceContract value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeUnfreezeBalance(value);
                return this;
            }

            public Builder clearUnfreezeBalance() {
                copyOnWrite();
                ((Transaction) this.instance).clearUnfreezeBalance();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public boolean hasUnfreezeAsset() {
                return ((Transaction) this.instance).hasUnfreezeAsset();
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public UnfreezeAssetContract getUnfreezeAsset() {
                return ((Transaction) this.instance).getUnfreezeAsset();
            }

            public Builder setUnfreezeAsset(UnfreezeAssetContract value) {
                copyOnWrite();
                ((Transaction) this.instance).setUnfreezeAsset(value);
                return this;
            }

            public Builder setUnfreezeAsset(UnfreezeAssetContract.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setUnfreezeAsset(builderForValue.build());
                return this;
            }

            public Builder mergeUnfreezeAsset(UnfreezeAssetContract value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeUnfreezeAsset(value);
                return this;
            }

            public Builder clearUnfreezeAsset() {
                copyOnWrite();
                ((Transaction) this.instance).clearUnfreezeAsset();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public boolean hasWithdrawBalance() {
                return ((Transaction) this.instance).hasWithdrawBalance();
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public WithdrawBalanceContract getWithdrawBalance() {
                return ((Transaction) this.instance).getWithdrawBalance();
            }

            public Builder setWithdrawBalance(WithdrawBalanceContract value) {
                copyOnWrite();
                ((Transaction) this.instance).setWithdrawBalance(value);
                return this;
            }

            public Builder setWithdrawBalance(WithdrawBalanceContract.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setWithdrawBalance(builderForValue.build());
                return this;
            }

            public Builder mergeWithdrawBalance(WithdrawBalanceContract value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeWithdrawBalance(value);
                return this;
            }

            public Builder clearWithdrawBalance() {
                copyOnWrite();
                ((Transaction) this.instance).clearWithdrawBalance();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public boolean hasVoteAsset() {
                return ((Transaction) this.instance).hasVoteAsset();
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public VoteAssetContract getVoteAsset() {
                return ((Transaction) this.instance).getVoteAsset();
            }

            public Builder setVoteAsset(VoteAssetContract value) {
                copyOnWrite();
                ((Transaction) this.instance).setVoteAsset(value);
                return this;
            }

            public Builder setVoteAsset(VoteAssetContract.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setVoteAsset(builderForValue.build());
                return this;
            }

            public Builder mergeVoteAsset(VoteAssetContract value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeVoteAsset(value);
                return this;
            }

            public Builder clearVoteAsset() {
                copyOnWrite();
                ((Transaction) this.instance).clearVoteAsset();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public boolean hasVoteWitness() {
                return ((Transaction) this.instance).hasVoteWitness();
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public VoteWitnessContract getVoteWitness() {
                return ((Transaction) this.instance).getVoteWitness();
            }

            public Builder setVoteWitness(VoteWitnessContract value) {
                copyOnWrite();
                ((Transaction) this.instance).setVoteWitness(value);
                return this;
            }

            public Builder setVoteWitness(VoteWitnessContract.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setVoteWitness(builderForValue.build());
                return this;
            }

            public Builder mergeVoteWitness(VoteWitnessContract value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeVoteWitness(value);
                return this;
            }

            public Builder clearVoteWitness() {
                copyOnWrite();
                ((Transaction) this.instance).clearVoteWitness();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public boolean hasTriggerSmartContract() {
                return ((Transaction) this.instance).hasTriggerSmartContract();
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public TriggerSmartContract getTriggerSmartContract() {
                return ((Transaction) this.instance).getTriggerSmartContract();
            }

            public Builder setTriggerSmartContract(TriggerSmartContract value) {
                copyOnWrite();
                ((Transaction) this.instance).setTriggerSmartContract(value);
                return this;
            }

            public Builder setTriggerSmartContract(TriggerSmartContract.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setTriggerSmartContract(builderForValue.build());
                return this;
            }

            public Builder mergeTriggerSmartContract(TriggerSmartContract value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeTriggerSmartContract(value);
                return this;
            }

            public Builder clearTriggerSmartContract() {
                copyOnWrite();
                ((Transaction) this.instance).clearTriggerSmartContract();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public boolean hasTransferTrc20Contract() {
                return ((Transaction) this.instance).hasTransferTrc20Contract();
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public TransferTRC20Contract getTransferTrc20Contract() {
                return ((Transaction) this.instance).getTransferTrc20Contract();
            }

            public Builder setTransferTrc20Contract(TransferTRC20Contract value) {
                copyOnWrite();
                ((Transaction) this.instance).setTransferTrc20Contract(value);
                return this;
            }

            public Builder setTransferTrc20Contract(TransferTRC20Contract.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setTransferTrc20Contract(builderForValue.build());
                return this;
            }

            public Builder mergeTransferTrc20Contract(TransferTRC20Contract value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeTransferTrc20Contract(value);
                return this;
            }

            public Builder clearTransferTrc20Contract() {
                copyOnWrite();
                ((Transaction) this.instance).clearTransferTrc20Contract();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public boolean hasFreezeBalanceV2() {
                return ((Transaction) this.instance).hasFreezeBalanceV2();
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public FreezeBalanceV2Contract getFreezeBalanceV2() {
                return ((Transaction) this.instance).getFreezeBalanceV2();
            }

            public Builder setFreezeBalanceV2(FreezeBalanceV2Contract value) {
                copyOnWrite();
                ((Transaction) this.instance).setFreezeBalanceV2(value);
                return this;
            }

            public Builder setFreezeBalanceV2(FreezeBalanceV2Contract.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setFreezeBalanceV2(builderForValue.build());
                return this;
            }

            public Builder mergeFreezeBalanceV2(FreezeBalanceV2Contract value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeFreezeBalanceV2(value);
                return this;
            }

            public Builder clearFreezeBalanceV2() {
                copyOnWrite();
                ((Transaction) this.instance).clearFreezeBalanceV2();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public boolean hasUnfreezeBalanceV2() {
                return ((Transaction) this.instance).hasUnfreezeBalanceV2();
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public UnfreezeBalanceV2Contract getUnfreezeBalanceV2() {
                return ((Transaction) this.instance).getUnfreezeBalanceV2();
            }

            public Builder setUnfreezeBalanceV2(UnfreezeBalanceV2Contract value) {
                copyOnWrite();
                ((Transaction) this.instance).setUnfreezeBalanceV2(value);
                return this;
            }

            public Builder setUnfreezeBalanceV2(UnfreezeBalanceV2Contract.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setUnfreezeBalanceV2(builderForValue.build());
                return this;
            }

            public Builder mergeUnfreezeBalanceV2(UnfreezeBalanceV2Contract value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeUnfreezeBalanceV2(value);
                return this;
            }

            public Builder clearUnfreezeBalanceV2() {
                copyOnWrite();
                ((Transaction) this.instance).clearUnfreezeBalanceV2();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public boolean hasWithdrawExpireUnfreeze() {
                return ((Transaction) this.instance).hasWithdrawExpireUnfreeze();
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public WithdrawExpireUnfreezeContract getWithdrawExpireUnfreeze() {
                return ((Transaction) this.instance).getWithdrawExpireUnfreeze();
            }

            public Builder setWithdrawExpireUnfreeze(WithdrawExpireUnfreezeContract value) {
                copyOnWrite();
                ((Transaction) this.instance).setWithdrawExpireUnfreeze(value);
                return this;
            }

            public Builder setWithdrawExpireUnfreeze(WithdrawExpireUnfreezeContract.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setWithdrawExpireUnfreeze(builderForValue.build());
                return this;
            }

            public Builder mergeWithdrawExpireUnfreeze(WithdrawExpireUnfreezeContract value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeWithdrawExpireUnfreeze(value);
                return this;
            }

            public Builder clearWithdrawExpireUnfreeze() {
                copyOnWrite();
                ((Transaction) this.instance).clearWithdrawExpireUnfreeze();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public boolean hasDelegateResource() {
                return ((Transaction) this.instance).hasDelegateResource();
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public DelegateResourceContract getDelegateResource() {
                return ((Transaction) this.instance).getDelegateResource();
            }

            public Builder setDelegateResource(DelegateResourceContract value) {
                copyOnWrite();
                ((Transaction) this.instance).setDelegateResource(value);
                return this;
            }

            public Builder setDelegateResource(DelegateResourceContract.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setDelegateResource(builderForValue.build());
                return this;
            }

            public Builder mergeDelegateResource(DelegateResourceContract value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeDelegateResource(value);
                return this;
            }

            public Builder clearDelegateResource() {
                copyOnWrite();
                ((Transaction) this.instance).clearDelegateResource();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public boolean hasUndelegateResource() {
                return ((Transaction) this.instance).hasUndelegateResource();
            }

            @Override // wallet.core.jni.proto.Tron.TransactionOrBuilder
            public UnDelegateResourceContract getUndelegateResource() {
                return ((Transaction) this.instance).getUndelegateResource();
            }

            public Builder setUndelegateResource(UnDelegateResourceContract value) {
                copyOnWrite();
                ((Transaction) this.instance).setUndelegateResource(value);
                return this;
            }

            public Builder setUndelegateResource(UnDelegateResourceContract.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setUndelegateResource(builderForValue.build());
                return this;
            }

            public Builder mergeUndelegateResource(UnDelegateResourceContract value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeUndelegateResource(value);
                return this;
            }

            public Builder clearUndelegateResource() {
                copyOnWrite();
                ((Transaction) this.instance).clearUndelegateResource();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C72451.f1969xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Transaction();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0013\u0001\u0000\u0001\u0019\u0013\u0000\u0000\u0000\u0001\u0002\u0002\u0002\u0003\t\u0004\u0002\n<\u0000\u000b<\u0000\f<\u0000\r<\u0000\u000e<\u0000\u000f<\u0000\u0010<\u0000\u0011<\u0000\u0012<\u0000\u0013<\u0000\u0014<\u0000\u0015<\u0000\u0017<\u0000\u0018<\u0000\u0019<\u0000", new Object[]{"contractOneof_", "contractOneofCase_", "timestamp_", "expiration_", "blockHeader_", "feeLimit_", TransferContract.class, TransferAssetContract.class, FreezeBalanceContract.class, UnfreezeBalanceContract.class, UnfreezeAssetContract.class, WithdrawBalanceContract.class, VoteAssetContract.class, VoteWitnessContract.class, TriggerSmartContract.class, TransferTRC20Contract.class, FreezeBalanceV2Contract.class, UnfreezeBalanceV2Contract.class, WithdrawExpireUnfreezeContract.class, DelegateResourceContract.class, UnDelegateResourceContract.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Transaction> parser = PARSER;
                    if (parser == null) {
                        synchronized (Transaction.class) {
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
            Transaction transaction = new Transaction();
            DEFAULT_INSTANCE = transaction;
            GeneratedMessageLite.registerDefaultInstance(Transaction.class, transaction);
        }

        public static Transaction getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Transaction> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        private static final SigningInput DEFAULT_INSTANCE;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 2;
        public static final int TRANSACTION_FIELD_NUMBER = 1;
        private ByteString privateKey_ = ByteString.EMPTY;
        private Transaction transaction_;

        private SigningInput() {
        }

        @Override // wallet.core.jni.proto.Tron.SigningInputOrBuilder
        public boolean hasTransaction() {
            return this.transaction_ != null;
        }

        @Override // wallet.core.jni.proto.Tron.SigningInputOrBuilder
        public Transaction getTransaction() {
            Transaction transaction = this.transaction_;
            return transaction == null ? Transaction.getDefaultInstance() : transaction;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransaction(Transaction value) {
            value.getClass();
            this.transaction_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransaction(Transaction value) {
            value.getClass();
            Transaction transaction = this.transaction_;
            if (transaction != null && transaction != Transaction.getDefaultInstance()) {
                this.transaction_ = Transaction.newBuilder(this.transaction_).mergeFrom((Transaction.Builder) value).buildPartial();
            } else {
                this.transaction_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransaction() {
            this.transaction_ = null;
        }

        @Override // wallet.core.jni.proto.Tron.SigningInputOrBuilder
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
            /* synthetic */ Builder(C72451 c72451) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tron.SigningInputOrBuilder
            public boolean hasTransaction() {
                return ((SigningInput) this.instance).hasTransaction();
            }

            @Override // wallet.core.jni.proto.Tron.SigningInputOrBuilder
            public Transaction getTransaction() {
                return ((SigningInput) this.instance).getTransaction();
            }

            public Builder setTransaction(Transaction value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTransaction(value);
                return this;
            }

            public Builder setTransaction(Transaction.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setTransaction(builderForValue.build());
                return this;
            }

            public Builder mergeTransaction(Transaction value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeTransaction(value);
                return this;
            }

            public Builder clearTransaction() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTransaction();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.SigningInputOrBuilder
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
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C72451.f1969xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\n", new Object[]{"transaction_", "privateKey_"});
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
        public static final int ID_FIELD_NUMBER = 1;
        public static final int JSON_FIELD_NUMBER = 5;
        private static volatile Parser<SigningOutput> PARSER = null;
        public static final int REF_BLOCK_BYTES_FIELD_NUMBER = 3;
        public static final int REF_BLOCK_HASH_FIELD_NUMBER = 4;
        public static final int SIGNATURE_FIELD_NUMBER = 2;
        private ByteString id_;
        private String json_;
        private ByteString refBlockBytes_;
        private ByteString refBlockHash_;
        private ByteString signature_;

        private SigningOutput() {
            ByteString byteString = ByteString.EMPTY;
            this.id_ = byteString;
            this.signature_ = byteString;
            this.refBlockBytes_ = byteString;
            this.refBlockHash_ = byteString;
            this.json_ = "";
        }

        @Override // wallet.core.jni.proto.Tron.SigningOutputOrBuilder
        public ByteString getId() {
            return this.id_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setId(ByteString value) {
            value.getClass();
            this.id_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearId() {
            this.id_ = getDefaultInstance().getId();
        }

        @Override // wallet.core.jni.proto.Tron.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Tron.SigningOutputOrBuilder
        public ByteString getRefBlockBytes() {
            return this.refBlockBytes_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRefBlockBytes(ByteString value) {
            value.getClass();
            this.refBlockBytes_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRefBlockBytes() {
            this.refBlockBytes_ = getDefaultInstance().getRefBlockBytes();
        }

        @Override // wallet.core.jni.proto.Tron.SigningOutputOrBuilder
        public ByteString getRefBlockHash() {
            return this.refBlockHash_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRefBlockHash(ByteString value) {
            value.getClass();
            this.refBlockHash_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRefBlockHash() {
            this.refBlockHash_ = getDefaultInstance().getRefBlockHash();
        }

        @Override // wallet.core.jni.proto.Tron.SigningOutputOrBuilder
        public String getJson() {
            return this.json_;
        }

        @Override // wallet.core.jni.proto.Tron.SigningOutputOrBuilder
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

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningOutput, Builder> implements SigningOutputOrBuilder {
            /* synthetic */ Builder(C72451 c72451) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tron.SigningOutputOrBuilder
            public ByteString getId() {
                return ((SigningOutput) this.instance).getId();
            }

            public Builder setId(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setId(value);
                return this;
            }

            public Builder clearId() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearId();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.Tron.SigningOutputOrBuilder
            public ByteString getRefBlockBytes() {
                return ((SigningOutput) this.instance).getRefBlockBytes();
            }

            public Builder setRefBlockBytes(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setRefBlockBytes(value);
                return this;
            }

            public Builder clearRefBlockBytes() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearRefBlockBytes();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.SigningOutputOrBuilder
            public ByteString getRefBlockHash() {
                return ((SigningOutput) this.instance).getRefBlockHash();
            }

            public Builder setRefBlockHash(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setRefBlockHash(value);
                return this;
            }

            public Builder clearRefBlockHash() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearRefBlockHash();
                return this;
            }

            @Override // wallet.core.jni.proto.Tron.SigningOutputOrBuilder
            public String getJson() {
                return ((SigningOutput) this.instance).getJson();
            }

            @Override // wallet.core.jni.proto.Tron.SigningOutputOrBuilder
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
            switch (C72451.f1969xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\n\u0002\n\u0003\n\u0004\n\u0005Ȉ", new Object[]{"id_", "signature_", "refBlockBytes_", "refBlockHash_", "json_"});
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
