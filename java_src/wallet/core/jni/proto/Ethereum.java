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
import wallet.core.jni.proto.Common;
/* loaded from: classes6.dex */
public final class Ethereum {

    /* loaded from: classes6.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        ByteString getChainId();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getGasLimit();

        ByteString getGasPrice();

        ByteString getMaxFeePerGas();

        ByteString getMaxInclusionFeePerGas();

        ByteString getNonce();

        ByteString getPrivateKey();

        String getToAddress();

        ByteString getToAddressBytes();

        Transaction getTransaction();

        TransactionMode getTxMode();

        int getTxModeValue();

        UserOperation getUserOperation();

        boolean hasTransaction();

        boolean hasUserOperation();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        ByteString getData();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getEncoded();

        Common.SigningError getError();

        String getErrorMessage();

        ByteString getErrorMessageBytes();

        int getErrorValue();

        ByteString getR();

        ByteString getS();

        ByteString getV();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TransactionOrBuilder extends MessageLiteOrBuilder {
        Transaction.ContractGeneric getContractGeneric();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Transaction.ERC1155Transfer getErc1155Transfer();

        Transaction.ERC20Approve getErc20Approve();

        Transaction.ERC20Transfer getErc20Transfer();

        Transaction.ERC721Transfer getErc721Transfer();

        Transaction.TransactionOneofCase getTransactionOneofCase();

        Transaction.Transfer getTransfer();

        boolean hasContractGeneric();

        boolean hasErc1155Transfer();

        boolean hasErc20Approve();

        boolean hasErc20Transfer();

        boolean hasErc721Transfer();

        boolean hasTransfer();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface UserOperationOrBuilder extends MessageLiteOrBuilder {
        String getAccountFactory();

        ByteString getAccountFactoryBytes();

        String getAccountLogic();

        ByteString getAccountLogicBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getEntryPoint();

        ByteString getEntryPointBytes();

        boolean getIsAccountDeployed();

        String getOwner();

        ByteString getOwnerBytes();

        ByteString getPaymasterAndData();

        ByteString getPreVerificationGas();

        ByteString getVerificationGasLimit();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Ethereum() {
    }

    /* loaded from: classes6.dex */
    public enum TransactionMode implements Internal.EnumLite {
        Legacy(0),
        Enveloped(1),
        UserOp(2),
        UNRECOGNIZED(-1);
        
        public static final int Enveloped_VALUE = 1;
        public static final int Legacy_VALUE = 0;
        public static final int UserOp_VALUE = 2;
        private static final Internal.EnumLiteMap<TransactionMode> internalValueMap = new Internal.EnumLiteMap<TransactionMode>() { // from class: wallet.core.jni.proto.Ethereum.TransactionMode.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public TransactionMode findValueByNumber(int number) {
                return TransactionMode.forNumber(number);
            }
        };
        private final int value;

        @Override // com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            if (this == UNRECOGNIZED) {
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }
            return this.value;
        }

        @Deprecated
        public static TransactionMode valueOf(int value) {
            return forNumber(value);
        }

        public static TransactionMode forNumber(int value) {
            if (value != 0) {
                if (value != 1) {
                    if (value != 2) {
                        return null;
                    }
                    return UserOp;
                }
                return Enveloped;
            }
            return Legacy;
        }

        public static Internal.EnumLiteMap<TransactionMode> internalGetValueMap() {
            return internalValueMap;
        }

        public static Internal.EnumVerifier internalGetVerifier() {
            return TransactionModeVerifier.INSTANCE;
        }

        /* loaded from: classes6.dex */
        private static final class TransactionModeVerifier implements Internal.EnumVerifier {
            static final Internal.EnumVerifier INSTANCE = new TransactionModeVerifier();

            private TransactionModeVerifier() {
            }

            @Override // com.google.protobuf.Internal.EnumVerifier
            public boolean isInRange(int number) {
                return TransactionMode.forNumber(number) != null;
            }
        }

        TransactionMode(int value) {
            this.value = value;
        }
    }

    /* loaded from: classes6.dex */
    public static final class Transaction extends GeneratedMessageLite<Transaction, Builder> implements TransactionOrBuilder {
        public static final int CONTRACT_GENERIC_FIELD_NUMBER = 6;
        private static final Transaction DEFAULT_INSTANCE;
        public static final int ERC1155_TRANSFER_FIELD_NUMBER = 5;
        public static final int ERC20_APPROVE_FIELD_NUMBER = 3;
        public static final int ERC20_TRANSFER_FIELD_NUMBER = 2;
        public static final int ERC721_TRANSFER_FIELD_NUMBER = 4;
        private static volatile Parser<Transaction> PARSER = null;
        public static final int TRANSFER_FIELD_NUMBER = 1;
        private int transactionOneofCase_ = 0;
        private Object transactionOneof_;

        /* loaded from: classes6.dex */
        public interface ContractGenericOrBuilder extends MessageLiteOrBuilder {
            ByteString getAmount();

            ByteString getData();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface ERC1155TransferOrBuilder extends MessageLiteOrBuilder {
            ByteString getData();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getFrom();

            ByteString getFromBytes();

            String getTo();

            ByteString getToBytes();

            ByteString getTokenId();

            ByteString getValue();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface ERC20ApproveOrBuilder extends MessageLiteOrBuilder {
            ByteString getAmount();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getSpender();

            ByteString getSpenderBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface ERC20TransferOrBuilder extends MessageLiteOrBuilder {
            ByteString getAmount();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getTo();

            ByteString getToBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface ERC721TransferOrBuilder extends MessageLiteOrBuilder {
            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getFrom();

            ByteString getFromBytes();

            String getTo();

            ByteString getToBytes();

            ByteString getTokenId();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface TransferOrBuilder extends MessageLiteOrBuilder {
            ByteString getAmount();

            ByteString getData();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        private Transaction() {
        }

        /* loaded from: classes6.dex */
        public static final class Transfer extends GeneratedMessageLite<Transfer, Builder> implements TransferOrBuilder {
            public static final int AMOUNT_FIELD_NUMBER = 1;
            public static final int DATA_FIELD_NUMBER = 2;
            private static final Transfer DEFAULT_INSTANCE;
            private static volatile Parser<Transfer> PARSER;
            private ByteString amount_;
            private ByteString data_;

            private Transfer() {
                ByteString byteString = ByteString.EMPTY;
                this.amount_ = byteString;
                this.data_ = byteString;
            }

            @Override // wallet.core.jni.proto.Ethereum.Transaction.TransferOrBuilder
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

            @Override // wallet.core.jni.proto.Ethereum.Transaction.TransferOrBuilder
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

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<Transfer, Builder> implements TransferOrBuilder {
                /* synthetic */ Builder(C69491 c69491) {
                    this();
                }

                private Builder() {
                    super(Transfer.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Ethereum.Transaction.TransferOrBuilder
                public ByteString getAmount() {
                    return ((Transfer) this.instance).getAmount();
                }

                public Builder setAmount(ByteString value) {
                    copyOnWrite();
                    ((Transfer) this.instance).setAmount(value);
                    return this;
                }

                public Builder clearAmount() {
                    copyOnWrite();
                    ((Transfer) this.instance).clearAmount();
                    return this;
                }

                @Override // wallet.core.jni.proto.Ethereum.Transaction.TransferOrBuilder
                public ByteString getData() {
                    return ((Transfer) this.instance).getData();
                }

                public Builder setData(ByteString value) {
                    copyOnWrite();
                    ((Transfer) this.instance).setData(value);
                    return this;
                }

                public Builder clearData() {
                    copyOnWrite();
                    ((Transfer) this.instance).clearData();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C69491.f1878xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new Transfer();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\n", new Object[]{"amount_", "data_"});
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

        /* loaded from: classes6.dex */
        public static final class ERC20Transfer extends GeneratedMessageLite<ERC20Transfer, Builder> implements ERC20TransferOrBuilder {
            public static final int AMOUNT_FIELD_NUMBER = 2;
            private static final ERC20Transfer DEFAULT_INSTANCE;
            private static volatile Parser<ERC20Transfer> PARSER = null;
            public static final int TO_FIELD_NUMBER = 1;
            private String to_ = "";
            private ByteString amount_ = ByteString.EMPTY;

            private ERC20Transfer() {
            }

            @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC20TransferOrBuilder
            public String getTo() {
                return this.to_;
            }

            @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC20TransferOrBuilder
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

            @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC20TransferOrBuilder
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

            public static ERC20Transfer parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (ERC20Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static ERC20Transfer parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (ERC20Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static ERC20Transfer parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (ERC20Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static ERC20Transfer parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (ERC20Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static ERC20Transfer parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (ERC20Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static ERC20Transfer parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (ERC20Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static ERC20Transfer parseFrom(InputStream input) throws IOException {
                return (ERC20Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static ERC20Transfer parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (ERC20Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static ERC20Transfer parseDelimitedFrom(InputStream input) throws IOException {
                return (ERC20Transfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static ERC20Transfer parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (ERC20Transfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static ERC20Transfer parseFrom(CodedInputStream input) throws IOException {
                return (ERC20Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static ERC20Transfer parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (ERC20Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(ERC20Transfer prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<ERC20Transfer, Builder> implements ERC20TransferOrBuilder {
                /* synthetic */ Builder(C69491 c69491) {
                    this();
                }

                private Builder() {
                    super(ERC20Transfer.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC20TransferOrBuilder
                public String getTo() {
                    return ((ERC20Transfer) this.instance).getTo();
                }

                @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC20TransferOrBuilder
                public ByteString getToBytes() {
                    return ((ERC20Transfer) this.instance).getToBytes();
                }

                public Builder setTo(String value) {
                    copyOnWrite();
                    ((ERC20Transfer) this.instance).setTo(value);
                    return this;
                }

                public Builder clearTo() {
                    copyOnWrite();
                    ((ERC20Transfer) this.instance).clearTo();
                    return this;
                }

                public Builder setToBytes(ByteString value) {
                    copyOnWrite();
                    ((ERC20Transfer) this.instance).setToBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC20TransferOrBuilder
                public ByteString getAmount() {
                    return ((ERC20Transfer) this.instance).getAmount();
                }

                public Builder setAmount(ByteString value) {
                    copyOnWrite();
                    ((ERC20Transfer) this.instance).setAmount(value);
                    return this;
                }

                public Builder clearAmount() {
                    copyOnWrite();
                    ((ERC20Transfer) this.instance).clearAmount();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C69491.f1878xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new ERC20Transfer();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\n", new Object[]{"to_", "amount_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<ERC20Transfer> parser = PARSER;
                        if (parser == null) {
                            synchronized (ERC20Transfer.class) {
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
                ERC20Transfer eRC20Transfer = new ERC20Transfer();
                DEFAULT_INSTANCE = eRC20Transfer;
                GeneratedMessageLite.registerDefaultInstance(ERC20Transfer.class, eRC20Transfer);
            }

            public static ERC20Transfer getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<ERC20Transfer> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class ERC20Approve extends GeneratedMessageLite<ERC20Approve, Builder> implements ERC20ApproveOrBuilder {
            public static final int AMOUNT_FIELD_NUMBER = 2;
            private static final ERC20Approve DEFAULT_INSTANCE;
            private static volatile Parser<ERC20Approve> PARSER = null;
            public static final int SPENDER_FIELD_NUMBER = 1;
            private String spender_ = "";
            private ByteString amount_ = ByteString.EMPTY;

            private ERC20Approve() {
            }

            @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC20ApproveOrBuilder
            public String getSpender() {
                return this.spender_;
            }

            @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC20ApproveOrBuilder
            public ByteString getSpenderBytes() {
                return ByteString.copyFromUtf8(this.spender_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSpender(String value) {
                value.getClass();
                this.spender_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearSpender() {
                this.spender_ = getDefaultInstance().getSpender();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSpenderBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.spender_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC20ApproveOrBuilder
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

            public static ERC20Approve parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (ERC20Approve) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static ERC20Approve parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (ERC20Approve) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static ERC20Approve parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (ERC20Approve) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static ERC20Approve parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (ERC20Approve) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static ERC20Approve parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (ERC20Approve) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static ERC20Approve parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (ERC20Approve) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static ERC20Approve parseFrom(InputStream input) throws IOException {
                return (ERC20Approve) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static ERC20Approve parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (ERC20Approve) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static ERC20Approve parseDelimitedFrom(InputStream input) throws IOException {
                return (ERC20Approve) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static ERC20Approve parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (ERC20Approve) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static ERC20Approve parseFrom(CodedInputStream input) throws IOException {
                return (ERC20Approve) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static ERC20Approve parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (ERC20Approve) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(ERC20Approve prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<ERC20Approve, Builder> implements ERC20ApproveOrBuilder {
                /* synthetic */ Builder(C69491 c69491) {
                    this();
                }

                private Builder() {
                    super(ERC20Approve.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC20ApproveOrBuilder
                public String getSpender() {
                    return ((ERC20Approve) this.instance).getSpender();
                }

                @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC20ApproveOrBuilder
                public ByteString getSpenderBytes() {
                    return ((ERC20Approve) this.instance).getSpenderBytes();
                }

                public Builder setSpender(String value) {
                    copyOnWrite();
                    ((ERC20Approve) this.instance).setSpender(value);
                    return this;
                }

                public Builder clearSpender() {
                    copyOnWrite();
                    ((ERC20Approve) this.instance).clearSpender();
                    return this;
                }

                public Builder setSpenderBytes(ByteString value) {
                    copyOnWrite();
                    ((ERC20Approve) this.instance).setSpenderBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC20ApproveOrBuilder
                public ByteString getAmount() {
                    return ((ERC20Approve) this.instance).getAmount();
                }

                public Builder setAmount(ByteString value) {
                    copyOnWrite();
                    ((ERC20Approve) this.instance).setAmount(value);
                    return this;
                }

                public Builder clearAmount() {
                    copyOnWrite();
                    ((ERC20Approve) this.instance).clearAmount();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C69491.f1878xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new ERC20Approve();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\n", new Object[]{"spender_", "amount_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<ERC20Approve> parser = PARSER;
                        if (parser == null) {
                            synchronized (ERC20Approve.class) {
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
                ERC20Approve eRC20Approve = new ERC20Approve();
                DEFAULT_INSTANCE = eRC20Approve;
                GeneratedMessageLite.registerDefaultInstance(ERC20Approve.class, eRC20Approve);
            }

            public static ERC20Approve getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<ERC20Approve> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class ERC721Transfer extends GeneratedMessageLite<ERC721Transfer, Builder> implements ERC721TransferOrBuilder {
            private static final ERC721Transfer DEFAULT_INSTANCE;
            public static final int FROM_FIELD_NUMBER = 1;
            private static volatile Parser<ERC721Transfer> PARSER = null;
            public static final int TOKEN_ID_FIELD_NUMBER = 3;
            public static final int TO_FIELD_NUMBER = 2;
            private String from_ = "";
            private String to_ = "";
            private ByteString tokenId_ = ByteString.EMPTY;

            private ERC721Transfer() {
            }

            @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC721TransferOrBuilder
            public String getFrom() {
                return this.from_;
            }

            @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC721TransferOrBuilder
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

            @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC721TransferOrBuilder
            public String getTo() {
                return this.to_;
            }

            @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC721TransferOrBuilder
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

            @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC721TransferOrBuilder
            public ByteString getTokenId() {
                return this.tokenId_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setTokenId(ByteString value) {
                value.getClass();
                this.tokenId_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearTokenId() {
                this.tokenId_ = getDefaultInstance().getTokenId();
            }

            public static ERC721Transfer parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (ERC721Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static ERC721Transfer parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (ERC721Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static ERC721Transfer parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (ERC721Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static ERC721Transfer parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (ERC721Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static ERC721Transfer parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (ERC721Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static ERC721Transfer parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (ERC721Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static ERC721Transfer parseFrom(InputStream input) throws IOException {
                return (ERC721Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static ERC721Transfer parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (ERC721Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static ERC721Transfer parseDelimitedFrom(InputStream input) throws IOException {
                return (ERC721Transfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static ERC721Transfer parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (ERC721Transfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static ERC721Transfer parseFrom(CodedInputStream input) throws IOException {
                return (ERC721Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static ERC721Transfer parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (ERC721Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(ERC721Transfer prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<ERC721Transfer, Builder> implements ERC721TransferOrBuilder {
                /* synthetic */ Builder(C69491 c69491) {
                    this();
                }

                private Builder() {
                    super(ERC721Transfer.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC721TransferOrBuilder
                public String getFrom() {
                    return ((ERC721Transfer) this.instance).getFrom();
                }

                @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC721TransferOrBuilder
                public ByteString getFromBytes() {
                    return ((ERC721Transfer) this.instance).getFromBytes();
                }

                public Builder setFrom(String value) {
                    copyOnWrite();
                    ((ERC721Transfer) this.instance).setFrom(value);
                    return this;
                }

                public Builder clearFrom() {
                    copyOnWrite();
                    ((ERC721Transfer) this.instance).clearFrom();
                    return this;
                }

                public Builder setFromBytes(ByteString value) {
                    copyOnWrite();
                    ((ERC721Transfer) this.instance).setFromBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC721TransferOrBuilder
                public String getTo() {
                    return ((ERC721Transfer) this.instance).getTo();
                }

                @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC721TransferOrBuilder
                public ByteString getToBytes() {
                    return ((ERC721Transfer) this.instance).getToBytes();
                }

                public Builder setTo(String value) {
                    copyOnWrite();
                    ((ERC721Transfer) this.instance).setTo(value);
                    return this;
                }

                public Builder clearTo() {
                    copyOnWrite();
                    ((ERC721Transfer) this.instance).clearTo();
                    return this;
                }

                public Builder setToBytes(ByteString value) {
                    copyOnWrite();
                    ((ERC721Transfer) this.instance).setToBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC721TransferOrBuilder
                public ByteString getTokenId() {
                    return ((ERC721Transfer) this.instance).getTokenId();
                }

                public Builder setTokenId(ByteString value) {
                    copyOnWrite();
                    ((ERC721Transfer) this.instance).setTokenId(value);
                    return this;
                }

                public Builder clearTokenId() {
                    copyOnWrite();
                    ((ERC721Transfer) this.instance).clearTokenId();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C69491.f1878xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new ERC721Transfer();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\n", new Object[]{"from_", "to_", "tokenId_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<ERC721Transfer> parser = PARSER;
                        if (parser == null) {
                            synchronized (ERC721Transfer.class) {
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
                ERC721Transfer eRC721Transfer = new ERC721Transfer();
                DEFAULT_INSTANCE = eRC721Transfer;
                GeneratedMessageLite.registerDefaultInstance(ERC721Transfer.class, eRC721Transfer);
            }

            public static ERC721Transfer getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<ERC721Transfer> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class ERC1155Transfer extends GeneratedMessageLite<ERC1155Transfer, Builder> implements ERC1155TransferOrBuilder {
            public static final int DATA_FIELD_NUMBER = 5;
            private static final ERC1155Transfer DEFAULT_INSTANCE;
            public static final int FROM_FIELD_NUMBER = 1;
            private static volatile Parser<ERC1155Transfer> PARSER = null;
            public static final int TOKEN_ID_FIELD_NUMBER = 3;
            public static final int TO_FIELD_NUMBER = 2;
            public static final int VALUE_FIELD_NUMBER = 4;
            private ByteString data_;
            private String from_ = "";
            private String to_ = "";
            private ByteString tokenId_;
            private ByteString value_;

            private ERC1155Transfer() {
                ByteString byteString = ByteString.EMPTY;
                this.tokenId_ = byteString;
                this.value_ = byteString;
                this.data_ = byteString;
            }

            @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC1155TransferOrBuilder
            public String getFrom() {
                return this.from_;
            }

            @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC1155TransferOrBuilder
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

            @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC1155TransferOrBuilder
            public String getTo() {
                return this.to_;
            }

            @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC1155TransferOrBuilder
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

            @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC1155TransferOrBuilder
            public ByteString getTokenId() {
                return this.tokenId_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setTokenId(ByteString value) {
                value.getClass();
                this.tokenId_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearTokenId() {
                this.tokenId_ = getDefaultInstance().getTokenId();
            }

            @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC1155TransferOrBuilder
            public ByteString getValue() {
                return this.value_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setValue(ByteString value) {
                value.getClass();
                this.value_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearValue() {
                this.value_ = getDefaultInstance().getValue();
            }

            @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC1155TransferOrBuilder
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

            public static ERC1155Transfer parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (ERC1155Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static ERC1155Transfer parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (ERC1155Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static ERC1155Transfer parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (ERC1155Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static ERC1155Transfer parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (ERC1155Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static ERC1155Transfer parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (ERC1155Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static ERC1155Transfer parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (ERC1155Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static ERC1155Transfer parseFrom(InputStream input) throws IOException {
                return (ERC1155Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static ERC1155Transfer parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (ERC1155Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static ERC1155Transfer parseDelimitedFrom(InputStream input) throws IOException {
                return (ERC1155Transfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static ERC1155Transfer parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (ERC1155Transfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static ERC1155Transfer parseFrom(CodedInputStream input) throws IOException {
                return (ERC1155Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static ERC1155Transfer parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (ERC1155Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(ERC1155Transfer prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<ERC1155Transfer, Builder> implements ERC1155TransferOrBuilder {
                /* synthetic */ Builder(C69491 c69491) {
                    this();
                }

                private Builder() {
                    super(ERC1155Transfer.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC1155TransferOrBuilder
                public String getFrom() {
                    return ((ERC1155Transfer) this.instance).getFrom();
                }

                @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC1155TransferOrBuilder
                public ByteString getFromBytes() {
                    return ((ERC1155Transfer) this.instance).getFromBytes();
                }

                public Builder setFrom(String value) {
                    copyOnWrite();
                    ((ERC1155Transfer) this.instance).setFrom(value);
                    return this;
                }

                public Builder clearFrom() {
                    copyOnWrite();
                    ((ERC1155Transfer) this.instance).clearFrom();
                    return this;
                }

                public Builder setFromBytes(ByteString value) {
                    copyOnWrite();
                    ((ERC1155Transfer) this.instance).setFromBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC1155TransferOrBuilder
                public String getTo() {
                    return ((ERC1155Transfer) this.instance).getTo();
                }

                @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC1155TransferOrBuilder
                public ByteString getToBytes() {
                    return ((ERC1155Transfer) this.instance).getToBytes();
                }

                public Builder setTo(String value) {
                    copyOnWrite();
                    ((ERC1155Transfer) this.instance).setTo(value);
                    return this;
                }

                public Builder clearTo() {
                    copyOnWrite();
                    ((ERC1155Transfer) this.instance).clearTo();
                    return this;
                }

                public Builder setToBytes(ByteString value) {
                    copyOnWrite();
                    ((ERC1155Transfer) this.instance).setToBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC1155TransferOrBuilder
                public ByteString getTokenId() {
                    return ((ERC1155Transfer) this.instance).getTokenId();
                }

                public Builder setTokenId(ByteString value) {
                    copyOnWrite();
                    ((ERC1155Transfer) this.instance).setTokenId(value);
                    return this;
                }

                public Builder clearTokenId() {
                    copyOnWrite();
                    ((ERC1155Transfer) this.instance).clearTokenId();
                    return this;
                }

                @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC1155TransferOrBuilder
                public ByteString getValue() {
                    return ((ERC1155Transfer) this.instance).getValue();
                }

                public Builder setValue(ByteString value) {
                    copyOnWrite();
                    ((ERC1155Transfer) this.instance).setValue(value);
                    return this;
                }

                public Builder clearValue() {
                    copyOnWrite();
                    ((ERC1155Transfer) this.instance).clearValue();
                    return this;
                }

                @Override // wallet.core.jni.proto.Ethereum.Transaction.ERC1155TransferOrBuilder
                public ByteString getData() {
                    return ((ERC1155Transfer) this.instance).getData();
                }

                public Builder setData(ByteString value) {
                    copyOnWrite();
                    ((ERC1155Transfer) this.instance).setData(value);
                    return this;
                }

                public Builder clearData() {
                    copyOnWrite();
                    ((ERC1155Transfer) this.instance).clearData();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C69491.f1878xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new ERC1155Transfer();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\n\u0004\n\u0005\n", new Object[]{"from_", "to_", "tokenId_", "value_", "data_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<ERC1155Transfer> parser = PARSER;
                        if (parser == null) {
                            synchronized (ERC1155Transfer.class) {
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
                ERC1155Transfer eRC1155Transfer = new ERC1155Transfer();
                DEFAULT_INSTANCE = eRC1155Transfer;
                GeneratedMessageLite.registerDefaultInstance(ERC1155Transfer.class, eRC1155Transfer);
            }

            public static ERC1155Transfer getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<ERC1155Transfer> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class ContractGeneric extends GeneratedMessageLite<ContractGeneric, Builder> implements ContractGenericOrBuilder {
            public static final int AMOUNT_FIELD_NUMBER = 1;
            public static final int DATA_FIELD_NUMBER = 2;
            private static final ContractGeneric DEFAULT_INSTANCE;
            private static volatile Parser<ContractGeneric> PARSER;
            private ByteString amount_;
            private ByteString data_;

            private ContractGeneric() {
                ByteString byteString = ByteString.EMPTY;
                this.amount_ = byteString;
                this.data_ = byteString;
            }

            @Override // wallet.core.jni.proto.Ethereum.Transaction.ContractGenericOrBuilder
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

            @Override // wallet.core.jni.proto.Ethereum.Transaction.ContractGenericOrBuilder
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

            public static ContractGeneric parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (ContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static ContractGeneric parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (ContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static ContractGeneric parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (ContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static ContractGeneric parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (ContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static ContractGeneric parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (ContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static ContractGeneric parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (ContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static ContractGeneric parseFrom(InputStream input) throws IOException {
                return (ContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static ContractGeneric parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (ContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static ContractGeneric parseDelimitedFrom(InputStream input) throws IOException {
                return (ContractGeneric) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static ContractGeneric parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (ContractGeneric) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static ContractGeneric parseFrom(CodedInputStream input) throws IOException {
                return (ContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static ContractGeneric parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (ContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(ContractGeneric prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<ContractGeneric, Builder> implements ContractGenericOrBuilder {
                /* synthetic */ Builder(C69491 c69491) {
                    this();
                }

                private Builder() {
                    super(ContractGeneric.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Ethereum.Transaction.ContractGenericOrBuilder
                public ByteString getAmount() {
                    return ((ContractGeneric) this.instance).getAmount();
                }

                public Builder setAmount(ByteString value) {
                    copyOnWrite();
                    ((ContractGeneric) this.instance).setAmount(value);
                    return this;
                }

                public Builder clearAmount() {
                    copyOnWrite();
                    ((ContractGeneric) this.instance).clearAmount();
                    return this;
                }

                @Override // wallet.core.jni.proto.Ethereum.Transaction.ContractGenericOrBuilder
                public ByteString getData() {
                    return ((ContractGeneric) this.instance).getData();
                }

                public Builder setData(ByteString value) {
                    copyOnWrite();
                    ((ContractGeneric) this.instance).setData(value);
                    return this;
                }

                public Builder clearData() {
                    copyOnWrite();
                    ((ContractGeneric) this.instance).clearData();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C69491.f1878xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new ContractGeneric();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\n", new Object[]{"amount_", "data_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<ContractGeneric> parser = PARSER;
                        if (parser == null) {
                            synchronized (ContractGeneric.class) {
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
                ContractGeneric contractGeneric = new ContractGeneric();
                DEFAULT_INSTANCE = contractGeneric;
                GeneratedMessageLite.registerDefaultInstance(ContractGeneric.class, contractGeneric);
            }

            public static ContractGeneric getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<ContractGeneric> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public enum TransactionOneofCase {
            TRANSFER(1),
            ERC20_TRANSFER(2),
            ERC20_APPROVE(3),
            ERC721_TRANSFER(4),
            ERC1155_TRANSFER(5),
            CONTRACT_GENERIC(6),
            TRANSACTIONONEOF_NOT_SET(0);
            
            private final int value;

            TransactionOneofCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static TransactionOneofCase valueOf(int value) {
                return forNumber(value);
            }

            public static TransactionOneofCase forNumber(int value) {
                switch (value) {
                    case 0:
                        return TRANSACTIONONEOF_NOT_SET;
                    case 1:
                        return TRANSFER;
                    case 2:
                        return ERC20_TRANSFER;
                    case 3:
                        return ERC20_APPROVE;
                    case 4:
                        return ERC721_TRANSFER;
                    case 5:
                        return ERC1155_TRANSFER;
                    case 6:
                        return CONTRACT_GENERIC;
                    default:
                        return null;
                }
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
        public TransactionOneofCase getTransactionOneofCase() {
            return TransactionOneofCase.forNumber(this.transactionOneofCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransactionOneof() {
            this.transactionOneofCase_ = 0;
            this.transactionOneof_ = null;
        }

        @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
        public boolean hasTransfer() {
            return this.transactionOneofCase_ == 1;
        }

        @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
        public Transfer getTransfer() {
            if (this.transactionOneofCase_ == 1) {
                return (Transfer) this.transactionOneof_;
            }
            return Transfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransfer(Transfer value) {
            value.getClass();
            this.transactionOneof_ = value;
            this.transactionOneofCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransfer(Transfer value) {
            value.getClass();
            if (this.transactionOneofCase_ == 1 && this.transactionOneof_ != Transfer.getDefaultInstance()) {
                this.transactionOneof_ = Transfer.newBuilder((Transfer) this.transactionOneof_).mergeFrom((Transfer.Builder) value).buildPartial();
            } else {
                this.transactionOneof_ = value;
            }
            this.transactionOneofCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransfer() {
            if (this.transactionOneofCase_ == 1) {
                this.transactionOneofCase_ = 0;
                this.transactionOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
        public boolean hasErc20Transfer() {
            return this.transactionOneofCase_ == 2;
        }

        @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
        public ERC20Transfer getErc20Transfer() {
            if (this.transactionOneofCase_ == 2) {
                return (ERC20Transfer) this.transactionOneof_;
            }
            return ERC20Transfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setErc20Transfer(ERC20Transfer value) {
            value.getClass();
            this.transactionOneof_ = value;
            this.transactionOneofCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeErc20Transfer(ERC20Transfer value) {
            value.getClass();
            if (this.transactionOneofCase_ == 2 && this.transactionOneof_ != ERC20Transfer.getDefaultInstance()) {
                this.transactionOneof_ = ERC20Transfer.newBuilder((ERC20Transfer) this.transactionOneof_).mergeFrom((ERC20Transfer.Builder) value).buildPartial();
            } else {
                this.transactionOneof_ = value;
            }
            this.transactionOneofCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearErc20Transfer() {
            if (this.transactionOneofCase_ == 2) {
                this.transactionOneofCase_ = 0;
                this.transactionOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
        public boolean hasErc20Approve() {
            return this.transactionOneofCase_ == 3;
        }

        @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
        public ERC20Approve getErc20Approve() {
            if (this.transactionOneofCase_ == 3) {
                return (ERC20Approve) this.transactionOneof_;
            }
            return ERC20Approve.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setErc20Approve(ERC20Approve value) {
            value.getClass();
            this.transactionOneof_ = value;
            this.transactionOneofCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeErc20Approve(ERC20Approve value) {
            value.getClass();
            if (this.transactionOneofCase_ == 3 && this.transactionOneof_ != ERC20Approve.getDefaultInstance()) {
                this.transactionOneof_ = ERC20Approve.newBuilder((ERC20Approve) this.transactionOneof_).mergeFrom((ERC20Approve.Builder) value).buildPartial();
            } else {
                this.transactionOneof_ = value;
            }
            this.transactionOneofCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearErc20Approve() {
            if (this.transactionOneofCase_ == 3) {
                this.transactionOneofCase_ = 0;
                this.transactionOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
        public boolean hasErc721Transfer() {
            return this.transactionOneofCase_ == 4;
        }

        @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
        public ERC721Transfer getErc721Transfer() {
            if (this.transactionOneofCase_ == 4) {
                return (ERC721Transfer) this.transactionOneof_;
            }
            return ERC721Transfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setErc721Transfer(ERC721Transfer value) {
            value.getClass();
            this.transactionOneof_ = value;
            this.transactionOneofCase_ = 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeErc721Transfer(ERC721Transfer value) {
            value.getClass();
            if (this.transactionOneofCase_ == 4 && this.transactionOneof_ != ERC721Transfer.getDefaultInstance()) {
                this.transactionOneof_ = ERC721Transfer.newBuilder((ERC721Transfer) this.transactionOneof_).mergeFrom((ERC721Transfer.Builder) value).buildPartial();
            } else {
                this.transactionOneof_ = value;
            }
            this.transactionOneofCase_ = 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearErc721Transfer() {
            if (this.transactionOneofCase_ == 4) {
                this.transactionOneofCase_ = 0;
                this.transactionOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
        public boolean hasErc1155Transfer() {
            return this.transactionOneofCase_ == 5;
        }

        @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
        public ERC1155Transfer getErc1155Transfer() {
            if (this.transactionOneofCase_ == 5) {
                return (ERC1155Transfer) this.transactionOneof_;
            }
            return ERC1155Transfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setErc1155Transfer(ERC1155Transfer value) {
            value.getClass();
            this.transactionOneof_ = value;
            this.transactionOneofCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeErc1155Transfer(ERC1155Transfer value) {
            value.getClass();
            if (this.transactionOneofCase_ == 5 && this.transactionOneof_ != ERC1155Transfer.getDefaultInstance()) {
                this.transactionOneof_ = ERC1155Transfer.newBuilder((ERC1155Transfer) this.transactionOneof_).mergeFrom((ERC1155Transfer.Builder) value).buildPartial();
            } else {
                this.transactionOneof_ = value;
            }
            this.transactionOneofCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearErc1155Transfer() {
            if (this.transactionOneofCase_ == 5) {
                this.transactionOneofCase_ = 0;
                this.transactionOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
        public boolean hasContractGeneric() {
            return this.transactionOneofCase_ == 6;
        }

        @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
        public ContractGeneric getContractGeneric() {
            if (this.transactionOneofCase_ == 6) {
                return (ContractGeneric) this.transactionOneof_;
            }
            return ContractGeneric.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setContractGeneric(ContractGeneric value) {
            value.getClass();
            this.transactionOneof_ = value;
            this.transactionOneofCase_ = 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeContractGeneric(ContractGeneric value) {
            value.getClass();
            if (this.transactionOneofCase_ == 6 && this.transactionOneof_ != ContractGeneric.getDefaultInstance()) {
                this.transactionOneof_ = ContractGeneric.newBuilder((ContractGeneric) this.transactionOneof_).mergeFrom((ContractGeneric.Builder) value).buildPartial();
            } else {
                this.transactionOneof_ = value;
            }
            this.transactionOneofCase_ = 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearContractGeneric() {
            if (this.transactionOneofCase_ == 6) {
                this.transactionOneofCase_ = 0;
                this.transactionOneof_ = null;
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

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Transaction, Builder> implements TransactionOrBuilder {
            /* synthetic */ Builder(C69491 c69491) {
                this();
            }

            private Builder() {
                super(Transaction.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
            public TransactionOneofCase getTransactionOneofCase() {
                return ((Transaction) this.instance).getTransactionOneofCase();
            }

            public Builder clearTransactionOneof() {
                copyOnWrite();
                ((Transaction) this.instance).clearTransactionOneof();
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
            public boolean hasTransfer() {
                return ((Transaction) this.instance).hasTransfer();
            }

            @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
            public Transfer getTransfer() {
                return ((Transaction) this.instance).getTransfer();
            }

            public Builder setTransfer(Transfer value) {
                copyOnWrite();
                ((Transaction) this.instance).setTransfer(value);
                return this;
            }

            public Builder setTransfer(Transfer.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setTransfer(builderForValue.build());
                return this;
            }

            public Builder mergeTransfer(Transfer value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeTransfer(value);
                return this;
            }

            public Builder clearTransfer() {
                copyOnWrite();
                ((Transaction) this.instance).clearTransfer();
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
            public boolean hasErc20Transfer() {
                return ((Transaction) this.instance).hasErc20Transfer();
            }

            @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
            public ERC20Transfer getErc20Transfer() {
                return ((Transaction) this.instance).getErc20Transfer();
            }

            public Builder setErc20Transfer(ERC20Transfer value) {
                copyOnWrite();
                ((Transaction) this.instance).setErc20Transfer(value);
                return this;
            }

            public Builder setErc20Transfer(ERC20Transfer.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setErc20Transfer(builderForValue.build());
                return this;
            }

            public Builder mergeErc20Transfer(ERC20Transfer value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeErc20Transfer(value);
                return this;
            }

            public Builder clearErc20Transfer() {
                copyOnWrite();
                ((Transaction) this.instance).clearErc20Transfer();
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
            public boolean hasErc20Approve() {
                return ((Transaction) this.instance).hasErc20Approve();
            }

            @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
            public ERC20Approve getErc20Approve() {
                return ((Transaction) this.instance).getErc20Approve();
            }

            public Builder setErc20Approve(ERC20Approve value) {
                copyOnWrite();
                ((Transaction) this.instance).setErc20Approve(value);
                return this;
            }

            public Builder setErc20Approve(ERC20Approve.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setErc20Approve(builderForValue.build());
                return this;
            }

            public Builder mergeErc20Approve(ERC20Approve value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeErc20Approve(value);
                return this;
            }

            public Builder clearErc20Approve() {
                copyOnWrite();
                ((Transaction) this.instance).clearErc20Approve();
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
            public boolean hasErc721Transfer() {
                return ((Transaction) this.instance).hasErc721Transfer();
            }

            @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
            public ERC721Transfer getErc721Transfer() {
                return ((Transaction) this.instance).getErc721Transfer();
            }

            public Builder setErc721Transfer(ERC721Transfer value) {
                copyOnWrite();
                ((Transaction) this.instance).setErc721Transfer(value);
                return this;
            }

            public Builder setErc721Transfer(ERC721Transfer.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setErc721Transfer(builderForValue.build());
                return this;
            }

            public Builder mergeErc721Transfer(ERC721Transfer value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeErc721Transfer(value);
                return this;
            }

            public Builder clearErc721Transfer() {
                copyOnWrite();
                ((Transaction) this.instance).clearErc721Transfer();
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
            public boolean hasErc1155Transfer() {
                return ((Transaction) this.instance).hasErc1155Transfer();
            }

            @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
            public ERC1155Transfer getErc1155Transfer() {
                return ((Transaction) this.instance).getErc1155Transfer();
            }

            public Builder setErc1155Transfer(ERC1155Transfer value) {
                copyOnWrite();
                ((Transaction) this.instance).setErc1155Transfer(value);
                return this;
            }

            public Builder setErc1155Transfer(ERC1155Transfer.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setErc1155Transfer(builderForValue.build());
                return this;
            }

            public Builder mergeErc1155Transfer(ERC1155Transfer value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeErc1155Transfer(value);
                return this;
            }

            public Builder clearErc1155Transfer() {
                copyOnWrite();
                ((Transaction) this.instance).clearErc1155Transfer();
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
            public boolean hasContractGeneric() {
                return ((Transaction) this.instance).hasContractGeneric();
            }

            @Override // wallet.core.jni.proto.Ethereum.TransactionOrBuilder
            public ContractGeneric getContractGeneric() {
                return ((Transaction) this.instance).getContractGeneric();
            }

            public Builder setContractGeneric(ContractGeneric value) {
                copyOnWrite();
                ((Transaction) this.instance).setContractGeneric(value);
                return this;
            }

            public Builder setContractGeneric(ContractGeneric.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setContractGeneric(builderForValue.build());
                return this;
            }

            public Builder mergeContractGeneric(ContractGeneric value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeContractGeneric(value);
                return this;
            }

            public Builder clearContractGeneric() {
                copyOnWrite();
                ((Transaction) this.instance).clearContractGeneric();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C69491.f1878xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Transaction();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0001\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000", new Object[]{"transactionOneof_", "transactionOneofCase_", Transfer.class, ERC20Transfer.class, ERC20Approve.class, ERC721Transfer.class, ERC1155Transfer.class, ContractGeneric.class});
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

    /* renamed from: wallet.core.jni.proto.Ethereum$1 */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C69491 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1878xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1878xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1878xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1878xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1878xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1878xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1878xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1878xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class UserOperation extends GeneratedMessageLite<UserOperation, Builder> implements UserOperationOrBuilder {
        public static final int ACCOUNT_FACTORY_FIELD_NUMBER = 2;
        public static final int ACCOUNT_LOGIC_FIELD_NUMBER = 3;
        private static final UserOperation DEFAULT_INSTANCE;
        public static final int ENTRY_POINT_FIELD_NUMBER = 1;
        public static final int IS_ACCOUNT_DEPLOYED_FIELD_NUMBER = 5;
        public static final int OWNER_FIELD_NUMBER = 4;
        private static volatile Parser<UserOperation> PARSER = null;
        public static final int PAYMASTER_AND_DATA_FIELD_NUMBER = 8;
        public static final int PRE_VERIFICATION_GAS_FIELD_NUMBER = 6;
        public static final int VERIFICATION_GAS_LIMIT_FIELD_NUMBER = 7;
        private boolean isAccountDeployed_;
        private ByteString paymasterAndData_;
        private ByteString preVerificationGas_;
        private ByteString verificationGasLimit_;
        private String entryPoint_ = "";
        private String accountFactory_ = "";
        private String accountLogic_ = "";
        private String owner_ = "";

        private UserOperation() {
            ByteString byteString = ByteString.EMPTY;
            this.preVerificationGas_ = byteString;
            this.verificationGasLimit_ = byteString;
            this.paymasterAndData_ = byteString;
        }

        @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
        public String getEntryPoint() {
            return this.entryPoint_;
        }

        @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
        public ByteString getEntryPointBytes() {
            return ByteString.copyFromUtf8(this.entryPoint_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEntryPoint(String value) {
            value.getClass();
            this.entryPoint_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearEntryPoint() {
            this.entryPoint_ = getDefaultInstance().getEntryPoint();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEntryPointBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.entryPoint_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
        public String getAccountFactory() {
            return this.accountFactory_;
        }

        @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
        public ByteString getAccountFactoryBytes() {
            return ByteString.copyFromUtf8(this.accountFactory_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccountFactory(String value) {
            value.getClass();
            this.accountFactory_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAccountFactory() {
            this.accountFactory_ = getDefaultInstance().getAccountFactory();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccountFactoryBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.accountFactory_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
        public String getAccountLogic() {
            return this.accountLogic_;
        }

        @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
        public ByteString getAccountLogicBytes() {
            return ByteString.copyFromUtf8(this.accountLogic_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccountLogic(String value) {
            value.getClass();
            this.accountLogic_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAccountLogic() {
            this.accountLogic_ = getDefaultInstance().getAccountLogic();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccountLogicBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.accountLogic_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
        public String getOwner() {
            return this.owner_;
        }

        @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
        public ByteString getOwnerBytes() {
            return ByteString.copyFromUtf8(this.owner_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwner(String value) {
            value.getClass();
            this.owner_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOwner() {
            this.owner_ = getDefaultInstance().getOwner();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.owner_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
        public boolean getIsAccountDeployed() {
            return this.isAccountDeployed_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIsAccountDeployed(boolean value) {
            this.isAccountDeployed_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearIsAccountDeployed() {
            this.isAccountDeployed_ = false;
        }

        @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
        public ByteString getPreVerificationGas() {
            return this.preVerificationGas_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPreVerificationGas(ByteString value) {
            value.getClass();
            this.preVerificationGas_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPreVerificationGas() {
            this.preVerificationGas_ = getDefaultInstance().getPreVerificationGas();
        }

        @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
        public ByteString getVerificationGasLimit() {
            return this.verificationGasLimit_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setVerificationGasLimit(ByteString value) {
            value.getClass();
            this.verificationGasLimit_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearVerificationGasLimit() {
            this.verificationGasLimit_ = getDefaultInstance().getVerificationGasLimit();
        }

        @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
        public ByteString getPaymasterAndData() {
            return this.paymasterAndData_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPaymasterAndData(ByteString value) {
            value.getClass();
            this.paymasterAndData_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPaymasterAndData() {
            this.paymasterAndData_ = getDefaultInstance().getPaymasterAndData();
        }

        public static UserOperation parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (UserOperation) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static UserOperation parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (UserOperation) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static UserOperation parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (UserOperation) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static UserOperation parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (UserOperation) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static UserOperation parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (UserOperation) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static UserOperation parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (UserOperation) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static UserOperation parseFrom(InputStream input) throws IOException {
            return (UserOperation) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static UserOperation parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UserOperation) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static UserOperation parseDelimitedFrom(InputStream input) throws IOException {
            return (UserOperation) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static UserOperation parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UserOperation) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static UserOperation parseFrom(CodedInputStream input) throws IOException {
            return (UserOperation) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static UserOperation parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UserOperation) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(UserOperation prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<UserOperation, Builder> implements UserOperationOrBuilder {
            /* synthetic */ Builder(C69491 c69491) {
                this();
            }

            private Builder() {
                super(UserOperation.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
            public String getEntryPoint() {
                return ((UserOperation) this.instance).getEntryPoint();
            }

            @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
            public ByteString getEntryPointBytes() {
                return ((UserOperation) this.instance).getEntryPointBytes();
            }

            public Builder setEntryPoint(String value) {
                copyOnWrite();
                ((UserOperation) this.instance).setEntryPoint(value);
                return this;
            }

            public Builder clearEntryPoint() {
                copyOnWrite();
                ((UserOperation) this.instance).clearEntryPoint();
                return this;
            }

            public Builder setEntryPointBytes(ByteString value) {
                copyOnWrite();
                ((UserOperation) this.instance).setEntryPointBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
            public String getAccountFactory() {
                return ((UserOperation) this.instance).getAccountFactory();
            }

            @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
            public ByteString getAccountFactoryBytes() {
                return ((UserOperation) this.instance).getAccountFactoryBytes();
            }

            public Builder setAccountFactory(String value) {
                copyOnWrite();
                ((UserOperation) this.instance).setAccountFactory(value);
                return this;
            }

            public Builder clearAccountFactory() {
                copyOnWrite();
                ((UserOperation) this.instance).clearAccountFactory();
                return this;
            }

            public Builder setAccountFactoryBytes(ByteString value) {
                copyOnWrite();
                ((UserOperation) this.instance).setAccountFactoryBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
            public String getAccountLogic() {
                return ((UserOperation) this.instance).getAccountLogic();
            }

            @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
            public ByteString getAccountLogicBytes() {
                return ((UserOperation) this.instance).getAccountLogicBytes();
            }

            public Builder setAccountLogic(String value) {
                copyOnWrite();
                ((UserOperation) this.instance).setAccountLogic(value);
                return this;
            }

            public Builder clearAccountLogic() {
                copyOnWrite();
                ((UserOperation) this.instance).clearAccountLogic();
                return this;
            }

            public Builder setAccountLogicBytes(ByteString value) {
                copyOnWrite();
                ((UserOperation) this.instance).setAccountLogicBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
            public String getOwner() {
                return ((UserOperation) this.instance).getOwner();
            }

            @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
            public ByteString getOwnerBytes() {
                return ((UserOperation) this.instance).getOwnerBytes();
            }

            public Builder setOwner(String value) {
                copyOnWrite();
                ((UserOperation) this.instance).setOwner(value);
                return this;
            }

            public Builder clearOwner() {
                copyOnWrite();
                ((UserOperation) this.instance).clearOwner();
                return this;
            }

            public Builder setOwnerBytes(ByteString value) {
                copyOnWrite();
                ((UserOperation) this.instance).setOwnerBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
            public boolean getIsAccountDeployed() {
                return ((UserOperation) this.instance).getIsAccountDeployed();
            }

            public Builder setIsAccountDeployed(boolean value) {
                copyOnWrite();
                ((UserOperation) this.instance).setIsAccountDeployed(value);
                return this;
            }

            public Builder clearIsAccountDeployed() {
                copyOnWrite();
                ((UserOperation) this.instance).clearIsAccountDeployed();
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
            public ByteString getPreVerificationGas() {
                return ((UserOperation) this.instance).getPreVerificationGas();
            }

            public Builder setPreVerificationGas(ByteString value) {
                copyOnWrite();
                ((UserOperation) this.instance).setPreVerificationGas(value);
                return this;
            }

            public Builder clearPreVerificationGas() {
                copyOnWrite();
                ((UserOperation) this.instance).clearPreVerificationGas();
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
            public ByteString getVerificationGasLimit() {
                return ((UserOperation) this.instance).getVerificationGasLimit();
            }

            public Builder setVerificationGasLimit(ByteString value) {
                copyOnWrite();
                ((UserOperation) this.instance).setVerificationGasLimit(value);
                return this;
            }

            public Builder clearVerificationGasLimit() {
                copyOnWrite();
                ((UserOperation) this.instance).clearVerificationGasLimit();
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.UserOperationOrBuilder
            public ByteString getPaymasterAndData() {
                return ((UserOperation) this.instance).getPaymasterAndData();
            }

            public Builder setPaymasterAndData(ByteString value) {
                copyOnWrite();
                ((UserOperation) this.instance).setPaymasterAndData(value);
                return this;
            }

            public Builder clearPaymasterAndData() {
                copyOnWrite();
                ((UserOperation) this.instance).clearPaymasterAndData();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C69491.f1878xa1df5c61[method.ordinal()]) {
                case 1:
                    return new UserOperation();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\b\u0000\u0000\u0001\b\b\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004Ȉ\u0005\u0007\u0006\n\u0007\n\b\n", new Object[]{"entryPoint_", "accountFactory_", "accountLogic_", "owner_", "isAccountDeployed_", "preVerificationGas_", "verificationGasLimit_", "paymasterAndData_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<UserOperation> parser = PARSER;
                    if (parser == null) {
                        synchronized (UserOperation.class) {
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
            UserOperation userOperation = new UserOperation();
            DEFAULT_INSTANCE = userOperation;
            GeneratedMessageLite.registerDefaultInstance(UserOperation.class, userOperation);
        }

        public static UserOperation getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<UserOperation> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int CHAIN_ID_FIELD_NUMBER = 1;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int GAS_LIMIT_FIELD_NUMBER = 5;
        public static final int GAS_PRICE_FIELD_NUMBER = 4;
        public static final int MAX_FEE_PER_GAS_FIELD_NUMBER = 7;
        public static final int MAX_INCLUSION_FEE_PER_GAS_FIELD_NUMBER = 6;
        public static final int NONCE_FIELD_NUMBER = 2;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 9;
        public static final int TO_ADDRESS_FIELD_NUMBER = 8;
        public static final int TRANSACTION_FIELD_NUMBER = 10;
        public static final int TX_MODE_FIELD_NUMBER = 3;
        public static final int USER_OPERATION_FIELD_NUMBER = 11;
        private ByteString chainId_;
        private ByteString gasLimit_;
        private ByteString gasPrice_;
        private ByteString maxFeePerGas_;
        private ByteString maxInclusionFeePerGas_;
        private ByteString nonce_;
        private ByteString privateKey_;
        private String toAddress_;
        private Transaction transaction_;
        private int txMode_;
        private UserOperation userOperation_;

        private SigningInput() {
            ByteString byteString = ByteString.EMPTY;
            this.chainId_ = byteString;
            this.nonce_ = byteString;
            this.gasPrice_ = byteString;
            this.gasLimit_ = byteString;
            this.maxInclusionFeePerGas_ = byteString;
            this.maxFeePerGas_ = byteString;
            this.toAddress_ = "";
            this.privateKey_ = byteString;
        }

        @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
        public ByteString getChainId() {
            return this.chainId_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChainId(ByteString value) {
            value.getClass();
            this.chainId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearChainId() {
            this.chainId_ = getDefaultInstance().getChainId();
        }

        @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
        public ByteString getNonce() {
            return this.nonce_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNonce(ByteString value) {
            value.getClass();
            this.nonce_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNonce() {
            this.nonce_ = getDefaultInstance().getNonce();
        }

        @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
        public int getTxModeValue() {
            return this.txMode_;
        }

        @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
        public TransactionMode getTxMode() {
            TransactionMode forNumber = TransactionMode.forNumber(this.txMode_);
            return forNumber == null ? TransactionMode.UNRECOGNIZED : forNumber;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTxModeValue(int value) {
            this.txMode_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTxMode(TransactionMode value) {
            this.txMode_ = value.getNumber();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTxMode() {
            this.txMode_ = 0;
        }

        @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
        public ByteString getGasPrice() {
            return this.gasPrice_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGasPrice(ByteString value) {
            value.getClass();
            this.gasPrice_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGasPrice() {
            this.gasPrice_ = getDefaultInstance().getGasPrice();
        }

        @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
        public ByteString getGasLimit() {
            return this.gasLimit_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGasLimit(ByteString value) {
            value.getClass();
            this.gasLimit_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGasLimit() {
            this.gasLimit_ = getDefaultInstance().getGasLimit();
        }

        @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
        public ByteString getMaxInclusionFeePerGas() {
            return this.maxInclusionFeePerGas_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMaxInclusionFeePerGas(ByteString value) {
            value.getClass();
            this.maxInclusionFeePerGas_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMaxInclusionFeePerGas() {
            this.maxInclusionFeePerGas_ = getDefaultInstance().getMaxInclusionFeePerGas();
        }

        @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
        public ByteString getMaxFeePerGas() {
            return this.maxFeePerGas_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMaxFeePerGas(ByteString value) {
            value.getClass();
            this.maxFeePerGas_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMaxFeePerGas() {
            this.maxFeePerGas_ = getDefaultInstance().getMaxFeePerGas();
        }

        @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
        public String getToAddress() {
            return this.toAddress_;
        }

        @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
        public boolean hasTransaction() {
            return this.transaction_ != null;
        }

        @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
        public boolean hasUserOperation() {
            return this.userOperation_ != null;
        }

        @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
        public UserOperation getUserOperation() {
            UserOperation userOperation = this.userOperation_;
            return userOperation == null ? UserOperation.getDefaultInstance() : userOperation;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUserOperation(UserOperation value) {
            value.getClass();
            this.userOperation_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeUserOperation(UserOperation value) {
            value.getClass();
            UserOperation userOperation = this.userOperation_;
            if (userOperation != null && userOperation != UserOperation.getDefaultInstance()) {
                this.userOperation_ = UserOperation.newBuilder(this.userOperation_).mergeFrom((UserOperation.Builder) value).buildPartial();
            } else {
                this.userOperation_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUserOperation() {
            this.userOperation_ = null;
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
            /* synthetic */ Builder(C69491 c69491) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
            public ByteString getChainId() {
                return ((SigningInput) this.instance).getChainId();
            }

            public Builder setChainId(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setChainId(value);
                return this;
            }

            public Builder clearChainId() {
                copyOnWrite();
                ((SigningInput) this.instance).clearChainId();
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
            public ByteString getNonce() {
                return ((SigningInput) this.instance).getNonce();
            }

            public Builder setNonce(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setNonce(value);
                return this;
            }

            public Builder clearNonce() {
                copyOnWrite();
                ((SigningInput) this.instance).clearNonce();
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
            public int getTxModeValue() {
                return ((SigningInput) this.instance).getTxModeValue();
            }

            public Builder setTxModeValue(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTxModeValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
            public TransactionMode getTxMode() {
                return ((SigningInput) this.instance).getTxMode();
            }

            public Builder setTxMode(TransactionMode value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTxMode(value);
                return this;
            }

            public Builder clearTxMode() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTxMode();
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
            public ByteString getGasPrice() {
                return ((SigningInput) this.instance).getGasPrice();
            }

            public Builder setGasPrice(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setGasPrice(value);
                return this;
            }

            public Builder clearGasPrice() {
                copyOnWrite();
                ((SigningInput) this.instance).clearGasPrice();
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
            public ByteString getGasLimit() {
                return ((SigningInput) this.instance).getGasLimit();
            }

            public Builder setGasLimit(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setGasLimit(value);
                return this;
            }

            public Builder clearGasLimit() {
                copyOnWrite();
                ((SigningInput) this.instance).clearGasLimit();
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
            public ByteString getMaxInclusionFeePerGas() {
                return ((SigningInput) this.instance).getMaxInclusionFeePerGas();
            }

            public Builder setMaxInclusionFeePerGas(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setMaxInclusionFeePerGas(value);
                return this;
            }

            public Builder clearMaxInclusionFeePerGas() {
                copyOnWrite();
                ((SigningInput) this.instance).clearMaxInclusionFeePerGas();
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
            public ByteString getMaxFeePerGas() {
                return ((SigningInput) this.instance).getMaxFeePerGas();
            }

            public Builder setMaxFeePerGas(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setMaxFeePerGas(value);
                return this;
            }

            public Builder clearMaxFeePerGas() {
                copyOnWrite();
                ((SigningInput) this.instance).clearMaxFeePerGas();
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
            public String getToAddress() {
                return ((SigningInput) this.instance).getToAddress();
            }

            @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
            public ByteString getToAddressBytes() {
                return ((SigningInput) this.instance).getToAddressBytes();
            }

            public Builder setToAddress(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setToAddress(value);
                return this;
            }

            public Builder clearToAddress() {
                copyOnWrite();
                ((SigningInput) this.instance).clearToAddress();
                return this;
            }

            public Builder setToAddressBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setToAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
            public boolean hasTransaction() {
                return ((SigningInput) this.instance).hasTransaction();
            }

            @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
            public boolean hasUserOperation() {
                return ((SigningInput) this.instance).hasUserOperation();
            }

            @Override // wallet.core.jni.proto.Ethereum.SigningInputOrBuilder
            public UserOperation getUserOperation() {
                return ((SigningInput) this.instance).getUserOperation();
            }

            public Builder setUserOperation(UserOperation value) {
                copyOnWrite();
                ((SigningInput) this.instance).setUserOperation(value);
                return this;
            }

            public Builder setUserOperation(UserOperation.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setUserOperation(builderForValue.build());
                return this;
            }

            public Builder mergeUserOperation(UserOperation value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeUserOperation(value);
                return this;
            }

            public Builder clearUserOperation() {
                copyOnWrite();
                ((SigningInput) this.instance).clearUserOperation();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C69491.f1878xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u000b\u0000\u0000\u0001\u000b\u000b\u0000\u0000\u0000\u0001\n\u0002\n\u0003\f\u0004\n\u0005\n\u0006\n\u0007\n\bȈ\t\n\n\t\u000b\t", new Object[]{"chainId_", "nonce_", "txMode_", "gasPrice_", "gasLimit_", "maxInclusionFeePerGas_", "maxFeePerGas_", "toAddress_", "privateKey_", "transaction_", "userOperation_"});
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
        public static final int DATA_FIELD_NUMBER = 5;
        private static final SigningOutput DEFAULT_INSTANCE;
        public static final int ENCODED_FIELD_NUMBER = 1;
        public static final int ERROR_FIELD_NUMBER = 6;
        public static final int ERROR_MESSAGE_FIELD_NUMBER = 7;
        private static volatile Parser<SigningOutput> PARSER = null;
        public static final int R_FIELD_NUMBER = 3;
        public static final int S_FIELD_NUMBER = 4;
        public static final int V_FIELD_NUMBER = 2;
        private ByteString data_;
        private ByteString encoded_;
        private String errorMessage_;
        private int error_;

        /* renamed from: r_ */
        private ByteString f1879r_;

        /* renamed from: s_ */
        private ByteString f1880s_;

        /* renamed from: v_ */
        private ByteString f1881v_;

        private SigningOutput() {
            ByteString byteString = ByteString.EMPTY;
            this.encoded_ = byteString;
            this.f1881v_ = byteString;
            this.f1879r_ = byteString;
            this.f1880s_ = byteString;
            this.data_ = byteString;
            this.errorMessage_ = "";
        }

        @Override // wallet.core.jni.proto.Ethereum.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Ethereum.SigningOutputOrBuilder
        public ByteString getV() {
            return this.f1881v_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setV(ByteString value) {
            value.getClass();
            this.f1881v_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearV() {
            this.f1881v_ = getDefaultInstance().getV();
        }

        @Override // wallet.core.jni.proto.Ethereum.SigningOutputOrBuilder
        public ByteString getR() {
            return this.f1879r_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setR(ByteString value) {
            value.getClass();
            this.f1879r_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearR() {
            this.f1879r_ = getDefaultInstance().getR();
        }

        @Override // wallet.core.jni.proto.Ethereum.SigningOutputOrBuilder
        public ByteString getS() {
            return this.f1880s_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setS(ByteString value) {
            value.getClass();
            this.f1880s_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearS() {
            this.f1880s_ = getDefaultInstance().getS();
        }

        @Override // wallet.core.jni.proto.Ethereum.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Ethereum.SigningOutputOrBuilder
        public int getErrorValue() {
            return this.error_;
        }

        @Override // wallet.core.jni.proto.Ethereum.SigningOutputOrBuilder
        public Common.SigningError getError() {
            Common.SigningError forNumber = Common.SigningError.forNumber(this.error_);
            return forNumber == null ? Common.SigningError.UNRECOGNIZED : forNumber;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setErrorValue(int value) {
            this.error_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setError(Common.SigningError value) {
            this.error_ = value.getNumber();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearError() {
            this.error_ = 0;
        }

        @Override // wallet.core.jni.proto.Ethereum.SigningOutputOrBuilder
        public String getErrorMessage() {
            return this.errorMessage_;
        }

        @Override // wallet.core.jni.proto.Ethereum.SigningOutputOrBuilder
        public ByteString getErrorMessageBytes() {
            return ByteString.copyFromUtf8(this.errorMessage_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setErrorMessage(String value) {
            value.getClass();
            this.errorMessage_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearErrorMessage() {
            this.errorMessage_ = getDefaultInstance().getErrorMessage();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setErrorMessageBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.errorMessage_ = value.toStringUtf8();
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
            /* synthetic */ Builder(C69491 c69491) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Ethereum.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.Ethereum.SigningOutputOrBuilder
            public ByteString getV() {
                return ((SigningOutput) this.instance).getV();
            }

            public Builder setV(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setV(value);
                return this;
            }

            public Builder clearV() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearV();
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.SigningOutputOrBuilder
            public ByteString getR() {
                return ((SigningOutput) this.instance).getR();
            }

            public Builder setR(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setR(value);
                return this;
            }

            public Builder clearR() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearR();
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.SigningOutputOrBuilder
            public ByteString getS() {
                return ((SigningOutput) this.instance).getS();
            }

            public Builder setS(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setS(value);
                return this;
            }

            public Builder clearS() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearS();
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.SigningOutputOrBuilder
            public ByteString getData() {
                return ((SigningOutput) this.instance).getData();
            }

            public Builder setData(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setData(value);
                return this;
            }

            public Builder clearData() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearData();
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.SigningOutputOrBuilder
            public int getErrorValue() {
                return ((SigningOutput) this.instance).getErrorValue();
            }

            public Builder setErrorValue(int value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setErrorValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.SigningOutputOrBuilder
            public Common.SigningError getError() {
                return ((SigningOutput) this.instance).getError();
            }

            public Builder setError(Common.SigningError value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setError(value);
                return this;
            }

            public Builder clearError() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearError();
                return this;
            }

            @Override // wallet.core.jni.proto.Ethereum.SigningOutputOrBuilder
            public String getErrorMessage() {
                return ((SigningOutput) this.instance).getErrorMessage();
            }

            @Override // wallet.core.jni.proto.Ethereum.SigningOutputOrBuilder
            public ByteString getErrorMessageBytes() {
                return ((SigningOutput) this.instance).getErrorMessageBytes();
            }

            public Builder setErrorMessage(String value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setErrorMessage(value);
                return this;
            }

            public Builder clearErrorMessage() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearErrorMessage();
                return this;
            }

            public Builder setErrorMessageBytes(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setErrorMessageBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C69491.f1878xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\n\u0002\n\u0003\n\u0004\n\u0005\n\u0006\f\u0007Ȉ", new Object[]{"encoded_", "v_", "r_", "s_", "data_", "error_", "errorMessage_"});
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
