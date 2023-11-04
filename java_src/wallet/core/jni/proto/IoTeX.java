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
public final class IoTeX {

    /* loaded from: classes7.dex */
    public interface ActionCoreOrBuilder extends MessageLiteOrBuilder {
        ActionCore.ActionCase getActionCase();

        Staking.CandidateRegister getCandidateRegister();

        Staking.CandidateBasicInfo getCandidateUpdate();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ContractCall getExecution();

        long getGasLimit();

        String getGasPrice();

        ByteString getGasPriceBytes();

        long getNonce();

        Staking.AddDeposit getStakeAddDeposit();

        Staking.ChangeCandidate getStakeChangeCandidate();

        Staking.Create getStakeCreate();

        Staking.Restake getStakeRestake();

        Staking.TransferOwnership getStakeTransferOwnership();

        Staking.Reclaim getStakeUnstake();

        Staking.Reclaim getStakeWithdraw();

        Transfer getTransfer();

        int getVersion();

        boolean hasCandidateRegister();

        boolean hasCandidateUpdate();

        boolean hasExecution();

        boolean hasStakeAddDeposit();

        boolean hasStakeChangeCandidate();

        boolean hasStakeCreate();

        boolean hasStakeRestake();

        boolean hasStakeTransferOwnership();

        boolean hasStakeUnstake();

        boolean hasStakeWithdraw();

        boolean hasTransfer();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface ActionOrBuilder extends MessageLiteOrBuilder {
        ActionCore getCore();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getSenderPubKey();

        ByteString getSignature();

        boolean hasCore();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface ContractCallOrBuilder extends MessageLiteOrBuilder {
        String getAmount();

        ByteString getAmountBytes();

        String getContract();

        ByteString getContractBytes();

        ByteString getData();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        SigningInput.ActionCase getActionCase();

        ContractCall getCall();

        Staking.CandidateRegister getCandidateRegister();

        Staking.CandidateBasicInfo getCandidateUpdate();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getGasLimit();

        String getGasPrice();

        ByteString getGasPriceBytes();

        long getNonce();

        ByteString getPrivateKey();

        Staking.AddDeposit getStakeAddDeposit();

        Staking.ChangeCandidate getStakeChangeCandidate();

        Staking.Create getStakeCreate();

        Staking.Restake getStakeRestake();

        Staking.TransferOwnership getStakeTransferOwnership();

        Staking.Reclaim getStakeUnstake();

        Staking.Reclaim getStakeWithdraw();

        Transfer getTransfer();

        int getVersion();

        boolean hasCall();

        boolean hasCandidateRegister();

        boolean hasCandidateUpdate();

        boolean hasStakeAddDeposit();

        boolean hasStakeChangeCandidate();

        boolean hasStakeCreate();

        boolean hasStakeRestake();

        boolean hasStakeTransferOwnership();

        boolean hasStakeUnstake();

        boolean hasStakeWithdraw();

        boolean hasTransfer();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getEncoded();

        ByteString getHash();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface StakingOrBuilder extends MessageLiteOrBuilder {
        Staking.CandidateRegister getCandidateRegister();

        Staking.CandidateBasicInfo getCandidateUpdate();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Staking.MessageCase getMessageCase();

        Staking.AddDeposit getStakeAddDeposit();

        Staking.ChangeCandidate getStakeChangeCandidate();

        Staking.Create getStakeCreate();

        Staking.Restake getStakeRestake();

        Staking.TransferOwnership getStakeTransferOwnership();

        Staking.Reclaim getStakeUnstake();

        Staking.Reclaim getStakeWithdraw();

        boolean hasCandidateRegister();

        boolean hasCandidateUpdate();

        boolean hasStakeAddDeposit();

        boolean hasStakeChangeCandidate();

        boolean hasStakeCreate();

        boolean hasStakeRestake();

        boolean hasStakeTransferOwnership();

        boolean hasStakeUnstake();

        boolean hasStakeWithdraw();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface TransferOrBuilder extends MessageLiteOrBuilder {
        String getAmount();

        ByteString getAmountBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getPayload();

        String getRecipient();

        ByteString getRecipientBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private IoTeX() {
    }

    /* loaded from: classes7.dex */
    public static final class Transfer extends GeneratedMessageLite<Transfer, Builder> implements TransferOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 1;
        private static final Transfer DEFAULT_INSTANCE;
        private static volatile Parser<Transfer> PARSER = null;
        public static final int PAYLOAD_FIELD_NUMBER = 3;
        public static final int RECIPIENT_FIELD_NUMBER = 2;
        private String amount_ = "";
        private String recipient_ = "";
        private ByteString payload_ = ByteString.EMPTY;

        private Transfer() {
        }

        @Override // wallet.core.jni.proto.IoTeX.TransferOrBuilder
        public String getAmount() {
            return this.amount_;
        }

        @Override // wallet.core.jni.proto.IoTeX.TransferOrBuilder
        public ByteString getAmountBytes() {
            return ByteString.copyFromUtf8(this.amount_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmount(String value) {
            value.getClass();
            this.amount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAmount() {
            this.amount_ = getDefaultInstance().getAmount();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmountBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.amount_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.IoTeX.TransferOrBuilder
        public String getRecipient() {
            return this.recipient_;
        }

        @Override // wallet.core.jni.proto.IoTeX.TransferOrBuilder
        public ByteString getRecipientBytes() {
            return ByteString.copyFromUtf8(this.recipient_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRecipient(String value) {
            value.getClass();
            this.recipient_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRecipient() {
            this.recipient_ = getDefaultInstance().getRecipient();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRecipientBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.recipient_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.IoTeX.TransferOrBuilder
        public ByteString getPayload() {
            return this.payload_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPayload(ByteString value) {
            value.getClass();
            this.payload_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPayload() {
            this.payload_ = getDefaultInstance().getPayload();
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
            /* synthetic */ Builder(C77491 c77491) {
                this();
            }

            private Builder() {
                super(Transfer.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.IoTeX.TransferOrBuilder
            public String getAmount() {
                return ((Transfer) this.instance).getAmount();
            }

            @Override // wallet.core.jni.proto.IoTeX.TransferOrBuilder
            public ByteString getAmountBytes() {
                return ((Transfer) this.instance).getAmountBytes();
            }

            public Builder setAmount(String value) {
                copyOnWrite();
                ((Transfer) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((Transfer) this.instance).clearAmount();
                return this;
            }

            public Builder setAmountBytes(ByteString value) {
                copyOnWrite();
                ((Transfer) this.instance).setAmountBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.TransferOrBuilder
            public String getRecipient() {
                return ((Transfer) this.instance).getRecipient();
            }

            @Override // wallet.core.jni.proto.IoTeX.TransferOrBuilder
            public ByteString getRecipientBytes() {
                return ((Transfer) this.instance).getRecipientBytes();
            }

            public Builder setRecipient(String value) {
                copyOnWrite();
                ((Transfer) this.instance).setRecipient(value);
                return this;
            }

            public Builder clearRecipient() {
                copyOnWrite();
                ((Transfer) this.instance).clearRecipient();
                return this;
            }

            public Builder setRecipientBytes(ByteString value) {
                copyOnWrite();
                ((Transfer) this.instance).setRecipientBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.TransferOrBuilder
            public ByteString getPayload() {
                return ((Transfer) this.instance).getPayload();
            }

            public Builder setPayload(ByteString value) {
                copyOnWrite();
                ((Transfer) this.instance).setPayload(value);
                return this;
            }

            public Builder clearPayload() {
                copyOnWrite();
                ((Transfer) this.instance).clearPayload();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77491.f2142xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Transfer();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\n", new Object[]{"amount_", "recipient_", "payload_"});
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

    /* renamed from: wallet.core.jni.proto.IoTeX$1 */
    /* loaded from: classes7.dex */
    static /* synthetic */ class C77491 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f2142xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f2142xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2142xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2142xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2142xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2142xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2142xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2142xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public static final class Staking extends GeneratedMessageLite<Staking, Builder> implements StakingOrBuilder {
        public static final int CANDIDATEREGISTER_FIELD_NUMBER = 8;
        public static final int CANDIDATEUPDATE_FIELD_NUMBER = 9;
        private static final Staking DEFAULT_INSTANCE;
        private static volatile Parser<Staking> PARSER = null;
        public static final int STAKEADDDEPOSIT_FIELD_NUMBER = 4;
        public static final int STAKECHANGECANDIDATE_FIELD_NUMBER = 6;
        public static final int STAKECREATE_FIELD_NUMBER = 1;
        public static final int STAKERESTAKE_FIELD_NUMBER = 5;
        public static final int STAKETRANSFEROWNERSHIP_FIELD_NUMBER = 7;
        public static final int STAKEUNSTAKE_FIELD_NUMBER = 2;
        public static final int STAKEWITHDRAW_FIELD_NUMBER = 3;
        private int messageCase_ = 0;
        private Object message_;

        /* loaded from: classes7.dex */
        public interface AddDepositOrBuilder extends MessageLiteOrBuilder {
            String getAmount();

            ByteString getAmountBytes();

            long getBucketIndex();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            ByteString getPayload();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes7.dex */
        public interface CandidateBasicInfoOrBuilder extends MessageLiteOrBuilder {
            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getName();

            ByteString getNameBytes();

            String getOperatorAddress();

            ByteString getOperatorAddressBytes();

            String getRewardAddress();

            ByteString getRewardAddressBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes7.dex */
        public interface CandidateRegisterOrBuilder extends MessageLiteOrBuilder {
            boolean getAutoStake();

            CandidateBasicInfo getCandidate();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getOwnerAddress();

            ByteString getOwnerAddressBytes();

            ByteString getPayload();

            String getStakedAmount();

            ByteString getStakedAmountBytes();

            int getStakedDuration();

            boolean hasCandidate();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes7.dex */
        public interface ChangeCandidateOrBuilder extends MessageLiteOrBuilder {
            long getBucketIndex();

            String getCandidateName();

            ByteString getCandidateNameBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            ByteString getPayload();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes7.dex */
        public interface CreateOrBuilder extends MessageLiteOrBuilder {
            boolean getAutoStake();

            String getCandidateName();

            ByteString getCandidateNameBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            ByteString getPayload();

            String getStakedAmount();

            ByteString getStakedAmountBytes();

            int getStakedDuration();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes7.dex */
        public interface ReclaimOrBuilder extends MessageLiteOrBuilder {
            long getBucketIndex();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            ByteString getPayload();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes7.dex */
        public interface RestakeOrBuilder extends MessageLiteOrBuilder {
            boolean getAutoStake();

            long getBucketIndex();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            ByteString getPayload();

            int getStakedDuration();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes7.dex */
        public interface TransferOwnershipOrBuilder extends MessageLiteOrBuilder {
            long getBucketIndex();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            ByteString getPayload();

            String getVoterAddress();

            ByteString getVoterAddressBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        private Staking() {
        }

        /* loaded from: classes7.dex */
        public static final class Create extends GeneratedMessageLite<Create, Builder> implements CreateOrBuilder {
            public static final int AUTOSTAKE_FIELD_NUMBER = 4;
            public static final int CANDIDATENAME_FIELD_NUMBER = 1;
            private static final Create DEFAULT_INSTANCE;
            private static volatile Parser<Create> PARSER = null;
            public static final int PAYLOAD_FIELD_NUMBER = 5;
            public static final int STAKEDAMOUNT_FIELD_NUMBER = 2;
            public static final int STAKEDDURATION_FIELD_NUMBER = 3;
            private boolean autoStake_;
            private int stakedDuration_;
            private String candidateName_ = "";
            private String stakedAmount_ = "";
            private ByteString payload_ = ByteString.EMPTY;

            private Create() {
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.CreateOrBuilder
            public String getCandidateName() {
                return this.candidateName_;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.CreateOrBuilder
            public ByteString getCandidateNameBytes() {
                return ByteString.copyFromUtf8(this.candidateName_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setCandidateName(String value) {
                value.getClass();
                this.candidateName_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearCandidateName() {
                this.candidateName_ = getDefaultInstance().getCandidateName();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setCandidateNameBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.candidateName_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.CreateOrBuilder
            public String getStakedAmount() {
                return this.stakedAmount_;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.CreateOrBuilder
            public ByteString getStakedAmountBytes() {
                return ByteString.copyFromUtf8(this.stakedAmount_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setStakedAmount(String value) {
                value.getClass();
                this.stakedAmount_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearStakedAmount() {
                this.stakedAmount_ = getDefaultInstance().getStakedAmount();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setStakedAmountBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.stakedAmount_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.CreateOrBuilder
            public int getStakedDuration() {
                return this.stakedDuration_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setStakedDuration(int value) {
                this.stakedDuration_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearStakedDuration() {
                this.stakedDuration_ = 0;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.CreateOrBuilder
            public boolean getAutoStake() {
                return this.autoStake_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setAutoStake(boolean value) {
                this.autoStake_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearAutoStake() {
                this.autoStake_ = false;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.CreateOrBuilder
            public ByteString getPayload() {
                return this.payload_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setPayload(ByteString value) {
                value.getClass();
                this.payload_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearPayload() {
                this.payload_ = getDefaultInstance().getPayload();
            }

            public static Create parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (Create) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Create parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Create) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Create parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (Create) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Create parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Create) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Create parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (Create) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Create parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Create) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Create parseFrom(InputStream input) throws IOException {
                return (Create) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Create parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Create) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Create parseDelimitedFrom(InputStream input) throws IOException {
                return (Create) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static Create parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Create) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Create parseFrom(CodedInputStream input) throws IOException {
                return (Create) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Create parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Create) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(Create prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes7.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<Create, Builder> implements CreateOrBuilder {
                /* synthetic */ Builder(C77491 c77491) {
                    this();
                }

                private Builder() {
                    super(Create.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.CreateOrBuilder
                public String getCandidateName() {
                    return ((Create) this.instance).getCandidateName();
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.CreateOrBuilder
                public ByteString getCandidateNameBytes() {
                    return ((Create) this.instance).getCandidateNameBytes();
                }

                public Builder setCandidateName(String value) {
                    copyOnWrite();
                    ((Create) this.instance).setCandidateName(value);
                    return this;
                }

                public Builder clearCandidateName() {
                    copyOnWrite();
                    ((Create) this.instance).clearCandidateName();
                    return this;
                }

                public Builder setCandidateNameBytes(ByteString value) {
                    copyOnWrite();
                    ((Create) this.instance).setCandidateNameBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.CreateOrBuilder
                public String getStakedAmount() {
                    return ((Create) this.instance).getStakedAmount();
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.CreateOrBuilder
                public ByteString getStakedAmountBytes() {
                    return ((Create) this.instance).getStakedAmountBytes();
                }

                public Builder setStakedAmount(String value) {
                    copyOnWrite();
                    ((Create) this.instance).setStakedAmount(value);
                    return this;
                }

                public Builder clearStakedAmount() {
                    copyOnWrite();
                    ((Create) this.instance).clearStakedAmount();
                    return this;
                }

                public Builder setStakedAmountBytes(ByteString value) {
                    copyOnWrite();
                    ((Create) this.instance).setStakedAmountBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.CreateOrBuilder
                public int getStakedDuration() {
                    return ((Create) this.instance).getStakedDuration();
                }

                public Builder setStakedDuration(int value) {
                    copyOnWrite();
                    ((Create) this.instance).setStakedDuration(value);
                    return this;
                }

                public Builder clearStakedDuration() {
                    copyOnWrite();
                    ((Create) this.instance).clearStakedDuration();
                    return this;
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.CreateOrBuilder
                public boolean getAutoStake() {
                    return ((Create) this.instance).getAutoStake();
                }

                public Builder setAutoStake(boolean value) {
                    copyOnWrite();
                    ((Create) this.instance).setAutoStake(value);
                    return this;
                }

                public Builder clearAutoStake() {
                    copyOnWrite();
                    ((Create) this.instance).clearAutoStake();
                    return this;
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.CreateOrBuilder
                public ByteString getPayload() {
                    return ((Create) this.instance).getPayload();
                }

                public Builder setPayload(ByteString value) {
                    copyOnWrite();
                    ((Create) this.instance).setPayload(value);
                    return this;
                }

                public Builder clearPayload() {
                    copyOnWrite();
                    ((Create) this.instance).clearPayload();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C77491.f2142xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new Create();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u000b\u0004\u0007\u0005\n", new Object[]{"candidateName_", "stakedAmount_", "stakedDuration_", "autoStake_", "payload_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<Create> parser = PARSER;
                        if (parser == null) {
                            synchronized (Create.class) {
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
                Create create = new Create();
                DEFAULT_INSTANCE = create;
                GeneratedMessageLite.registerDefaultInstance(Create.class, create);
            }

            public static Create getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Create> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes7.dex */
        public static final class Reclaim extends GeneratedMessageLite<Reclaim, Builder> implements ReclaimOrBuilder {
            public static final int BUCKETINDEX_FIELD_NUMBER = 1;
            private static final Reclaim DEFAULT_INSTANCE;
            private static volatile Parser<Reclaim> PARSER = null;
            public static final int PAYLOAD_FIELD_NUMBER = 2;
            private long bucketIndex_;
            private ByteString payload_ = ByteString.EMPTY;

            private Reclaim() {
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.ReclaimOrBuilder
            public long getBucketIndex() {
                return this.bucketIndex_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setBucketIndex(long value) {
                this.bucketIndex_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearBucketIndex() {
                this.bucketIndex_ = 0L;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.ReclaimOrBuilder
            public ByteString getPayload() {
                return this.payload_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setPayload(ByteString value) {
                value.getClass();
                this.payload_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearPayload() {
                this.payload_ = getDefaultInstance().getPayload();
            }

            public static Reclaim parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (Reclaim) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Reclaim parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Reclaim) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Reclaim parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (Reclaim) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Reclaim parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Reclaim) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Reclaim parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (Reclaim) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Reclaim parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Reclaim) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Reclaim parseFrom(InputStream input) throws IOException {
                return (Reclaim) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Reclaim parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Reclaim) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Reclaim parseDelimitedFrom(InputStream input) throws IOException {
                return (Reclaim) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static Reclaim parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Reclaim) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Reclaim parseFrom(CodedInputStream input) throws IOException {
                return (Reclaim) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Reclaim parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Reclaim) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(Reclaim prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes7.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<Reclaim, Builder> implements ReclaimOrBuilder {
                /* synthetic */ Builder(C77491 c77491) {
                    this();
                }

                private Builder() {
                    super(Reclaim.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.ReclaimOrBuilder
                public long getBucketIndex() {
                    return ((Reclaim) this.instance).getBucketIndex();
                }

                public Builder setBucketIndex(long value) {
                    copyOnWrite();
                    ((Reclaim) this.instance).setBucketIndex(value);
                    return this;
                }

                public Builder clearBucketIndex() {
                    copyOnWrite();
                    ((Reclaim) this.instance).clearBucketIndex();
                    return this;
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.ReclaimOrBuilder
                public ByteString getPayload() {
                    return ((Reclaim) this.instance).getPayload();
                }

                public Builder setPayload(ByteString value) {
                    copyOnWrite();
                    ((Reclaim) this.instance).setPayload(value);
                    return this;
                }

                public Builder clearPayload() {
                    copyOnWrite();
                    ((Reclaim) this.instance).clearPayload();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C77491.f2142xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new Reclaim();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0003\u0002\n", new Object[]{"bucketIndex_", "payload_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<Reclaim> parser = PARSER;
                        if (parser == null) {
                            synchronized (Reclaim.class) {
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
                Reclaim reclaim = new Reclaim();
                DEFAULT_INSTANCE = reclaim;
                GeneratedMessageLite.registerDefaultInstance(Reclaim.class, reclaim);
            }

            public static Reclaim getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Reclaim> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes7.dex */
        public static final class AddDeposit extends GeneratedMessageLite<AddDeposit, Builder> implements AddDepositOrBuilder {
            public static final int AMOUNT_FIELD_NUMBER = 2;
            public static final int BUCKETINDEX_FIELD_NUMBER = 1;
            private static final AddDeposit DEFAULT_INSTANCE;
            private static volatile Parser<AddDeposit> PARSER = null;
            public static final int PAYLOAD_FIELD_NUMBER = 3;
            private long bucketIndex_;
            private String amount_ = "";
            private ByteString payload_ = ByteString.EMPTY;

            private AddDeposit() {
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.AddDepositOrBuilder
            public long getBucketIndex() {
                return this.bucketIndex_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setBucketIndex(long value) {
                this.bucketIndex_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearBucketIndex() {
                this.bucketIndex_ = 0L;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.AddDepositOrBuilder
            public String getAmount() {
                return this.amount_;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.AddDepositOrBuilder
            public ByteString getAmountBytes() {
                return ByteString.copyFromUtf8(this.amount_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setAmount(String value) {
                value.getClass();
                this.amount_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearAmount() {
                this.amount_ = getDefaultInstance().getAmount();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setAmountBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.amount_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.AddDepositOrBuilder
            public ByteString getPayload() {
                return this.payload_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setPayload(ByteString value) {
                value.getClass();
                this.payload_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearPayload() {
                this.payload_ = getDefaultInstance().getPayload();
            }

            public static AddDeposit parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (AddDeposit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static AddDeposit parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (AddDeposit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static AddDeposit parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (AddDeposit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static AddDeposit parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (AddDeposit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static AddDeposit parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (AddDeposit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static AddDeposit parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (AddDeposit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static AddDeposit parseFrom(InputStream input) throws IOException {
                return (AddDeposit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static AddDeposit parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (AddDeposit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static AddDeposit parseDelimitedFrom(InputStream input) throws IOException {
                return (AddDeposit) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static AddDeposit parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (AddDeposit) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static AddDeposit parseFrom(CodedInputStream input) throws IOException {
                return (AddDeposit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static AddDeposit parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (AddDeposit) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(AddDeposit prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes7.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<AddDeposit, Builder> implements AddDepositOrBuilder {
                /* synthetic */ Builder(C77491 c77491) {
                    this();
                }

                private Builder() {
                    super(AddDeposit.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.AddDepositOrBuilder
                public long getBucketIndex() {
                    return ((AddDeposit) this.instance).getBucketIndex();
                }

                public Builder setBucketIndex(long value) {
                    copyOnWrite();
                    ((AddDeposit) this.instance).setBucketIndex(value);
                    return this;
                }

                public Builder clearBucketIndex() {
                    copyOnWrite();
                    ((AddDeposit) this.instance).clearBucketIndex();
                    return this;
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.AddDepositOrBuilder
                public String getAmount() {
                    return ((AddDeposit) this.instance).getAmount();
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.AddDepositOrBuilder
                public ByteString getAmountBytes() {
                    return ((AddDeposit) this.instance).getAmountBytes();
                }

                public Builder setAmount(String value) {
                    copyOnWrite();
                    ((AddDeposit) this.instance).setAmount(value);
                    return this;
                }

                public Builder clearAmount() {
                    copyOnWrite();
                    ((AddDeposit) this.instance).clearAmount();
                    return this;
                }

                public Builder setAmountBytes(ByteString value) {
                    copyOnWrite();
                    ((AddDeposit) this.instance).setAmountBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.AddDepositOrBuilder
                public ByteString getPayload() {
                    return ((AddDeposit) this.instance).getPayload();
                }

                public Builder setPayload(ByteString value) {
                    copyOnWrite();
                    ((AddDeposit) this.instance).setPayload(value);
                    return this;
                }

                public Builder clearPayload() {
                    copyOnWrite();
                    ((AddDeposit) this.instance).clearPayload();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C77491.f2142xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new AddDeposit();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0003\u0002Ȉ\u0003\n", new Object[]{"bucketIndex_", "amount_", "payload_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<AddDeposit> parser = PARSER;
                        if (parser == null) {
                            synchronized (AddDeposit.class) {
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
                AddDeposit addDeposit = new AddDeposit();
                DEFAULT_INSTANCE = addDeposit;
                GeneratedMessageLite.registerDefaultInstance(AddDeposit.class, addDeposit);
            }

            public static AddDeposit getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<AddDeposit> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes7.dex */
        public static final class Restake extends GeneratedMessageLite<Restake, Builder> implements RestakeOrBuilder {
            public static final int AUTOSTAKE_FIELD_NUMBER = 3;
            public static final int BUCKETINDEX_FIELD_NUMBER = 1;
            private static final Restake DEFAULT_INSTANCE;
            private static volatile Parser<Restake> PARSER = null;
            public static final int PAYLOAD_FIELD_NUMBER = 4;
            public static final int STAKEDDURATION_FIELD_NUMBER = 2;
            private boolean autoStake_;
            private long bucketIndex_;
            private ByteString payload_ = ByteString.EMPTY;
            private int stakedDuration_;

            private Restake() {
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.RestakeOrBuilder
            public long getBucketIndex() {
                return this.bucketIndex_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setBucketIndex(long value) {
                this.bucketIndex_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearBucketIndex() {
                this.bucketIndex_ = 0L;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.RestakeOrBuilder
            public int getStakedDuration() {
                return this.stakedDuration_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setStakedDuration(int value) {
                this.stakedDuration_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearStakedDuration() {
                this.stakedDuration_ = 0;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.RestakeOrBuilder
            public boolean getAutoStake() {
                return this.autoStake_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setAutoStake(boolean value) {
                this.autoStake_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearAutoStake() {
                this.autoStake_ = false;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.RestakeOrBuilder
            public ByteString getPayload() {
                return this.payload_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setPayload(ByteString value) {
                value.getClass();
                this.payload_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearPayload() {
                this.payload_ = getDefaultInstance().getPayload();
            }

            public static Restake parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (Restake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Restake parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Restake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Restake parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (Restake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Restake parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Restake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Restake parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (Restake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Restake parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Restake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Restake parseFrom(InputStream input) throws IOException {
                return (Restake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Restake parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Restake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Restake parseDelimitedFrom(InputStream input) throws IOException {
                return (Restake) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static Restake parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Restake) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Restake parseFrom(CodedInputStream input) throws IOException {
                return (Restake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Restake parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Restake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(Restake prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes7.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<Restake, Builder> implements RestakeOrBuilder {
                /* synthetic */ Builder(C77491 c77491) {
                    this();
                }

                private Builder() {
                    super(Restake.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.RestakeOrBuilder
                public long getBucketIndex() {
                    return ((Restake) this.instance).getBucketIndex();
                }

                public Builder setBucketIndex(long value) {
                    copyOnWrite();
                    ((Restake) this.instance).setBucketIndex(value);
                    return this;
                }

                public Builder clearBucketIndex() {
                    copyOnWrite();
                    ((Restake) this.instance).clearBucketIndex();
                    return this;
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.RestakeOrBuilder
                public int getStakedDuration() {
                    return ((Restake) this.instance).getStakedDuration();
                }

                public Builder setStakedDuration(int value) {
                    copyOnWrite();
                    ((Restake) this.instance).setStakedDuration(value);
                    return this;
                }

                public Builder clearStakedDuration() {
                    copyOnWrite();
                    ((Restake) this.instance).clearStakedDuration();
                    return this;
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.RestakeOrBuilder
                public boolean getAutoStake() {
                    return ((Restake) this.instance).getAutoStake();
                }

                public Builder setAutoStake(boolean value) {
                    copyOnWrite();
                    ((Restake) this.instance).setAutoStake(value);
                    return this;
                }

                public Builder clearAutoStake() {
                    copyOnWrite();
                    ((Restake) this.instance).clearAutoStake();
                    return this;
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.RestakeOrBuilder
                public ByteString getPayload() {
                    return ((Restake) this.instance).getPayload();
                }

                public Builder setPayload(ByteString value) {
                    copyOnWrite();
                    ((Restake) this.instance).setPayload(value);
                    return this;
                }

                public Builder clearPayload() {
                    copyOnWrite();
                    ((Restake) this.instance).clearPayload();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C77491.f2142xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new Restake();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0003\u0002\u000b\u0003\u0007\u0004\n", new Object[]{"bucketIndex_", "stakedDuration_", "autoStake_", "payload_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<Restake> parser = PARSER;
                        if (parser == null) {
                            synchronized (Restake.class) {
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
                Restake restake = new Restake();
                DEFAULT_INSTANCE = restake;
                GeneratedMessageLite.registerDefaultInstance(Restake.class, restake);
            }

            public static Restake getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Restake> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes7.dex */
        public static final class ChangeCandidate extends GeneratedMessageLite<ChangeCandidate, Builder> implements ChangeCandidateOrBuilder {
            public static final int BUCKETINDEX_FIELD_NUMBER = 1;
            public static final int CANDIDATENAME_FIELD_NUMBER = 2;
            private static final ChangeCandidate DEFAULT_INSTANCE;
            private static volatile Parser<ChangeCandidate> PARSER = null;
            public static final int PAYLOAD_FIELD_NUMBER = 3;
            private long bucketIndex_;
            private String candidateName_ = "";
            private ByteString payload_ = ByteString.EMPTY;

            private ChangeCandidate() {
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.ChangeCandidateOrBuilder
            public long getBucketIndex() {
                return this.bucketIndex_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setBucketIndex(long value) {
                this.bucketIndex_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearBucketIndex() {
                this.bucketIndex_ = 0L;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.ChangeCandidateOrBuilder
            public String getCandidateName() {
                return this.candidateName_;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.ChangeCandidateOrBuilder
            public ByteString getCandidateNameBytes() {
                return ByteString.copyFromUtf8(this.candidateName_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setCandidateName(String value) {
                value.getClass();
                this.candidateName_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearCandidateName() {
                this.candidateName_ = getDefaultInstance().getCandidateName();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setCandidateNameBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.candidateName_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.ChangeCandidateOrBuilder
            public ByteString getPayload() {
                return this.payload_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setPayload(ByteString value) {
                value.getClass();
                this.payload_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearPayload() {
                this.payload_ = getDefaultInstance().getPayload();
            }

            public static ChangeCandidate parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (ChangeCandidate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static ChangeCandidate parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (ChangeCandidate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static ChangeCandidate parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (ChangeCandidate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static ChangeCandidate parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (ChangeCandidate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static ChangeCandidate parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (ChangeCandidate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static ChangeCandidate parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (ChangeCandidate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static ChangeCandidate parseFrom(InputStream input) throws IOException {
                return (ChangeCandidate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static ChangeCandidate parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (ChangeCandidate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static ChangeCandidate parseDelimitedFrom(InputStream input) throws IOException {
                return (ChangeCandidate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static ChangeCandidate parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (ChangeCandidate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static ChangeCandidate parseFrom(CodedInputStream input) throws IOException {
                return (ChangeCandidate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static ChangeCandidate parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (ChangeCandidate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(ChangeCandidate prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes7.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<ChangeCandidate, Builder> implements ChangeCandidateOrBuilder {
                /* synthetic */ Builder(C77491 c77491) {
                    this();
                }

                private Builder() {
                    super(ChangeCandidate.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.ChangeCandidateOrBuilder
                public long getBucketIndex() {
                    return ((ChangeCandidate) this.instance).getBucketIndex();
                }

                public Builder setBucketIndex(long value) {
                    copyOnWrite();
                    ((ChangeCandidate) this.instance).setBucketIndex(value);
                    return this;
                }

                public Builder clearBucketIndex() {
                    copyOnWrite();
                    ((ChangeCandidate) this.instance).clearBucketIndex();
                    return this;
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.ChangeCandidateOrBuilder
                public String getCandidateName() {
                    return ((ChangeCandidate) this.instance).getCandidateName();
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.ChangeCandidateOrBuilder
                public ByteString getCandidateNameBytes() {
                    return ((ChangeCandidate) this.instance).getCandidateNameBytes();
                }

                public Builder setCandidateName(String value) {
                    copyOnWrite();
                    ((ChangeCandidate) this.instance).setCandidateName(value);
                    return this;
                }

                public Builder clearCandidateName() {
                    copyOnWrite();
                    ((ChangeCandidate) this.instance).clearCandidateName();
                    return this;
                }

                public Builder setCandidateNameBytes(ByteString value) {
                    copyOnWrite();
                    ((ChangeCandidate) this.instance).setCandidateNameBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.ChangeCandidateOrBuilder
                public ByteString getPayload() {
                    return ((ChangeCandidate) this.instance).getPayload();
                }

                public Builder setPayload(ByteString value) {
                    copyOnWrite();
                    ((ChangeCandidate) this.instance).setPayload(value);
                    return this;
                }

                public Builder clearPayload() {
                    copyOnWrite();
                    ((ChangeCandidate) this.instance).clearPayload();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C77491.f2142xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new ChangeCandidate();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0003\u0002Ȉ\u0003\n", new Object[]{"bucketIndex_", "candidateName_", "payload_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<ChangeCandidate> parser = PARSER;
                        if (parser == null) {
                            synchronized (ChangeCandidate.class) {
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
                ChangeCandidate changeCandidate = new ChangeCandidate();
                DEFAULT_INSTANCE = changeCandidate;
                GeneratedMessageLite.registerDefaultInstance(ChangeCandidate.class, changeCandidate);
            }

            public static ChangeCandidate getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<ChangeCandidate> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes7.dex */
        public static final class TransferOwnership extends GeneratedMessageLite<TransferOwnership, Builder> implements TransferOwnershipOrBuilder {
            public static final int BUCKETINDEX_FIELD_NUMBER = 1;
            private static final TransferOwnership DEFAULT_INSTANCE;
            private static volatile Parser<TransferOwnership> PARSER = null;
            public static final int PAYLOAD_FIELD_NUMBER = 3;
            public static final int VOTERADDRESS_FIELD_NUMBER = 2;
            private long bucketIndex_;
            private String voterAddress_ = "";
            private ByteString payload_ = ByteString.EMPTY;

            private TransferOwnership() {
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.TransferOwnershipOrBuilder
            public long getBucketIndex() {
                return this.bucketIndex_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setBucketIndex(long value) {
                this.bucketIndex_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearBucketIndex() {
                this.bucketIndex_ = 0L;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.TransferOwnershipOrBuilder
            public String getVoterAddress() {
                return this.voterAddress_;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.TransferOwnershipOrBuilder
            public ByteString getVoterAddressBytes() {
                return ByteString.copyFromUtf8(this.voterAddress_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setVoterAddress(String value) {
                value.getClass();
                this.voterAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearVoterAddress() {
                this.voterAddress_ = getDefaultInstance().getVoterAddress();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setVoterAddressBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.voterAddress_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.TransferOwnershipOrBuilder
            public ByteString getPayload() {
                return this.payload_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setPayload(ByteString value) {
                value.getClass();
                this.payload_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearPayload() {
                this.payload_ = getDefaultInstance().getPayload();
            }

            public static TransferOwnership parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (TransferOwnership) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static TransferOwnership parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (TransferOwnership) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static TransferOwnership parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (TransferOwnership) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static TransferOwnership parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (TransferOwnership) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static TransferOwnership parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (TransferOwnership) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static TransferOwnership parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (TransferOwnership) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static TransferOwnership parseFrom(InputStream input) throws IOException {
                return (TransferOwnership) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static TransferOwnership parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (TransferOwnership) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static TransferOwnership parseDelimitedFrom(InputStream input) throws IOException {
                return (TransferOwnership) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static TransferOwnership parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (TransferOwnership) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static TransferOwnership parseFrom(CodedInputStream input) throws IOException {
                return (TransferOwnership) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static TransferOwnership parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (TransferOwnership) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(TransferOwnership prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes7.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<TransferOwnership, Builder> implements TransferOwnershipOrBuilder {
                /* synthetic */ Builder(C77491 c77491) {
                    this();
                }

                private Builder() {
                    super(TransferOwnership.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.TransferOwnershipOrBuilder
                public long getBucketIndex() {
                    return ((TransferOwnership) this.instance).getBucketIndex();
                }

                public Builder setBucketIndex(long value) {
                    copyOnWrite();
                    ((TransferOwnership) this.instance).setBucketIndex(value);
                    return this;
                }

                public Builder clearBucketIndex() {
                    copyOnWrite();
                    ((TransferOwnership) this.instance).clearBucketIndex();
                    return this;
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.TransferOwnershipOrBuilder
                public String getVoterAddress() {
                    return ((TransferOwnership) this.instance).getVoterAddress();
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.TransferOwnershipOrBuilder
                public ByteString getVoterAddressBytes() {
                    return ((TransferOwnership) this.instance).getVoterAddressBytes();
                }

                public Builder setVoterAddress(String value) {
                    copyOnWrite();
                    ((TransferOwnership) this.instance).setVoterAddress(value);
                    return this;
                }

                public Builder clearVoterAddress() {
                    copyOnWrite();
                    ((TransferOwnership) this.instance).clearVoterAddress();
                    return this;
                }

                public Builder setVoterAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((TransferOwnership) this.instance).setVoterAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.TransferOwnershipOrBuilder
                public ByteString getPayload() {
                    return ((TransferOwnership) this.instance).getPayload();
                }

                public Builder setPayload(ByteString value) {
                    copyOnWrite();
                    ((TransferOwnership) this.instance).setPayload(value);
                    return this;
                }

                public Builder clearPayload() {
                    copyOnWrite();
                    ((TransferOwnership) this.instance).clearPayload();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C77491.f2142xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new TransferOwnership();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0003\u0002Ȉ\u0003\n", new Object[]{"bucketIndex_", "voterAddress_", "payload_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<TransferOwnership> parser = PARSER;
                        if (parser == null) {
                            synchronized (TransferOwnership.class) {
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
                TransferOwnership transferOwnership = new TransferOwnership();
                DEFAULT_INSTANCE = transferOwnership;
                GeneratedMessageLite.registerDefaultInstance(TransferOwnership.class, transferOwnership);
            }

            public static TransferOwnership getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<TransferOwnership> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes7.dex */
        public static final class CandidateBasicInfo extends GeneratedMessageLite<CandidateBasicInfo, Builder> implements CandidateBasicInfoOrBuilder {
            private static final CandidateBasicInfo DEFAULT_INSTANCE;
            public static final int NAME_FIELD_NUMBER = 1;
            public static final int OPERATORADDRESS_FIELD_NUMBER = 2;
            private static volatile Parser<CandidateBasicInfo> PARSER = null;
            public static final int REWARDADDRESS_FIELD_NUMBER = 3;
            private String name_ = "";
            private String operatorAddress_ = "";
            private String rewardAddress_ = "";

            private CandidateBasicInfo() {
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateBasicInfoOrBuilder
            public String getName() {
                return this.name_;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateBasicInfoOrBuilder
            public ByteString getNameBytes() {
                return ByteString.copyFromUtf8(this.name_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setName(String value) {
                value.getClass();
                this.name_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearName() {
                this.name_ = getDefaultInstance().getName();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setNameBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.name_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateBasicInfoOrBuilder
            public String getOperatorAddress() {
                return this.operatorAddress_;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateBasicInfoOrBuilder
            public ByteString getOperatorAddressBytes() {
                return ByteString.copyFromUtf8(this.operatorAddress_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setOperatorAddress(String value) {
                value.getClass();
                this.operatorAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearOperatorAddress() {
                this.operatorAddress_ = getDefaultInstance().getOperatorAddress();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setOperatorAddressBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.operatorAddress_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateBasicInfoOrBuilder
            public String getRewardAddress() {
                return this.rewardAddress_;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateBasicInfoOrBuilder
            public ByteString getRewardAddressBytes() {
                return ByteString.copyFromUtf8(this.rewardAddress_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setRewardAddress(String value) {
                value.getClass();
                this.rewardAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearRewardAddress() {
                this.rewardAddress_ = getDefaultInstance().getRewardAddress();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setRewardAddressBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.rewardAddress_ = value.toStringUtf8();
            }

            public static CandidateBasicInfo parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (CandidateBasicInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static CandidateBasicInfo parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (CandidateBasicInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static CandidateBasicInfo parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (CandidateBasicInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static CandidateBasicInfo parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (CandidateBasicInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static CandidateBasicInfo parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (CandidateBasicInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static CandidateBasicInfo parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (CandidateBasicInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static CandidateBasicInfo parseFrom(InputStream input) throws IOException {
                return (CandidateBasicInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static CandidateBasicInfo parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (CandidateBasicInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static CandidateBasicInfo parseDelimitedFrom(InputStream input) throws IOException {
                return (CandidateBasicInfo) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static CandidateBasicInfo parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (CandidateBasicInfo) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static CandidateBasicInfo parseFrom(CodedInputStream input) throws IOException {
                return (CandidateBasicInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static CandidateBasicInfo parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (CandidateBasicInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(CandidateBasicInfo prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes7.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<CandidateBasicInfo, Builder> implements CandidateBasicInfoOrBuilder {
                /* synthetic */ Builder(C77491 c77491) {
                    this();
                }

                private Builder() {
                    super(CandidateBasicInfo.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateBasicInfoOrBuilder
                public String getName() {
                    return ((CandidateBasicInfo) this.instance).getName();
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateBasicInfoOrBuilder
                public ByteString getNameBytes() {
                    return ((CandidateBasicInfo) this.instance).getNameBytes();
                }

                public Builder setName(String value) {
                    copyOnWrite();
                    ((CandidateBasicInfo) this.instance).setName(value);
                    return this;
                }

                public Builder clearName() {
                    copyOnWrite();
                    ((CandidateBasicInfo) this.instance).clearName();
                    return this;
                }

                public Builder setNameBytes(ByteString value) {
                    copyOnWrite();
                    ((CandidateBasicInfo) this.instance).setNameBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateBasicInfoOrBuilder
                public String getOperatorAddress() {
                    return ((CandidateBasicInfo) this.instance).getOperatorAddress();
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateBasicInfoOrBuilder
                public ByteString getOperatorAddressBytes() {
                    return ((CandidateBasicInfo) this.instance).getOperatorAddressBytes();
                }

                public Builder setOperatorAddress(String value) {
                    copyOnWrite();
                    ((CandidateBasicInfo) this.instance).setOperatorAddress(value);
                    return this;
                }

                public Builder clearOperatorAddress() {
                    copyOnWrite();
                    ((CandidateBasicInfo) this.instance).clearOperatorAddress();
                    return this;
                }

                public Builder setOperatorAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((CandidateBasicInfo) this.instance).setOperatorAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateBasicInfoOrBuilder
                public String getRewardAddress() {
                    return ((CandidateBasicInfo) this.instance).getRewardAddress();
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateBasicInfoOrBuilder
                public ByteString getRewardAddressBytes() {
                    return ((CandidateBasicInfo) this.instance).getRewardAddressBytes();
                }

                public Builder setRewardAddress(String value) {
                    copyOnWrite();
                    ((CandidateBasicInfo) this.instance).setRewardAddress(value);
                    return this;
                }

                public Builder clearRewardAddress() {
                    copyOnWrite();
                    ((CandidateBasicInfo) this.instance).clearRewardAddress();
                    return this;
                }

                public Builder setRewardAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((CandidateBasicInfo) this.instance).setRewardAddressBytes(value);
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C77491.f2142xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new CandidateBasicInfo();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ", new Object[]{"name_", "operatorAddress_", "rewardAddress_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<CandidateBasicInfo> parser = PARSER;
                        if (parser == null) {
                            synchronized (CandidateBasicInfo.class) {
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
                CandidateBasicInfo candidateBasicInfo = new CandidateBasicInfo();
                DEFAULT_INSTANCE = candidateBasicInfo;
                GeneratedMessageLite.registerDefaultInstance(CandidateBasicInfo.class, candidateBasicInfo);
            }

            public static CandidateBasicInfo getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<CandidateBasicInfo> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes7.dex */
        public static final class CandidateRegister extends GeneratedMessageLite<CandidateRegister, Builder> implements CandidateRegisterOrBuilder {
            public static final int AUTOSTAKE_FIELD_NUMBER = 4;
            public static final int CANDIDATE_FIELD_NUMBER = 1;
            private static final CandidateRegister DEFAULT_INSTANCE;
            public static final int OWNERADDRESS_FIELD_NUMBER = 5;
            private static volatile Parser<CandidateRegister> PARSER = null;
            public static final int PAYLOAD_FIELD_NUMBER = 6;
            public static final int STAKEDAMOUNT_FIELD_NUMBER = 2;
            public static final int STAKEDDURATION_FIELD_NUMBER = 3;
            private boolean autoStake_;
            private CandidateBasicInfo candidate_;
            private int stakedDuration_;
            private String stakedAmount_ = "";
            private String ownerAddress_ = "";
            private ByteString payload_ = ByteString.EMPTY;

            private CandidateRegister() {
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateRegisterOrBuilder
            public boolean hasCandidate() {
                return this.candidate_ != null;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateRegisterOrBuilder
            public CandidateBasicInfo getCandidate() {
                CandidateBasicInfo candidateBasicInfo = this.candidate_;
                return candidateBasicInfo == null ? CandidateBasicInfo.getDefaultInstance() : candidateBasicInfo;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setCandidate(CandidateBasicInfo value) {
                value.getClass();
                this.candidate_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeCandidate(CandidateBasicInfo value) {
                value.getClass();
                CandidateBasicInfo candidateBasicInfo = this.candidate_;
                if (candidateBasicInfo != null && candidateBasicInfo != CandidateBasicInfo.getDefaultInstance()) {
                    this.candidate_ = CandidateBasicInfo.newBuilder(this.candidate_).mergeFrom((CandidateBasicInfo.Builder) value).buildPartial();
                } else {
                    this.candidate_ = value;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearCandidate() {
                this.candidate_ = null;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateRegisterOrBuilder
            public String getStakedAmount() {
                return this.stakedAmount_;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateRegisterOrBuilder
            public ByteString getStakedAmountBytes() {
                return ByteString.copyFromUtf8(this.stakedAmount_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setStakedAmount(String value) {
                value.getClass();
                this.stakedAmount_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearStakedAmount() {
                this.stakedAmount_ = getDefaultInstance().getStakedAmount();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setStakedAmountBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.stakedAmount_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateRegisterOrBuilder
            public int getStakedDuration() {
                return this.stakedDuration_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setStakedDuration(int value) {
                this.stakedDuration_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearStakedDuration() {
                this.stakedDuration_ = 0;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateRegisterOrBuilder
            public boolean getAutoStake() {
                return this.autoStake_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setAutoStake(boolean value) {
                this.autoStake_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearAutoStake() {
                this.autoStake_ = false;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateRegisterOrBuilder
            public String getOwnerAddress() {
                return this.ownerAddress_;
            }

            @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateRegisterOrBuilder
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

            @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateRegisterOrBuilder
            public ByteString getPayload() {
                return this.payload_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setPayload(ByteString value) {
                value.getClass();
                this.payload_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearPayload() {
                this.payload_ = getDefaultInstance().getPayload();
            }

            public static CandidateRegister parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (CandidateRegister) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static CandidateRegister parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (CandidateRegister) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static CandidateRegister parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (CandidateRegister) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static CandidateRegister parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (CandidateRegister) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static CandidateRegister parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (CandidateRegister) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static CandidateRegister parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (CandidateRegister) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static CandidateRegister parseFrom(InputStream input) throws IOException {
                return (CandidateRegister) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static CandidateRegister parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (CandidateRegister) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static CandidateRegister parseDelimitedFrom(InputStream input) throws IOException {
                return (CandidateRegister) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static CandidateRegister parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (CandidateRegister) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static CandidateRegister parseFrom(CodedInputStream input) throws IOException {
                return (CandidateRegister) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static CandidateRegister parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (CandidateRegister) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(CandidateRegister prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes7.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<CandidateRegister, Builder> implements CandidateRegisterOrBuilder {
                /* synthetic */ Builder(C77491 c77491) {
                    this();
                }

                private Builder() {
                    super(CandidateRegister.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateRegisterOrBuilder
                public boolean hasCandidate() {
                    return ((CandidateRegister) this.instance).hasCandidate();
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateRegisterOrBuilder
                public CandidateBasicInfo getCandidate() {
                    return ((CandidateRegister) this.instance).getCandidate();
                }

                public Builder setCandidate(CandidateBasicInfo value) {
                    copyOnWrite();
                    ((CandidateRegister) this.instance).setCandidate(value);
                    return this;
                }

                public Builder setCandidate(CandidateBasicInfo.Builder builderForValue) {
                    copyOnWrite();
                    ((CandidateRegister) this.instance).setCandidate(builderForValue.build());
                    return this;
                }

                public Builder mergeCandidate(CandidateBasicInfo value) {
                    copyOnWrite();
                    ((CandidateRegister) this.instance).mergeCandidate(value);
                    return this;
                }

                public Builder clearCandidate() {
                    copyOnWrite();
                    ((CandidateRegister) this.instance).clearCandidate();
                    return this;
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateRegisterOrBuilder
                public String getStakedAmount() {
                    return ((CandidateRegister) this.instance).getStakedAmount();
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateRegisterOrBuilder
                public ByteString getStakedAmountBytes() {
                    return ((CandidateRegister) this.instance).getStakedAmountBytes();
                }

                public Builder setStakedAmount(String value) {
                    copyOnWrite();
                    ((CandidateRegister) this.instance).setStakedAmount(value);
                    return this;
                }

                public Builder clearStakedAmount() {
                    copyOnWrite();
                    ((CandidateRegister) this.instance).clearStakedAmount();
                    return this;
                }

                public Builder setStakedAmountBytes(ByteString value) {
                    copyOnWrite();
                    ((CandidateRegister) this.instance).setStakedAmountBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateRegisterOrBuilder
                public int getStakedDuration() {
                    return ((CandidateRegister) this.instance).getStakedDuration();
                }

                public Builder setStakedDuration(int value) {
                    copyOnWrite();
                    ((CandidateRegister) this.instance).setStakedDuration(value);
                    return this;
                }

                public Builder clearStakedDuration() {
                    copyOnWrite();
                    ((CandidateRegister) this.instance).clearStakedDuration();
                    return this;
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateRegisterOrBuilder
                public boolean getAutoStake() {
                    return ((CandidateRegister) this.instance).getAutoStake();
                }

                public Builder setAutoStake(boolean value) {
                    copyOnWrite();
                    ((CandidateRegister) this.instance).setAutoStake(value);
                    return this;
                }

                public Builder clearAutoStake() {
                    copyOnWrite();
                    ((CandidateRegister) this.instance).clearAutoStake();
                    return this;
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateRegisterOrBuilder
                public String getOwnerAddress() {
                    return ((CandidateRegister) this.instance).getOwnerAddress();
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateRegisterOrBuilder
                public ByteString getOwnerAddressBytes() {
                    return ((CandidateRegister) this.instance).getOwnerAddressBytes();
                }

                public Builder setOwnerAddress(String value) {
                    copyOnWrite();
                    ((CandidateRegister) this.instance).setOwnerAddress(value);
                    return this;
                }

                public Builder clearOwnerAddress() {
                    copyOnWrite();
                    ((CandidateRegister) this.instance).clearOwnerAddress();
                    return this;
                }

                public Builder setOwnerAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((CandidateRegister) this.instance).setOwnerAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.IoTeX.Staking.CandidateRegisterOrBuilder
                public ByteString getPayload() {
                    return ((CandidateRegister) this.instance).getPayload();
                }

                public Builder setPayload(ByteString value) {
                    copyOnWrite();
                    ((CandidateRegister) this.instance).setPayload(value);
                    return this;
                }

                public Builder clearPayload() {
                    copyOnWrite();
                    ((CandidateRegister) this.instance).clearPayload();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C77491.f2142xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new CandidateRegister();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\t\u0002Ȉ\u0003\u000b\u0004\u0007\u0005Ȉ\u0006\n", new Object[]{"candidate_", "stakedAmount_", "stakedDuration_", "autoStake_", "ownerAddress_", "payload_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<CandidateRegister> parser = PARSER;
                        if (parser == null) {
                            synchronized (CandidateRegister.class) {
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
                CandidateRegister candidateRegister = new CandidateRegister();
                DEFAULT_INSTANCE = candidateRegister;
                GeneratedMessageLite.registerDefaultInstance(CandidateRegister.class, candidateRegister);
            }

            public static CandidateRegister getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<CandidateRegister> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes7.dex */
        public enum MessageCase {
            STAKECREATE(1),
            STAKEUNSTAKE(2),
            STAKEWITHDRAW(3),
            STAKEADDDEPOSIT(4),
            STAKERESTAKE(5),
            STAKECHANGECANDIDATE(6),
            STAKETRANSFEROWNERSHIP(7),
            CANDIDATEREGISTER(8),
            CANDIDATEUPDATE(9),
            MESSAGE_NOT_SET(0);
            
            private final int value;

            MessageCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static MessageCase valueOf(int value) {
                return forNumber(value);
            }

            public static MessageCase forNumber(int value) {
                switch (value) {
                    case 0:
                        return MESSAGE_NOT_SET;
                    case 1:
                        return STAKECREATE;
                    case 2:
                        return STAKEUNSTAKE;
                    case 3:
                        return STAKEWITHDRAW;
                    case 4:
                        return STAKEADDDEPOSIT;
                    case 5:
                        return STAKERESTAKE;
                    case 6:
                        return STAKECHANGECANDIDATE;
                    case 7:
                        return STAKETRANSFEROWNERSHIP;
                    case 8:
                        return CANDIDATEREGISTER;
                    case 9:
                        return CANDIDATEUPDATE;
                    default:
                        return null;
                }
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
        public MessageCase getMessageCase() {
            return MessageCase.forNumber(this.messageCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMessage() {
            this.messageCase_ = 0;
            this.message_ = null;
        }

        @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
        public boolean hasStakeCreate() {
            return this.messageCase_ == 1;
        }

        @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
        public Create getStakeCreate() {
            if (this.messageCase_ == 1) {
                return (Create) this.message_;
            }
            return Create.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeCreate(Create value) {
            value.getClass();
            this.message_ = value;
            this.messageCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakeCreate(Create value) {
            value.getClass();
            if (this.messageCase_ == 1 && this.message_ != Create.getDefaultInstance()) {
                this.message_ = Create.newBuilder((Create) this.message_).mergeFrom((Create.Builder) value).buildPartial();
            } else {
                this.message_ = value;
            }
            this.messageCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeCreate() {
            if (this.messageCase_ == 1) {
                this.messageCase_ = 0;
                this.message_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
        public boolean hasStakeUnstake() {
            return this.messageCase_ == 2;
        }

        @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
        public Reclaim getStakeUnstake() {
            if (this.messageCase_ == 2) {
                return (Reclaim) this.message_;
            }
            return Reclaim.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeUnstake(Reclaim value) {
            value.getClass();
            this.message_ = value;
            this.messageCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakeUnstake(Reclaim value) {
            value.getClass();
            if (this.messageCase_ == 2 && this.message_ != Reclaim.getDefaultInstance()) {
                this.message_ = Reclaim.newBuilder((Reclaim) this.message_).mergeFrom((Reclaim.Builder) value).buildPartial();
            } else {
                this.message_ = value;
            }
            this.messageCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeUnstake() {
            if (this.messageCase_ == 2) {
                this.messageCase_ = 0;
                this.message_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
        public boolean hasStakeWithdraw() {
            return this.messageCase_ == 3;
        }

        @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
        public Reclaim getStakeWithdraw() {
            if (this.messageCase_ == 3) {
                return (Reclaim) this.message_;
            }
            return Reclaim.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeWithdraw(Reclaim value) {
            value.getClass();
            this.message_ = value;
            this.messageCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakeWithdraw(Reclaim value) {
            value.getClass();
            if (this.messageCase_ == 3 && this.message_ != Reclaim.getDefaultInstance()) {
                this.message_ = Reclaim.newBuilder((Reclaim) this.message_).mergeFrom((Reclaim.Builder) value).buildPartial();
            } else {
                this.message_ = value;
            }
            this.messageCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeWithdraw() {
            if (this.messageCase_ == 3) {
                this.messageCase_ = 0;
                this.message_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
        public boolean hasStakeAddDeposit() {
            return this.messageCase_ == 4;
        }

        @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
        public AddDeposit getStakeAddDeposit() {
            if (this.messageCase_ == 4) {
                return (AddDeposit) this.message_;
            }
            return AddDeposit.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeAddDeposit(AddDeposit value) {
            value.getClass();
            this.message_ = value;
            this.messageCase_ = 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakeAddDeposit(AddDeposit value) {
            value.getClass();
            if (this.messageCase_ == 4 && this.message_ != AddDeposit.getDefaultInstance()) {
                this.message_ = AddDeposit.newBuilder((AddDeposit) this.message_).mergeFrom((AddDeposit.Builder) value).buildPartial();
            } else {
                this.message_ = value;
            }
            this.messageCase_ = 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeAddDeposit() {
            if (this.messageCase_ == 4) {
                this.messageCase_ = 0;
                this.message_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
        public boolean hasStakeRestake() {
            return this.messageCase_ == 5;
        }

        @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
        public Restake getStakeRestake() {
            if (this.messageCase_ == 5) {
                return (Restake) this.message_;
            }
            return Restake.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeRestake(Restake value) {
            value.getClass();
            this.message_ = value;
            this.messageCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakeRestake(Restake value) {
            value.getClass();
            if (this.messageCase_ == 5 && this.message_ != Restake.getDefaultInstance()) {
                this.message_ = Restake.newBuilder((Restake) this.message_).mergeFrom((Restake.Builder) value).buildPartial();
            } else {
                this.message_ = value;
            }
            this.messageCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeRestake() {
            if (this.messageCase_ == 5) {
                this.messageCase_ = 0;
                this.message_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
        public boolean hasStakeChangeCandidate() {
            return this.messageCase_ == 6;
        }

        @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
        public ChangeCandidate getStakeChangeCandidate() {
            if (this.messageCase_ == 6) {
                return (ChangeCandidate) this.message_;
            }
            return ChangeCandidate.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeChangeCandidate(ChangeCandidate value) {
            value.getClass();
            this.message_ = value;
            this.messageCase_ = 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakeChangeCandidate(ChangeCandidate value) {
            value.getClass();
            if (this.messageCase_ == 6 && this.message_ != ChangeCandidate.getDefaultInstance()) {
                this.message_ = ChangeCandidate.newBuilder((ChangeCandidate) this.message_).mergeFrom((ChangeCandidate.Builder) value).buildPartial();
            } else {
                this.message_ = value;
            }
            this.messageCase_ = 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeChangeCandidate() {
            if (this.messageCase_ == 6) {
                this.messageCase_ = 0;
                this.message_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
        public boolean hasStakeTransferOwnership() {
            return this.messageCase_ == 7;
        }

        @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
        public TransferOwnership getStakeTransferOwnership() {
            if (this.messageCase_ == 7) {
                return (TransferOwnership) this.message_;
            }
            return TransferOwnership.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeTransferOwnership(TransferOwnership value) {
            value.getClass();
            this.message_ = value;
            this.messageCase_ = 7;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakeTransferOwnership(TransferOwnership value) {
            value.getClass();
            if (this.messageCase_ == 7 && this.message_ != TransferOwnership.getDefaultInstance()) {
                this.message_ = TransferOwnership.newBuilder((TransferOwnership) this.message_).mergeFrom((TransferOwnership.Builder) value).buildPartial();
            } else {
                this.message_ = value;
            }
            this.messageCase_ = 7;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeTransferOwnership() {
            if (this.messageCase_ == 7) {
                this.messageCase_ = 0;
                this.message_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
        public boolean hasCandidateRegister() {
            return this.messageCase_ == 8;
        }

        @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
        public CandidateRegister getCandidateRegister() {
            if (this.messageCase_ == 8) {
                return (CandidateRegister) this.message_;
            }
            return CandidateRegister.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCandidateRegister(CandidateRegister value) {
            value.getClass();
            this.message_ = value;
            this.messageCase_ = 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeCandidateRegister(CandidateRegister value) {
            value.getClass();
            if (this.messageCase_ == 8 && this.message_ != CandidateRegister.getDefaultInstance()) {
                this.message_ = CandidateRegister.newBuilder((CandidateRegister) this.message_).mergeFrom((CandidateRegister.Builder) value).buildPartial();
            } else {
                this.message_ = value;
            }
            this.messageCase_ = 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCandidateRegister() {
            if (this.messageCase_ == 8) {
                this.messageCase_ = 0;
                this.message_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
        public boolean hasCandidateUpdate() {
            return this.messageCase_ == 9;
        }

        @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
        public CandidateBasicInfo getCandidateUpdate() {
            if (this.messageCase_ == 9) {
                return (CandidateBasicInfo) this.message_;
            }
            return CandidateBasicInfo.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCandidateUpdate(CandidateBasicInfo value) {
            value.getClass();
            this.message_ = value;
            this.messageCase_ = 9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeCandidateUpdate(CandidateBasicInfo value) {
            value.getClass();
            if (this.messageCase_ == 9 && this.message_ != CandidateBasicInfo.getDefaultInstance()) {
                this.message_ = CandidateBasicInfo.newBuilder((CandidateBasicInfo) this.message_).mergeFrom((CandidateBasicInfo.Builder) value).buildPartial();
            } else {
                this.message_ = value;
            }
            this.messageCase_ = 9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCandidateUpdate() {
            if (this.messageCase_ == 9) {
                this.messageCase_ = 0;
                this.message_ = null;
            }
        }

        public static Staking parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Staking) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Staking parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Staking) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Staking parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Staking) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Staking parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Staking) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Staking parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Staking) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Staking parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Staking) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Staking parseFrom(InputStream input) throws IOException {
            return (Staking) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Staking parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Staking) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Staking parseDelimitedFrom(InputStream input) throws IOException {
            return (Staking) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Staking parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Staking) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Staking parseFrom(CodedInputStream input) throws IOException {
            return (Staking) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Staking parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Staking) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Staking prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Staking, Builder> implements StakingOrBuilder {
            /* synthetic */ Builder(C77491 c77491) {
                this();
            }

            private Builder() {
                super(Staking.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
            public MessageCase getMessageCase() {
                return ((Staking) this.instance).getMessageCase();
            }

            public Builder clearMessage() {
                copyOnWrite();
                ((Staking) this.instance).clearMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
            public boolean hasStakeCreate() {
                return ((Staking) this.instance).hasStakeCreate();
            }

            @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
            public Create getStakeCreate() {
                return ((Staking) this.instance).getStakeCreate();
            }

            public Builder setStakeCreate(Create value) {
                copyOnWrite();
                ((Staking) this.instance).setStakeCreate(value);
                return this;
            }

            public Builder setStakeCreate(Create.Builder builderForValue) {
                copyOnWrite();
                ((Staking) this.instance).setStakeCreate(builderForValue.build());
                return this;
            }

            public Builder mergeStakeCreate(Create value) {
                copyOnWrite();
                ((Staking) this.instance).mergeStakeCreate(value);
                return this;
            }

            public Builder clearStakeCreate() {
                copyOnWrite();
                ((Staking) this.instance).clearStakeCreate();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
            public boolean hasStakeUnstake() {
                return ((Staking) this.instance).hasStakeUnstake();
            }

            @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
            public Reclaim getStakeUnstake() {
                return ((Staking) this.instance).getStakeUnstake();
            }

            public Builder setStakeUnstake(Reclaim value) {
                copyOnWrite();
                ((Staking) this.instance).setStakeUnstake(value);
                return this;
            }

            public Builder setStakeUnstake(Reclaim.Builder builderForValue) {
                copyOnWrite();
                ((Staking) this.instance).setStakeUnstake(builderForValue.build());
                return this;
            }

            public Builder mergeStakeUnstake(Reclaim value) {
                copyOnWrite();
                ((Staking) this.instance).mergeStakeUnstake(value);
                return this;
            }

            public Builder clearStakeUnstake() {
                copyOnWrite();
                ((Staking) this.instance).clearStakeUnstake();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
            public boolean hasStakeWithdraw() {
                return ((Staking) this.instance).hasStakeWithdraw();
            }

            @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
            public Reclaim getStakeWithdraw() {
                return ((Staking) this.instance).getStakeWithdraw();
            }

            public Builder setStakeWithdraw(Reclaim value) {
                copyOnWrite();
                ((Staking) this.instance).setStakeWithdraw(value);
                return this;
            }

            public Builder setStakeWithdraw(Reclaim.Builder builderForValue) {
                copyOnWrite();
                ((Staking) this.instance).setStakeWithdraw(builderForValue.build());
                return this;
            }

            public Builder mergeStakeWithdraw(Reclaim value) {
                copyOnWrite();
                ((Staking) this.instance).mergeStakeWithdraw(value);
                return this;
            }

            public Builder clearStakeWithdraw() {
                copyOnWrite();
                ((Staking) this.instance).clearStakeWithdraw();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
            public boolean hasStakeAddDeposit() {
                return ((Staking) this.instance).hasStakeAddDeposit();
            }

            @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
            public AddDeposit getStakeAddDeposit() {
                return ((Staking) this.instance).getStakeAddDeposit();
            }

            public Builder setStakeAddDeposit(AddDeposit value) {
                copyOnWrite();
                ((Staking) this.instance).setStakeAddDeposit(value);
                return this;
            }

            public Builder setStakeAddDeposit(AddDeposit.Builder builderForValue) {
                copyOnWrite();
                ((Staking) this.instance).setStakeAddDeposit(builderForValue.build());
                return this;
            }

            public Builder mergeStakeAddDeposit(AddDeposit value) {
                copyOnWrite();
                ((Staking) this.instance).mergeStakeAddDeposit(value);
                return this;
            }

            public Builder clearStakeAddDeposit() {
                copyOnWrite();
                ((Staking) this.instance).clearStakeAddDeposit();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
            public boolean hasStakeRestake() {
                return ((Staking) this.instance).hasStakeRestake();
            }

            @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
            public Restake getStakeRestake() {
                return ((Staking) this.instance).getStakeRestake();
            }

            public Builder setStakeRestake(Restake value) {
                copyOnWrite();
                ((Staking) this.instance).setStakeRestake(value);
                return this;
            }

            public Builder setStakeRestake(Restake.Builder builderForValue) {
                copyOnWrite();
                ((Staking) this.instance).setStakeRestake(builderForValue.build());
                return this;
            }

            public Builder mergeStakeRestake(Restake value) {
                copyOnWrite();
                ((Staking) this.instance).mergeStakeRestake(value);
                return this;
            }

            public Builder clearStakeRestake() {
                copyOnWrite();
                ((Staking) this.instance).clearStakeRestake();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
            public boolean hasStakeChangeCandidate() {
                return ((Staking) this.instance).hasStakeChangeCandidate();
            }

            @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
            public ChangeCandidate getStakeChangeCandidate() {
                return ((Staking) this.instance).getStakeChangeCandidate();
            }

            public Builder setStakeChangeCandidate(ChangeCandidate value) {
                copyOnWrite();
                ((Staking) this.instance).setStakeChangeCandidate(value);
                return this;
            }

            public Builder setStakeChangeCandidate(ChangeCandidate.Builder builderForValue) {
                copyOnWrite();
                ((Staking) this.instance).setStakeChangeCandidate(builderForValue.build());
                return this;
            }

            public Builder mergeStakeChangeCandidate(ChangeCandidate value) {
                copyOnWrite();
                ((Staking) this.instance).mergeStakeChangeCandidate(value);
                return this;
            }

            public Builder clearStakeChangeCandidate() {
                copyOnWrite();
                ((Staking) this.instance).clearStakeChangeCandidate();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
            public boolean hasStakeTransferOwnership() {
                return ((Staking) this.instance).hasStakeTransferOwnership();
            }

            @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
            public TransferOwnership getStakeTransferOwnership() {
                return ((Staking) this.instance).getStakeTransferOwnership();
            }

            public Builder setStakeTransferOwnership(TransferOwnership value) {
                copyOnWrite();
                ((Staking) this.instance).setStakeTransferOwnership(value);
                return this;
            }

            public Builder setStakeTransferOwnership(TransferOwnership.Builder builderForValue) {
                copyOnWrite();
                ((Staking) this.instance).setStakeTransferOwnership(builderForValue.build());
                return this;
            }

            public Builder mergeStakeTransferOwnership(TransferOwnership value) {
                copyOnWrite();
                ((Staking) this.instance).mergeStakeTransferOwnership(value);
                return this;
            }

            public Builder clearStakeTransferOwnership() {
                copyOnWrite();
                ((Staking) this.instance).clearStakeTransferOwnership();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
            public boolean hasCandidateRegister() {
                return ((Staking) this.instance).hasCandidateRegister();
            }

            @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
            public CandidateRegister getCandidateRegister() {
                return ((Staking) this.instance).getCandidateRegister();
            }

            public Builder setCandidateRegister(CandidateRegister value) {
                copyOnWrite();
                ((Staking) this.instance).setCandidateRegister(value);
                return this;
            }

            public Builder setCandidateRegister(CandidateRegister.Builder builderForValue) {
                copyOnWrite();
                ((Staking) this.instance).setCandidateRegister(builderForValue.build());
                return this;
            }

            public Builder mergeCandidateRegister(CandidateRegister value) {
                copyOnWrite();
                ((Staking) this.instance).mergeCandidateRegister(value);
                return this;
            }

            public Builder clearCandidateRegister() {
                copyOnWrite();
                ((Staking) this.instance).clearCandidateRegister();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
            public boolean hasCandidateUpdate() {
                return ((Staking) this.instance).hasCandidateUpdate();
            }

            @Override // wallet.core.jni.proto.IoTeX.StakingOrBuilder
            public CandidateBasicInfo getCandidateUpdate() {
                return ((Staking) this.instance).getCandidateUpdate();
            }

            public Builder setCandidateUpdate(CandidateBasicInfo value) {
                copyOnWrite();
                ((Staking) this.instance).setCandidateUpdate(value);
                return this;
            }

            public Builder setCandidateUpdate(CandidateBasicInfo.Builder builderForValue) {
                copyOnWrite();
                ((Staking) this.instance).setCandidateUpdate(builderForValue.build());
                return this;
            }

            public Builder mergeCandidateUpdate(CandidateBasicInfo value) {
                copyOnWrite();
                ((Staking) this.instance).mergeCandidateUpdate(value);
                return this;
            }

            public Builder clearCandidateUpdate() {
                copyOnWrite();
                ((Staking) this.instance).clearCandidateUpdate();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77491.f2142xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Staking();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\t\u0001\u0000\u0001\t\t\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\b<\u0000\t<\u0000", new Object[]{"message_", "messageCase_", Create.class, Reclaim.class, Reclaim.class, AddDeposit.class, Restake.class, ChangeCandidate.class, TransferOwnership.class, CandidateRegister.class, CandidateBasicInfo.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Staking> parser = PARSER;
                    if (parser == null) {
                        synchronized (Staking.class) {
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
            Staking staking = new Staking();
            DEFAULT_INSTANCE = staking;
            GeneratedMessageLite.registerDefaultInstance(Staking.class, staking);
        }

        public static Staking getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Staking> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class ContractCall extends GeneratedMessageLite<ContractCall, Builder> implements ContractCallOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 1;
        public static final int CONTRACT_FIELD_NUMBER = 2;
        public static final int DATA_FIELD_NUMBER = 3;
        private static final ContractCall DEFAULT_INSTANCE;
        private static volatile Parser<ContractCall> PARSER;
        private String amount_ = "";
        private String contract_ = "";
        private ByteString data_ = ByteString.EMPTY;

        private ContractCall() {
        }

        @Override // wallet.core.jni.proto.IoTeX.ContractCallOrBuilder
        public String getAmount() {
            return this.amount_;
        }

        @Override // wallet.core.jni.proto.IoTeX.ContractCallOrBuilder
        public ByteString getAmountBytes() {
            return ByteString.copyFromUtf8(this.amount_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmount(String value) {
            value.getClass();
            this.amount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAmount() {
            this.amount_ = getDefaultInstance().getAmount();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmountBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.amount_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.IoTeX.ContractCallOrBuilder
        public String getContract() {
            return this.contract_;
        }

        @Override // wallet.core.jni.proto.IoTeX.ContractCallOrBuilder
        public ByteString getContractBytes() {
            return ByteString.copyFromUtf8(this.contract_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setContract(String value) {
            value.getClass();
            this.contract_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearContract() {
            this.contract_ = getDefaultInstance().getContract();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setContractBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.contract_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.IoTeX.ContractCallOrBuilder
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

        public static ContractCall parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (ContractCall) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ContractCall parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ContractCall) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ContractCall parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (ContractCall) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ContractCall parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ContractCall) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ContractCall parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (ContractCall) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ContractCall parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ContractCall) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ContractCall parseFrom(InputStream input) throws IOException {
            return (ContractCall) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static ContractCall parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ContractCall) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static ContractCall parseDelimitedFrom(InputStream input) throws IOException {
            return (ContractCall) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static ContractCall parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ContractCall) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static ContractCall parseFrom(CodedInputStream input) throws IOException {
            return (ContractCall) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static ContractCall parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ContractCall) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(ContractCall prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<ContractCall, Builder> implements ContractCallOrBuilder {
            /* synthetic */ Builder(C77491 c77491) {
                this();
            }

            private Builder() {
                super(ContractCall.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.IoTeX.ContractCallOrBuilder
            public String getAmount() {
                return ((ContractCall) this.instance).getAmount();
            }

            @Override // wallet.core.jni.proto.IoTeX.ContractCallOrBuilder
            public ByteString getAmountBytes() {
                return ((ContractCall) this.instance).getAmountBytes();
            }

            public Builder setAmount(String value) {
                copyOnWrite();
                ((ContractCall) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((ContractCall) this.instance).clearAmount();
                return this;
            }

            public Builder setAmountBytes(ByteString value) {
                copyOnWrite();
                ((ContractCall) this.instance).setAmountBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.ContractCallOrBuilder
            public String getContract() {
                return ((ContractCall) this.instance).getContract();
            }

            @Override // wallet.core.jni.proto.IoTeX.ContractCallOrBuilder
            public ByteString getContractBytes() {
                return ((ContractCall) this.instance).getContractBytes();
            }

            public Builder setContract(String value) {
                copyOnWrite();
                ((ContractCall) this.instance).setContract(value);
                return this;
            }

            public Builder clearContract() {
                copyOnWrite();
                ((ContractCall) this.instance).clearContract();
                return this;
            }

            public Builder setContractBytes(ByteString value) {
                copyOnWrite();
                ((ContractCall) this.instance).setContractBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.ContractCallOrBuilder
            public ByteString getData() {
                return ((ContractCall) this.instance).getData();
            }

            public Builder setData(ByteString value) {
                copyOnWrite();
                ((ContractCall) this.instance).setData(value);
                return this;
            }

            public Builder clearData() {
                copyOnWrite();
                ((ContractCall) this.instance).clearData();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77491.f2142xa1df5c61[method.ordinal()]) {
                case 1:
                    return new ContractCall();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\n", new Object[]{"amount_", "contract_", "data_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<ContractCall> parser = PARSER;
                    if (parser == null) {
                        synchronized (ContractCall.class) {
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
            ContractCall contractCall = new ContractCall();
            DEFAULT_INSTANCE = contractCall;
            GeneratedMessageLite.registerDefaultInstance(ContractCall.class, contractCall);
        }

        public static ContractCall getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<ContractCall> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int CALL_FIELD_NUMBER = 12;
        public static final int CANDIDATEREGISTER_FIELD_NUMBER = 47;
        public static final int CANDIDATEUPDATE_FIELD_NUMBER = 48;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int GASLIMIT_FIELD_NUMBER = 3;
        public static final int GASPRICE_FIELD_NUMBER = 4;
        public static final int NONCE_FIELD_NUMBER = 2;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATEKEY_FIELD_NUMBER = 5;
        public static final int STAKEADDDEPOSIT_FIELD_NUMBER = 43;
        public static final int STAKECHANGECANDIDATE_FIELD_NUMBER = 45;
        public static final int STAKECREATE_FIELD_NUMBER = 40;
        public static final int STAKERESTAKE_FIELD_NUMBER = 44;
        public static final int STAKETRANSFEROWNERSHIP_FIELD_NUMBER = 46;
        public static final int STAKEUNSTAKE_FIELD_NUMBER = 41;
        public static final int STAKEWITHDRAW_FIELD_NUMBER = 42;
        public static final int TRANSFER_FIELD_NUMBER = 10;
        public static final int VERSION_FIELD_NUMBER = 1;
        private Object action_;
        private long gasLimit_;
        private long nonce_;
        private int version_;
        private int actionCase_ = 0;
        private String gasPrice_ = "";
        private ByteString privateKey_ = ByteString.EMPTY;

        private SigningInput() {
        }

        /* loaded from: classes7.dex */
        public enum ActionCase {
            TRANSFER(10),
            CALL(12),
            STAKECREATE(40),
            STAKEUNSTAKE(41),
            STAKEWITHDRAW(42),
            STAKEADDDEPOSIT(43),
            STAKERESTAKE(44),
            STAKECHANGECANDIDATE(45),
            STAKETRANSFEROWNERSHIP(46),
            CANDIDATEREGISTER(47),
            CANDIDATEUPDATE(48),
            ACTION_NOT_SET(0);
            
            private final int value;

            ActionCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static ActionCase valueOf(int value) {
                return forNumber(value);
            }

            public static ActionCase forNumber(int value) {
                if (value != 0) {
                    if (value != 10) {
                        if (value == 12) {
                            return CALL;
                        }
                        switch (value) {
                            case 40:
                                return STAKECREATE;
                            case 41:
                                return STAKEUNSTAKE;
                            case 42:
                                return STAKEWITHDRAW;
                            case 43:
                                return STAKEADDDEPOSIT;
                            case 44:
                                return STAKERESTAKE;
                            case 45:
                                return STAKECHANGECANDIDATE;
                            case 46:
                                return STAKETRANSFEROWNERSHIP;
                            case 47:
                                return CANDIDATEREGISTER;
                            case 48:
                                return CANDIDATEUPDATE;
                            default:
                                return null;
                        }
                    }
                    return TRANSFER;
                }
                return ACTION_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public ActionCase getActionCase() {
            return ActionCase.forNumber(this.actionCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAction() {
            this.actionCase_ = 0;
            this.action_ = null;
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public long getNonce() {
            return this.nonce_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNonce(long value) {
            this.nonce_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNonce() {
            this.nonce_ = 0L;
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public long getGasLimit() {
            return this.gasLimit_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGasLimit(long value) {
            this.gasLimit_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGasLimit() {
            this.gasLimit_ = 0L;
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public String getGasPrice() {
            return this.gasPrice_;
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public ByteString getGasPriceBytes() {
            return ByteString.copyFromUtf8(this.gasPrice_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGasPrice(String value) {
            value.getClass();
            this.gasPrice_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGasPrice() {
            this.gasPrice_ = getDefaultInstance().getGasPrice();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGasPriceBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.gasPrice_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public boolean hasTransfer() {
            return this.actionCase_ == 10;
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public Transfer getTransfer() {
            if (this.actionCase_ == 10) {
                return (Transfer) this.action_;
            }
            return Transfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransfer(Transfer value) {
            value.getClass();
            this.action_ = value;
            this.actionCase_ = 10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransfer(Transfer value) {
            value.getClass();
            if (this.actionCase_ == 10 && this.action_ != Transfer.getDefaultInstance()) {
                this.action_ = Transfer.newBuilder((Transfer) this.action_).mergeFrom((Transfer.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
            this.actionCase_ = 10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransfer() {
            if (this.actionCase_ == 10) {
                this.actionCase_ = 0;
                this.action_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public boolean hasCall() {
            return this.actionCase_ == 12;
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public ContractCall getCall() {
            if (this.actionCase_ == 12) {
                return (ContractCall) this.action_;
            }
            return ContractCall.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCall(ContractCall value) {
            value.getClass();
            this.action_ = value;
            this.actionCase_ = 12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeCall(ContractCall value) {
            value.getClass();
            if (this.actionCase_ == 12 && this.action_ != ContractCall.getDefaultInstance()) {
                this.action_ = ContractCall.newBuilder((ContractCall) this.action_).mergeFrom((ContractCall.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
            this.actionCase_ = 12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCall() {
            if (this.actionCase_ == 12) {
                this.actionCase_ = 0;
                this.action_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public boolean hasStakeCreate() {
            return this.actionCase_ == 40;
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public Staking.Create getStakeCreate() {
            if (this.actionCase_ == 40) {
                return (Staking.Create) this.action_;
            }
            return Staking.Create.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeCreate(Staking.Create value) {
            value.getClass();
            this.action_ = value;
            this.actionCase_ = 40;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakeCreate(Staking.Create value) {
            value.getClass();
            if (this.actionCase_ == 40 && this.action_ != Staking.Create.getDefaultInstance()) {
                this.action_ = Staking.Create.newBuilder((Staking.Create) this.action_).mergeFrom((Staking.Create.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
            this.actionCase_ = 40;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeCreate() {
            if (this.actionCase_ == 40) {
                this.actionCase_ = 0;
                this.action_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public boolean hasStakeUnstake() {
            return this.actionCase_ == 41;
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public Staking.Reclaim getStakeUnstake() {
            if (this.actionCase_ == 41) {
                return (Staking.Reclaim) this.action_;
            }
            return Staking.Reclaim.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeUnstake(Staking.Reclaim value) {
            value.getClass();
            this.action_ = value;
            this.actionCase_ = 41;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakeUnstake(Staking.Reclaim value) {
            value.getClass();
            if (this.actionCase_ == 41 && this.action_ != Staking.Reclaim.getDefaultInstance()) {
                this.action_ = Staking.Reclaim.newBuilder((Staking.Reclaim) this.action_).mergeFrom((Staking.Reclaim.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
            this.actionCase_ = 41;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeUnstake() {
            if (this.actionCase_ == 41) {
                this.actionCase_ = 0;
                this.action_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public boolean hasStakeWithdraw() {
            return this.actionCase_ == 42;
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public Staking.Reclaim getStakeWithdraw() {
            if (this.actionCase_ == 42) {
                return (Staking.Reclaim) this.action_;
            }
            return Staking.Reclaim.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeWithdraw(Staking.Reclaim value) {
            value.getClass();
            this.action_ = value;
            this.actionCase_ = 42;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakeWithdraw(Staking.Reclaim value) {
            value.getClass();
            if (this.actionCase_ == 42 && this.action_ != Staking.Reclaim.getDefaultInstance()) {
                this.action_ = Staking.Reclaim.newBuilder((Staking.Reclaim) this.action_).mergeFrom((Staking.Reclaim.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
            this.actionCase_ = 42;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeWithdraw() {
            if (this.actionCase_ == 42) {
                this.actionCase_ = 0;
                this.action_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public boolean hasStakeAddDeposit() {
            return this.actionCase_ == 43;
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public Staking.AddDeposit getStakeAddDeposit() {
            if (this.actionCase_ == 43) {
                return (Staking.AddDeposit) this.action_;
            }
            return Staking.AddDeposit.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeAddDeposit(Staking.AddDeposit value) {
            value.getClass();
            this.action_ = value;
            this.actionCase_ = 43;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakeAddDeposit(Staking.AddDeposit value) {
            value.getClass();
            if (this.actionCase_ == 43 && this.action_ != Staking.AddDeposit.getDefaultInstance()) {
                this.action_ = Staking.AddDeposit.newBuilder((Staking.AddDeposit) this.action_).mergeFrom((Staking.AddDeposit.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
            this.actionCase_ = 43;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeAddDeposit() {
            if (this.actionCase_ == 43) {
                this.actionCase_ = 0;
                this.action_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public boolean hasStakeRestake() {
            return this.actionCase_ == 44;
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public Staking.Restake getStakeRestake() {
            if (this.actionCase_ == 44) {
                return (Staking.Restake) this.action_;
            }
            return Staking.Restake.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeRestake(Staking.Restake value) {
            value.getClass();
            this.action_ = value;
            this.actionCase_ = 44;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakeRestake(Staking.Restake value) {
            value.getClass();
            if (this.actionCase_ == 44 && this.action_ != Staking.Restake.getDefaultInstance()) {
                this.action_ = Staking.Restake.newBuilder((Staking.Restake) this.action_).mergeFrom((Staking.Restake.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
            this.actionCase_ = 44;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeRestake() {
            if (this.actionCase_ == 44) {
                this.actionCase_ = 0;
                this.action_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public boolean hasStakeChangeCandidate() {
            return this.actionCase_ == 45;
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public Staking.ChangeCandidate getStakeChangeCandidate() {
            if (this.actionCase_ == 45) {
                return (Staking.ChangeCandidate) this.action_;
            }
            return Staking.ChangeCandidate.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeChangeCandidate(Staking.ChangeCandidate value) {
            value.getClass();
            this.action_ = value;
            this.actionCase_ = 45;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakeChangeCandidate(Staking.ChangeCandidate value) {
            value.getClass();
            if (this.actionCase_ == 45 && this.action_ != Staking.ChangeCandidate.getDefaultInstance()) {
                this.action_ = Staking.ChangeCandidate.newBuilder((Staking.ChangeCandidate) this.action_).mergeFrom((Staking.ChangeCandidate.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
            this.actionCase_ = 45;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeChangeCandidate() {
            if (this.actionCase_ == 45) {
                this.actionCase_ = 0;
                this.action_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public boolean hasStakeTransferOwnership() {
            return this.actionCase_ == 46;
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public Staking.TransferOwnership getStakeTransferOwnership() {
            if (this.actionCase_ == 46) {
                return (Staking.TransferOwnership) this.action_;
            }
            return Staking.TransferOwnership.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeTransferOwnership(Staking.TransferOwnership value) {
            value.getClass();
            this.action_ = value;
            this.actionCase_ = 46;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakeTransferOwnership(Staking.TransferOwnership value) {
            value.getClass();
            if (this.actionCase_ == 46 && this.action_ != Staking.TransferOwnership.getDefaultInstance()) {
                this.action_ = Staking.TransferOwnership.newBuilder((Staking.TransferOwnership) this.action_).mergeFrom((Staking.TransferOwnership.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
            this.actionCase_ = 46;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeTransferOwnership() {
            if (this.actionCase_ == 46) {
                this.actionCase_ = 0;
                this.action_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public boolean hasCandidateRegister() {
            return this.actionCase_ == 47;
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public Staking.CandidateRegister getCandidateRegister() {
            if (this.actionCase_ == 47) {
                return (Staking.CandidateRegister) this.action_;
            }
            return Staking.CandidateRegister.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCandidateRegister(Staking.CandidateRegister value) {
            value.getClass();
            this.action_ = value;
            this.actionCase_ = 47;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeCandidateRegister(Staking.CandidateRegister value) {
            value.getClass();
            if (this.actionCase_ == 47 && this.action_ != Staking.CandidateRegister.getDefaultInstance()) {
                this.action_ = Staking.CandidateRegister.newBuilder((Staking.CandidateRegister) this.action_).mergeFrom((Staking.CandidateRegister.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
            this.actionCase_ = 47;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCandidateRegister() {
            if (this.actionCase_ == 47) {
                this.actionCase_ = 0;
                this.action_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public boolean hasCandidateUpdate() {
            return this.actionCase_ == 48;
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
        public Staking.CandidateBasicInfo getCandidateUpdate() {
            if (this.actionCase_ == 48) {
                return (Staking.CandidateBasicInfo) this.action_;
            }
            return Staking.CandidateBasicInfo.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCandidateUpdate(Staking.CandidateBasicInfo value) {
            value.getClass();
            this.action_ = value;
            this.actionCase_ = 48;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeCandidateUpdate(Staking.CandidateBasicInfo value) {
            value.getClass();
            if (this.actionCase_ == 48 && this.action_ != Staking.CandidateBasicInfo.getDefaultInstance()) {
                this.action_ = Staking.CandidateBasicInfo.newBuilder((Staking.CandidateBasicInfo) this.action_).mergeFrom((Staking.CandidateBasicInfo.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
            this.actionCase_ = 48;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCandidateUpdate() {
            if (this.actionCase_ == 48) {
                this.actionCase_ = 0;
                this.action_ = null;
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
            /* synthetic */ Builder(C77491 c77491) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public ActionCase getActionCase() {
                return ((SigningInput) this.instance).getActionCase();
            }

            public Builder clearAction() {
                copyOnWrite();
                ((SigningInput) this.instance).clearAction();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public int getVersion() {
                return ((SigningInput) this.instance).getVersion();
            }

            public Builder setVersion(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setVersion(value);
                return this;
            }

            public Builder clearVersion() {
                copyOnWrite();
                ((SigningInput) this.instance).clearVersion();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public long getNonce() {
                return ((SigningInput) this.instance).getNonce();
            }

            public Builder setNonce(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setNonce(value);
                return this;
            }

            public Builder clearNonce() {
                copyOnWrite();
                ((SigningInput) this.instance).clearNonce();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public long getGasLimit() {
                return ((SigningInput) this.instance).getGasLimit();
            }

            public Builder setGasLimit(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setGasLimit(value);
                return this;
            }

            public Builder clearGasLimit() {
                copyOnWrite();
                ((SigningInput) this.instance).clearGasLimit();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public String getGasPrice() {
                return ((SigningInput) this.instance).getGasPrice();
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public ByteString getGasPriceBytes() {
                return ((SigningInput) this.instance).getGasPriceBytes();
            }

            public Builder setGasPrice(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setGasPrice(value);
                return this;
            }

            public Builder clearGasPrice() {
                copyOnWrite();
                ((SigningInput) this.instance).clearGasPrice();
                return this;
            }

            public Builder setGasPriceBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setGasPriceBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public boolean hasTransfer() {
                return ((SigningInput) this.instance).hasTransfer();
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public boolean hasCall() {
                return ((SigningInput) this.instance).hasCall();
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public ContractCall getCall() {
                return ((SigningInput) this.instance).getCall();
            }

            public Builder setCall(ContractCall value) {
                copyOnWrite();
                ((SigningInput) this.instance).setCall(value);
                return this;
            }

            public Builder setCall(ContractCall.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setCall(builderForValue.build());
                return this;
            }

            public Builder mergeCall(ContractCall value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeCall(value);
                return this;
            }

            public Builder clearCall() {
                copyOnWrite();
                ((SigningInput) this.instance).clearCall();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public boolean hasStakeCreate() {
                return ((SigningInput) this.instance).hasStakeCreate();
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public Staking.Create getStakeCreate() {
                return ((SigningInput) this.instance).getStakeCreate();
            }

            public Builder setStakeCreate(Staking.Create value) {
                copyOnWrite();
                ((SigningInput) this.instance).setStakeCreate(value);
                return this;
            }

            public Builder setStakeCreate(Staking.Create.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setStakeCreate(builderForValue.build());
                return this;
            }

            public Builder mergeStakeCreate(Staking.Create value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeStakeCreate(value);
                return this;
            }

            public Builder clearStakeCreate() {
                copyOnWrite();
                ((SigningInput) this.instance).clearStakeCreate();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public boolean hasStakeUnstake() {
                return ((SigningInput) this.instance).hasStakeUnstake();
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public Staking.Reclaim getStakeUnstake() {
                return ((SigningInput) this.instance).getStakeUnstake();
            }

            public Builder setStakeUnstake(Staking.Reclaim value) {
                copyOnWrite();
                ((SigningInput) this.instance).setStakeUnstake(value);
                return this;
            }

            public Builder setStakeUnstake(Staking.Reclaim.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setStakeUnstake(builderForValue.build());
                return this;
            }

            public Builder mergeStakeUnstake(Staking.Reclaim value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeStakeUnstake(value);
                return this;
            }

            public Builder clearStakeUnstake() {
                copyOnWrite();
                ((SigningInput) this.instance).clearStakeUnstake();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public boolean hasStakeWithdraw() {
                return ((SigningInput) this.instance).hasStakeWithdraw();
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public Staking.Reclaim getStakeWithdraw() {
                return ((SigningInput) this.instance).getStakeWithdraw();
            }

            public Builder setStakeWithdraw(Staking.Reclaim value) {
                copyOnWrite();
                ((SigningInput) this.instance).setStakeWithdraw(value);
                return this;
            }

            public Builder setStakeWithdraw(Staking.Reclaim.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setStakeWithdraw(builderForValue.build());
                return this;
            }

            public Builder mergeStakeWithdraw(Staking.Reclaim value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeStakeWithdraw(value);
                return this;
            }

            public Builder clearStakeWithdraw() {
                copyOnWrite();
                ((SigningInput) this.instance).clearStakeWithdraw();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public boolean hasStakeAddDeposit() {
                return ((SigningInput) this.instance).hasStakeAddDeposit();
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public Staking.AddDeposit getStakeAddDeposit() {
                return ((SigningInput) this.instance).getStakeAddDeposit();
            }

            public Builder setStakeAddDeposit(Staking.AddDeposit value) {
                copyOnWrite();
                ((SigningInput) this.instance).setStakeAddDeposit(value);
                return this;
            }

            public Builder setStakeAddDeposit(Staking.AddDeposit.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setStakeAddDeposit(builderForValue.build());
                return this;
            }

            public Builder mergeStakeAddDeposit(Staking.AddDeposit value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeStakeAddDeposit(value);
                return this;
            }

            public Builder clearStakeAddDeposit() {
                copyOnWrite();
                ((SigningInput) this.instance).clearStakeAddDeposit();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public boolean hasStakeRestake() {
                return ((SigningInput) this.instance).hasStakeRestake();
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public Staking.Restake getStakeRestake() {
                return ((SigningInput) this.instance).getStakeRestake();
            }

            public Builder setStakeRestake(Staking.Restake value) {
                copyOnWrite();
                ((SigningInput) this.instance).setStakeRestake(value);
                return this;
            }

            public Builder setStakeRestake(Staking.Restake.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setStakeRestake(builderForValue.build());
                return this;
            }

            public Builder mergeStakeRestake(Staking.Restake value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeStakeRestake(value);
                return this;
            }

            public Builder clearStakeRestake() {
                copyOnWrite();
                ((SigningInput) this.instance).clearStakeRestake();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public boolean hasStakeChangeCandidate() {
                return ((SigningInput) this.instance).hasStakeChangeCandidate();
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public Staking.ChangeCandidate getStakeChangeCandidate() {
                return ((SigningInput) this.instance).getStakeChangeCandidate();
            }

            public Builder setStakeChangeCandidate(Staking.ChangeCandidate value) {
                copyOnWrite();
                ((SigningInput) this.instance).setStakeChangeCandidate(value);
                return this;
            }

            public Builder setStakeChangeCandidate(Staking.ChangeCandidate.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setStakeChangeCandidate(builderForValue.build());
                return this;
            }

            public Builder mergeStakeChangeCandidate(Staking.ChangeCandidate value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeStakeChangeCandidate(value);
                return this;
            }

            public Builder clearStakeChangeCandidate() {
                copyOnWrite();
                ((SigningInput) this.instance).clearStakeChangeCandidate();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public boolean hasStakeTransferOwnership() {
                return ((SigningInput) this.instance).hasStakeTransferOwnership();
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public Staking.TransferOwnership getStakeTransferOwnership() {
                return ((SigningInput) this.instance).getStakeTransferOwnership();
            }

            public Builder setStakeTransferOwnership(Staking.TransferOwnership value) {
                copyOnWrite();
                ((SigningInput) this.instance).setStakeTransferOwnership(value);
                return this;
            }

            public Builder setStakeTransferOwnership(Staking.TransferOwnership.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setStakeTransferOwnership(builderForValue.build());
                return this;
            }

            public Builder mergeStakeTransferOwnership(Staking.TransferOwnership value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeStakeTransferOwnership(value);
                return this;
            }

            public Builder clearStakeTransferOwnership() {
                copyOnWrite();
                ((SigningInput) this.instance).clearStakeTransferOwnership();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public boolean hasCandidateRegister() {
                return ((SigningInput) this.instance).hasCandidateRegister();
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public Staking.CandidateRegister getCandidateRegister() {
                return ((SigningInput) this.instance).getCandidateRegister();
            }

            public Builder setCandidateRegister(Staking.CandidateRegister value) {
                copyOnWrite();
                ((SigningInput) this.instance).setCandidateRegister(value);
                return this;
            }

            public Builder setCandidateRegister(Staking.CandidateRegister.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setCandidateRegister(builderForValue.build());
                return this;
            }

            public Builder mergeCandidateRegister(Staking.CandidateRegister value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeCandidateRegister(value);
                return this;
            }

            public Builder clearCandidateRegister() {
                copyOnWrite();
                ((SigningInput) this.instance).clearCandidateRegister();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public boolean hasCandidateUpdate() {
                return ((SigningInput) this.instance).hasCandidateUpdate();
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningInputOrBuilder
            public Staking.CandidateBasicInfo getCandidateUpdate() {
                return ((SigningInput) this.instance).getCandidateUpdate();
            }

            public Builder setCandidateUpdate(Staking.CandidateBasicInfo value) {
                copyOnWrite();
                ((SigningInput) this.instance).setCandidateUpdate(value);
                return this;
            }

            public Builder setCandidateUpdate(Staking.CandidateBasicInfo.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setCandidateUpdate(builderForValue.build());
                return this;
            }

            public Builder mergeCandidateUpdate(Staking.CandidateBasicInfo value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeCandidateUpdate(value);
                return this;
            }

            public Builder clearCandidateUpdate() {
                copyOnWrite();
                ((SigningInput) this.instance).clearCandidateUpdate();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77491.f2142xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0010\u0001\u0000\u00010\u0010\u0000\u0000\u0000\u0001\u000b\u0002\u0003\u0003\u0003\u0004Ȉ\u0005\n\n<\u0000\f<\u0000(<\u0000)<\u0000*<\u0000+<\u0000,<\u0000-<\u0000.<\u0000/<\u00000<\u0000", new Object[]{"action_", "actionCase_", "version_", "nonce_", "gasLimit_", "gasPrice_", "privateKey_", Transfer.class, ContractCall.class, Staking.Create.class, Staking.Reclaim.class, Staking.Reclaim.class, Staking.AddDeposit.class, Staking.Restake.class, Staking.ChangeCandidate.class, Staking.TransferOwnership.class, Staking.CandidateRegister.class, Staking.CandidateBasicInfo.class});
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
        public static final int HASH_FIELD_NUMBER = 2;
        private static volatile Parser<SigningOutput> PARSER;
        private ByteString encoded_;
        private ByteString hash_;

        private SigningOutput() {
            ByteString byteString = ByteString.EMPTY;
            this.encoded_ = byteString;
            this.hash_ = byteString;
        }

        @Override // wallet.core.jni.proto.IoTeX.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.IoTeX.SigningOutputOrBuilder
        public ByteString getHash() {
            return this.hash_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHash(ByteString value) {
            value.getClass();
            this.hash_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearHash() {
            this.hash_ = getDefaultInstance().getHash();
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
            /* synthetic */ Builder(C77491 c77491) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.IoTeX.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.IoTeX.SigningOutputOrBuilder
            public ByteString getHash() {
                return ((SigningOutput) this.instance).getHash();
            }

            public Builder setHash(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setHash(value);
                return this;
            }

            public Builder clearHash() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearHash();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77491.f2142xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\n", new Object[]{"encoded_", "hash_"});
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

    /* loaded from: classes7.dex */
    public static final class ActionCore extends GeneratedMessageLite<ActionCore, Builder> implements ActionCoreOrBuilder {
        public static final int CANDIDATEREGISTER_FIELD_NUMBER = 47;
        public static final int CANDIDATEUPDATE_FIELD_NUMBER = 48;
        private static final ActionCore DEFAULT_INSTANCE;
        public static final int EXECUTION_FIELD_NUMBER = 12;
        public static final int GASLIMIT_FIELD_NUMBER = 3;
        public static final int GASPRICE_FIELD_NUMBER = 4;
        public static final int NONCE_FIELD_NUMBER = 2;
        private static volatile Parser<ActionCore> PARSER = null;
        public static final int STAKEADDDEPOSIT_FIELD_NUMBER = 43;
        public static final int STAKECHANGECANDIDATE_FIELD_NUMBER = 45;
        public static final int STAKECREATE_FIELD_NUMBER = 40;
        public static final int STAKERESTAKE_FIELD_NUMBER = 44;
        public static final int STAKETRANSFEROWNERSHIP_FIELD_NUMBER = 46;
        public static final int STAKEUNSTAKE_FIELD_NUMBER = 41;
        public static final int STAKEWITHDRAW_FIELD_NUMBER = 42;
        public static final int TRANSFER_FIELD_NUMBER = 10;
        public static final int VERSION_FIELD_NUMBER = 1;
        private Object action_;
        private long gasLimit_;
        private long nonce_;
        private int version_;
        private int actionCase_ = 0;
        private String gasPrice_ = "";

        private ActionCore() {
        }

        /* loaded from: classes7.dex */
        public enum ActionCase {
            TRANSFER(10),
            EXECUTION(12),
            STAKECREATE(40),
            STAKEUNSTAKE(41),
            STAKEWITHDRAW(42),
            STAKEADDDEPOSIT(43),
            STAKERESTAKE(44),
            STAKECHANGECANDIDATE(45),
            STAKETRANSFEROWNERSHIP(46),
            CANDIDATEREGISTER(47),
            CANDIDATEUPDATE(48),
            ACTION_NOT_SET(0);
            
            private final int value;

            ActionCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static ActionCase valueOf(int value) {
                return forNumber(value);
            }

            public static ActionCase forNumber(int value) {
                if (value != 0) {
                    if (value != 10) {
                        if (value == 12) {
                            return EXECUTION;
                        }
                        switch (value) {
                            case 40:
                                return STAKECREATE;
                            case 41:
                                return STAKEUNSTAKE;
                            case 42:
                                return STAKEWITHDRAW;
                            case 43:
                                return STAKEADDDEPOSIT;
                            case 44:
                                return STAKERESTAKE;
                            case 45:
                                return STAKECHANGECANDIDATE;
                            case 46:
                                return STAKETRANSFEROWNERSHIP;
                            case 47:
                                return CANDIDATEREGISTER;
                            case 48:
                                return CANDIDATEUPDATE;
                            default:
                                return null;
                        }
                    }
                    return TRANSFER;
                }
                return ACTION_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public ActionCase getActionCase() {
            return ActionCase.forNumber(this.actionCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAction() {
            this.actionCase_ = 0;
            this.action_ = null;
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
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

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public long getNonce() {
            return this.nonce_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNonce(long value) {
            this.nonce_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNonce() {
            this.nonce_ = 0L;
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public long getGasLimit() {
            return this.gasLimit_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGasLimit(long value) {
            this.gasLimit_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGasLimit() {
            this.gasLimit_ = 0L;
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public String getGasPrice() {
            return this.gasPrice_;
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public ByteString getGasPriceBytes() {
            return ByteString.copyFromUtf8(this.gasPrice_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGasPrice(String value) {
            value.getClass();
            this.gasPrice_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGasPrice() {
            this.gasPrice_ = getDefaultInstance().getGasPrice();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGasPriceBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.gasPrice_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public boolean hasTransfer() {
            return this.actionCase_ == 10;
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public Transfer getTransfer() {
            if (this.actionCase_ == 10) {
                return (Transfer) this.action_;
            }
            return Transfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransfer(Transfer value) {
            value.getClass();
            this.action_ = value;
            this.actionCase_ = 10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransfer(Transfer value) {
            value.getClass();
            if (this.actionCase_ == 10 && this.action_ != Transfer.getDefaultInstance()) {
                this.action_ = Transfer.newBuilder((Transfer) this.action_).mergeFrom((Transfer.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
            this.actionCase_ = 10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransfer() {
            if (this.actionCase_ == 10) {
                this.actionCase_ = 0;
                this.action_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public boolean hasExecution() {
            return this.actionCase_ == 12;
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public ContractCall getExecution() {
            if (this.actionCase_ == 12) {
                return (ContractCall) this.action_;
            }
            return ContractCall.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setExecution(ContractCall value) {
            value.getClass();
            this.action_ = value;
            this.actionCase_ = 12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeExecution(ContractCall value) {
            value.getClass();
            if (this.actionCase_ == 12 && this.action_ != ContractCall.getDefaultInstance()) {
                this.action_ = ContractCall.newBuilder((ContractCall) this.action_).mergeFrom((ContractCall.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
            this.actionCase_ = 12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearExecution() {
            if (this.actionCase_ == 12) {
                this.actionCase_ = 0;
                this.action_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public boolean hasStakeCreate() {
            return this.actionCase_ == 40;
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public Staking.Create getStakeCreate() {
            if (this.actionCase_ == 40) {
                return (Staking.Create) this.action_;
            }
            return Staking.Create.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeCreate(Staking.Create value) {
            value.getClass();
            this.action_ = value;
            this.actionCase_ = 40;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakeCreate(Staking.Create value) {
            value.getClass();
            if (this.actionCase_ == 40 && this.action_ != Staking.Create.getDefaultInstance()) {
                this.action_ = Staking.Create.newBuilder((Staking.Create) this.action_).mergeFrom((Staking.Create.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
            this.actionCase_ = 40;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeCreate() {
            if (this.actionCase_ == 40) {
                this.actionCase_ = 0;
                this.action_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public boolean hasStakeUnstake() {
            return this.actionCase_ == 41;
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public Staking.Reclaim getStakeUnstake() {
            if (this.actionCase_ == 41) {
                return (Staking.Reclaim) this.action_;
            }
            return Staking.Reclaim.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeUnstake(Staking.Reclaim value) {
            value.getClass();
            this.action_ = value;
            this.actionCase_ = 41;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakeUnstake(Staking.Reclaim value) {
            value.getClass();
            if (this.actionCase_ == 41 && this.action_ != Staking.Reclaim.getDefaultInstance()) {
                this.action_ = Staking.Reclaim.newBuilder((Staking.Reclaim) this.action_).mergeFrom((Staking.Reclaim.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
            this.actionCase_ = 41;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeUnstake() {
            if (this.actionCase_ == 41) {
                this.actionCase_ = 0;
                this.action_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public boolean hasStakeWithdraw() {
            return this.actionCase_ == 42;
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public Staking.Reclaim getStakeWithdraw() {
            if (this.actionCase_ == 42) {
                return (Staking.Reclaim) this.action_;
            }
            return Staking.Reclaim.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeWithdraw(Staking.Reclaim value) {
            value.getClass();
            this.action_ = value;
            this.actionCase_ = 42;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakeWithdraw(Staking.Reclaim value) {
            value.getClass();
            if (this.actionCase_ == 42 && this.action_ != Staking.Reclaim.getDefaultInstance()) {
                this.action_ = Staking.Reclaim.newBuilder((Staking.Reclaim) this.action_).mergeFrom((Staking.Reclaim.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
            this.actionCase_ = 42;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeWithdraw() {
            if (this.actionCase_ == 42) {
                this.actionCase_ = 0;
                this.action_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public boolean hasStakeAddDeposit() {
            return this.actionCase_ == 43;
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public Staking.AddDeposit getStakeAddDeposit() {
            if (this.actionCase_ == 43) {
                return (Staking.AddDeposit) this.action_;
            }
            return Staking.AddDeposit.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeAddDeposit(Staking.AddDeposit value) {
            value.getClass();
            this.action_ = value;
            this.actionCase_ = 43;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakeAddDeposit(Staking.AddDeposit value) {
            value.getClass();
            if (this.actionCase_ == 43 && this.action_ != Staking.AddDeposit.getDefaultInstance()) {
                this.action_ = Staking.AddDeposit.newBuilder((Staking.AddDeposit) this.action_).mergeFrom((Staking.AddDeposit.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
            this.actionCase_ = 43;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeAddDeposit() {
            if (this.actionCase_ == 43) {
                this.actionCase_ = 0;
                this.action_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public boolean hasStakeRestake() {
            return this.actionCase_ == 44;
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public Staking.Restake getStakeRestake() {
            if (this.actionCase_ == 44) {
                return (Staking.Restake) this.action_;
            }
            return Staking.Restake.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeRestake(Staking.Restake value) {
            value.getClass();
            this.action_ = value;
            this.actionCase_ = 44;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakeRestake(Staking.Restake value) {
            value.getClass();
            if (this.actionCase_ == 44 && this.action_ != Staking.Restake.getDefaultInstance()) {
                this.action_ = Staking.Restake.newBuilder((Staking.Restake) this.action_).mergeFrom((Staking.Restake.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
            this.actionCase_ = 44;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeRestake() {
            if (this.actionCase_ == 44) {
                this.actionCase_ = 0;
                this.action_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public boolean hasStakeChangeCandidate() {
            return this.actionCase_ == 45;
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public Staking.ChangeCandidate getStakeChangeCandidate() {
            if (this.actionCase_ == 45) {
                return (Staking.ChangeCandidate) this.action_;
            }
            return Staking.ChangeCandidate.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeChangeCandidate(Staking.ChangeCandidate value) {
            value.getClass();
            this.action_ = value;
            this.actionCase_ = 45;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakeChangeCandidate(Staking.ChangeCandidate value) {
            value.getClass();
            if (this.actionCase_ == 45 && this.action_ != Staking.ChangeCandidate.getDefaultInstance()) {
                this.action_ = Staking.ChangeCandidate.newBuilder((Staking.ChangeCandidate) this.action_).mergeFrom((Staking.ChangeCandidate.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
            this.actionCase_ = 45;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeChangeCandidate() {
            if (this.actionCase_ == 45) {
                this.actionCase_ = 0;
                this.action_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public boolean hasStakeTransferOwnership() {
            return this.actionCase_ == 46;
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public Staking.TransferOwnership getStakeTransferOwnership() {
            if (this.actionCase_ == 46) {
                return (Staking.TransferOwnership) this.action_;
            }
            return Staking.TransferOwnership.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeTransferOwnership(Staking.TransferOwnership value) {
            value.getClass();
            this.action_ = value;
            this.actionCase_ = 46;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakeTransferOwnership(Staking.TransferOwnership value) {
            value.getClass();
            if (this.actionCase_ == 46 && this.action_ != Staking.TransferOwnership.getDefaultInstance()) {
                this.action_ = Staking.TransferOwnership.newBuilder((Staking.TransferOwnership) this.action_).mergeFrom((Staking.TransferOwnership.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
            this.actionCase_ = 46;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeTransferOwnership() {
            if (this.actionCase_ == 46) {
                this.actionCase_ = 0;
                this.action_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public boolean hasCandidateRegister() {
            return this.actionCase_ == 47;
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public Staking.CandidateRegister getCandidateRegister() {
            if (this.actionCase_ == 47) {
                return (Staking.CandidateRegister) this.action_;
            }
            return Staking.CandidateRegister.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCandidateRegister(Staking.CandidateRegister value) {
            value.getClass();
            this.action_ = value;
            this.actionCase_ = 47;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeCandidateRegister(Staking.CandidateRegister value) {
            value.getClass();
            if (this.actionCase_ == 47 && this.action_ != Staking.CandidateRegister.getDefaultInstance()) {
                this.action_ = Staking.CandidateRegister.newBuilder((Staking.CandidateRegister) this.action_).mergeFrom((Staking.CandidateRegister.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
            this.actionCase_ = 47;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCandidateRegister() {
            if (this.actionCase_ == 47) {
                this.actionCase_ = 0;
                this.action_ = null;
            }
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public boolean hasCandidateUpdate() {
            return this.actionCase_ == 48;
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
        public Staking.CandidateBasicInfo getCandidateUpdate() {
            if (this.actionCase_ == 48) {
                return (Staking.CandidateBasicInfo) this.action_;
            }
            return Staking.CandidateBasicInfo.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCandidateUpdate(Staking.CandidateBasicInfo value) {
            value.getClass();
            this.action_ = value;
            this.actionCase_ = 48;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeCandidateUpdate(Staking.CandidateBasicInfo value) {
            value.getClass();
            if (this.actionCase_ == 48 && this.action_ != Staking.CandidateBasicInfo.getDefaultInstance()) {
                this.action_ = Staking.CandidateBasicInfo.newBuilder((Staking.CandidateBasicInfo) this.action_).mergeFrom((Staking.CandidateBasicInfo.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
            this.actionCase_ = 48;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCandidateUpdate() {
            if (this.actionCase_ == 48) {
                this.actionCase_ = 0;
                this.action_ = null;
            }
        }

        public static ActionCore parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (ActionCore) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ActionCore parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ActionCore) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ActionCore parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (ActionCore) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ActionCore parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ActionCore) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ActionCore parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (ActionCore) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ActionCore parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ActionCore) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ActionCore parseFrom(InputStream input) throws IOException {
            return (ActionCore) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static ActionCore parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ActionCore) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static ActionCore parseDelimitedFrom(InputStream input) throws IOException {
            return (ActionCore) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static ActionCore parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ActionCore) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static ActionCore parseFrom(CodedInputStream input) throws IOException {
            return (ActionCore) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static ActionCore parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ActionCore) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(ActionCore prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<ActionCore, Builder> implements ActionCoreOrBuilder {
            /* synthetic */ Builder(C77491 c77491) {
                this();
            }

            private Builder() {
                super(ActionCore.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public ActionCase getActionCase() {
                return ((ActionCore) this.instance).getActionCase();
            }

            public Builder clearAction() {
                copyOnWrite();
                ((ActionCore) this.instance).clearAction();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public int getVersion() {
                return ((ActionCore) this.instance).getVersion();
            }

            public Builder setVersion(int value) {
                copyOnWrite();
                ((ActionCore) this.instance).setVersion(value);
                return this;
            }

            public Builder clearVersion() {
                copyOnWrite();
                ((ActionCore) this.instance).clearVersion();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public long getNonce() {
                return ((ActionCore) this.instance).getNonce();
            }

            public Builder setNonce(long value) {
                copyOnWrite();
                ((ActionCore) this.instance).setNonce(value);
                return this;
            }

            public Builder clearNonce() {
                copyOnWrite();
                ((ActionCore) this.instance).clearNonce();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public long getGasLimit() {
                return ((ActionCore) this.instance).getGasLimit();
            }

            public Builder setGasLimit(long value) {
                copyOnWrite();
                ((ActionCore) this.instance).setGasLimit(value);
                return this;
            }

            public Builder clearGasLimit() {
                copyOnWrite();
                ((ActionCore) this.instance).clearGasLimit();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public String getGasPrice() {
                return ((ActionCore) this.instance).getGasPrice();
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public ByteString getGasPriceBytes() {
                return ((ActionCore) this.instance).getGasPriceBytes();
            }

            public Builder setGasPrice(String value) {
                copyOnWrite();
                ((ActionCore) this.instance).setGasPrice(value);
                return this;
            }

            public Builder clearGasPrice() {
                copyOnWrite();
                ((ActionCore) this.instance).clearGasPrice();
                return this;
            }

            public Builder setGasPriceBytes(ByteString value) {
                copyOnWrite();
                ((ActionCore) this.instance).setGasPriceBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public boolean hasTransfer() {
                return ((ActionCore) this.instance).hasTransfer();
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public Transfer getTransfer() {
                return ((ActionCore) this.instance).getTransfer();
            }

            public Builder setTransfer(Transfer value) {
                copyOnWrite();
                ((ActionCore) this.instance).setTransfer(value);
                return this;
            }

            public Builder setTransfer(Transfer.Builder builderForValue) {
                copyOnWrite();
                ((ActionCore) this.instance).setTransfer(builderForValue.build());
                return this;
            }

            public Builder mergeTransfer(Transfer value) {
                copyOnWrite();
                ((ActionCore) this.instance).mergeTransfer(value);
                return this;
            }

            public Builder clearTransfer() {
                copyOnWrite();
                ((ActionCore) this.instance).clearTransfer();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public boolean hasExecution() {
                return ((ActionCore) this.instance).hasExecution();
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public ContractCall getExecution() {
                return ((ActionCore) this.instance).getExecution();
            }

            public Builder setExecution(ContractCall value) {
                copyOnWrite();
                ((ActionCore) this.instance).setExecution(value);
                return this;
            }

            public Builder setExecution(ContractCall.Builder builderForValue) {
                copyOnWrite();
                ((ActionCore) this.instance).setExecution(builderForValue.build());
                return this;
            }

            public Builder mergeExecution(ContractCall value) {
                copyOnWrite();
                ((ActionCore) this.instance).mergeExecution(value);
                return this;
            }

            public Builder clearExecution() {
                copyOnWrite();
                ((ActionCore) this.instance).clearExecution();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public boolean hasStakeCreate() {
                return ((ActionCore) this.instance).hasStakeCreate();
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public Staking.Create getStakeCreate() {
                return ((ActionCore) this.instance).getStakeCreate();
            }

            public Builder setStakeCreate(Staking.Create value) {
                copyOnWrite();
                ((ActionCore) this.instance).setStakeCreate(value);
                return this;
            }

            public Builder setStakeCreate(Staking.Create.Builder builderForValue) {
                copyOnWrite();
                ((ActionCore) this.instance).setStakeCreate(builderForValue.build());
                return this;
            }

            public Builder mergeStakeCreate(Staking.Create value) {
                copyOnWrite();
                ((ActionCore) this.instance).mergeStakeCreate(value);
                return this;
            }

            public Builder clearStakeCreate() {
                copyOnWrite();
                ((ActionCore) this.instance).clearStakeCreate();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public boolean hasStakeUnstake() {
                return ((ActionCore) this.instance).hasStakeUnstake();
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public Staking.Reclaim getStakeUnstake() {
                return ((ActionCore) this.instance).getStakeUnstake();
            }

            public Builder setStakeUnstake(Staking.Reclaim value) {
                copyOnWrite();
                ((ActionCore) this.instance).setStakeUnstake(value);
                return this;
            }

            public Builder setStakeUnstake(Staking.Reclaim.Builder builderForValue) {
                copyOnWrite();
                ((ActionCore) this.instance).setStakeUnstake(builderForValue.build());
                return this;
            }

            public Builder mergeStakeUnstake(Staking.Reclaim value) {
                copyOnWrite();
                ((ActionCore) this.instance).mergeStakeUnstake(value);
                return this;
            }

            public Builder clearStakeUnstake() {
                copyOnWrite();
                ((ActionCore) this.instance).clearStakeUnstake();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public boolean hasStakeWithdraw() {
                return ((ActionCore) this.instance).hasStakeWithdraw();
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public Staking.Reclaim getStakeWithdraw() {
                return ((ActionCore) this.instance).getStakeWithdraw();
            }

            public Builder setStakeWithdraw(Staking.Reclaim value) {
                copyOnWrite();
                ((ActionCore) this.instance).setStakeWithdraw(value);
                return this;
            }

            public Builder setStakeWithdraw(Staking.Reclaim.Builder builderForValue) {
                copyOnWrite();
                ((ActionCore) this.instance).setStakeWithdraw(builderForValue.build());
                return this;
            }

            public Builder mergeStakeWithdraw(Staking.Reclaim value) {
                copyOnWrite();
                ((ActionCore) this.instance).mergeStakeWithdraw(value);
                return this;
            }

            public Builder clearStakeWithdraw() {
                copyOnWrite();
                ((ActionCore) this.instance).clearStakeWithdraw();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public boolean hasStakeAddDeposit() {
                return ((ActionCore) this.instance).hasStakeAddDeposit();
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public Staking.AddDeposit getStakeAddDeposit() {
                return ((ActionCore) this.instance).getStakeAddDeposit();
            }

            public Builder setStakeAddDeposit(Staking.AddDeposit value) {
                copyOnWrite();
                ((ActionCore) this.instance).setStakeAddDeposit(value);
                return this;
            }

            public Builder setStakeAddDeposit(Staking.AddDeposit.Builder builderForValue) {
                copyOnWrite();
                ((ActionCore) this.instance).setStakeAddDeposit(builderForValue.build());
                return this;
            }

            public Builder mergeStakeAddDeposit(Staking.AddDeposit value) {
                copyOnWrite();
                ((ActionCore) this.instance).mergeStakeAddDeposit(value);
                return this;
            }

            public Builder clearStakeAddDeposit() {
                copyOnWrite();
                ((ActionCore) this.instance).clearStakeAddDeposit();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public boolean hasStakeRestake() {
                return ((ActionCore) this.instance).hasStakeRestake();
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public Staking.Restake getStakeRestake() {
                return ((ActionCore) this.instance).getStakeRestake();
            }

            public Builder setStakeRestake(Staking.Restake value) {
                copyOnWrite();
                ((ActionCore) this.instance).setStakeRestake(value);
                return this;
            }

            public Builder setStakeRestake(Staking.Restake.Builder builderForValue) {
                copyOnWrite();
                ((ActionCore) this.instance).setStakeRestake(builderForValue.build());
                return this;
            }

            public Builder mergeStakeRestake(Staking.Restake value) {
                copyOnWrite();
                ((ActionCore) this.instance).mergeStakeRestake(value);
                return this;
            }

            public Builder clearStakeRestake() {
                copyOnWrite();
                ((ActionCore) this.instance).clearStakeRestake();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public boolean hasStakeChangeCandidate() {
                return ((ActionCore) this.instance).hasStakeChangeCandidate();
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public Staking.ChangeCandidate getStakeChangeCandidate() {
                return ((ActionCore) this.instance).getStakeChangeCandidate();
            }

            public Builder setStakeChangeCandidate(Staking.ChangeCandidate value) {
                copyOnWrite();
                ((ActionCore) this.instance).setStakeChangeCandidate(value);
                return this;
            }

            public Builder setStakeChangeCandidate(Staking.ChangeCandidate.Builder builderForValue) {
                copyOnWrite();
                ((ActionCore) this.instance).setStakeChangeCandidate(builderForValue.build());
                return this;
            }

            public Builder mergeStakeChangeCandidate(Staking.ChangeCandidate value) {
                copyOnWrite();
                ((ActionCore) this.instance).mergeStakeChangeCandidate(value);
                return this;
            }

            public Builder clearStakeChangeCandidate() {
                copyOnWrite();
                ((ActionCore) this.instance).clearStakeChangeCandidate();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public boolean hasStakeTransferOwnership() {
                return ((ActionCore) this.instance).hasStakeTransferOwnership();
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public Staking.TransferOwnership getStakeTransferOwnership() {
                return ((ActionCore) this.instance).getStakeTransferOwnership();
            }

            public Builder setStakeTransferOwnership(Staking.TransferOwnership value) {
                copyOnWrite();
                ((ActionCore) this.instance).setStakeTransferOwnership(value);
                return this;
            }

            public Builder setStakeTransferOwnership(Staking.TransferOwnership.Builder builderForValue) {
                copyOnWrite();
                ((ActionCore) this.instance).setStakeTransferOwnership(builderForValue.build());
                return this;
            }

            public Builder mergeStakeTransferOwnership(Staking.TransferOwnership value) {
                copyOnWrite();
                ((ActionCore) this.instance).mergeStakeTransferOwnership(value);
                return this;
            }

            public Builder clearStakeTransferOwnership() {
                copyOnWrite();
                ((ActionCore) this.instance).clearStakeTransferOwnership();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public boolean hasCandidateRegister() {
                return ((ActionCore) this.instance).hasCandidateRegister();
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public Staking.CandidateRegister getCandidateRegister() {
                return ((ActionCore) this.instance).getCandidateRegister();
            }

            public Builder setCandidateRegister(Staking.CandidateRegister value) {
                copyOnWrite();
                ((ActionCore) this.instance).setCandidateRegister(value);
                return this;
            }

            public Builder setCandidateRegister(Staking.CandidateRegister.Builder builderForValue) {
                copyOnWrite();
                ((ActionCore) this.instance).setCandidateRegister(builderForValue.build());
                return this;
            }

            public Builder mergeCandidateRegister(Staking.CandidateRegister value) {
                copyOnWrite();
                ((ActionCore) this.instance).mergeCandidateRegister(value);
                return this;
            }

            public Builder clearCandidateRegister() {
                copyOnWrite();
                ((ActionCore) this.instance).clearCandidateRegister();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public boolean hasCandidateUpdate() {
                return ((ActionCore) this.instance).hasCandidateUpdate();
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionCoreOrBuilder
            public Staking.CandidateBasicInfo getCandidateUpdate() {
                return ((ActionCore) this.instance).getCandidateUpdate();
            }

            public Builder setCandidateUpdate(Staking.CandidateBasicInfo value) {
                copyOnWrite();
                ((ActionCore) this.instance).setCandidateUpdate(value);
                return this;
            }

            public Builder setCandidateUpdate(Staking.CandidateBasicInfo.Builder builderForValue) {
                copyOnWrite();
                ((ActionCore) this.instance).setCandidateUpdate(builderForValue.build());
                return this;
            }

            public Builder mergeCandidateUpdate(Staking.CandidateBasicInfo value) {
                copyOnWrite();
                ((ActionCore) this.instance).mergeCandidateUpdate(value);
                return this;
            }

            public Builder clearCandidateUpdate() {
                copyOnWrite();
                ((ActionCore) this.instance).clearCandidateUpdate();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77491.f2142xa1df5c61[method.ordinal()]) {
                case 1:
                    return new ActionCore();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u000f\u0001\u0000\u00010\u000f\u0000\u0000\u0000\u0001\u000b\u0002\u0003\u0003\u0003\u0004Ȉ\n<\u0000\f<\u0000(<\u0000)<\u0000*<\u0000+<\u0000,<\u0000-<\u0000.<\u0000/<\u00000<\u0000", new Object[]{"action_", "actionCase_", "version_", "nonce_", "gasLimit_", "gasPrice_", Transfer.class, ContractCall.class, Staking.Create.class, Staking.Reclaim.class, Staking.Reclaim.class, Staking.AddDeposit.class, Staking.Restake.class, Staking.ChangeCandidate.class, Staking.TransferOwnership.class, Staking.CandidateRegister.class, Staking.CandidateBasicInfo.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<ActionCore> parser = PARSER;
                    if (parser == null) {
                        synchronized (ActionCore.class) {
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
            ActionCore actionCore = new ActionCore();
            DEFAULT_INSTANCE = actionCore;
            GeneratedMessageLite.registerDefaultInstance(ActionCore.class, actionCore);
        }

        public static ActionCore getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<ActionCore> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class Action extends GeneratedMessageLite<Action, Builder> implements ActionOrBuilder {
        public static final int CORE_FIELD_NUMBER = 1;
        private static final Action DEFAULT_INSTANCE;
        private static volatile Parser<Action> PARSER = null;
        public static final int SENDERPUBKEY_FIELD_NUMBER = 2;
        public static final int SIGNATURE_FIELD_NUMBER = 3;
        private ActionCore core_;
        private ByteString senderPubKey_;
        private ByteString signature_;

        private Action() {
            ByteString byteString = ByteString.EMPTY;
            this.senderPubKey_ = byteString;
            this.signature_ = byteString;
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionOrBuilder
        public boolean hasCore() {
            return this.core_ != null;
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionOrBuilder
        public ActionCore getCore() {
            ActionCore actionCore = this.core_;
            return actionCore == null ? ActionCore.getDefaultInstance() : actionCore;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCore(ActionCore value) {
            value.getClass();
            this.core_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeCore(ActionCore value) {
            value.getClass();
            ActionCore actionCore = this.core_;
            if (actionCore != null && actionCore != ActionCore.getDefaultInstance()) {
                this.core_ = ActionCore.newBuilder(this.core_).mergeFrom((ActionCore.Builder) value).buildPartial();
            } else {
                this.core_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCore() {
            this.core_ = null;
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionOrBuilder
        public ByteString getSenderPubKey() {
            return this.senderPubKey_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSenderPubKey(ByteString value) {
            value.getClass();
            this.senderPubKey_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSenderPubKey() {
            this.senderPubKey_ = getDefaultInstance().getSenderPubKey();
        }

        @Override // wallet.core.jni.proto.IoTeX.ActionOrBuilder
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

        public static Action parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Action parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Action parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Action parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Action parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Action parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Action parseFrom(InputStream input) throws IOException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Action parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Action parseDelimitedFrom(InputStream input) throws IOException {
            return (Action) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Action parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Action) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Action parseFrom(CodedInputStream input) throws IOException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Action parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Action prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Action, Builder> implements ActionOrBuilder {
            /* synthetic */ Builder(C77491 c77491) {
                this();
            }

            private Builder() {
                super(Action.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionOrBuilder
            public boolean hasCore() {
                return ((Action) this.instance).hasCore();
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionOrBuilder
            public ActionCore getCore() {
                return ((Action) this.instance).getCore();
            }

            public Builder setCore(ActionCore value) {
                copyOnWrite();
                ((Action) this.instance).setCore(value);
                return this;
            }

            public Builder setCore(ActionCore.Builder builderForValue) {
                copyOnWrite();
                ((Action) this.instance).setCore(builderForValue.build());
                return this;
            }

            public Builder mergeCore(ActionCore value) {
                copyOnWrite();
                ((Action) this.instance).mergeCore(value);
                return this;
            }

            public Builder clearCore() {
                copyOnWrite();
                ((Action) this.instance).clearCore();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionOrBuilder
            public ByteString getSenderPubKey() {
                return ((Action) this.instance).getSenderPubKey();
            }

            public Builder setSenderPubKey(ByteString value) {
                copyOnWrite();
                ((Action) this.instance).setSenderPubKey(value);
                return this;
            }

            public Builder clearSenderPubKey() {
                copyOnWrite();
                ((Action) this.instance).clearSenderPubKey();
                return this;
            }

            @Override // wallet.core.jni.proto.IoTeX.ActionOrBuilder
            public ByteString getSignature() {
                return ((Action) this.instance).getSignature();
            }

            public Builder setSignature(ByteString value) {
                copyOnWrite();
                ((Action) this.instance).setSignature(value);
                return this;
            }

            public Builder clearSignature() {
                copyOnWrite();
                ((Action) this.instance).clearSignature();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77491.f2142xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Action();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\n\u0003\n", new Object[]{"core_", "senderPubKey_", "signature_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Action> parser = PARSER;
                    if (parser == null) {
                        synchronized (Action.class) {
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
            Action action = new Action();
            DEFAULT_INSTANCE = action;
            GeneratedMessageLite.registerDefaultInstance(Action.class, action);
        }

        public static Action getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Action> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }
}
