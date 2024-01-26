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
public final class Harmony {

    /* loaded from: classes7.dex */
    public interface CommissionRateOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Decimal getMaxChangeRate();

        Decimal getMaxRate();

        Decimal getRate();

        boolean hasMaxChangeRate();

        boolean hasMaxRate();

        boolean hasRate();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface DecimalOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getPrecision();

        ByteString getValue();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface DescriptionOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getDetails();

        ByteString getDetailsBytes();

        String getIdentity();

        ByteString getIdentityBytes();

        String getName();

        ByteString getNameBytes();

        String getSecurityContact();

        ByteString getSecurityContactBytes();

        String getWebsite();

        ByteString getWebsiteBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface DirectiveCollectRewardsOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getDelegatorAddress();

        ByteString getDelegatorAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface DirectiveCreateValidatorOrBuilder extends MessageLiteOrBuilder {
        ByteString getAmount();

        CommissionRate getCommissionRates();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Description getDescription();

        ByteString getMaxTotalDelegation();

        ByteString getMinSelfDelegation();

        ByteString getSlotKeySigs(int index);

        int getSlotKeySigsCount();

        List<ByteString> getSlotKeySigsList();

        ByteString getSlotPubKeys(int index);

        int getSlotPubKeysCount();

        List<ByteString> getSlotPubKeysList();

        String getValidatorAddress();

        ByteString getValidatorAddressBytes();

        boolean hasCommissionRates();

        boolean hasDescription();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface DirectiveDelegateOrBuilder extends MessageLiteOrBuilder {
        ByteString getAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getDelegatorAddress();

        ByteString getDelegatorAddressBytes();

        String getValidatorAddress();

        ByteString getValidatorAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface DirectiveEditValidatorOrBuilder extends MessageLiteOrBuilder {
        ByteString getActive();

        Decimal getCommissionRate();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Description getDescription();

        ByteString getMaxTotalDelegation();

        ByteString getMinSelfDelegation();

        ByteString getSlotKeyToAdd();

        ByteString getSlotKeyToAddSig();

        ByteString getSlotKeyToRemove();

        String getValidatorAddress();

        ByteString getValidatorAddressBytes();

        boolean hasCommissionRate();

        boolean hasDescription();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface DirectiveUndelegateOrBuilder extends MessageLiteOrBuilder {
        ByteString getAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getDelegatorAddress();

        ByteString getDelegatorAddressBytes();

        String getValidatorAddress();

        ByteString getValidatorAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        ByteString getChainId();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        SigningInput.MessageOneofCase getMessageOneofCase();

        ByteString getPrivateKey();

        StakingMessage getStakingMessage();

        TransactionMessage getTransactionMessage();

        boolean hasStakingMessage();

        boolean hasTransactionMessage();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getEncoded();

        ByteString getR();

        ByteString getS();

        ByteString getV();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface StakingMessageOrBuilder extends MessageLiteOrBuilder {
        DirectiveCollectRewards getCollectRewards();

        DirectiveCreateValidator getCreateValidatorMessage();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        DirectiveDelegate getDelegateMessage();

        DirectiveEditValidator getEditValidatorMessage();

        ByteString getGasLimit();

        ByteString getGasPrice();

        ByteString getNonce();

        StakingMessage.StakeMsgCase getStakeMsgCase();

        DirectiveUndelegate getUndelegateMessage();

        boolean hasCollectRewards();

        boolean hasCreateValidatorMessage();

        boolean hasDelegateMessage();

        boolean hasEditValidatorMessage();

        boolean hasUndelegateMessage();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface TransactionMessageOrBuilder extends MessageLiteOrBuilder {
        ByteString getAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getFromShardId();

        ByteString getGasLimit();

        ByteString getGasPrice();

        ByteString getNonce();

        ByteString getPayload();

        String getToAddress();

        ByteString getToAddressBytes();

        ByteString getToShardId();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Harmony() {
    }

    /* loaded from: classes7.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int CHAIN_ID_FIELD_NUMBER = 1;
        private static final SigningInput DEFAULT_INSTANCE;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 2;
        public static final int STAKING_MESSAGE_FIELD_NUMBER = 4;
        public static final int TRANSACTION_MESSAGE_FIELD_NUMBER = 3;
        private ByteString chainId_;
        private int messageOneofCase_ = 0;
        private Object messageOneof_;
        private ByteString privateKey_;

        private SigningInput() {
            ByteString byteString = ByteString.EMPTY;
            this.chainId_ = byteString;
            this.privateKey_ = byteString;
        }

        /* loaded from: classes7.dex */
        public enum MessageOneofCase {
            TRANSACTION_MESSAGE(3),
            STAKING_MESSAGE(4),
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
                            return null;
                        }
                        return STAKING_MESSAGE;
                    }
                    return TRANSACTION_MESSAGE;
                }
                return MESSAGEONEOF_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Harmony.SigningInputOrBuilder
        public MessageOneofCase getMessageOneofCase() {
            return MessageOneofCase.forNumber(this.messageOneofCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMessageOneof() {
            this.messageOneofCase_ = 0;
            this.messageOneof_ = null;
        }

        @Override // wallet.core.jni.proto.Harmony.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Harmony.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Harmony.SigningInputOrBuilder
        public boolean hasTransactionMessage() {
            return this.messageOneofCase_ == 3;
        }

        @Override // wallet.core.jni.proto.Harmony.SigningInputOrBuilder
        public TransactionMessage getTransactionMessage() {
            if (this.messageOneofCase_ == 3) {
                return (TransactionMessage) this.messageOneof_;
            }
            return TransactionMessage.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransactionMessage(TransactionMessage value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransactionMessage(TransactionMessage value) {
            value.getClass();
            if (this.messageOneofCase_ == 3 && this.messageOneof_ != TransactionMessage.getDefaultInstance()) {
                this.messageOneof_ = TransactionMessage.newBuilder((TransactionMessage) this.messageOneof_).mergeFrom((TransactionMessage.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransactionMessage() {
            if (this.messageOneofCase_ == 3) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Harmony.SigningInputOrBuilder
        public boolean hasStakingMessage() {
            return this.messageOneofCase_ == 4;
        }

        @Override // wallet.core.jni.proto.Harmony.SigningInputOrBuilder
        public StakingMessage getStakingMessage() {
            if (this.messageOneofCase_ == 4) {
                return (StakingMessage) this.messageOneof_;
            }
            return StakingMessage.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakingMessage(StakingMessage value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakingMessage(StakingMessage value) {
            value.getClass();
            if (this.messageOneofCase_ == 4 && this.messageOneof_ != StakingMessage.getDefaultInstance()) {
                this.messageOneof_ = StakingMessage.newBuilder((StakingMessage) this.messageOneof_).mergeFrom((StakingMessage.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakingMessage() {
            if (this.messageOneofCase_ == 4) {
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
            /* synthetic */ Builder(C79361 c79361) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Harmony.SigningInputOrBuilder
            public MessageOneofCase getMessageOneofCase() {
                return ((SigningInput) this.instance).getMessageOneofCase();
            }

            public Builder clearMessageOneof() {
                copyOnWrite();
                ((SigningInput) this.instance).clearMessageOneof();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Harmony.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Harmony.SigningInputOrBuilder
            public boolean hasTransactionMessage() {
                return ((SigningInput) this.instance).hasTransactionMessage();
            }

            @Override // wallet.core.jni.proto.Harmony.SigningInputOrBuilder
            public TransactionMessage getTransactionMessage() {
                return ((SigningInput) this.instance).getTransactionMessage();
            }

            public Builder setTransactionMessage(TransactionMessage value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTransactionMessage(value);
                return this;
            }

            public Builder setTransactionMessage(TransactionMessage.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setTransactionMessage(builderForValue.build());
                return this;
            }

            public Builder mergeTransactionMessage(TransactionMessage value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeTransactionMessage(value);
                return this;
            }

            public Builder clearTransactionMessage() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTransactionMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.SigningInputOrBuilder
            public boolean hasStakingMessage() {
                return ((SigningInput) this.instance).hasStakingMessage();
            }

            @Override // wallet.core.jni.proto.Harmony.SigningInputOrBuilder
            public StakingMessage getStakingMessage() {
                return ((SigningInput) this.instance).getStakingMessage();
            }

            public Builder setStakingMessage(StakingMessage value) {
                copyOnWrite();
                ((SigningInput) this.instance).setStakingMessage(value);
                return this;
            }

            public Builder setStakingMessage(StakingMessage.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setStakingMessage(builderForValue.build());
                return this;
            }

            public Builder mergeStakingMessage(StakingMessage value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeStakingMessage(value);
                return this;
            }

            public Builder clearStakingMessage() {
                copyOnWrite();
                ((SigningInput) this.instance).clearStakingMessage();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79361.f2155xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\n\u0002\n\u0003<\u0000\u0004<\u0000", new Object[]{"messageOneof_", "messageOneofCase_", "chainId_", "privateKey_", TransactionMessage.class, StakingMessage.class});
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

    /* renamed from: wallet.core.jni.proto.Harmony$1 */
    /* loaded from: classes7.dex */
    static /* synthetic */ class C79361 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f2155xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f2155xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2155xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2155xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2155xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2155xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2155xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2155xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public static final class SigningOutput extends GeneratedMessageLite<SigningOutput, Builder> implements SigningOutputOrBuilder {
        private static final SigningOutput DEFAULT_INSTANCE;
        public static final int ENCODED_FIELD_NUMBER = 1;
        private static volatile Parser<SigningOutput> PARSER = null;
        public static final int R_FIELD_NUMBER = 3;
        public static final int S_FIELD_NUMBER = 4;
        public static final int V_FIELD_NUMBER = 2;
        private ByteString encoded_;

        /* renamed from: r_ */
        private ByteString f2156r_;

        /* renamed from: s_ */
        private ByteString f2157s_;

        /* renamed from: v_ */
        private ByteString f2158v_;

        private SigningOutput() {
            ByteString byteString = ByteString.EMPTY;
            this.encoded_ = byteString;
            this.f2158v_ = byteString;
            this.f2156r_ = byteString;
            this.f2157s_ = byteString;
        }

        @Override // wallet.core.jni.proto.Harmony.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Harmony.SigningOutputOrBuilder
        public ByteString getV() {
            return this.f2158v_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setV(ByteString value) {
            value.getClass();
            this.f2158v_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearV() {
            this.f2158v_ = getDefaultInstance().getV();
        }

        @Override // wallet.core.jni.proto.Harmony.SigningOutputOrBuilder
        public ByteString getR() {
            return this.f2156r_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setR(ByteString value) {
            value.getClass();
            this.f2156r_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearR() {
            this.f2156r_ = getDefaultInstance().getR();
        }

        @Override // wallet.core.jni.proto.Harmony.SigningOutputOrBuilder
        public ByteString getS() {
            return this.f2157s_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setS(ByteString value) {
            value.getClass();
            this.f2157s_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearS() {
            this.f2157s_ = getDefaultInstance().getS();
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
            /* synthetic */ Builder(C79361 c79361) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Harmony.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.Harmony.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.Harmony.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.Harmony.SigningOutputOrBuilder
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
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79361.f2155xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\n\u0002\n\u0003\n\u0004\n", new Object[]{"encoded_", "v_", "r_", "s_"});
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
    public static final class TransactionMessage extends GeneratedMessageLite<TransactionMessage, Builder> implements TransactionMessageOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 5;
        private static final TransactionMessage DEFAULT_INSTANCE;
        public static final int FROM_SHARD_ID_FIELD_NUMBER = 7;
        public static final int GAS_LIMIT_FIELD_NUMBER = 3;
        public static final int GAS_PRICE_FIELD_NUMBER = 2;
        public static final int NONCE_FIELD_NUMBER = 1;
        private static volatile Parser<TransactionMessage> PARSER = null;
        public static final int PAYLOAD_FIELD_NUMBER = 6;
        public static final int TO_ADDRESS_FIELD_NUMBER = 4;
        public static final int TO_SHARD_ID_FIELD_NUMBER = 8;
        private ByteString amount_;
        private ByteString fromShardId_;
        private ByteString gasLimit_;
        private ByteString gasPrice_;
        private ByteString nonce_;
        private ByteString payload_;
        private String toAddress_;
        private ByteString toShardId_;

        private TransactionMessage() {
            ByteString byteString = ByteString.EMPTY;
            this.nonce_ = byteString;
            this.gasPrice_ = byteString;
            this.gasLimit_ = byteString;
            this.toAddress_ = "";
            this.amount_ = byteString;
            this.payload_ = byteString;
            this.fromShardId_ = byteString;
            this.toShardId_ = byteString;
        }

        @Override // wallet.core.jni.proto.Harmony.TransactionMessageOrBuilder
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

        @Override // wallet.core.jni.proto.Harmony.TransactionMessageOrBuilder
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

        @Override // wallet.core.jni.proto.Harmony.TransactionMessageOrBuilder
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

        @Override // wallet.core.jni.proto.Harmony.TransactionMessageOrBuilder
        public String getToAddress() {
            return this.toAddress_;
        }

        @Override // wallet.core.jni.proto.Harmony.TransactionMessageOrBuilder
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

        @Override // wallet.core.jni.proto.Harmony.TransactionMessageOrBuilder
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

        @Override // wallet.core.jni.proto.Harmony.TransactionMessageOrBuilder
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

        @Override // wallet.core.jni.proto.Harmony.TransactionMessageOrBuilder
        public ByteString getFromShardId() {
            return this.fromShardId_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFromShardId(ByteString value) {
            value.getClass();
            this.fromShardId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFromShardId() {
            this.fromShardId_ = getDefaultInstance().getFromShardId();
        }

        @Override // wallet.core.jni.proto.Harmony.TransactionMessageOrBuilder
        public ByteString getToShardId() {
            return this.toShardId_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToShardId(ByteString value) {
            value.getClass();
            this.toShardId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearToShardId() {
            this.toShardId_ = getDefaultInstance().getToShardId();
        }

        public static TransactionMessage parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TransactionMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionMessage parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionMessage parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TransactionMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionMessage parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionMessage parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TransactionMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionMessage parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionMessage parseFrom(InputStream input) throws IOException {
            return (TransactionMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionMessage parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionMessage parseDelimitedFrom(InputStream input) throws IOException {
            return (TransactionMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionMessage parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionMessage parseFrom(CodedInputStream input) throws IOException {
            return (TransactionMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionMessage parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TransactionMessage prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransactionMessage, Builder> implements TransactionMessageOrBuilder {
            /* synthetic */ Builder(C79361 c79361) {
                this();
            }

            private Builder() {
                super(TransactionMessage.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Harmony.TransactionMessageOrBuilder
            public ByteString getNonce() {
                return ((TransactionMessage) this.instance).getNonce();
            }

            public Builder setNonce(ByteString value) {
                copyOnWrite();
                ((TransactionMessage) this.instance).setNonce(value);
                return this;
            }

            public Builder clearNonce() {
                copyOnWrite();
                ((TransactionMessage) this.instance).clearNonce();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.TransactionMessageOrBuilder
            public ByteString getGasPrice() {
                return ((TransactionMessage) this.instance).getGasPrice();
            }

            public Builder setGasPrice(ByteString value) {
                copyOnWrite();
                ((TransactionMessage) this.instance).setGasPrice(value);
                return this;
            }

            public Builder clearGasPrice() {
                copyOnWrite();
                ((TransactionMessage) this.instance).clearGasPrice();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.TransactionMessageOrBuilder
            public ByteString getGasLimit() {
                return ((TransactionMessage) this.instance).getGasLimit();
            }

            public Builder setGasLimit(ByteString value) {
                copyOnWrite();
                ((TransactionMessage) this.instance).setGasLimit(value);
                return this;
            }

            public Builder clearGasLimit() {
                copyOnWrite();
                ((TransactionMessage) this.instance).clearGasLimit();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.TransactionMessageOrBuilder
            public String getToAddress() {
                return ((TransactionMessage) this.instance).getToAddress();
            }

            @Override // wallet.core.jni.proto.Harmony.TransactionMessageOrBuilder
            public ByteString getToAddressBytes() {
                return ((TransactionMessage) this.instance).getToAddressBytes();
            }

            public Builder setToAddress(String value) {
                copyOnWrite();
                ((TransactionMessage) this.instance).setToAddress(value);
                return this;
            }

            public Builder clearToAddress() {
                copyOnWrite();
                ((TransactionMessage) this.instance).clearToAddress();
                return this;
            }

            public Builder setToAddressBytes(ByteString value) {
                copyOnWrite();
                ((TransactionMessage) this.instance).setToAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.TransactionMessageOrBuilder
            public ByteString getAmount() {
                return ((TransactionMessage) this.instance).getAmount();
            }

            public Builder setAmount(ByteString value) {
                copyOnWrite();
                ((TransactionMessage) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TransactionMessage) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.TransactionMessageOrBuilder
            public ByteString getPayload() {
                return ((TransactionMessage) this.instance).getPayload();
            }

            public Builder setPayload(ByteString value) {
                copyOnWrite();
                ((TransactionMessage) this.instance).setPayload(value);
                return this;
            }

            public Builder clearPayload() {
                copyOnWrite();
                ((TransactionMessage) this.instance).clearPayload();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.TransactionMessageOrBuilder
            public ByteString getFromShardId() {
                return ((TransactionMessage) this.instance).getFromShardId();
            }

            public Builder setFromShardId(ByteString value) {
                copyOnWrite();
                ((TransactionMessage) this.instance).setFromShardId(value);
                return this;
            }

            public Builder clearFromShardId() {
                copyOnWrite();
                ((TransactionMessage) this.instance).clearFromShardId();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.TransactionMessageOrBuilder
            public ByteString getToShardId() {
                return ((TransactionMessage) this.instance).getToShardId();
            }

            public Builder setToShardId(ByteString value) {
                copyOnWrite();
                ((TransactionMessage) this.instance).setToShardId(value);
                return this;
            }

            public Builder clearToShardId() {
                copyOnWrite();
                ((TransactionMessage) this.instance).clearToShardId();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79361.f2155xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransactionMessage();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\b\u0000\u0000\u0001\b\b\u0000\u0000\u0000\u0001\n\u0002\n\u0003\n\u0004Ȉ\u0005\n\u0006\n\u0007\n\b\n", new Object[]{"nonce_", "gasPrice_", "gasLimit_", "toAddress_", "amount_", "payload_", "fromShardId_", "toShardId_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TransactionMessage> parser = PARSER;
                    if (parser == null) {
                        synchronized (TransactionMessage.class) {
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
            TransactionMessage transactionMessage = new TransactionMessage();
            DEFAULT_INSTANCE = transactionMessage;
            GeneratedMessageLite.registerDefaultInstance(TransactionMessage.class, transactionMessage);
        }

        public static TransactionMessage getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TransactionMessage> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class StakingMessage extends GeneratedMessageLite<StakingMessage, Builder> implements StakingMessageOrBuilder {
        public static final int COLLECT_REWARDS_FIELD_NUMBER = 5;
        public static final int CREATE_VALIDATOR_MESSAGE_FIELD_NUMBER = 1;
        private static final StakingMessage DEFAULT_INSTANCE;
        public static final int DELEGATE_MESSAGE_FIELD_NUMBER = 3;
        public static final int EDIT_VALIDATOR_MESSAGE_FIELD_NUMBER = 2;
        public static final int GAS_LIMIT_FIELD_NUMBER = 8;
        public static final int GAS_PRICE_FIELD_NUMBER = 7;
        public static final int NONCE_FIELD_NUMBER = 6;
        private static volatile Parser<StakingMessage> PARSER = null;
        public static final int UNDELEGATE_MESSAGE_FIELD_NUMBER = 4;
        private ByteString gasLimit_;
        private ByteString gasPrice_;
        private ByteString nonce_;
        private int stakeMsgCase_ = 0;
        private Object stakeMsg_;

        private StakingMessage() {
            ByteString byteString = ByteString.EMPTY;
            this.nonce_ = byteString;
            this.gasPrice_ = byteString;
            this.gasLimit_ = byteString;
        }

        /* loaded from: classes7.dex */
        public enum StakeMsgCase {
            CREATE_VALIDATOR_MESSAGE(1),
            EDIT_VALIDATOR_MESSAGE(2),
            DELEGATE_MESSAGE(3),
            UNDELEGATE_MESSAGE(4),
            COLLECT_REWARDS(5),
            STAKEMSG_NOT_SET(0);
            
            private final int value;

            StakeMsgCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static StakeMsgCase valueOf(int value) {
                return forNumber(value);
            }

            public static StakeMsgCase forNumber(int value) {
                if (value != 0) {
                    if (value != 1) {
                        if (value != 2) {
                            if (value != 3) {
                                if (value != 4) {
                                    if (value != 5) {
                                        return null;
                                    }
                                    return COLLECT_REWARDS;
                                }
                                return UNDELEGATE_MESSAGE;
                            }
                            return DELEGATE_MESSAGE;
                        }
                        return EDIT_VALIDATOR_MESSAGE;
                    }
                    return CREATE_VALIDATOR_MESSAGE;
                }
                return STAKEMSG_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
        public StakeMsgCase getStakeMsgCase() {
            return StakeMsgCase.forNumber(this.stakeMsgCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeMsg() {
            this.stakeMsgCase_ = 0;
            this.stakeMsg_ = null;
        }

        @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
        public boolean hasCreateValidatorMessage() {
            return this.stakeMsgCase_ == 1;
        }

        @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
        public DirectiveCreateValidator getCreateValidatorMessage() {
            if (this.stakeMsgCase_ == 1) {
                return (DirectiveCreateValidator) this.stakeMsg_;
            }
            return DirectiveCreateValidator.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCreateValidatorMessage(DirectiveCreateValidator value) {
            value.getClass();
            this.stakeMsg_ = value;
            this.stakeMsgCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeCreateValidatorMessage(DirectiveCreateValidator value) {
            value.getClass();
            if (this.stakeMsgCase_ == 1 && this.stakeMsg_ != DirectiveCreateValidator.getDefaultInstance()) {
                this.stakeMsg_ = DirectiveCreateValidator.newBuilder((DirectiveCreateValidator) this.stakeMsg_).mergeFrom((DirectiveCreateValidator.Builder) value).buildPartial();
            } else {
                this.stakeMsg_ = value;
            }
            this.stakeMsgCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCreateValidatorMessage() {
            if (this.stakeMsgCase_ == 1) {
                this.stakeMsgCase_ = 0;
                this.stakeMsg_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
        public boolean hasEditValidatorMessage() {
            return this.stakeMsgCase_ == 2;
        }

        @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
        public DirectiveEditValidator getEditValidatorMessage() {
            if (this.stakeMsgCase_ == 2) {
                return (DirectiveEditValidator) this.stakeMsg_;
            }
            return DirectiveEditValidator.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEditValidatorMessage(DirectiveEditValidator value) {
            value.getClass();
            this.stakeMsg_ = value;
            this.stakeMsgCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeEditValidatorMessage(DirectiveEditValidator value) {
            value.getClass();
            if (this.stakeMsgCase_ == 2 && this.stakeMsg_ != DirectiveEditValidator.getDefaultInstance()) {
                this.stakeMsg_ = DirectiveEditValidator.newBuilder((DirectiveEditValidator) this.stakeMsg_).mergeFrom((DirectiveEditValidator.Builder) value).buildPartial();
            } else {
                this.stakeMsg_ = value;
            }
            this.stakeMsgCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearEditValidatorMessage() {
            if (this.stakeMsgCase_ == 2) {
                this.stakeMsgCase_ = 0;
                this.stakeMsg_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
        public boolean hasDelegateMessage() {
            return this.stakeMsgCase_ == 3;
        }

        @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
        public DirectiveDelegate getDelegateMessage() {
            if (this.stakeMsgCase_ == 3) {
                return (DirectiveDelegate) this.stakeMsg_;
            }
            return DirectiveDelegate.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDelegateMessage(DirectiveDelegate value) {
            value.getClass();
            this.stakeMsg_ = value;
            this.stakeMsgCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeDelegateMessage(DirectiveDelegate value) {
            value.getClass();
            if (this.stakeMsgCase_ == 3 && this.stakeMsg_ != DirectiveDelegate.getDefaultInstance()) {
                this.stakeMsg_ = DirectiveDelegate.newBuilder((DirectiveDelegate) this.stakeMsg_).mergeFrom((DirectiveDelegate.Builder) value).buildPartial();
            } else {
                this.stakeMsg_ = value;
            }
            this.stakeMsgCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDelegateMessage() {
            if (this.stakeMsgCase_ == 3) {
                this.stakeMsgCase_ = 0;
                this.stakeMsg_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
        public boolean hasUndelegateMessage() {
            return this.stakeMsgCase_ == 4;
        }

        @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
        public DirectiveUndelegate getUndelegateMessage() {
            if (this.stakeMsgCase_ == 4) {
                return (DirectiveUndelegate) this.stakeMsg_;
            }
            return DirectiveUndelegate.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUndelegateMessage(DirectiveUndelegate value) {
            value.getClass();
            this.stakeMsg_ = value;
            this.stakeMsgCase_ = 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeUndelegateMessage(DirectiveUndelegate value) {
            value.getClass();
            if (this.stakeMsgCase_ == 4 && this.stakeMsg_ != DirectiveUndelegate.getDefaultInstance()) {
                this.stakeMsg_ = DirectiveUndelegate.newBuilder((DirectiveUndelegate) this.stakeMsg_).mergeFrom((DirectiveUndelegate.Builder) value).buildPartial();
            } else {
                this.stakeMsg_ = value;
            }
            this.stakeMsgCase_ = 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUndelegateMessage() {
            if (this.stakeMsgCase_ == 4) {
                this.stakeMsgCase_ = 0;
                this.stakeMsg_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
        public boolean hasCollectRewards() {
            return this.stakeMsgCase_ == 5;
        }

        @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
        public DirectiveCollectRewards getCollectRewards() {
            if (this.stakeMsgCase_ == 5) {
                return (DirectiveCollectRewards) this.stakeMsg_;
            }
            return DirectiveCollectRewards.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCollectRewards(DirectiveCollectRewards value) {
            value.getClass();
            this.stakeMsg_ = value;
            this.stakeMsgCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeCollectRewards(DirectiveCollectRewards value) {
            value.getClass();
            if (this.stakeMsgCase_ == 5 && this.stakeMsg_ != DirectiveCollectRewards.getDefaultInstance()) {
                this.stakeMsg_ = DirectiveCollectRewards.newBuilder((DirectiveCollectRewards) this.stakeMsg_).mergeFrom((DirectiveCollectRewards.Builder) value).buildPartial();
            } else {
                this.stakeMsg_ = value;
            }
            this.stakeMsgCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCollectRewards() {
            if (this.stakeMsgCase_ == 5) {
                this.stakeMsgCase_ = 0;
                this.stakeMsg_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
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

        @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
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

        @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
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

        public static StakingMessage parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (StakingMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static StakingMessage parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (StakingMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static StakingMessage parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (StakingMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static StakingMessage parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (StakingMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static StakingMessage parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (StakingMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static StakingMessage parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (StakingMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static StakingMessage parseFrom(InputStream input) throws IOException {
            return (StakingMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static StakingMessage parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (StakingMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static StakingMessage parseDelimitedFrom(InputStream input) throws IOException {
            return (StakingMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static StakingMessage parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (StakingMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static StakingMessage parseFrom(CodedInputStream input) throws IOException {
            return (StakingMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static StakingMessage parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (StakingMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(StakingMessage prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<StakingMessage, Builder> implements StakingMessageOrBuilder {
            /* synthetic */ Builder(C79361 c79361) {
                this();
            }

            private Builder() {
                super(StakingMessage.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
            public StakeMsgCase getStakeMsgCase() {
                return ((StakingMessage) this.instance).getStakeMsgCase();
            }

            public Builder clearStakeMsg() {
                copyOnWrite();
                ((StakingMessage) this.instance).clearStakeMsg();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
            public boolean hasCreateValidatorMessage() {
                return ((StakingMessage) this.instance).hasCreateValidatorMessage();
            }

            @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
            public DirectiveCreateValidator getCreateValidatorMessage() {
                return ((StakingMessage) this.instance).getCreateValidatorMessage();
            }

            public Builder setCreateValidatorMessage(DirectiveCreateValidator value) {
                copyOnWrite();
                ((StakingMessage) this.instance).setCreateValidatorMessage(value);
                return this;
            }

            public Builder setCreateValidatorMessage(DirectiveCreateValidator.Builder builderForValue) {
                copyOnWrite();
                ((StakingMessage) this.instance).setCreateValidatorMessage(builderForValue.build());
                return this;
            }

            public Builder mergeCreateValidatorMessage(DirectiveCreateValidator value) {
                copyOnWrite();
                ((StakingMessage) this.instance).mergeCreateValidatorMessage(value);
                return this;
            }

            public Builder clearCreateValidatorMessage() {
                copyOnWrite();
                ((StakingMessage) this.instance).clearCreateValidatorMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
            public boolean hasEditValidatorMessage() {
                return ((StakingMessage) this.instance).hasEditValidatorMessage();
            }

            @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
            public DirectiveEditValidator getEditValidatorMessage() {
                return ((StakingMessage) this.instance).getEditValidatorMessage();
            }

            public Builder setEditValidatorMessage(DirectiveEditValidator value) {
                copyOnWrite();
                ((StakingMessage) this.instance).setEditValidatorMessage(value);
                return this;
            }

            public Builder setEditValidatorMessage(DirectiveEditValidator.Builder builderForValue) {
                copyOnWrite();
                ((StakingMessage) this.instance).setEditValidatorMessage(builderForValue.build());
                return this;
            }

            public Builder mergeEditValidatorMessage(DirectiveEditValidator value) {
                copyOnWrite();
                ((StakingMessage) this.instance).mergeEditValidatorMessage(value);
                return this;
            }

            public Builder clearEditValidatorMessage() {
                copyOnWrite();
                ((StakingMessage) this.instance).clearEditValidatorMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
            public boolean hasDelegateMessage() {
                return ((StakingMessage) this.instance).hasDelegateMessage();
            }

            @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
            public DirectiveDelegate getDelegateMessage() {
                return ((StakingMessage) this.instance).getDelegateMessage();
            }

            public Builder setDelegateMessage(DirectiveDelegate value) {
                copyOnWrite();
                ((StakingMessage) this.instance).setDelegateMessage(value);
                return this;
            }

            public Builder setDelegateMessage(DirectiveDelegate.Builder builderForValue) {
                copyOnWrite();
                ((StakingMessage) this.instance).setDelegateMessage(builderForValue.build());
                return this;
            }

            public Builder mergeDelegateMessage(DirectiveDelegate value) {
                copyOnWrite();
                ((StakingMessage) this.instance).mergeDelegateMessage(value);
                return this;
            }

            public Builder clearDelegateMessage() {
                copyOnWrite();
                ((StakingMessage) this.instance).clearDelegateMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
            public boolean hasUndelegateMessage() {
                return ((StakingMessage) this.instance).hasUndelegateMessage();
            }

            @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
            public DirectiveUndelegate getUndelegateMessage() {
                return ((StakingMessage) this.instance).getUndelegateMessage();
            }

            public Builder setUndelegateMessage(DirectiveUndelegate value) {
                copyOnWrite();
                ((StakingMessage) this.instance).setUndelegateMessage(value);
                return this;
            }

            public Builder setUndelegateMessage(DirectiveUndelegate.Builder builderForValue) {
                copyOnWrite();
                ((StakingMessage) this.instance).setUndelegateMessage(builderForValue.build());
                return this;
            }

            public Builder mergeUndelegateMessage(DirectiveUndelegate value) {
                copyOnWrite();
                ((StakingMessage) this.instance).mergeUndelegateMessage(value);
                return this;
            }

            public Builder clearUndelegateMessage() {
                copyOnWrite();
                ((StakingMessage) this.instance).clearUndelegateMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
            public boolean hasCollectRewards() {
                return ((StakingMessage) this.instance).hasCollectRewards();
            }

            @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
            public DirectiveCollectRewards getCollectRewards() {
                return ((StakingMessage) this.instance).getCollectRewards();
            }

            public Builder setCollectRewards(DirectiveCollectRewards value) {
                copyOnWrite();
                ((StakingMessage) this.instance).setCollectRewards(value);
                return this;
            }

            public Builder setCollectRewards(DirectiveCollectRewards.Builder builderForValue) {
                copyOnWrite();
                ((StakingMessage) this.instance).setCollectRewards(builderForValue.build());
                return this;
            }

            public Builder mergeCollectRewards(DirectiveCollectRewards value) {
                copyOnWrite();
                ((StakingMessage) this.instance).mergeCollectRewards(value);
                return this;
            }

            public Builder clearCollectRewards() {
                copyOnWrite();
                ((StakingMessage) this.instance).clearCollectRewards();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
            public ByteString getNonce() {
                return ((StakingMessage) this.instance).getNonce();
            }

            public Builder setNonce(ByteString value) {
                copyOnWrite();
                ((StakingMessage) this.instance).setNonce(value);
                return this;
            }

            public Builder clearNonce() {
                copyOnWrite();
                ((StakingMessage) this.instance).clearNonce();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
            public ByteString getGasPrice() {
                return ((StakingMessage) this.instance).getGasPrice();
            }

            public Builder setGasPrice(ByteString value) {
                copyOnWrite();
                ((StakingMessage) this.instance).setGasPrice(value);
                return this;
            }

            public Builder clearGasPrice() {
                copyOnWrite();
                ((StakingMessage) this.instance).clearGasPrice();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.StakingMessageOrBuilder
            public ByteString getGasLimit() {
                return ((StakingMessage) this.instance).getGasLimit();
            }

            public Builder setGasLimit(ByteString value) {
                copyOnWrite();
                ((StakingMessage) this.instance).setGasLimit(value);
                return this;
            }

            public Builder clearGasLimit() {
                copyOnWrite();
                ((StakingMessage) this.instance).clearGasLimit();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79361.f2155xa1df5c61[method.ordinal()]) {
                case 1:
                    return new StakingMessage();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\b\u0001\u0000\u0001\b\b\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006\n\u0007\n\b\n", new Object[]{"stakeMsg_", "stakeMsgCase_", DirectiveCreateValidator.class, DirectiveEditValidator.class, DirectiveDelegate.class, DirectiveUndelegate.class, DirectiveCollectRewards.class, "nonce_", "gasPrice_", "gasLimit_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<StakingMessage> parser = PARSER;
                    if (parser == null) {
                        synchronized (StakingMessage.class) {
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
            StakingMessage stakingMessage = new StakingMessage();
            DEFAULT_INSTANCE = stakingMessage;
            GeneratedMessageLite.registerDefaultInstance(StakingMessage.class, stakingMessage);
        }

        public static StakingMessage getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<StakingMessage> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class Description extends GeneratedMessageLite<Description, Builder> implements DescriptionOrBuilder {
        private static final Description DEFAULT_INSTANCE;
        public static final int DETAILS_FIELD_NUMBER = 5;
        public static final int IDENTITY_FIELD_NUMBER = 2;
        public static final int NAME_FIELD_NUMBER = 1;
        private static volatile Parser<Description> PARSER = null;
        public static final int SECURITY_CONTACT_FIELD_NUMBER = 4;
        public static final int WEBSITE_FIELD_NUMBER = 3;
        private String name_ = "";
        private String identity_ = "";
        private String website_ = "";
        private String securityContact_ = "";
        private String details_ = "";

        private Description() {
        }

        @Override // wallet.core.jni.proto.Harmony.DescriptionOrBuilder
        public String getName() {
            return this.name_;
        }

        @Override // wallet.core.jni.proto.Harmony.DescriptionOrBuilder
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

        @Override // wallet.core.jni.proto.Harmony.DescriptionOrBuilder
        public String getIdentity() {
            return this.identity_;
        }

        @Override // wallet.core.jni.proto.Harmony.DescriptionOrBuilder
        public ByteString getIdentityBytes() {
            return ByteString.copyFromUtf8(this.identity_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIdentity(String value) {
            value.getClass();
            this.identity_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearIdentity() {
            this.identity_ = getDefaultInstance().getIdentity();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIdentityBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.identity_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Harmony.DescriptionOrBuilder
        public String getWebsite() {
            return this.website_;
        }

        @Override // wallet.core.jni.proto.Harmony.DescriptionOrBuilder
        public ByteString getWebsiteBytes() {
            return ByteString.copyFromUtf8(this.website_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWebsite(String value) {
            value.getClass();
            this.website_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearWebsite() {
            this.website_ = getDefaultInstance().getWebsite();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWebsiteBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.website_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Harmony.DescriptionOrBuilder
        public String getSecurityContact() {
            return this.securityContact_;
        }

        @Override // wallet.core.jni.proto.Harmony.DescriptionOrBuilder
        public ByteString getSecurityContactBytes() {
            return ByteString.copyFromUtf8(this.securityContact_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSecurityContact(String value) {
            value.getClass();
            this.securityContact_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSecurityContact() {
            this.securityContact_ = getDefaultInstance().getSecurityContact();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSecurityContactBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.securityContact_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Harmony.DescriptionOrBuilder
        public String getDetails() {
            return this.details_;
        }

        @Override // wallet.core.jni.proto.Harmony.DescriptionOrBuilder
        public ByteString getDetailsBytes() {
            return ByteString.copyFromUtf8(this.details_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDetails(String value) {
            value.getClass();
            this.details_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDetails() {
            this.details_ = getDefaultInstance().getDetails();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDetailsBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.details_ = value.toStringUtf8();
        }

        public static Description parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Description) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Description parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Description) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Description parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Description) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Description parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Description) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Description parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Description) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Description parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Description) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Description parseFrom(InputStream input) throws IOException {
            return (Description) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Description parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Description) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Description parseDelimitedFrom(InputStream input) throws IOException {
            return (Description) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Description parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Description) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Description parseFrom(CodedInputStream input) throws IOException {
            return (Description) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Description parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Description) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Description prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Description, Builder> implements DescriptionOrBuilder {
            /* synthetic */ Builder(C79361 c79361) {
                this();
            }

            private Builder() {
                super(Description.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Harmony.DescriptionOrBuilder
            public String getName() {
                return ((Description) this.instance).getName();
            }

            @Override // wallet.core.jni.proto.Harmony.DescriptionOrBuilder
            public ByteString getNameBytes() {
                return ((Description) this.instance).getNameBytes();
            }

            public Builder setName(String value) {
                copyOnWrite();
                ((Description) this.instance).setName(value);
                return this;
            }

            public Builder clearName() {
                copyOnWrite();
                ((Description) this.instance).clearName();
                return this;
            }

            public Builder setNameBytes(ByteString value) {
                copyOnWrite();
                ((Description) this.instance).setNameBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DescriptionOrBuilder
            public String getIdentity() {
                return ((Description) this.instance).getIdentity();
            }

            @Override // wallet.core.jni.proto.Harmony.DescriptionOrBuilder
            public ByteString getIdentityBytes() {
                return ((Description) this.instance).getIdentityBytes();
            }

            public Builder setIdentity(String value) {
                copyOnWrite();
                ((Description) this.instance).setIdentity(value);
                return this;
            }

            public Builder clearIdentity() {
                copyOnWrite();
                ((Description) this.instance).clearIdentity();
                return this;
            }

            public Builder setIdentityBytes(ByteString value) {
                copyOnWrite();
                ((Description) this.instance).setIdentityBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DescriptionOrBuilder
            public String getWebsite() {
                return ((Description) this.instance).getWebsite();
            }

            @Override // wallet.core.jni.proto.Harmony.DescriptionOrBuilder
            public ByteString getWebsiteBytes() {
                return ((Description) this.instance).getWebsiteBytes();
            }

            public Builder setWebsite(String value) {
                copyOnWrite();
                ((Description) this.instance).setWebsite(value);
                return this;
            }

            public Builder clearWebsite() {
                copyOnWrite();
                ((Description) this.instance).clearWebsite();
                return this;
            }

            public Builder setWebsiteBytes(ByteString value) {
                copyOnWrite();
                ((Description) this.instance).setWebsiteBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DescriptionOrBuilder
            public String getSecurityContact() {
                return ((Description) this.instance).getSecurityContact();
            }

            @Override // wallet.core.jni.proto.Harmony.DescriptionOrBuilder
            public ByteString getSecurityContactBytes() {
                return ((Description) this.instance).getSecurityContactBytes();
            }

            public Builder setSecurityContact(String value) {
                copyOnWrite();
                ((Description) this.instance).setSecurityContact(value);
                return this;
            }

            public Builder clearSecurityContact() {
                copyOnWrite();
                ((Description) this.instance).clearSecurityContact();
                return this;
            }

            public Builder setSecurityContactBytes(ByteString value) {
                copyOnWrite();
                ((Description) this.instance).setSecurityContactBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DescriptionOrBuilder
            public String getDetails() {
                return ((Description) this.instance).getDetails();
            }

            @Override // wallet.core.jni.proto.Harmony.DescriptionOrBuilder
            public ByteString getDetailsBytes() {
                return ((Description) this.instance).getDetailsBytes();
            }

            public Builder setDetails(String value) {
                copyOnWrite();
                ((Description) this.instance).setDetails(value);
                return this;
            }

            public Builder clearDetails() {
                copyOnWrite();
                ((Description) this.instance).clearDetails();
                return this;
            }

            public Builder setDetailsBytes(ByteString value) {
                copyOnWrite();
                ((Description) this.instance).setDetailsBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79361.f2155xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Description();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004Ȉ\u0005Ȉ", new Object[]{"name_", "identity_", "website_", "securityContact_", "details_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Description> parser = PARSER;
                    if (parser == null) {
                        synchronized (Description.class) {
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
            Description description = new Description();
            DEFAULT_INSTANCE = description;
            GeneratedMessageLite.registerDefaultInstance(Description.class, description);
        }

        public static Description getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Description> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class Decimal extends GeneratedMessageLite<Decimal, Builder> implements DecimalOrBuilder {
        private static final Decimal DEFAULT_INSTANCE;
        private static volatile Parser<Decimal> PARSER = null;
        public static final int PRECISION_FIELD_NUMBER = 2;
        public static final int VALUE_FIELD_NUMBER = 1;
        private ByteString precision_;
        private ByteString value_;

        private Decimal() {
            ByteString byteString = ByteString.EMPTY;
            this.value_ = byteString;
            this.precision_ = byteString;
        }

        @Override // wallet.core.jni.proto.Harmony.DecimalOrBuilder
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

        @Override // wallet.core.jni.proto.Harmony.DecimalOrBuilder
        public ByteString getPrecision() {
            return this.precision_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPrecision(ByteString value) {
            value.getClass();
            this.precision_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPrecision() {
            this.precision_ = getDefaultInstance().getPrecision();
        }

        public static Decimal parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Decimal) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Decimal parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Decimal) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Decimal parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Decimal) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Decimal parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Decimal) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Decimal parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Decimal) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Decimal parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Decimal) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Decimal parseFrom(InputStream input) throws IOException {
            return (Decimal) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Decimal parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Decimal) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Decimal parseDelimitedFrom(InputStream input) throws IOException {
            return (Decimal) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Decimal parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Decimal) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Decimal parseFrom(CodedInputStream input) throws IOException {
            return (Decimal) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Decimal parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Decimal) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Decimal prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Decimal, Builder> implements DecimalOrBuilder {
            /* synthetic */ Builder(C79361 c79361) {
                this();
            }

            private Builder() {
                super(Decimal.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Harmony.DecimalOrBuilder
            public ByteString getValue() {
                return ((Decimal) this.instance).getValue();
            }

            public Builder setValue(ByteString value) {
                copyOnWrite();
                ((Decimal) this.instance).setValue(value);
                return this;
            }

            public Builder clearValue() {
                copyOnWrite();
                ((Decimal) this.instance).clearValue();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DecimalOrBuilder
            public ByteString getPrecision() {
                return ((Decimal) this.instance).getPrecision();
            }

            public Builder setPrecision(ByteString value) {
                copyOnWrite();
                ((Decimal) this.instance).setPrecision(value);
                return this;
            }

            public Builder clearPrecision() {
                copyOnWrite();
                ((Decimal) this.instance).clearPrecision();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79361.f2155xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Decimal();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\n", new Object[]{"value_", "precision_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Decimal> parser = PARSER;
                    if (parser == null) {
                        synchronized (Decimal.class) {
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
            Decimal decimal = new Decimal();
            DEFAULT_INSTANCE = decimal;
            GeneratedMessageLite.registerDefaultInstance(Decimal.class, decimal);
        }

        public static Decimal getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Decimal> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class CommissionRate extends GeneratedMessageLite<CommissionRate, Builder> implements CommissionRateOrBuilder {
        private static final CommissionRate DEFAULT_INSTANCE;
        public static final int MAX_CHANGE_RATE_FIELD_NUMBER = 3;
        public static final int MAX_RATE_FIELD_NUMBER = 2;
        private static volatile Parser<CommissionRate> PARSER = null;
        public static final int RATE_FIELD_NUMBER = 1;
        private Decimal maxChangeRate_;
        private Decimal maxRate_;
        private Decimal rate_;

        private CommissionRate() {
        }

        @Override // wallet.core.jni.proto.Harmony.CommissionRateOrBuilder
        public boolean hasRate() {
            return this.rate_ != null;
        }

        @Override // wallet.core.jni.proto.Harmony.CommissionRateOrBuilder
        public Decimal getRate() {
            Decimal decimal = this.rate_;
            return decimal == null ? Decimal.getDefaultInstance() : decimal;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRate(Decimal value) {
            value.getClass();
            this.rate_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeRate(Decimal value) {
            value.getClass();
            Decimal decimal = this.rate_;
            if (decimal != null && decimal != Decimal.getDefaultInstance()) {
                this.rate_ = Decimal.newBuilder(this.rate_).mergeFrom((Decimal.Builder) value).buildPartial();
            } else {
                this.rate_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRate() {
            this.rate_ = null;
        }

        @Override // wallet.core.jni.proto.Harmony.CommissionRateOrBuilder
        public boolean hasMaxRate() {
            return this.maxRate_ != null;
        }

        @Override // wallet.core.jni.proto.Harmony.CommissionRateOrBuilder
        public Decimal getMaxRate() {
            Decimal decimal = this.maxRate_;
            return decimal == null ? Decimal.getDefaultInstance() : decimal;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMaxRate(Decimal value) {
            value.getClass();
            this.maxRate_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeMaxRate(Decimal value) {
            value.getClass();
            Decimal decimal = this.maxRate_;
            if (decimal != null && decimal != Decimal.getDefaultInstance()) {
                this.maxRate_ = Decimal.newBuilder(this.maxRate_).mergeFrom((Decimal.Builder) value).buildPartial();
            } else {
                this.maxRate_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMaxRate() {
            this.maxRate_ = null;
        }

        @Override // wallet.core.jni.proto.Harmony.CommissionRateOrBuilder
        public boolean hasMaxChangeRate() {
            return this.maxChangeRate_ != null;
        }

        @Override // wallet.core.jni.proto.Harmony.CommissionRateOrBuilder
        public Decimal getMaxChangeRate() {
            Decimal decimal = this.maxChangeRate_;
            return decimal == null ? Decimal.getDefaultInstance() : decimal;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMaxChangeRate(Decimal value) {
            value.getClass();
            this.maxChangeRate_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeMaxChangeRate(Decimal value) {
            value.getClass();
            Decimal decimal = this.maxChangeRate_;
            if (decimal != null && decimal != Decimal.getDefaultInstance()) {
                this.maxChangeRate_ = Decimal.newBuilder(this.maxChangeRate_).mergeFrom((Decimal.Builder) value).buildPartial();
            } else {
                this.maxChangeRate_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMaxChangeRate() {
            this.maxChangeRate_ = null;
        }

        public static CommissionRate parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (CommissionRate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CommissionRate parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CommissionRate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CommissionRate parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (CommissionRate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CommissionRate parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CommissionRate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CommissionRate parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (CommissionRate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CommissionRate parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CommissionRate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CommissionRate parseFrom(InputStream input) throws IOException {
            return (CommissionRate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static CommissionRate parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CommissionRate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static CommissionRate parseDelimitedFrom(InputStream input) throws IOException {
            return (CommissionRate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static CommissionRate parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CommissionRate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static CommissionRate parseFrom(CodedInputStream input) throws IOException {
            return (CommissionRate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static CommissionRate parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CommissionRate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(CommissionRate prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<CommissionRate, Builder> implements CommissionRateOrBuilder {
            /* synthetic */ Builder(C79361 c79361) {
                this();
            }

            private Builder() {
                super(CommissionRate.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Harmony.CommissionRateOrBuilder
            public boolean hasRate() {
                return ((CommissionRate) this.instance).hasRate();
            }

            @Override // wallet.core.jni.proto.Harmony.CommissionRateOrBuilder
            public Decimal getRate() {
                return ((CommissionRate) this.instance).getRate();
            }

            public Builder setRate(Decimal value) {
                copyOnWrite();
                ((CommissionRate) this.instance).setRate(value);
                return this;
            }

            public Builder setRate(Decimal.Builder builderForValue) {
                copyOnWrite();
                ((CommissionRate) this.instance).setRate(builderForValue.build());
                return this;
            }

            public Builder mergeRate(Decimal value) {
                copyOnWrite();
                ((CommissionRate) this.instance).mergeRate(value);
                return this;
            }

            public Builder clearRate() {
                copyOnWrite();
                ((CommissionRate) this.instance).clearRate();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.CommissionRateOrBuilder
            public boolean hasMaxRate() {
                return ((CommissionRate) this.instance).hasMaxRate();
            }

            @Override // wallet.core.jni.proto.Harmony.CommissionRateOrBuilder
            public Decimal getMaxRate() {
                return ((CommissionRate) this.instance).getMaxRate();
            }

            public Builder setMaxRate(Decimal value) {
                copyOnWrite();
                ((CommissionRate) this.instance).setMaxRate(value);
                return this;
            }

            public Builder setMaxRate(Decimal.Builder builderForValue) {
                copyOnWrite();
                ((CommissionRate) this.instance).setMaxRate(builderForValue.build());
                return this;
            }

            public Builder mergeMaxRate(Decimal value) {
                copyOnWrite();
                ((CommissionRate) this.instance).mergeMaxRate(value);
                return this;
            }

            public Builder clearMaxRate() {
                copyOnWrite();
                ((CommissionRate) this.instance).clearMaxRate();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.CommissionRateOrBuilder
            public boolean hasMaxChangeRate() {
                return ((CommissionRate) this.instance).hasMaxChangeRate();
            }

            @Override // wallet.core.jni.proto.Harmony.CommissionRateOrBuilder
            public Decimal getMaxChangeRate() {
                return ((CommissionRate) this.instance).getMaxChangeRate();
            }

            public Builder setMaxChangeRate(Decimal value) {
                copyOnWrite();
                ((CommissionRate) this.instance).setMaxChangeRate(value);
                return this;
            }

            public Builder setMaxChangeRate(Decimal.Builder builderForValue) {
                copyOnWrite();
                ((CommissionRate) this.instance).setMaxChangeRate(builderForValue.build());
                return this;
            }

            public Builder mergeMaxChangeRate(Decimal value) {
                copyOnWrite();
                ((CommissionRate) this.instance).mergeMaxChangeRate(value);
                return this;
            }

            public Builder clearMaxChangeRate() {
                copyOnWrite();
                ((CommissionRate) this.instance).clearMaxChangeRate();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79361.f2155xa1df5c61[method.ordinal()]) {
                case 1:
                    return new CommissionRate();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\t", new Object[]{"rate_", "maxRate_", "maxChangeRate_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<CommissionRate> parser = PARSER;
                    if (parser == null) {
                        synchronized (CommissionRate.class) {
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
            CommissionRate commissionRate = new CommissionRate();
            DEFAULT_INSTANCE = commissionRate;
            GeneratedMessageLite.registerDefaultInstance(CommissionRate.class, commissionRate);
        }

        public static CommissionRate getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CommissionRate> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class DirectiveCreateValidator extends GeneratedMessageLite<DirectiveCreateValidator, Builder> implements DirectiveCreateValidatorOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 8;
        public static final int COMMISSION_RATES_FIELD_NUMBER = 3;
        private static final DirectiveCreateValidator DEFAULT_INSTANCE;
        public static final int DESCRIPTION_FIELD_NUMBER = 2;
        public static final int MAX_TOTAL_DELEGATION_FIELD_NUMBER = 5;
        public static final int MIN_SELF_DELEGATION_FIELD_NUMBER = 4;
        private static volatile Parser<DirectiveCreateValidator> PARSER = null;
        public static final int SLOT_KEY_SIGS_FIELD_NUMBER = 7;
        public static final int SLOT_PUB_KEYS_FIELD_NUMBER = 6;
        public static final int VALIDATOR_ADDRESS_FIELD_NUMBER = 1;
        private ByteString amount_;
        private CommissionRate commissionRates_;
        private Description description_;
        private ByteString maxTotalDelegation_;
        private ByteString minSelfDelegation_;
        private Internal.ProtobufList<ByteString> slotKeySigs_;
        private Internal.ProtobufList<ByteString> slotPubKeys_;
        private String validatorAddress_ = "";

        private DirectiveCreateValidator() {
            ByteString byteString = ByteString.EMPTY;
            this.minSelfDelegation_ = byteString;
            this.maxTotalDelegation_ = byteString;
            this.slotPubKeys_ = GeneratedMessageLite.emptyProtobufList();
            this.slotKeySigs_ = GeneratedMessageLite.emptyProtobufList();
            this.amount_ = byteString;
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
        public String getValidatorAddress() {
            return this.validatorAddress_;
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
        public ByteString getValidatorAddressBytes() {
            return ByteString.copyFromUtf8(this.validatorAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValidatorAddress(String value) {
            value.getClass();
            this.validatorAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValidatorAddress() {
            this.validatorAddress_ = getDefaultInstance().getValidatorAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValidatorAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.validatorAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
        public boolean hasDescription() {
            return this.description_ != null;
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
        public Description getDescription() {
            Description description = this.description_;
            return description == null ? Description.getDefaultInstance() : description;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDescription(Description value) {
            value.getClass();
            this.description_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeDescription(Description value) {
            value.getClass();
            Description description = this.description_;
            if (description != null && description != Description.getDefaultInstance()) {
                this.description_ = Description.newBuilder(this.description_).mergeFrom((Description.Builder) value).buildPartial();
            } else {
                this.description_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDescription() {
            this.description_ = null;
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
        public boolean hasCommissionRates() {
            return this.commissionRates_ != null;
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
        public CommissionRate getCommissionRates() {
            CommissionRate commissionRate = this.commissionRates_;
            return commissionRate == null ? CommissionRate.getDefaultInstance() : commissionRate;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCommissionRates(CommissionRate value) {
            value.getClass();
            this.commissionRates_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeCommissionRates(CommissionRate value) {
            value.getClass();
            CommissionRate commissionRate = this.commissionRates_;
            if (commissionRate != null && commissionRate != CommissionRate.getDefaultInstance()) {
                this.commissionRates_ = CommissionRate.newBuilder(this.commissionRates_).mergeFrom((CommissionRate.Builder) value).buildPartial();
            } else {
                this.commissionRates_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCommissionRates() {
            this.commissionRates_ = null;
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
        public ByteString getMinSelfDelegation() {
            return this.minSelfDelegation_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMinSelfDelegation(ByteString value) {
            value.getClass();
            this.minSelfDelegation_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMinSelfDelegation() {
            this.minSelfDelegation_ = getDefaultInstance().getMinSelfDelegation();
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
        public ByteString getMaxTotalDelegation() {
            return this.maxTotalDelegation_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMaxTotalDelegation(ByteString value) {
            value.getClass();
            this.maxTotalDelegation_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMaxTotalDelegation() {
            this.maxTotalDelegation_ = getDefaultInstance().getMaxTotalDelegation();
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
        public List<ByteString> getSlotPubKeysList() {
            return this.slotPubKeys_;
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
        public int getSlotPubKeysCount() {
            return this.slotPubKeys_.size();
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
        public ByteString getSlotPubKeys(int index) {
            return this.slotPubKeys_.get(index);
        }

        private void ensureSlotPubKeysIsMutable() {
            Internal.ProtobufList<ByteString> protobufList = this.slotPubKeys_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.slotPubKeys_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSlotPubKeys(int index, ByteString value) {
            value.getClass();
            ensureSlotPubKeysIsMutable();
            this.slotPubKeys_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addSlotPubKeys(ByteString value) {
            value.getClass();
            ensureSlotPubKeysIsMutable();
            this.slotPubKeys_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllSlotPubKeys(Iterable<? extends ByteString> values) {
            ensureSlotPubKeysIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.slotPubKeys_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSlotPubKeys() {
            this.slotPubKeys_ = GeneratedMessageLite.emptyProtobufList();
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
        public List<ByteString> getSlotKeySigsList() {
            return this.slotKeySigs_;
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
        public int getSlotKeySigsCount() {
            return this.slotKeySigs_.size();
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
        public ByteString getSlotKeySigs(int index) {
            return this.slotKeySigs_.get(index);
        }

        private void ensureSlotKeySigsIsMutable() {
            Internal.ProtobufList<ByteString> protobufList = this.slotKeySigs_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.slotKeySigs_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSlotKeySigs(int index, ByteString value) {
            value.getClass();
            ensureSlotKeySigsIsMutable();
            this.slotKeySigs_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addSlotKeySigs(ByteString value) {
            value.getClass();
            ensureSlotKeySigsIsMutable();
            this.slotKeySigs_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllSlotKeySigs(Iterable<? extends ByteString> values) {
            ensureSlotKeySigsIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.slotKeySigs_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSlotKeySigs() {
            this.slotKeySigs_ = GeneratedMessageLite.emptyProtobufList();
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
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

        public static DirectiveCreateValidator parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (DirectiveCreateValidator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DirectiveCreateValidator parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DirectiveCreateValidator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DirectiveCreateValidator parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (DirectiveCreateValidator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DirectiveCreateValidator parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DirectiveCreateValidator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DirectiveCreateValidator parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (DirectiveCreateValidator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DirectiveCreateValidator parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DirectiveCreateValidator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DirectiveCreateValidator parseFrom(InputStream input) throws IOException {
            return (DirectiveCreateValidator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DirectiveCreateValidator parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DirectiveCreateValidator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DirectiveCreateValidator parseDelimitedFrom(InputStream input) throws IOException {
            return (DirectiveCreateValidator) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static DirectiveCreateValidator parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DirectiveCreateValidator) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DirectiveCreateValidator parseFrom(CodedInputStream input) throws IOException {
            return (DirectiveCreateValidator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DirectiveCreateValidator parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DirectiveCreateValidator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(DirectiveCreateValidator prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<DirectiveCreateValidator, Builder> implements DirectiveCreateValidatorOrBuilder {
            /* synthetic */ Builder(C79361 c79361) {
                this();
            }

            private Builder() {
                super(DirectiveCreateValidator.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
            public String getValidatorAddress() {
                return ((DirectiveCreateValidator) this.instance).getValidatorAddress();
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
            public ByteString getValidatorAddressBytes() {
                return ((DirectiveCreateValidator) this.instance).getValidatorAddressBytes();
            }

            public Builder setValidatorAddress(String value) {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).setValidatorAddress(value);
                return this;
            }

            public Builder clearValidatorAddress() {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).clearValidatorAddress();
                return this;
            }

            public Builder setValidatorAddressBytes(ByteString value) {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).setValidatorAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
            public boolean hasDescription() {
                return ((DirectiveCreateValidator) this.instance).hasDescription();
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
            public Description getDescription() {
                return ((DirectiveCreateValidator) this.instance).getDescription();
            }

            public Builder setDescription(Description value) {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).setDescription(value);
                return this;
            }

            public Builder setDescription(Description.Builder builderForValue) {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).setDescription(builderForValue.build());
                return this;
            }

            public Builder mergeDescription(Description value) {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).mergeDescription(value);
                return this;
            }

            public Builder clearDescription() {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).clearDescription();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
            public boolean hasCommissionRates() {
                return ((DirectiveCreateValidator) this.instance).hasCommissionRates();
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
            public CommissionRate getCommissionRates() {
                return ((DirectiveCreateValidator) this.instance).getCommissionRates();
            }

            public Builder setCommissionRates(CommissionRate value) {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).setCommissionRates(value);
                return this;
            }

            public Builder setCommissionRates(CommissionRate.Builder builderForValue) {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).setCommissionRates(builderForValue.build());
                return this;
            }

            public Builder mergeCommissionRates(CommissionRate value) {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).mergeCommissionRates(value);
                return this;
            }

            public Builder clearCommissionRates() {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).clearCommissionRates();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
            public ByteString getMinSelfDelegation() {
                return ((DirectiveCreateValidator) this.instance).getMinSelfDelegation();
            }

            public Builder setMinSelfDelegation(ByteString value) {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).setMinSelfDelegation(value);
                return this;
            }

            public Builder clearMinSelfDelegation() {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).clearMinSelfDelegation();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
            public ByteString getMaxTotalDelegation() {
                return ((DirectiveCreateValidator) this.instance).getMaxTotalDelegation();
            }

            public Builder setMaxTotalDelegation(ByteString value) {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).setMaxTotalDelegation(value);
                return this;
            }

            public Builder clearMaxTotalDelegation() {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).clearMaxTotalDelegation();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
            public List<ByteString> getSlotPubKeysList() {
                return Collections.unmodifiableList(((DirectiveCreateValidator) this.instance).getSlotPubKeysList());
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
            public int getSlotPubKeysCount() {
                return ((DirectiveCreateValidator) this.instance).getSlotPubKeysCount();
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
            public ByteString getSlotPubKeys(int index) {
                return ((DirectiveCreateValidator) this.instance).getSlotPubKeys(index);
            }

            public Builder setSlotPubKeys(int index, ByteString value) {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).setSlotPubKeys(index, value);
                return this;
            }

            public Builder addSlotPubKeys(ByteString value) {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).addSlotPubKeys(value);
                return this;
            }

            public Builder addAllSlotPubKeys(Iterable<? extends ByteString> values) {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).addAllSlotPubKeys(values);
                return this;
            }

            public Builder clearSlotPubKeys() {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).clearSlotPubKeys();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
            public List<ByteString> getSlotKeySigsList() {
                return Collections.unmodifiableList(((DirectiveCreateValidator) this.instance).getSlotKeySigsList());
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
            public int getSlotKeySigsCount() {
                return ((DirectiveCreateValidator) this.instance).getSlotKeySigsCount();
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
            public ByteString getSlotKeySigs(int index) {
                return ((DirectiveCreateValidator) this.instance).getSlotKeySigs(index);
            }

            public Builder setSlotKeySigs(int index, ByteString value) {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).setSlotKeySigs(index, value);
                return this;
            }

            public Builder addSlotKeySigs(ByteString value) {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).addSlotKeySigs(value);
                return this;
            }

            public Builder addAllSlotKeySigs(Iterable<? extends ByteString> values) {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).addAllSlotKeySigs(values);
                return this;
            }

            public Builder clearSlotKeySigs() {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).clearSlotKeySigs();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveCreateValidatorOrBuilder
            public ByteString getAmount() {
                return ((DirectiveCreateValidator) this.instance).getAmount();
            }

            public Builder setAmount(ByteString value) {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((DirectiveCreateValidator) this.instance).clearAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79361.f2155xa1df5c61[method.ordinal()]) {
                case 1:
                    return new DirectiveCreateValidator();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\b\u0000\u0000\u0001\b\b\u0000\u0002\u0000\u0001Ȉ\u0002\t\u0003\t\u0004\n\u0005\n\u0006\u001c\u0007\u001c\b\n", new Object[]{"validatorAddress_", "description_", "commissionRates_", "minSelfDelegation_", "maxTotalDelegation_", "slotPubKeys_", "slotKeySigs_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<DirectiveCreateValidator> parser = PARSER;
                    if (parser == null) {
                        synchronized (DirectiveCreateValidator.class) {
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
            DirectiveCreateValidator directiveCreateValidator = new DirectiveCreateValidator();
            DEFAULT_INSTANCE = directiveCreateValidator;
            GeneratedMessageLite.registerDefaultInstance(DirectiveCreateValidator.class, directiveCreateValidator);
        }

        public static DirectiveCreateValidator getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<DirectiveCreateValidator> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class DirectiveEditValidator extends GeneratedMessageLite<DirectiveEditValidator, Builder> implements DirectiveEditValidatorOrBuilder {
        public static final int ACTIVE_FIELD_NUMBER = 9;
        public static final int COMMISSION_RATE_FIELD_NUMBER = 3;
        private static final DirectiveEditValidator DEFAULT_INSTANCE;
        public static final int DESCRIPTION_FIELD_NUMBER = 2;
        public static final int MAX_TOTAL_DELEGATION_FIELD_NUMBER = 5;
        public static final int MIN_SELF_DELEGATION_FIELD_NUMBER = 4;
        private static volatile Parser<DirectiveEditValidator> PARSER = null;
        public static final int SLOT_KEY_TO_ADD_FIELD_NUMBER = 7;
        public static final int SLOT_KEY_TO_ADD_SIG_FIELD_NUMBER = 8;
        public static final int SLOT_KEY_TO_REMOVE_FIELD_NUMBER = 6;
        public static final int VALIDATOR_ADDRESS_FIELD_NUMBER = 1;
        private ByteString active_;
        private Decimal commissionRate_;
        private Description description_;
        private ByteString maxTotalDelegation_;
        private ByteString minSelfDelegation_;
        private ByteString slotKeyToAddSig_;
        private ByteString slotKeyToAdd_;
        private ByteString slotKeyToRemove_;
        private String validatorAddress_ = "";

        private DirectiveEditValidator() {
            ByteString byteString = ByteString.EMPTY;
            this.minSelfDelegation_ = byteString;
            this.maxTotalDelegation_ = byteString;
            this.slotKeyToRemove_ = byteString;
            this.slotKeyToAdd_ = byteString;
            this.slotKeyToAddSig_ = byteString;
            this.active_ = byteString;
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
        public String getValidatorAddress() {
            return this.validatorAddress_;
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
        public ByteString getValidatorAddressBytes() {
            return ByteString.copyFromUtf8(this.validatorAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValidatorAddress(String value) {
            value.getClass();
            this.validatorAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValidatorAddress() {
            this.validatorAddress_ = getDefaultInstance().getValidatorAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValidatorAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.validatorAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
        public boolean hasDescription() {
            return this.description_ != null;
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
        public Description getDescription() {
            Description description = this.description_;
            return description == null ? Description.getDefaultInstance() : description;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDescription(Description value) {
            value.getClass();
            this.description_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeDescription(Description value) {
            value.getClass();
            Description description = this.description_;
            if (description != null && description != Description.getDefaultInstance()) {
                this.description_ = Description.newBuilder(this.description_).mergeFrom((Description.Builder) value).buildPartial();
            } else {
                this.description_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDescription() {
            this.description_ = null;
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
        public boolean hasCommissionRate() {
            return this.commissionRate_ != null;
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
        public Decimal getCommissionRate() {
            Decimal decimal = this.commissionRate_;
            return decimal == null ? Decimal.getDefaultInstance() : decimal;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCommissionRate(Decimal value) {
            value.getClass();
            this.commissionRate_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeCommissionRate(Decimal value) {
            value.getClass();
            Decimal decimal = this.commissionRate_;
            if (decimal != null && decimal != Decimal.getDefaultInstance()) {
                this.commissionRate_ = Decimal.newBuilder(this.commissionRate_).mergeFrom((Decimal.Builder) value).buildPartial();
            } else {
                this.commissionRate_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCommissionRate() {
            this.commissionRate_ = null;
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
        public ByteString getMinSelfDelegation() {
            return this.minSelfDelegation_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMinSelfDelegation(ByteString value) {
            value.getClass();
            this.minSelfDelegation_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMinSelfDelegation() {
            this.minSelfDelegation_ = getDefaultInstance().getMinSelfDelegation();
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
        public ByteString getMaxTotalDelegation() {
            return this.maxTotalDelegation_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMaxTotalDelegation(ByteString value) {
            value.getClass();
            this.maxTotalDelegation_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMaxTotalDelegation() {
            this.maxTotalDelegation_ = getDefaultInstance().getMaxTotalDelegation();
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
        public ByteString getSlotKeyToRemove() {
            return this.slotKeyToRemove_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSlotKeyToRemove(ByteString value) {
            value.getClass();
            this.slotKeyToRemove_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSlotKeyToRemove() {
            this.slotKeyToRemove_ = getDefaultInstance().getSlotKeyToRemove();
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
        public ByteString getSlotKeyToAdd() {
            return this.slotKeyToAdd_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSlotKeyToAdd(ByteString value) {
            value.getClass();
            this.slotKeyToAdd_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSlotKeyToAdd() {
            this.slotKeyToAdd_ = getDefaultInstance().getSlotKeyToAdd();
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
        public ByteString getSlotKeyToAddSig() {
            return this.slotKeyToAddSig_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSlotKeyToAddSig(ByteString value) {
            value.getClass();
            this.slotKeyToAddSig_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSlotKeyToAddSig() {
            this.slotKeyToAddSig_ = getDefaultInstance().getSlotKeyToAddSig();
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
        public ByteString getActive() {
            return this.active_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setActive(ByteString value) {
            value.getClass();
            this.active_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearActive() {
            this.active_ = getDefaultInstance().getActive();
        }

        public static DirectiveEditValidator parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (DirectiveEditValidator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DirectiveEditValidator parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DirectiveEditValidator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DirectiveEditValidator parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (DirectiveEditValidator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DirectiveEditValidator parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DirectiveEditValidator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DirectiveEditValidator parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (DirectiveEditValidator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DirectiveEditValidator parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DirectiveEditValidator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DirectiveEditValidator parseFrom(InputStream input) throws IOException {
            return (DirectiveEditValidator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DirectiveEditValidator parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DirectiveEditValidator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DirectiveEditValidator parseDelimitedFrom(InputStream input) throws IOException {
            return (DirectiveEditValidator) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static DirectiveEditValidator parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DirectiveEditValidator) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DirectiveEditValidator parseFrom(CodedInputStream input) throws IOException {
            return (DirectiveEditValidator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DirectiveEditValidator parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DirectiveEditValidator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(DirectiveEditValidator prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<DirectiveEditValidator, Builder> implements DirectiveEditValidatorOrBuilder {
            /* synthetic */ Builder(C79361 c79361) {
                this();
            }

            private Builder() {
                super(DirectiveEditValidator.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
            public String getValidatorAddress() {
                return ((DirectiveEditValidator) this.instance).getValidatorAddress();
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
            public ByteString getValidatorAddressBytes() {
                return ((DirectiveEditValidator) this.instance).getValidatorAddressBytes();
            }

            public Builder setValidatorAddress(String value) {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).setValidatorAddress(value);
                return this;
            }

            public Builder clearValidatorAddress() {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).clearValidatorAddress();
                return this;
            }

            public Builder setValidatorAddressBytes(ByteString value) {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).setValidatorAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
            public boolean hasDescription() {
                return ((DirectiveEditValidator) this.instance).hasDescription();
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
            public Description getDescription() {
                return ((DirectiveEditValidator) this.instance).getDescription();
            }

            public Builder setDescription(Description value) {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).setDescription(value);
                return this;
            }

            public Builder setDescription(Description.Builder builderForValue) {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).setDescription(builderForValue.build());
                return this;
            }

            public Builder mergeDescription(Description value) {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).mergeDescription(value);
                return this;
            }

            public Builder clearDescription() {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).clearDescription();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
            public boolean hasCommissionRate() {
                return ((DirectiveEditValidator) this.instance).hasCommissionRate();
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
            public Decimal getCommissionRate() {
                return ((DirectiveEditValidator) this.instance).getCommissionRate();
            }

            public Builder setCommissionRate(Decimal value) {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).setCommissionRate(value);
                return this;
            }

            public Builder setCommissionRate(Decimal.Builder builderForValue) {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).setCommissionRate(builderForValue.build());
                return this;
            }

            public Builder mergeCommissionRate(Decimal value) {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).mergeCommissionRate(value);
                return this;
            }

            public Builder clearCommissionRate() {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).clearCommissionRate();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
            public ByteString getMinSelfDelegation() {
                return ((DirectiveEditValidator) this.instance).getMinSelfDelegation();
            }

            public Builder setMinSelfDelegation(ByteString value) {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).setMinSelfDelegation(value);
                return this;
            }

            public Builder clearMinSelfDelegation() {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).clearMinSelfDelegation();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
            public ByteString getMaxTotalDelegation() {
                return ((DirectiveEditValidator) this.instance).getMaxTotalDelegation();
            }

            public Builder setMaxTotalDelegation(ByteString value) {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).setMaxTotalDelegation(value);
                return this;
            }

            public Builder clearMaxTotalDelegation() {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).clearMaxTotalDelegation();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
            public ByteString getSlotKeyToRemove() {
                return ((DirectiveEditValidator) this.instance).getSlotKeyToRemove();
            }

            public Builder setSlotKeyToRemove(ByteString value) {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).setSlotKeyToRemove(value);
                return this;
            }

            public Builder clearSlotKeyToRemove() {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).clearSlotKeyToRemove();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
            public ByteString getSlotKeyToAdd() {
                return ((DirectiveEditValidator) this.instance).getSlotKeyToAdd();
            }

            public Builder setSlotKeyToAdd(ByteString value) {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).setSlotKeyToAdd(value);
                return this;
            }

            public Builder clearSlotKeyToAdd() {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).clearSlotKeyToAdd();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
            public ByteString getSlotKeyToAddSig() {
                return ((DirectiveEditValidator) this.instance).getSlotKeyToAddSig();
            }

            public Builder setSlotKeyToAddSig(ByteString value) {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).setSlotKeyToAddSig(value);
                return this;
            }

            public Builder clearSlotKeyToAddSig() {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).clearSlotKeyToAddSig();
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveEditValidatorOrBuilder
            public ByteString getActive() {
                return ((DirectiveEditValidator) this.instance).getActive();
            }

            public Builder setActive(ByteString value) {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).setActive(value);
                return this;
            }

            public Builder clearActive() {
                copyOnWrite();
                ((DirectiveEditValidator) this.instance).clearActive();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79361.f2155xa1df5c61[method.ordinal()]) {
                case 1:
                    return new DirectiveEditValidator();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\t\u0000\u0000\u0001\t\t\u0000\u0000\u0000\u0001Ȉ\u0002\t\u0003\t\u0004\n\u0005\n\u0006\n\u0007\n\b\n\t\n", new Object[]{"validatorAddress_", "description_", "commissionRate_", "minSelfDelegation_", "maxTotalDelegation_", "slotKeyToRemove_", "slotKeyToAdd_", "slotKeyToAddSig_", "active_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<DirectiveEditValidator> parser = PARSER;
                    if (parser == null) {
                        synchronized (DirectiveEditValidator.class) {
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
            DirectiveEditValidator directiveEditValidator = new DirectiveEditValidator();
            DEFAULT_INSTANCE = directiveEditValidator;
            GeneratedMessageLite.registerDefaultInstance(DirectiveEditValidator.class, directiveEditValidator);
        }

        public static DirectiveEditValidator getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<DirectiveEditValidator> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class DirectiveDelegate extends GeneratedMessageLite<DirectiveDelegate, Builder> implements DirectiveDelegateOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 3;
        private static final DirectiveDelegate DEFAULT_INSTANCE;
        public static final int DELEGATOR_ADDRESS_FIELD_NUMBER = 1;
        private static volatile Parser<DirectiveDelegate> PARSER = null;
        public static final int VALIDATOR_ADDRESS_FIELD_NUMBER = 2;
        private String delegatorAddress_ = "";
        private String validatorAddress_ = "";
        private ByteString amount_ = ByteString.EMPTY;

        private DirectiveDelegate() {
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveDelegateOrBuilder
        public String getDelegatorAddress() {
            return this.delegatorAddress_;
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveDelegateOrBuilder
        public ByteString getDelegatorAddressBytes() {
            return ByteString.copyFromUtf8(this.delegatorAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDelegatorAddress(String value) {
            value.getClass();
            this.delegatorAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDelegatorAddress() {
            this.delegatorAddress_ = getDefaultInstance().getDelegatorAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDelegatorAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.delegatorAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveDelegateOrBuilder
        public String getValidatorAddress() {
            return this.validatorAddress_;
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveDelegateOrBuilder
        public ByteString getValidatorAddressBytes() {
            return ByteString.copyFromUtf8(this.validatorAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValidatorAddress(String value) {
            value.getClass();
            this.validatorAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValidatorAddress() {
            this.validatorAddress_ = getDefaultInstance().getValidatorAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValidatorAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.validatorAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveDelegateOrBuilder
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

        public static DirectiveDelegate parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (DirectiveDelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DirectiveDelegate parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DirectiveDelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DirectiveDelegate parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (DirectiveDelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DirectiveDelegate parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DirectiveDelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DirectiveDelegate parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (DirectiveDelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DirectiveDelegate parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DirectiveDelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DirectiveDelegate parseFrom(InputStream input) throws IOException {
            return (DirectiveDelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DirectiveDelegate parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DirectiveDelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DirectiveDelegate parseDelimitedFrom(InputStream input) throws IOException {
            return (DirectiveDelegate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static DirectiveDelegate parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DirectiveDelegate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DirectiveDelegate parseFrom(CodedInputStream input) throws IOException {
            return (DirectiveDelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DirectiveDelegate parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DirectiveDelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(DirectiveDelegate prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<DirectiveDelegate, Builder> implements DirectiveDelegateOrBuilder {
            /* synthetic */ Builder(C79361 c79361) {
                this();
            }

            private Builder() {
                super(DirectiveDelegate.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveDelegateOrBuilder
            public String getDelegatorAddress() {
                return ((DirectiveDelegate) this.instance).getDelegatorAddress();
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveDelegateOrBuilder
            public ByteString getDelegatorAddressBytes() {
                return ((DirectiveDelegate) this.instance).getDelegatorAddressBytes();
            }

            public Builder setDelegatorAddress(String value) {
                copyOnWrite();
                ((DirectiveDelegate) this.instance).setDelegatorAddress(value);
                return this;
            }

            public Builder clearDelegatorAddress() {
                copyOnWrite();
                ((DirectiveDelegate) this.instance).clearDelegatorAddress();
                return this;
            }

            public Builder setDelegatorAddressBytes(ByteString value) {
                copyOnWrite();
                ((DirectiveDelegate) this.instance).setDelegatorAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveDelegateOrBuilder
            public String getValidatorAddress() {
                return ((DirectiveDelegate) this.instance).getValidatorAddress();
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveDelegateOrBuilder
            public ByteString getValidatorAddressBytes() {
                return ((DirectiveDelegate) this.instance).getValidatorAddressBytes();
            }

            public Builder setValidatorAddress(String value) {
                copyOnWrite();
                ((DirectiveDelegate) this.instance).setValidatorAddress(value);
                return this;
            }

            public Builder clearValidatorAddress() {
                copyOnWrite();
                ((DirectiveDelegate) this.instance).clearValidatorAddress();
                return this;
            }

            public Builder setValidatorAddressBytes(ByteString value) {
                copyOnWrite();
                ((DirectiveDelegate) this.instance).setValidatorAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveDelegateOrBuilder
            public ByteString getAmount() {
                return ((DirectiveDelegate) this.instance).getAmount();
            }

            public Builder setAmount(ByteString value) {
                copyOnWrite();
                ((DirectiveDelegate) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((DirectiveDelegate) this.instance).clearAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79361.f2155xa1df5c61[method.ordinal()]) {
                case 1:
                    return new DirectiveDelegate();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\n", new Object[]{"delegatorAddress_", "validatorAddress_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<DirectiveDelegate> parser = PARSER;
                    if (parser == null) {
                        synchronized (DirectiveDelegate.class) {
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
            DirectiveDelegate directiveDelegate = new DirectiveDelegate();
            DEFAULT_INSTANCE = directiveDelegate;
            GeneratedMessageLite.registerDefaultInstance(DirectiveDelegate.class, directiveDelegate);
        }

        public static DirectiveDelegate getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<DirectiveDelegate> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class DirectiveUndelegate extends GeneratedMessageLite<DirectiveUndelegate, Builder> implements DirectiveUndelegateOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 3;
        private static final DirectiveUndelegate DEFAULT_INSTANCE;
        public static final int DELEGATOR_ADDRESS_FIELD_NUMBER = 1;
        private static volatile Parser<DirectiveUndelegate> PARSER = null;
        public static final int VALIDATOR_ADDRESS_FIELD_NUMBER = 2;
        private String delegatorAddress_ = "";
        private String validatorAddress_ = "";
        private ByteString amount_ = ByteString.EMPTY;

        private DirectiveUndelegate() {
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveUndelegateOrBuilder
        public String getDelegatorAddress() {
            return this.delegatorAddress_;
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveUndelegateOrBuilder
        public ByteString getDelegatorAddressBytes() {
            return ByteString.copyFromUtf8(this.delegatorAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDelegatorAddress(String value) {
            value.getClass();
            this.delegatorAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDelegatorAddress() {
            this.delegatorAddress_ = getDefaultInstance().getDelegatorAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDelegatorAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.delegatorAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveUndelegateOrBuilder
        public String getValidatorAddress() {
            return this.validatorAddress_;
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveUndelegateOrBuilder
        public ByteString getValidatorAddressBytes() {
            return ByteString.copyFromUtf8(this.validatorAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValidatorAddress(String value) {
            value.getClass();
            this.validatorAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValidatorAddress() {
            this.validatorAddress_ = getDefaultInstance().getValidatorAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValidatorAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.validatorAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveUndelegateOrBuilder
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

        public static DirectiveUndelegate parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (DirectiveUndelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DirectiveUndelegate parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DirectiveUndelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DirectiveUndelegate parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (DirectiveUndelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DirectiveUndelegate parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DirectiveUndelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DirectiveUndelegate parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (DirectiveUndelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DirectiveUndelegate parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DirectiveUndelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DirectiveUndelegate parseFrom(InputStream input) throws IOException {
            return (DirectiveUndelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DirectiveUndelegate parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DirectiveUndelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DirectiveUndelegate parseDelimitedFrom(InputStream input) throws IOException {
            return (DirectiveUndelegate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static DirectiveUndelegate parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DirectiveUndelegate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DirectiveUndelegate parseFrom(CodedInputStream input) throws IOException {
            return (DirectiveUndelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DirectiveUndelegate parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DirectiveUndelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(DirectiveUndelegate prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<DirectiveUndelegate, Builder> implements DirectiveUndelegateOrBuilder {
            /* synthetic */ Builder(C79361 c79361) {
                this();
            }

            private Builder() {
                super(DirectiveUndelegate.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveUndelegateOrBuilder
            public String getDelegatorAddress() {
                return ((DirectiveUndelegate) this.instance).getDelegatorAddress();
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveUndelegateOrBuilder
            public ByteString getDelegatorAddressBytes() {
                return ((DirectiveUndelegate) this.instance).getDelegatorAddressBytes();
            }

            public Builder setDelegatorAddress(String value) {
                copyOnWrite();
                ((DirectiveUndelegate) this.instance).setDelegatorAddress(value);
                return this;
            }

            public Builder clearDelegatorAddress() {
                copyOnWrite();
                ((DirectiveUndelegate) this.instance).clearDelegatorAddress();
                return this;
            }

            public Builder setDelegatorAddressBytes(ByteString value) {
                copyOnWrite();
                ((DirectiveUndelegate) this.instance).setDelegatorAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveUndelegateOrBuilder
            public String getValidatorAddress() {
                return ((DirectiveUndelegate) this.instance).getValidatorAddress();
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveUndelegateOrBuilder
            public ByteString getValidatorAddressBytes() {
                return ((DirectiveUndelegate) this.instance).getValidatorAddressBytes();
            }

            public Builder setValidatorAddress(String value) {
                copyOnWrite();
                ((DirectiveUndelegate) this.instance).setValidatorAddress(value);
                return this;
            }

            public Builder clearValidatorAddress() {
                copyOnWrite();
                ((DirectiveUndelegate) this.instance).clearValidatorAddress();
                return this;
            }

            public Builder setValidatorAddressBytes(ByteString value) {
                copyOnWrite();
                ((DirectiveUndelegate) this.instance).setValidatorAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveUndelegateOrBuilder
            public ByteString getAmount() {
                return ((DirectiveUndelegate) this.instance).getAmount();
            }

            public Builder setAmount(ByteString value) {
                copyOnWrite();
                ((DirectiveUndelegate) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((DirectiveUndelegate) this.instance).clearAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79361.f2155xa1df5c61[method.ordinal()]) {
                case 1:
                    return new DirectiveUndelegate();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\n", new Object[]{"delegatorAddress_", "validatorAddress_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<DirectiveUndelegate> parser = PARSER;
                    if (parser == null) {
                        synchronized (DirectiveUndelegate.class) {
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
            DirectiveUndelegate directiveUndelegate = new DirectiveUndelegate();
            DEFAULT_INSTANCE = directiveUndelegate;
            GeneratedMessageLite.registerDefaultInstance(DirectiveUndelegate.class, directiveUndelegate);
        }

        public static DirectiveUndelegate getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<DirectiveUndelegate> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class DirectiveCollectRewards extends GeneratedMessageLite<DirectiveCollectRewards, Builder> implements DirectiveCollectRewardsOrBuilder {
        private static final DirectiveCollectRewards DEFAULT_INSTANCE;
        public static final int DELEGATOR_ADDRESS_FIELD_NUMBER = 1;
        private static volatile Parser<DirectiveCollectRewards> PARSER;
        private String delegatorAddress_ = "";

        private DirectiveCollectRewards() {
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveCollectRewardsOrBuilder
        public String getDelegatorAddress() {
            return this.delegatorAddress_;
        }

        @Override // wallet.core.jni.proto.Harmony.DirectiveCollectRewardsOrBuilder
        public ByteString getDelegatorAddressBytes() {
            return ByteString.copyFromUtf8(this.delegatorAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDelegatorAddress(String value) {
            value.getClass();
            this.delegatorAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDelegatorAddress() {
            this.delegatorAddress_ = getDefaultInstance().getDelegatorAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDelegatorAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.delegatorAddress_ = value.toStringUtf8();
        }

        public static DirectiveCollectRewards parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (DirectiveCollectRewards) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DirectiveCollectRewards parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DirectiveCollectRewards) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DirectiveCollectRewards parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (DirectiveCollectRewards) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DirectiveCollectRewards parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DirectiveCollectRewards) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DirectiveCollectRewards parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (DirectiveCollectRewards) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DirectiveCollectRewards parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DirectiveCollectRewards) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DirectiveCollectRewards parseFrom(InputStream input) throws IOException {
            return (DirectiveCollectRewards) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DirectiveCollectRewards parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DirectiveCollectRewards) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DirectiveCollectRewards parseDelimitedFrom(InputStream input) throws IOException {
            return (DirectiveCollectRewards) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static DirectiveCollectRewards parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DirectiveCollectRewards) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DirectiveCollectRewards parseFrom(CodedInputStream input) throws IOException {
            return (DirectiveCollectRewards) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DirectiveCollectRewards parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DirectiveCollectRewards) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(DirectiveCollectRewards prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<DirectiveCollectRewards, Builder> implements DirectiveCollectRewardsOrBuilder {
            /* synthetic */ Builder(C79361 c79361) {
                this();
            }

            private Builder() {
                super(DirectiveCollectRewards.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveCollectRewardsOrBuilder
            public String getDelegatorAddress() {
                return ((DirectiveCollectRewards) this.instance).getDelegatorAddress();
            }

            @Override // wallet.core.jni.proto.Harmony.DirectiveCollectRewardsOrBuilder
            public ByteString getDelegatorAddressBytes() {
                return ((DirectiveCollectRewards) this.instance).getDelegatorAddressBytes();
            }

            public Builder setDelegatorAddress(String value) {
                copyOnWrite();
                ((DirectiveCollectRewards) this.instance).setDelegatorAddress(value);
                return this;
            }

            public Builder clearDelegatorAddress() {
                copyOnWrite();
                ((DirectiveCollectRewards) this.instance).clearDelegatorAddress();
                return this;
            }

            public Builder setDelegatorAddressBytes(ByteString value) {
                copyOnWrite();
                ((DirectiveCollectRewards) this.instance).setDelegatorAddressBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79361.f2155xa1df5c61[method.ordinal()]) {
                case 1:
                    return new DirectiveCollectRewards();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"delegatorAddress_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<DirectiveCollectRewards> parser = PARSER;
                    if (parser == null) {
                        synchronized (DirectiveCollectRewards.class) {
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
            DirectiveCollectRewards directiveCollectRewards = new DirectiveCollectRewards();
            DEFAULT_INSTANCE = directiveCollectRewards;
            GeneratedMessageLite.registerDefaultInstance(DirectiveCollectRewards.class, directiveCollectRewards);
        }

        public static DirectiveCollectRewards getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<DirectiveCollectRewards> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }
}
