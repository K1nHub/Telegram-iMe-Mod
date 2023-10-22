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
public final class Polkadot {

    /* loaded from: classes7.dex */
    public interface BalanceOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Balance.MessageOneofCase getMessageOneofCase();

        Balance.Transfer getTransfer();

        boolean hasTransfer();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface EraOrBuilder extends MessageLiteOrBuilder {
        long getBlockNumber();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getPeriod();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        Balance getBalanceCall();

        ByteString getBlockHash();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Era getEra();

        ByteString getGenesisHash();

        SigningInput.MessageOneofCase getMessageOneofCase();

        int getNetwork();

        long getNonce();

        ByteString getPrivateKey();

        int getSpecVersion();

        Staking getStakingCall();

        ByteString getTip();

        int getTransactionVersion();

        boolean hasBalanceCall();

        boolean hasEra();

        boolean hasStakingCall();

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
    public interface StakingOrBuilder extends MessageLiteOrBuilder {
        Staking.Bond getBond();

        Staking.BondAndNominate getBondAndNominate();

        Staking.BondExtra getBondExtra();

        Staking.Chill getChill();

        Staking.ChillAndUnbond getChillAndUnbond();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Staking.MessageOneofCase getMessageOneofCase();

        Staking.Nominate getNominate();

        Staking.Unbond getUnbond();

        Staking.WithdrawUnbonded getWithdrawUnbonded();

        boolean hasBond();

        boolean hasBondAndNominate();

        boolean hasBondExtra();

        boolean hasChill();

        boolean hasChillAndUnbond();

        boolean hasNominate();

        boolean hasUnbond();

        boolean hasWithdrawUnbonded();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Polkadot() {
    }

    /* loaded from: classes7.dex */
    public enum RewardDestination implements Internal.EnumLite {
        STAKED(0),
        STASH(1),
        CONTROLLER(2),
        UNRECOGNIZED(-1);
        
        public static final int CONTROLLER_VALUE = 2;
        public static final int STAKED_VALUE = 0;
        public static final int STASH_VALUE = 1;
        private static final Internal.EnumLiteMap<RewardDestination> internalValueMap = new Internal.EnumLiteMap<RewardDestination>() { // from class: wallet.core.jni.proto.Polkadot.RewardDestination.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public RewardDestination findValueByNumber(int number) {
                return RewardDestination.forNumber(number);
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
        public static RewardDestination valueOf(int value) {
            return forNumber(value);
        }

        public static RewardDestination forNumber(int value) {
            if (value != 0) {
                if (value != 1) {
                    if (value != 2) {
                        return null;
                    }
                    return CONTROLLER;
                }
                return STASH;
            }
            return STAKED;
        }

        public static Internal.EnumLiteMap<RewardDestination> internalGetValueMap() {
            return internalValueMap;
        }

        public static Internal.EnumVerifier internalGetVerifier() {
            return RewardDestinationVerifier.INSTANCE;
        }

        /* loaded from: classes7.dex */
        private static final class RewardDestinationVerifier implements Internal.EnumVerifier {
            static final Internal.EnumVerifier INSTANCE = new RewardDestinationVerifier();

            private RewardDestinationVerifier() {
            }

            @Override // com.google.protobuf.Internal.EnumVerifier
            public boolean isInRange(int number) {
                return RewardDestination.forNumber(number) != null;
            }
        }

        RewardDestination(int value) {
            this.value = value;
        }
    }

    /* loaded from: classes7.dex */
    public static final class Era extends GeneratedMessageLite<Era, Builder> implements EraOrBuilder {
        public static final int BLOCK_NUMBER_FIELD_NUMBER = 1;
        private static final Era DEFAULT_INSTANCE;
        private static volatile Parser<Era> PARSER = null;
        public static final int PERIOD_FIELD_NUMBER = 2;
        private long blockNumber_;
        private long period_;

        private Era() {
        }

        @Override // wallet.core.jni.proto.Polkadot.EraOrBuilder
        public long getBlockNumber() {
            return this.blockNumber_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBlockNumber(long value) {
            this.blockNumber_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBlockNumber() {
            this.blockNumber_ = 0L;
        }

        @Override // wallet.core.jni.proto.Polkadot.EraOrBuilder
        public long getPeriod() {
            return this.period_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPeriod(long value) {
            this.period_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPeriod() {
            this.period_ = 0L;
        }

        public static Era parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Era) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Era parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Era) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Era parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Era) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Era parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Era) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Era parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Era) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Era parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Era) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Era parseFrom(InputStream input) throws IOException {
            return (Era) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Era parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Era) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Era parseDelimitedFrom(InputStream input) throws IOException {
            return (Era) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Era parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Era) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Era parseFrom(CodedInputStream input) throws IOException {
            return (Era) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Era parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Era) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Era prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Era, Builder> implements EraOrBuilder {
            /* synthetic */ Builder(C76851 c76851) {
                this();
            }

            private Builder() {
                super(Era.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Polkadot.EraOrBuilder
            public long getBlockNumber() {
                return ((Era) this.instance).getBlockNumber();
            }

            public Builder setBlockNumber(long value) {
                copyOnWrite();
                ((Era) this.instance).setBlockNumber(value);
                return this;
            }

            public Builder clearBlockNumber() {
                copyOnWrite();
                ((Era) this.instance).clearBlockNumber();
                return this;
            }

            @Override // wallet.core.jni.proto.Polkadot.EraOrBuilder
            public long getPeriod() {
                return ((Era) this.instance).getPeriod();
            }

            public Builder setPeriod(long value) {
                copyOnWrite();
                ((Era) this.instance).setPeriod(value);
                return this;
            }

            public Builder clearPeriod() {
                copyOnWrite();
                ((Era) this.instance).clearPeriod();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C76851.f2141xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Era();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0003\u0002\u0003", new Object[]{"blockNumber_", "period_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Era> parser = PARSER;
                    if (parser == null) {
                        synchronized (Era.class) {
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
            Era era = new Era();
            DEFAULT_INSTANCE = era;
            GeneratedMessageLite.registerDefaultInstance(Era.class, era);
        }

        public static Era getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Era> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* renamed from: wallet.core.jni.proto.Polkadot$1 */
    /* loaded from: classes7.dex */
    static /* synthetic */ class C76851 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f2141xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f2141xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2141xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2141xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2141xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2141xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2141xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2141xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public static final class Balance extends GeneratedMessageLite<Balance, Builder> implements BalanceOrBuilder {
        private static final Balance DEFAULT_INSTANCE;
        private static volatile Parser<Balance> PARSER = null;
        public static final int TRANSFER_FIELD_NUMBER = 1;
        private int messageOneofCase_ = 0;
        private Object messageOneof_;

        /* loaded from: classes7.dex */
        public interface TransferOrBuilder extends MessageLiteOrBuilder {
            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getToAddress();

            ByteString getToAddressBytes();

            ByteString getValue();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        private Balance() {
        }

        /* loaded from: classes7.dex */
        public static final class Transfer extends GeneratedMessageLite<Transfer, Builder> implements TransferOrBuilder {
            private static final Transfer DEFAULT_INSTANCE;
            private static volatile Parser<Transfer> PARSER = null;
            public static final int TO_ADDRESS_FIELD_NUMBER = 1;
            public static final int VALUE_FIELD_NUMBER = 2;
            private String toAddress_ = "";
            private ByteString value_ = ByteString.EMPTY;

            private Transfer() {
            }

            @Override // wallet.core.jni.proto.Polkadot.Balance.TransferOrBuilder
            public String getToAddress() {
                return this.toAddress_;
            }

            @Override // wallet.core.jni.proto.Polkadot.Balance.TransferOrBuilder
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

            @Override // wallet.core.jni.proto.Polkadot.Balance.TransferOrBuilder
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
                /* synthetic */ Builder(C76851 c76851) {
                    this();
                }

                private Builder() {
                    super(Transfer.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Polkadot.Balance.TransferOrBuilder
                public String getToAddress() {
                    return ((Transfer) this.instance).getToAddress();
                }

                @Override // wallet.core.jni.proto.Polkadot.Balance.TransferOrBuilder
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

                @Override // wallet.core.jni.proto.Polkadot.Balance.TransferOrBuilder
                public ByteString getValue() {
                    return ((Transfer) this.instance).getValue();
                }

                public Builder setValue(ByteString value) {
                    copyOnWrite();
                    ((Transfer) this.instance).setValue(value);
                    return this;
                }

                public Builder clearValue() {
                    copyOnWrite();
                    ((Transfer) this.instance).clearValue();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C76851.f2141xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new Transfer();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\n", new Object[]{"toAddress_", "value_"});
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

        /* loaded from: classes7.dex */
        public enum MessageOneofCase {
            TRANSFER(1),
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
                    if (value != 1) {
                        return null;
                    }
                    return TRANSFER;
                }
                return MESSAGEONEOF_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Polkadot.BalanceOrBuilder
        public MessageOneofCase getMessageOneofCase() {
            return MessageOneofCase.forNumber(this.messageOneofCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMessageOneof() {
            this.messageOneofCase_ = 0;
            this.messageOneof_ = null;
        }

        @Override // wallet.core.jni.proto.Polkadot.BalanceOrBuilder
        public boolean hasTransfer() {
            return this.messageOneofCase_ == 1;
        }

        @Override // wallet.core.jni.proto.Polkadot.BalanceOrBuilder
        public Transfer getTransfer() {
            if (this.messageOneofCase_ == 1) {
                return (Transfer) this.messageOneof_;
            }
            return Transfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransfer(Transfer value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransfer(Transfer value) {
            value.getClass();
            if (this.messageOneofCase_ == 1 && this.messageOneof_ != Transfer.getDefaultInstance()) {
                this.messageOneof_ = Transfer.newBuilder((Transfer) this.messageOneof_).mergeFrom((Transfer.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransfer() {
            if (this.messageOneofCase_ == 1) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        public static Balance parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Balance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Balance parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Balance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Balance parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Balance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Balance parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Balance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Balance parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Balance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Balance parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Balance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Balance parseFrom(InputStream input) throws IOException {
            return (Balance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Balance parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Balance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Balance parseDelimitedFrom(InputStream input) throws IOException {
            return (Balance) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Balance parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Balance) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Balance parseFrom(CodedInputStream input) throws IOException {
            return (Balance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Balance parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Balance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Balance prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Balance, Builder> implements BalanceOrBuilder {
            /* synthetic */ Builder(C76851 c76851) {
                this();
            }

            private Builder() {
                super(Balance.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Polkadot.BalanceOrBuilder
            public MessageOneofCase getMessageOneofCase() {
                return ((Balance) this.instance).getMessageOneofCase();
            }

            public Builder clearMessageOneof() {
                copyOnWrite();
                ((Balance) this.instance).clearMessageOneof();
                return this;
            }

            @Override // wallet.core.jni.proto.Polkadot.BalanceOrBuilder
            public boolean hasTransfer() {
                return ((Balance) this.instance).hasTransfer();
            }

            @Override // wallet.core.jni.proto.Polkadot.BalanceOrBuilder
            public Transfer getTransfer() {
                return ((Balance) this.instance).getTransfer();
            }

            public Builder setTransfer(Transfer value) {
                copyOnWrite();
                ((Balance) this.instance).setTransfer(value);
                return this;
            }

            public Builder setTransfer(Transfer.Builder builderForValue) {
                copyOnWrite();
                ((Balance) this.instance).setTransfer(builderForValue.build());
                return this;
            }

            public Builder mergeTransfer(Transfer value) {
                copyOnWrite();
                ((Balance) this.instance).mergeTransfer(value);
                return this;
            }

            public Builder clearTransfer() {
                copyOnWrite();
                ((Balance) this.instance).clearTransfer();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C76851.f2141xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Balance();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001<\u0000", new Object[]{"messageOneof_", "messageOneofCase_", Transfer.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Balance> parser = PARSER;
                    if (parser == null) {
                        synchronized (Balance.class) {
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
            Balance balance = new Balance();
            DEFAULT_INSTANCE = balance;
            GeneratedMessageLite.registerDefaultInstance(Balance.class, balance);
        }

        public static Balance getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Balance> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class Staking extends GeneratedMessageLite<Staking, Builder> implements StakingOrBuilder {
        public static final int BOND_AND_NOMINATE_FIELD_NUMBER = 2;
        public static final int BOND_EXTRA_FIELD_NUMBER = 3;
        public static final int BOND_FIELD_NUMBER = 1;
        public static final int CHILL_AND_UNBOND_FIELD_NUMBER = 8;
        public static final int CHILL_FIELD_NUMBER = 7;
        private static final Staking DEFAULT_INSTANCE;
        public static final int NOMINATE_FIELD_NUMBER = 6;
        private static volatile Parser<Staking> PARSER = null;
        public static final int UNBOND_FIELD_NUMBER = 4;
        public static final int WITHDRAW_UNBONDED_FIELD_NUMBER = 5;
        private int messageOneofCase_ = 0;
        private Object messageOneof_;

        /* loaded from: classes7.dex */
        public interface BondAndNominateOrBuilder extends MessageLiteOrBuilder {
            String getController();

            ByteString getControllerBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getNominators(int index);

            ByteString getNominatorsBytes(int index);

            int getNominatorsCount();

            List<String> getNominatorsList();

            RewardDestination getRewardDestination();

            int getRewardDestinationValue();

            ByteString getValue();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes7.dex */
        public interface BondExtraOrBuilder extends MessageLiteOrBuilder {
            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            ByteString getValue();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes7.dex */
        public interface BondOrBuilder extends MessageLiteOrBuilder {
            String getController();

            ByteString getControllerBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            RewardDestination getRewardDestination();

            int getRewardDestinationValue();

            ByteString getValue();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes7.dex */
        public interface ChillAndUnbondOrBuilder extends MessageLiteOrBuilder {
            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            ByteString getValue();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes7.dex */
        public interface ChillOrBuilder extends MessageLiteOrBuilder {
            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes7.dex */
        public interface NominateOrBuilder extends MessageLiteOrBuilder {
            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getNominators(int index);

            ByteString getNominatorsBytes(int index);

            int getNominatorsCount();

            List<String> getNominatorsList();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes7.dex */
        public interface UnbondOrBuilder extends MessageLiteOrBuilder {
            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            ByteString getValue();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes7.dex */
        public interface WithdrawUnbondedOrBuilder extends MessageLiteOrBuilder {
            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            int getSlashingSpans();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        private Staking() {
        }

        /* loaded from: classes7.dex */
        public static final class Bond extends GeneratedMessageLite<Bond, Builder> implements BondOrBuilder {
            public static final int CONTROLLER_FIELD_NUMBER = 1;
            private static final Bond DEFAULT_INSTANCE;
            private static volatile Parser<Bond> PARSER = null;
            public static final int REWARD_DESTINATION_FIELD_NUMBER = 3;
            public static final int VALUE_FIELD_NUMBER = 2;
            private int rewardDestination_;
            private String controller_ = "";
            private ByteString value_ = ByteString.EMPTY;

            private Bond() {
            }

            @Override // wallet.core.jni.proto.Polkadot.Staking.BondOrBuilder
            public String getController() {
                return this.controller_;
            }

            @Override // wallet.core.jni.proto.Polkadot.Staking.BondOrBuilder
            public ByteString getControllerBytes() {
                return ByteString.copyFromUtf8(this.controller_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setController(String value) {
                value.getClass();
                this.controller_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearController() {
                this.controller_ = getDefaultInstance().getController();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setControllerBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.controller_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Polkadot.Staking.BondOrBuilder
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

            @Override // wallet.core.jni.proto.Polkadot.Staking.BondOrBuilder
            public int getRewardDestinationValue() {
                return this.rewardDestination_;
            }

            @Override // wallet.core.jni.proto.Polkadot.Staking.BondOrBuilder
            public RewardDestination getRewardDestination() {
                RewardDestination forNumber = RewardDestination.forNumber(this.rewardDestination_);
                return forNumber == null ? RewardDestination.UNRECOGNIZED : forNumber;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setRewardDestinationValue(int value) {
                this.rewardDestination_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setRewardDestination(RewardDestination value) {
                this.rewardDestination_ = value.getNumber();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearRewardDestination() {
                this.rewardDestination_ = 0;
            }

            public static Bond parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (Bond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Bond parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Bond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Bond parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (Bond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Bond parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Bond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Bond parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (Bond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Bond parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Bond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Bond parseFrom(InputStream input) throws IOException {
                return (Bond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Bond parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Bond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Bond parseDelimitedFrom(InputStream input) throws IOException {
                return (Bond) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static Bond parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Bond) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Bond parseFrom(CodedInputStream input) throws IOException {
                return (Bond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Bond parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Bond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(Bond prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes7.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<Bond, Builder> implements BondOrBuilder {
                /* synthetic */ Builder(C76851 c76851) {
                    this();
                }

                private Builder() {
                    super(Bond.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Polkadot.Staking.BondOrBuilder
                public String getController() {
                    return ((Bond) this.instance).getController();
                }

                @Override // wallet.core.jni.proto.Polkadot.Staking.BondOrBuilder
                public ByteString getControllerBytes() {
                    return ((Bond) this.instance).getControllerBytes();
                }

                public Builder setController(String value) {
                    copyOnWrite();
                    ((Bond) this.instance).setController(value);
                    return this;
                }

                public Builder clearController() {
                    copyOnWrite();
                    ((Bond) this.instance).clearController();
                    return this;
                }

                public Builder setControllerBytes(ByteString value) {
                    copyOnWrite();
                    ((Bond) this.instance).setControllerBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Polkadot.Staking.BondOrBuilder
                public ByteString getValue() {
                    return ((Bond) this.instance).getValue();
                }

                public Builder setValue(ByteString value) {
                    copyOnWrite();
                    ((Bond) this.instance).setValue(value);
                    return this;
                }

                public Builder clearValue() {
                    copyOnWrite();
                    ((Bond) this.instance).clearValue();
                    return this;
                }

                @Override // wallet.core.jni.proto.Polkadot.Staking.BondOrBuilder
                public int getRewardDestinationValue() {
                    return ((Bond) this.instance).getRewardDestinationValue();
                }

                public Builder setRewardDestinationValue(int value) {
                    copyOnWrite();
                    ((Bond) this.instance).setRewardDestinationValue(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Polkadot.Staking.BondOrBuilder
                public RewardDestination getRewardDestination() {
                    return ((Bond) this.instance).getRewardDestination();
                }

                public Builder setRewardDestination(RewardDestination value) {
                    copyOnWrite();
                    ((Bond) this.instance).setRewardDestination(value);
                    return this;
                }

                public Builder clearRewardDestination() {
                    copyOnWrite();
                    ((Bond) this.instance).clearRewardDestination();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C76851.f2141xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new Bond();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"controller_", "value_", "rewardDestination_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<Bond> parser = PARSER;
                        if (parser == null) {
                            synchronized (Bond.class) {
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
                Bond bond = new Bond();
                DEFAULT_INSTANCE = bond;
                GeneratedMessageLite.registerDefaultInstance(Bond.class, bond);
            }

            public static Bond getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Bond> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes7.dex */
        public static final class BondAndNominate extends GeneratedMessageLite<BondAndNominate, Builder> implements BondAndNominateOrBuilder {
            public static final int CONTROLLER_FIELD_NUMBER = 1;
            private static final BondAndNominate DEFAULT_INSTANCE;
            public static final int NOMINATORS_FIELD_NUMBER = 4;
            private static volatile Parser<BondAndNominate> PARSER = null;
            public static final int REWARD_DESTINATION_FIELD_NUMBER = 3;
            public static final int VALUE_FIELD_NUMBER = 2;
            private int rewardDestination_;
            private String controller_ = "";
            private ByteString value_ = ByteString.EMPTY;
            private Internal.ProtobufList<String> nominators_ = GeneratedMessageLite.emptyProtobufList();

            private BondAndNominate() {
            }

            @Override // wallet.core.jni.proto.Polkadot.Staking.BondAndNominateOrBuilder
            public String getController() {
                return this.controller_;
            }

            @Override // wallet.core.jni.proto.Polkadot.Staking.BondAndNominateOrBuilder
            public ByteString getControllerBytes() {
                return ByteString.copyFromUtf8(this.controller_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setController(String value) {
                value.getClass();
                this.controller_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearController() {
                this.controller_ = getDefaultInstance().getController();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setControllerBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.controller_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Polkadot.Staking.BondAndNominateOrBuilder
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

            @Override // wallet.core.jni.proto.Polkadot.Staking.BondAndNominateOrBuilder
            public int getRewardDestinationValue() {
                return this.rewardDestination_;
            }

            @Override // wallet.core.jni.proto.Polkadot.Staking.BondAndNominateOrBuilder
            public RewardDestination getRewardDestination() {
                RewardDestination forNumber = RewardDestination.forNumber(this.rewardDestination_);
                return forNumber == null ? RewardDestination.UNRECOGNIZED : forNumber;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setRewardDestinationValue(int value) {
                this.rewardDestination_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setRewardDestination(RewardDestination value) {
                this.rewardDestination_ = value.getNumber();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearRewardDestination() {
                this.rewardDestination_ = 0;
            }

            @Override // wallet.core.jni.proto.Polkadot.Staking.BondAndNominateOrBuilder
            public List<String> getNominatorsList() {
                return this.nominators_;
            }

            @Override // wallet.core.jni.proto.Polkadot.Staking.BondAndNominateOrBuilder
            public int getNominatorsCount() {
                return this.nominators_.size();
            }

            @Override // wallet.core.jni.proto.Polkadot.Staking.BondAndNominateOrBuilder
            public String getNominators(int index) {
                return this.nominators_.get(index);
            }

            @Override // wallet.core.jni.proto.Polkadot.Staking.BondAndNominateOrBuilder
            public ByteString getNominatorsBytes(int index) {
                return ByteString.copyFromUtf8(this.nominators_.get(index));
            }

            private void ensureNominatorsIsMutable() {
                Internal.ProtobufList<String> protobufList = this.nominators_;
                if (protobufList.isModifiable()) {
                    return;
                }
                this.nominators_ = GeneratedMessageLite.mutableCopy(protobufList);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setNominators(int index, String value) {
                value.getClass();
                ensureNominatorsIsMutable();
                this.nominators_.set(index, value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addNominators(String value) {
                value.getClass();
                ensureNominatorsIsMutable();
                this.nominators_.add(value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addAllNominators(Iterable<String> values) {
                ensureNominatorsIsMutable();
                AbstractMessageLite.addAll((Iterable) values, (List) this.nominators_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearNominators() {
                this.nominators_ = GeneratedMessageLite.emptyProtobufList();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addNominatorsBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                ensureNominatorsIsMutable();
                this.nominators_.add(value.toStringUtf8());
            }

            public static BondAndNominate parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (BondAndNominate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static BondAndNominate parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (BondAndNominate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static BondAndNominate parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (BondAndNominate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static BondAndNominate parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (BondAndNominate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static BondAndNominate parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (BondAndNominate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static BondAndNominate parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (BondAndNominate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static BondAndNominate parseFrom(InputStream input) throws IOException {
                return (BondAndNominate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static BondAndNominate parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (BondAndNominate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static BondAndNominate parseDelimitedFrom(InputStream input) throws IOException {
                return (BondAndNominate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static BondAndNominate parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (BondAndNominate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static BondAndNominate parseFrom(CodedInputStream input) throws IOException {
                return (BondAndNominate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static BondAndNominate parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (BondAndNominate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(BondAndNominate prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes7.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<BondAndNominate, Builder> implements BondAndNominateOrBuilder {
                /* synthetic */ Builder(C76851 c76851) {
                    this();
                }

                private Builder() {
                    super(BondAndNominate.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Polkadot.Staking.BondAndNominateOrBuilder
                public String getController() {
                    return ((BondAndNominate) this.instance).getController();
                }

                @Override // wallet.core.jni.proto.Polkadot.Staking.BondAndNominateOrBuilder
                public ByteString getControllerBytes() {
                    return ((BondAndNominate) this.instance).getControllerBytes();
                }

                public Builder setController(String value) {
                    copyOnWrite();
                    ((BondAndNominate) this.instance).setController(value);
                    return this;
                }

                public Builder clearController() {
                    copyOnWrite();
                    ((BondAndNominate) this.instance).clearController();
                    return this;
                }

                public Builder setControllerBytes(ByteString value) {
                    copyOnWrite();
                    ((BondAndNominate) this.instance).setControllerBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Polkadot.Staking.BondAndNominateOrBuilder
                public ByteString getValue() {
                    return ((BondAndNominate) this.instance).getValue();
                }

                public Builder setValue(ByteString value) {
                    copyOnWrite();
                    ((BondAndNominate) this.instance).setValue(value);
                    return this;
                }

                public Builder clearValue() {
                    copyOnWrite();
                    ((BondAndNominate) this.instance).clearValue();
                    return this;
                }

                @Override // wallet.core.jni.proto.Polkadot.Staking.BondAndNominateOrBuilder
                public int getRewardDestinationValue() {
                    return ((BondAndNominate) this.instance).getRewardDestinationValue();
                }

                public Builder setRewardDestinationValue(int value) {
                    copyOnWrite();
                    ((BondAndNominate) this.instance).setRewardDestinationValue(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Polkadot.Staking.BondAndNominateOrBuilder
                public RewardDestination getRewardDestination() {
                    return ((BondAndNominate) this.instance).getRewardDestination();
                }

                public Builder setRewardDestination(RewardDestination value) {
                    copyOnWrite();
                    ((BondAndNominate) this.instance).setRewardDestination(value);
                    return this;
                }

                public Builder clearRewardDestination() {
                    copyOnWrite();
                    ((BondAndNominate) this.instance).clearRewardDestination();
                    return this;
                }

                @Override // wallet.core.jni.proto.Polkadot.Staking.BondAndNominateOrBuilder
                public List<String> getNominatorsList() {
                    return Collections.unmodifiableList(((BondAndNominate) this.instance).getNominatorsList());
                }

                @Override // wallet.core.jni.proto.Polkadot.Staking.BondAndNominateOrBuilder
                public int getNominatorsCount() {
                    return ((BondAndNominate) this.instance).getNominatorsCount();
                }

                @Override // wallet.core.jni.proto.Polkadot.Staking.BondAndNominateOrBuilder
                public String getNominators(int index) {
                    return ((BondAndNominate) this.instance).getNominators(index);
                }

                @Override // wallet.core.jni.proto.Polkadot.Staking.BondAndNominateOrBuilder
                public ByteString getNominatorsBytes(int index) {
                    return ((BondAndNominate) this.instance).getNominatorsBytes(index);
                }

                public Builder setNominators(int index, String value) {
                    copyOnWrite();
                    ((BondAndNominate) this.instance).setNominators(index, value);
                    return this;
                }

                public Builder addNominators(String value) {
                    copyOnWrite();
                    ((BondAndNominate) this.instance).addNominators(value);
                    return this;
                }

                public Builder addAllNominators(Iterable<String> values) {
                    copyOnWrite();
                    ((BondAndNominate) this.instance).addAllNominators(values);
                    return this;
                }

                public Builder clearNominators() {
                    copyOnWrite();
                    ((BondAndNominate) this.instance).clearNominators();
                    return this;
                }

                public Builder addNominatorsBytes(ByteString value) {
                    copyOnWrite();
                    ((BondAndNominate) this.instance).addNominatorsBytes(value);
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C76851.f2141xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new BondAndNominate();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001Ȉ\u0002\n\u0003\f\u0004Ț", new Object[]{"controller_", "value_", "rewardDestination_", "nominators_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<BondAndNominate> parser = PARSER;
                        if (parser == null) {
                            synchronized (BondAndNominate.class) {
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
                BondAndNominate bondAndNominate = new BondAndNominate();
                DEFAULT_INSTANCE = bondAndNominate;
                GeneratedMessageLite.registerDefaultInstance(BondAndNominate.class, bondAndNominate);
            }

            public static BondAndNominate getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<BondAndNominate> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes7.dex */
        public static final class BondExtra extends GeneratedMessageLite<BondExtra, Builder> implements BondExtraOrBuilder {
            private static final BondExtra DEFAULT_INSTANCE;
            private static volatile Parser<BondExtra> PARSER = null;
            public static final int VALUE_FIELD_NUMBER = 1;
            private ByteString value_ = ByteString.EMPTY;

            private BondExtra() {
            }

            @Override // wallet.core.jni.proto.Polkadot.Staking.BondExtraOrBuilder
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

            public static BondExtra parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (BondExtra) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static BondExtra parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (BondExtra) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static BondExtra parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (BondExtra) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static BondExtra parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (BondExtra) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static BondExtra parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (BondExtra) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static BondExtra parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (BondExtra) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static BondExtra parseFrom(InputStream input) throws IOException {
                return (BondExtra) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static BondExtra parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (BondExtra) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static BondExtra parseDelimitedFrom(InputStream input) throws IOException {
                return (BondExtra) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static BondExtra parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (BondExtra) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static BondExtra parseFrom(CodedInputStream input) throws IOException {
                return (BondExtra) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static BondExtra parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (BondExtra) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(BondExtra prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes7.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<BondExtra, Builder> implements BondExtraOrBuilder {
                /* synthetic */ Builder(C76851 c76851) {
                    this();
                }

                private Builder() {
                    super(BondExtra.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Polkadot.Staking.BondExtraOrBuilder
                public ByteString getValue() {
                    return ((BondExtra) this.instance).getValue();
                }

                public Builder setValue(ByteString value) {
                    copyOnWrite();
                    ((BondExtra) this.instance).setValue(value);
                    return this;
                }

                public Builder clearValue() {
                    copyOnWrite();
                    ((BondExtra) this.instance).clearValue();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C76851.f2141xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new BondExtra();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n", new Object[]{"value_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<BondExtra> parser = PARSER;
                        if (parser == null) {
                            synchronized (BondExtra.class) {
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
                BondExtra bondExtra = new BondExtra();
                DEFAULT_INSTANCE = bondExtra;
                GeneratedMessageLite.registerDefaultInstance(BondExtra.class, bondExtra);
            }

            public static BondExtra getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<BondExtra> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes7.dex */
        public static final class Unbond extends GeneratedMessageLite<Unbond, Builder> implements UnbondOrBuilder {
            private static final Unbond DEFAULT_INSTANCE;
            private static volatile Parser<Unbond> PARSER = null;
            public static final int VALUE_FIELD_NUMBER = 1;
            private ByteString value_ = ByteString.EMPTY;

            private Unbond() {
            }

            @Override // wallet.core.jni.proto.Polkadot.Staking.UnbondOrBuilder
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

            public static Unbond parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (Unbond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Unbond parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Unbond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Unbond parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (Unbond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Unbond parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Unbond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Unbond parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (Unbond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Unbond parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Unbond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Unbond parseFrom(InputStream input) throws IOException {
                return (Unbond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Unbond parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Unbond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Unbond parseDelimitedFrom(InputStream input) throws IOException {
                return (Unbond) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static Unbond parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Unbond) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Unbond parseFrom(CodedInputStream input) throws IOException {
                return (Unbond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Unbond parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Unbond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(Unbond prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes7.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<Unbond, Builder> implements UnbondOrBuilder {
                /* synthetic */ Builder(C76851 c76851) {
                    this();
                }

                private Builder() {
                    super(Unbond.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Polkadot.Staking.UnbondOrBuilder
                public ByteString getValue() {
                    return ((Unbond) this.instance).getValue();
                }

                public Builder setValue(ByteString value) {
                    copyOnWrite();
                    ((Unbond) this.instance).setValue(value);
                    return this;
                }

                public Builder clearValue() {
                    copyOnWrite();
                    ((Unbond) this.instance).clearValue();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C76851.f2141xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new Unbond();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n", new Object[]{"value_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<Unbond> parser = PARSER;
                        if (parser == null) {
                            synchronized (Unbond.class) {
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
                Unbond unbond = new Unbond();
                DEFAULT_INSTANCE = unbond;
                GeneratedMessageLite.registerDefaultInstance(Unbond.class, unbond);
            }

            public static Unbond getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Unbond> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes7.dex */
        public static final class WithdrawUnbonded extends GeneratedMessageLite<WithdrawUnbonded, Builder> implements WithdrawUnbondedOrBuilder {
            private static final WithdrawUnbonded DEFAULT_INSTANCE;
            private static volatile Parser<WithdrawUnbonded> PARSER = null;
            public static final int SLASHING_SPANS_FIELD_NUMBER = 1;
            private int slashingSpans_;

            private WithdrawUnbonded() {
            }

            @Override // wallet.core.jni.proto.Polkadot.Staking.WithdrawUnbondedOrBuilder
            public int getSlashingSpans() {
                return this.slashingSpans_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSlashingSpans(int value) {
                this.slashingSpans_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearSlashingSpans() {
                this.slashingSpans_ = 0;
            }

            public static WithdrawUnbonded parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (WithdrawUnbonded) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WithdrawUnbonded parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WithdrawUnbonded) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WithdrawUnbonded parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (WithdrawUnbonded) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WithdrawUnbonded parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WithdrawUnbonded) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WithdrawUnbonded parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (WithdrawUnbonded) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WithdrawUnbonded parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WithdrawUnbonded) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WithdrawUnbonded parseFrom(InputStream input) throws IOException {
                return (WithdrawUnbonded) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static WithdrawUnbonded parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WithdrawUnbonded) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static WithdrawUnbonded parseDelimitedFrom(InputStream input) throws IOException {
                return (WithdrawUnbonded) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static WithdrawUnbonded parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WithdrawUnbonded) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static WithdrawUnbonded parseFrom(CodedInputStream input) throws IOException {
                return (WithdrawUnbonded) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static WithdrawUnbonded parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WithdrawUnbonded) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(WithdrawUnbonded prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes7.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<WithdrawUnbonded, Builder> implements WithdrawUnbondedOrBuilder {
                /* synthetic */ Builder(C76851 c76851) {
                    this();
                }

                private Builder() {
                    super(WithdrawUnbonded.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Polkadot.Staking.WithdrawUnbondedOrBuilder
                public int getSlashingSpans() {
                    return ((WithdrawUnbonded) this.instance).getSlashingSpans();
                }

                public Builder setSlashingSpans(int value) {
                    copyOnWrite();
                    ((WithdrawUnbonded) this.instance).setSlashingSpans(value);
                    return this;
                }

                public Builder clearSlashingSpans() {
                    copyOnWrite();
                    ((WithdrawUnbonded) this.instance).clearSlashingSpans();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C76851.f2141xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new WithdrawUnbonded();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0004", new Object[]{"slashingSpans_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<WithdrawUnbonded> parser = PARSER;
                        if (parser == null) {
                            synchronized (WithdrawUnbonded.class) {
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
                WithdrawUnbonded withdrawUnbonded = new WithdrawUnbonded();
                DEFAULT_INSTANCE = withdrawUnbonded;
                GeneratedMessageLite.registerDefaultInstance(WithdrawUnbonded.class, withdrawUnbonded);
            }

            public static WithdrawUnbonded getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<WithdrawUnbonded> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes7.dex */
        public static final class Nominate extends GeneratedMessageLite<Nominate, Builder> implements NominateOrBuilder {
            private static final Nominate DEFAULT_INSTANCE;
            public static final int NOMINATORS_FIELD_NUMBER = 1;
            private static volatile Parser<Nominate> PARSER;
            private Internal.ProtobufList<String> nominators_ = GeneratedMessageLite.emptyProtobufList();

            private Nominate() {
            }

            @Override // wallet.core.jni.proto.Polkadot.Staking.NominateOrBuilder
            public List<String> getNominatorsList() {
                return this.nominators_;
            }

            @Override // wallet.core.jni.proto.Polkadot.Staking.NominateOrBuilder
            public int getNominatorsCount() {
                return this.nominators_.size();
            }

            @Override // wallet.core.jni.proto.Polkadot.Staking.NominateOrBuilder
            public String getNominators(int index) {
                return this.nominators_.get(index);
            }

            @Override // wallet.core.jni.proto.Polkadot.Staking.NominateOrBuilder
            public ByteString getNominatorsBytes(int index) {
                return ByteString.copyFromUtf8(this.nominators_.get(index));
            }

            private void ensureNominatorsIsMutable() {
                Internal.ProtobufList<String> protobufList = this.nominators_;
                if (protobufList.isModifiable()) {
                    return;
                }
                this.nominators_ = GeneratedMessageLite.mutableCopy(protobufList);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setNominators(int index, String value) {
                value.getClass();
                ensureNominatorsIsMutable();
                this.nominators_.set(index, value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addNominators(String value) {
                value.getClass();
                ensureNominatorsIsMutable();
                this.nominators_.add(value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addAllNominators(Iterable<String> values) {
                ensureNominatorsIsMutable();
                AbstractMessageLite.addAll((Iterable) values, (List) this.nominators_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearNominators() {
                this.nominators_ = GeneratedMessageLite.emptyProtobufList();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addNominatorsBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                ensureNominatorsIsMutable();
                this.nominators_.add(value.toStringUtf8());
            }

            public static Nominate parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (Nominate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Nominate parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Nominate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Nominate parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (Nominate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Nominate parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Nominate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Nominate parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (Nominate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Nominate parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Nominate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Nominate parseFrom(InputStream input) throws IOException {
                return (Nominate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Nominate parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Nominate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Nominate parseDelimitedFrom(InputStream input) throws IOException {
                return (Nominate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static Nominate parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Nominate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Nominate parseFrom(CodedInputStream input) throws IOException {
                return (Nominate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Nominate parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Nominate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(Nominate prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes7.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<Nominate, Builder> implements NominateOrBuilder {
                /* synthetic */ Builder(C76851 c76851) {
                    this();
                }

                private Builder() {
                    super(Nominate.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Polkadot.Staking.NominateOrBuilder
                public List<String> getNominatorsList() {
                    return Collections.unmodifiableList(((Nominate) this.instance).getNominatorsList());
                }

                @Override // wallet.core.jni.proto.Polkadot.Staking.NominateOrBuilder
                public int getNominatorsCount() {
                    return ((Nominate) this.instance).getNominatorsCount();
                }

                @Override // wallet.core.jni.proto.Polkadot.Staking.NominateOrBuilder
                public String getNominators(int index) {
                    return ((Nominate) this.instance).getNominators(index);
                }

                @Override // wallet.core.jni.proto.Polkadot.Staking.NominateOrBuilder
                public ByteString getNominatorsBytes(int index) {
                    return ((Nominate) this.instance).getNominatorsBytes(index);
                }

                public Builder setNominators(int index, String value) {
                    copyOnWrite();
                    ((Nominate) this.instance).setNominators(index, value);
                    return this;
                }

                public Builder addNominators(String value) {
                    copyOnWrite();
                    ((Nominate) this.instance).addNominators(value);
                    return this;
                }

                public Builder addAllNominators(Iterable<String> values) {
                    copyOnWrite();
                    ((Nominate) this.instance).addAllNominators(values);
                    return this;
                }

                public Builder clearNominators() {
                    copyOnWrite();
                    ((Nominate) this.instance).clearNominators();
                    return this;
                }

                public Builder addNominatorsBytes(ByteString value) {
                    copyOnWrite();
                    ((Nominate) this.instance).addNominatorsBytes(value);
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C76851.f2141xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new Nominate();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001Ț", new Object[]{"nominators_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<Nominate> parser = PARSER;
                        if (parser == null) {
                            synchronized (Nominate.class) {
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
                Nominate nominate = new Nominate();
                DEFAULT_INSTANCE = nominate;
                GeneratedMessageLite.registerDefaultInstance(Nominate.class, nominate);
            }

            public static Nominate getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Nominate> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes7.dex */
        public static final class ChillAndUnbond extends GeneratedMessageLite<ChillAndUnbond, Builder> implements ChillAndUnbondOrBuilder {
            private static final ChillAndUnbond DEFAULT_INSTANCE;
            private static volatile Parser<ChillAndUnbond> PARSER = null;
            public static final int VALUE_FIELD_NUMBER = 1;
            private ByteString value_ = ByteString.EMPTY;

            private ChillAndUnbond() {
            }

            @Override // wallet.core.jni.proto.Polkadot.Staking.ChillAndUnbondOrBuilder
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

            public static ChillAndUnbond parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (ChillAndUnbond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static ChillAndUnbond parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (ChillAndUnbond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static ChillAndUnbond parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (ChillAndUnbond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static ChillAndUnbond parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (ChillAndUnbond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static ChillAndUnbond parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (ChillAndUnbond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static ChillAndUnbond parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (ChillAndUnbond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static ChillAndUnbond parseFrom(InputStream input) throws IOException {
                return (ChillAndUnbond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static ChillAndUnbond parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (ChillAndUnbond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static ChillAndUnbond parseDelimitedFrom(InputStream input) throws IOException {
                return (ChillAndUnbond) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static ChillAndUnbond parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (ChillAndUnbond) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static ChillAndUnbond parseFrom(CodedInputStream input) throws IOException {
                return (ChillAndUnbond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static ChillAndUnbond parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (ChillAndUnbond) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(ChillAndUnbond prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes7.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<ChillAndUnbond, Builder> implements ChillAndUnbondOrBuilder {
                /* synthetic */ Builder(C76851 c76851) {
                    this();
                }

                private Builder() {
                    super(ChillAndUnbond.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Polkadot.Staking.ChillAndUnbondOrBuilder
                public ByteString getValue() {
                    return ((ChillAndUnbond) this.instance).getValue();
                }

                public Builder setValue(ByteString value) {
                    copyOnWrite();
                    ((ChillAndUnbond) this.instance).setValue(value);
                    return this;
                }

                public Builder clearValue() {
                    copyOnWrite();
                    ((ChillAndUnbond) this.instance).clearValue();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C76851.f2141xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new ChillAndUnbond();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n", new Object[]{"value_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<ChillAndUnbond> parser = PARSER;
                        if (parser == null) {
                            synchronized (ChillAndUnbond.class) {
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
                ChillAndUnbond chillAndUnbond = new ChillAndUnbond();
                DEFAULT_INSTANCE = chillAndUnbond;
                GeneratedMessageLite.registerDefaultInstance(ChillAndUnbond.class, chillAndUnbond);
            }

            public static ChillAndUnbond getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<ChillAndUnbond> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes7.dex */
        public static final class Chill extends GeneratedMessageLite<Chill, Builder> implements ChillOrBuilder {
            private static final Chill DEFAULT_INSTANCE;
            private static volatile Parser<Chill> PARSER;

            private Chill() {
            }

            public static Chill parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (Chill) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Chill parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Chill) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Chill parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (Chill) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Chill parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Chill) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Chill parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (Chill) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Chill parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Chill) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Chill parseFrom(InputStream input) throws IOException {
                return (Chill) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Chill parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Chill) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Chill parseDelimitedFrom(InputStream input) throws IOException {
                return (Chill) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static Chill parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Chill) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Chill parseFrom(CodedInputStream input) throws IOException {
                return (Chill) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Chill parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Chill) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(Chill prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes7.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<Chill, Builder> implements ChillOrBuilder {
                /* synthetic */ Builder(C76851 c76851) {
                    this();
                }

                private Builder() {
                    super(Chill.DEFAULT_INSTANCE);
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C76851.f2141xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new Chill();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0000", null);
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<Chill> parser = PARSER;
                        if (parser == null) {
                            synchronized (Chill.class) {
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
                Chill chill = new Chill();
                DEFAULT_INSTANCE = chill;
                GeneratedMessageLite.registerDefaultInstance(Chill.class, chill);
            }

            public static Chill getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Chill> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes7.dex */
        public enum MessageOneofCase {
            BOND(1),
            BOND_AND_NOMINATE(2),
            BOND_EXTRA(3),
            UNBOND(4),
            WITHDRAW_UNBONDED(5),
            NOMINATE(6),
            CHILL(7),
            CHILL_AND_UNBOND(8),
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
                switch (value) {
                    case 0:
                        return MESSAGEONEOF_NOT_SET;
                    case 1:
                        return BOND;
                    case 2:
                        return BOND_AND_NOMINATE;
                    case 3:
                        return BOND_EXTRA;
                    case 4:
                        return UNBOND;
                    case 5:
                        return WITHDRAW_UNBONDED;
                    case 6:
                        return NOMINATE;
                    case 7:
                        return CHILL;
                    case 8:
                        return CHILL_AND_UNBOND;
                    default:
                        return null;
                }
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
        public MessageOneofCase getMessageOneofCase() {
            return MessageOneofCase.forNumber(this.messageOneofCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMessageOneof() {
            this.messageOneofCase_ = 0;
            this.messageOneof_ = null;
        }

        @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
        public boolean hasBond() {
            return this.messageOneofCase_ == 1;
        }

        @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
        public Bond getBond() {
            if (this.messageOneofCase_ == 1) {
                return (Bond) this.messageOneof_;
            }
            return Bond.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBond(Bond value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeBond(Bond value) {
            value.getClass();
            if (this.messageOneofCase_ == 1 && this.messageOneof_ != Bond.getDefaultInstance()) {
                this.messageOneof_ = Bond.newBuilder((Bond) this.messageOneof_).mergeFrom((Bond.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBond() {
            if (this.messageOneofCase_ == 1) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
        public boolean hasBondAndNominate() {
            return this.messageOneofCase_ == 2;
        }

        @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
        public BondAndNominate getBondAndNominate() {
            if (this.messageOneofCase_ == 2) {
                return (BondAndNominate) this.messageOneof_;
            }
            return BondAndNominate.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBondAndNominate(BondAndNominate value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeBondAndNominate(BondAndNominate value) {
            value.getClass();
            if (this.messageOneofCase_ == 2 && this.messageOneof_ != BondAndNominate.getDefaultInstance()) {
                this.messageOneof_ = BondAndNominate.newBuilder((BondAndNominate) this.messageOneof_).mergeFrom((BondAndNominate.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBondAndNominate() {
            if (this.messageOneofCase_ == 2) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
        public boolean hasBondExtra() {
            return this.messageOneofCase_ == 3;
        }

        @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
        public BondExtra getBondExtra() {
            if (this.messageOneofCase_ == 3) {
                return (BondExtra) this.messageOneof_;
            }
            return BondExtra.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBondExtra(BondExtra value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeBondExtra(BondExtra value) {
            value.getClass();
            if (this.messageOneofCase_ == 3 && this.messageOneof_ != BondExtra.getDefaultInstance()) {
                this.messageOneof_ = BondExtra.newBuilder((BondExtra) this.messageOneof_).mergeFrom((BondExtra.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBondExtra() {
            if (this.messageOneofCase_ == 3) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
        public boolean hasUnbond() {
            return this.messageOneofCase_ == 4;
        }

        @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
        public Unbond getUnbond() {
            if (this.messageOneofCase_ == 4) {
                return (Unbond) this.messageOneof_;
            }
            return Unbond.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUnbond(Unbond value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeUnbond(Unbond value) {
            value.getClass();
            if (this.messageOneofCase_ == 4 && this.messageOneof_ != Unbond.getDefaultInstance()) {
                this.messageOneof_ = Unbond.newBuilder((Unbond) this.messageOneof_).mergeFrom((Unbond.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUnbond() {
            if (this.messageOneofCase_ == 4) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
        public boolean hasWithdrawUnbonded() {
            return this.messageOneofCase_ == 5;
        }

        @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
        public WithdrawUnbonded getWithdrawUnbonded() {
            if (this.messageOneofCase_ == 5) {
                return (WithdrawUnbonded) this.messageOneof_;
            }
            return WithdrawUnbonded.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWithdrawUnbonded(WithdrawUnbonded value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeWithdrawUnbonded(WithdrawUnbonded value) {
            value.getClass();
            if (this.messageOneofCase_ == 5 && this.messageOneof_ != WithdrawUnbonded.getDefaultInstance()) {
                this.messageOneof_ = WithdrawUnbonded.newBuilder((WithdrawUnbonded) this.messageOneof_).mergeFrom((WithdrawUnbonded.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearWithdrawUnbonded() {
            if (this.messageOneofCase_ == 5) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
        public boolean hasNominate() {
            return this.messageOneofCase_ == 6;
        }

        @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
        public Nominate getNominate() {
            if (this.messageOneofCase_ == 6) {
                return (Nominate) this.messageOneof_;
            }
            return Nominate.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNominate(Nominate value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeNominate(Nominate value) {
            value.getClass();
            if (this.messageOneofCase_ == 6 && this.messageOneof_ != Nominate.getDefaultInstance()) {
                this.messageOneof_ = Nominate.newBuilder((Nominate) this.messageOneof_).mergeFrom((Nominate.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNominate() {
            if (this.messageOneofCase_ == 6) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
        public boolean hasChill() {
            return this.messageOneofCase_ == 7;
        }

        @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
        public Chill getChill() {
            if (this.messageOneofCase_ == 7) {
                return (Chill) this.messageOneof_;
            }
            return Chill.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChill(Chill value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 7;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeChill(Chill value) {
            value.getClass();
            if (this.messageOneofCase_ == 7 && this.messageOneof_ != Chill.getDefaultInstance()) {
                this.messageOneof_ = Chill.newBuilder((Chill) this.messageOneof_).mergeFrom((Chill.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 7;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearChill() {
            if (this.messageOneofCase_ == 7) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
        public boolean hasChillAndUnbond() {
            return this.messageOneofCase_ == 8;
        }

        @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
        public ChillAndUnbond getChillAndUnbond() {
            if (this.messageOneofCase_ == 8) {
                return (ChillAndUnbond) this.messageOneof_;
            }
            return ChillAndUnbond.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChillAndUnbond(ChillAndUnbond value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeChillAndUnbond(ChillAndUnbond value) {
            value.getClass();
            if (this.messageOneofCase_ == 8 && this.messageOneof_ != ChillAndUnbond.getDefaultInstance()) {
                this.messageOneof_ = ChillAndUnbond.newBuilder((ChillAndUnbond) this.messageOneof_).mergeFrom((ChillAndUnbond.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearChillAndUnbond() {
            if (this.messageOneofCase_ == 8) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
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
            /* synthetic */ Builder(C76851 c76851) {
                this();
            }

            private Builder() {
                super(Staking.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
            public MessageOneofCase getMessageOneofCase() {
                return ((Staking) this.instance).getMessageOneofCase();
            }

            public Builder clearMessageOneof() {
                copyOnWrite();
                ((Staking) this.instance).clearMessageOneof();
                return this;
            }

            @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
            public boolean hasBond() {
                return ((Staking) this.instance).hasBond();
            }

            @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
            public Bond getBond() {
                return ((Staking) this.instance).getBond();
            }

            public Builder setBond(Bond value) {
                copyOnWrite();
                ((Staking) this.instance).setBond(value);
                return this;
            }

            public Builder setBond(Bond.Builder builderForValue) {
                copyOnWrite();
                ((Staking) this.instance).setBond(builderForValue.build());
                return this;
            }

            public Builder mergeBond(Bond value) {
                copyOnWrite();
                ((Staking) this.instance).mergeBond(value);
                return this;
            }

            public Builder clearBond() {
                copyOnWrite();
                ((Staking) this.instance).clearBond();
                return this;
            }

            @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
            public boolean hasBondAndNominate() {
                return ((Staking) this.instance).hasBondAndNominate();
            }

            @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
            public BondAndNominate getBondAndNominate() {
                return ((Staking) this.instance).getBondAndNominate();
            }

            public Builder setBondAndNominate(BondAndNominate value) {
                copyOnWrite();
                ((Staking) this.instance).setBondAndNominate(value);
                return this;
            }

            public Builder setBondAndNominate(BondAndNominate.Builder builderForValue) {
                copyOnWrite();
                ((Staking) this.instance).setBondAndNominate(builderForValue.build());
                return this;
            }

            public Builder mergeBondAndNominate(BondAndNominate value) {
                copyOnWrite();
                ((Staking) this.instance).mergeBondAndNominate(value);
                return this;
            }

            public Builder clearBondAndNominate() {
                copyOnWrite();
                ((Staking) this.instance).clearBondAndNominate();
                return this;
            }

            @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
            public boolean hasBondExtra() {
                return ((Staking) this.instance).hasBondExtra();
            }

            @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
            public BondExtra getBondExtra() {
                return ((Staking) this.instance).getBondExtra();
            }

            public Builder setBondExtra(BondExtra value) {
                copyOnWrite();
                ((Staking) this.instance).setBondExtra(value);
                return this;
            }

            public Builder setBondExtra(BondExtra.Builder builderForValue) {
                copyOnWrite();
                ((Staking) this.instance).setBondExtra(builderForValue.build());
                return this;
            }

            public Builder mergeBondExtra(BondExtra value) {
                copyOnWrite();
                ((Staking) this.instance).mergeBondExtra(value);
                return this;
            }

            public Builder clearBondExtra() {
                copyOnWrite();
                ((Staking) this.instance).clearBondExtra();
                return this;
            }

            @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
            public boolean hasUnbond() {
                return ((Staking) this.instance).hasUnbond();
            }

            @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
            public Unbond getUnbond() {
                return ((Staking) this.instance).getUnbond();
            }

            public Builder setUnbond(Unbond value) {
                copyOnWrite();
                ((Staking) this.instance).setUnbond(value);
                return this;
            }

            public Builder setUnbond(Unbond.Builder builderForValue) {
                copyOnWrite();
                ((Staking) this.instance).setUnbond(builderForValue.build());
                return this;
            }

            public Builder mergeUnbond(Unbond value) {
                copyOnWrite();
                ((Staking) this.instance).mergeUnbond(value);
                return this;
            }

            public Builder clearUnbond() {
                copyOnWrite();
                ((Staking) this.instance).clearUnbond();
                return this;
            }

            @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
            public boolean hasWithdrawUnbonded() {
                return ((Staking) this.instance).hasWithdrawUnbonded();
            }

            @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
            public WithdrawUnbonded getWithdrawUnbonded() {
                return ((Staking) this.instance).getWithdrawUnbonded();
            }

            public Builder setWithdrawUnbonded(WithdrawUnbonded value) {
                copyOnWrite();
                ((Staking) this.instance).setWithdrawUnbonded(value);
                return this;
            }

            public Builder setWithdrawUnbonded(WithdrawUnbonded.Builder builderForValue) {
                copyOnWrite();
                ((Staking) this.instance).setWithdrawUnbonded(builderForValue.build());
                return this;
            }

            public Builder mergeWithdrawUnbonded(WithdrawUnbonded value) {
                copyOnWrite();
                ((Staking) this.instance).mergeWithdrawUnbonded(value);
                return this;
            }

            public Builder clearWithdrawUnbonded() {
                copyOnWrite();
                ((Staking) this.instance).clearWithdrawUnbonded();
                return this;
            }

            @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
            public boolean hasNominate() {
                return ((Staking) this.instance).hasNominate();
            }

            @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
            public Nominate getNominate() {
                return ((Staking) this.instance).getNominate();
            }

            public Builder setNominate(Nominate value) {
                copyOnWrite();
                ((Staking) this.instance).setNominate(value);
                return this;
            }

            public Builder setNominate(Nominate.Builder builderForValue) {
                copyOnWrite();
                ((Staking) this.instance).setNominate(builderForValue.build());
                return this;
            }

            public Builder mergeNominate(Nominate value) {
                copyOnWrite();
                ((Staking) this.instance).mergeNominate(value);
                return this;
            }

            public Builder clearNominate() {
                copyOnWrite();
                ((Staking) this.instance).clearNominate();
                return this;
            }

            @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
            public boolean hasChill() {
                return ((Staking) this.instance).hasChill();
            }

            @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
            public Chill getChill() {
                return ((Staking) this.instance).getChill();
            }

            public Builder setChill(Chill value) {
                copyOnWrite();
                ((Staking) this.instance).setChill(value);
                return this;
            }

            public Builder setChill(Chill.Builder builderForValue) {
                copyOnWrite();
                ((Staking) this.instance).setChill(builderForValue.build());
                return this;
            }

            public Builder mergeChill(Chill value) {
                copyOnWrite();
                ((Staking) this.instance).mergeChill(value);
                return this;
            }

            public Builder clearChill() {
                copyOnWrite();
                ((Staking) this.instance).clearChill();
                return this;
            }

            @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
            public boolean hasChillAndUnbond() {
                return ((Staking) this.instance).hasChillAndUnbond();
            }

            @Override // wallet.core.jni.proto.Polkadot.StakingOrBuilder
            public ChillAndUnbond getChillAndUnbond() {
                return ((Staking) this.instance).getChillAndUnbond();
            }

            public Builder setChillAndUnbond(ChillAndUnbond value) {
                copyOnWrite();
                ((Staking) this.instance).setChillAndUnbond(value);
                return this;
            }

            public Builder setChillAndUnbond(ChillAndUnbond.Builder builderForValue) {
                copyOnWrite();
                ((Staking) this.instance).setChillAndUnbond(builderForValue.build());
                return this;
            }

            public Builder mergeChillAndUnbond(ChillAndUnbond value) {
                copyOnWrite();
                ((Staking) this.instance).mergeChillAndUnbond(value);
                return this;
            }

            public Builder clearChillAndUnbond() {
                copyOnWrite();
                ((Staking) this.instance).clearChillAndUnbond();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C76851.f2141xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Staking();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\b\u0001\u0000\u0001\b\b\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\b<\u0000", new Object[]{"messageOneof_", "messageOneofCase_", Bond.class, BondAndNominate.class, BondExtra.class, Unbond.class, WithdrawUnbonded.class, Nominate.class, Chill.class, ChillAndUnbond.class});
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
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int BALANCE_CALL_FIELD_NUMBER = 10;
        public static final int BLOCK_HASH_FIELD_NUMBER = 1;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int ERA_FIELD_NUMBER = 7;
        public static final int GENESIS_HASH_FIELD_NUMBER = 2;
        public static final int NETWORK_FIELD_NUMBER = 9;
        public static final int NONCE_FIELD_NUMBER = 3;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 8;
        public static final int SPEC_VERSION_FIELD_NUMBER = 4;
        public static final int STAKING_CALL_FIELD_NUMBER = 11;
        public static final int TIP_FIELD_NUMBER = 6;
        public static final int TRANSACTION_VERSION_FIELD_NUMBER = 5;
        private ByteString blockHash_;
        private Era era_;
        private ByteString genesisHash_;
        private int messageOneofCase_ = 0;
        private Object messageOneof_;
        private int network_;
        private long nonce_;
        private ByteString privateKey_;
        private int specVersion_;
        private ByteString tip_;
        private int transactionVersion_;

        private SigningInput() {
            ByteString byteString = ByteString.EMPTY;
            this.blockHash_ = byteString;
            this.genesisHash_ = byteString;
            this.tip_ = byteString;
            this.privateKey_ = byteString;
        }

        /* loaded from: classes7.dex */
        public enum MessageOneofCase {
            BALANCE_CALL(10),
            STAKING_CALL(11),
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
                    if (value != 10) {
                        if (value != 11) {
                            return null;
                        }
                        return STAKING_CALL;
                    }
                    return BALANCE_CALL;
                }
                return MESSAGEONEOF_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
        public MessageOneofCase getMessageOneofCase() {
            return MessageOneofCase.forNumber(this.messageOneofCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMessageOneof() {
            this.messageOneofCase_ = 0;
            this.messageOneof_ = null;
        }

        @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
        public ByteString getBlockHash() {
            return this.blockHash_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBlockHash(ByteString value) {
            value.getClass();
            this.blockHash_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBlockHash() {
            this.blockHash_ = getDefaultInstance().getBlockHash();
        }

        @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
        public int getSpecVersion() {
            return this.specVersion_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSpecVersion(int value) {
            this.specVersion_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSpecVersion() {
            this.specVersion_ = 0;
        }

        @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
        public int getTransactionVersion() {
            return this.transactionVersion_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransactionVersion(int value) {
            this.transactionVersion_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransactionVersion() {
            this.transactionVersion_ = 0;
        }

        @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
        public ByteString getTip() {
            return this.tip_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTip(ByteString value) {
            value.getClass();
            this.tip_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTip() {
            this.tip_ = getDefaultInstance().getTip();
        }

        @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
        public boolean hasEra() {
            return this.era_ != null;
        }

        @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
        public Era getEra() {
            Era era = this.era_;
            return era == null ? Era.getDefaultInstance() : era;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEra(Era value) {
            value.getClass();
            this.era_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeEra(Era value) {
            value.getClass();
            Era era = this.era_;
            if (era != null && era != Era.getDefaultInstance()) {
                this.era_ = Era.newBuilder(this.era_).mergeFrom((Era.Builder) value).buildPartial();
            } else {
                this.era_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearEra() {
            this.era_ = null;
        }

        @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
        public int getNetwork() {
            return this.network_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNetwork(int value) {
            this.network_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNetwork() {
            this.network_ = 0;
        }

        @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
        public boolean hasBalanceCall() {
            return this.messageOneofCase_ == 10;
        }

        @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
        public Balance getBalanceCall() {
            if (this.messageOneofCase_ == 10) {
                return (Balance) this.messageOneof_;
            }
            return Balance.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBalanceCall(Balance value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeBalanceCall(Balance value) {
            value.getClass();
            if (this.messageOneofCase_ == 10 && this.messageOneof_ != Balance.getDefaultInstance()) {
                this.messageOneof_ = Balance.newBuilder((Balance) this.messageOneof_).mergeFrom((Balance.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBalanceCall() {
            if (this.messageOneofCase_ == 10) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
        public boolean hasStakingCall() {
            return this.messageOneofCase_ == 11;
        }

        @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
        public Staking getStakingCall() {
            if (this.messageOneofCase_ == 11) {
                return (Staking) this.messageOneof_;
            }
            return Staking.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakingCall(Staking value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakingCall(Staking value) {
            value.getClass();
            if (this.messageOneofCase_ == 11 && this.messageOneof_ != Staking.getDefaultInstance()) {
                this.messageOneof_ = Staking.newBuilder((Staking) this.messageOneof_).mergeFrom((Staking.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakingCall() {
            if (this.messageOneofCase_ == 11) {
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
            /* synthetic */ Builder(C76851 c76851) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
            public MessageOneofCase getMessageOneofCase() {
                return ((SigningInput) this.instance).getMessageOneofCase();
            }

            public Builder clearMessageOneof() {
                copyOnWrite();
                ((SigningInput) this.instance).clearMessageOneof();
                return this;
            }

            @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
            public ByteString getBlockHash() {
                return ((SigningInput) this.instance).getBlockHash();
            }

            public Builder setBlockHash(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setBlockHash(value);
                return this;
            }

            public Builder clearBlockHash() {
                copyOnWrite();
                ((SigningInput) this.instance).clearBlockHash();
                return this;
            }

            @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
            public int getSpecVersion() {
                return ((SigningInput) this.instance).getSpecVersion();
            }

            public Builder setSpecVersion(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setSpecVersion(value);
                return this;
            }

            public Builder clearSpecVersion() {
                copyOnWrite();
                ((SigningInput) this.instance).clearSpecVersion();
                return this;
            }

            @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
            public int getTransactionVersion() {
                return ((SigningInput) this.instance).getTransactionVersion();
            }

            public Builder setTransactionVersion(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTransactionVersion(value);
                return this;
            }

            public Builder clearTransactionVersion() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTransactionVersion();
                return this;
            }

            @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
            public ByteString getTip() {
                return ((SigningInput) this.instance).getTip();
            }

            public Builder setTip(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTip(value);
                return this;
            }

            public Builder clearTip() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTip();
                return this;
            }

            @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
            public boolean hasEra() {
                return ((SigningInput) this.instance).hasEra();
            }

            @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
            public Era getEra() {
                return ((SigningInput) this.instance).getEra();
            }

            public Builder setEra(Era value) {
                copyOnWrite();
                ((SigningInput) this.instance).setEra(value);
                return this;
            }

            public Builder setEra(Era.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setEra(builderForValue.build());
                return this;
            }

            public Builder mergeEra(Era value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeEra(value);
                return this;
            }

            public Builder clearEra() {
                copyOnWrite();
                ((SigningInput) this.instance).clearEra();
                return this;
            }

            @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
            public int getNetwork() {
                return ((SigningInput) this.instance).getNetwork();
            }

            public Builder setNetwork(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setNetwork(value);
                return this;
            }

            public Builder clearNetwork() {
                copyOnWrite();
                ((SigningInput) this.instance).clearNetwork();
                return this;
            }

            @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
            public boolean hasBalanceCall() {
                return ((SigningInput) this.instance).hasBalanceCall();
            }

            @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
            public Balance getBalanceCall() {
                return ((SigningInput) this.instance).getBalanceCall();
            }

            public Builder setBalanceCall(Balance value) {
                copyOnWrite();
                ((SigningInput) this.instance).setBalanceCall(value);
                return this;
            }

            public Builder setBalanceCall(Balance.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setBalanceCall(builderForValue.build());
                return this;
            }

            public Builder mergeBalanceCall(Balance value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeBalanceCall(value);
                return this;
            }

            public Builder clearBalanceCall() {
                copyOnWrite();
                ((SigningInput) this.instance).clearBalanceCall();
                return this;
            }

            @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
            public boolean hasStakingCall() {
                return ((SigningInput) this.instance).hasStakingCall();
            }

            @Override // wallet.core.jni.proto.Polkadot.SigningInputOrBuilder
            public Staking getStakingCall() {
                return ((SigningInput) this.instance).getStakingCall();
            }

            public Builder setStakingCall(Staking value) {
                copyOnWrite();
                ((SigningInput) this.instance).setStakingCall(value);
                return this;
            }

            public Builder setStakingCall(Staking.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setStakingCall(builderForValue.build());
                return this;
            }

            public Builder mergeStakingCall(Staking value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeStakingCall(value);
                return this;
            }

            public Builder clearStakingCall() {
                copyOnWrite();
                ((SigningInput) this.instance).clearStakingCall();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C76851.f2141xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u000b\u0001\u0000\u0001\u000b\u000b\u0000\u0000\u0000\u0001\n\u0002\n\u0003\u0003\u0004\u000b\u0005\u000b\u0006\n\u0007\t\b\n\t\u000b\n<\u0000\u000b<\u0000", new Object[]{"messageOneof_", "messageOneofCase_", "blockHash_", "genesisHash_", "nonce_", "specVersion_", "transactionVersion_", "tip_", "era_", "privateKey_", "network_", Balance.class, Staking.class});
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

        @Override // wallet.core.jni.proto.Polkadot.SigningOutputOrBuilder
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
            /* synthetic */ Builder(C76851 c76851) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Polkadot.SigningOutputOrBuilder
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
            switch (C76851.f2141xa1df5c61[method.ordinal()]) {
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
