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
/* loaded from: classes6.dex */
public final class Cosmos {

    /* loaded from: classes6.dex */
    public interface AmountOrBuilder extends MessageLiteOrBuilder {
        String getAmount();

        ByteString getAmountBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getDenom();

        ByteString getDenomBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface FeeOrBuilder extends MessageLiteOrBuilder {
        Amount getAmounts(int index);

        int getAmountsCount();

        List<Amount> getAmountsList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getGas();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface HeightOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getRevisionHeight();

        long getRevisionNumber();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface MessageOrBuilder extends MessageLiteOrBuilder {
        Message.AuthGrant getAuthGrant();

        Message.AuthRevoke getAuthRevoke();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Message.MessageOneofCase getMessageOneofCase();

        Message.MsgVote getMsgVote();

        Message.RawJSON getRawJsonMessage();

        Message.BeginRedelegate getRestakeMessage();

        Message.Send getSendCoinsMessage();

        Message.SignDirect getSignDirectMessage();

        Message.Delegate getStakeMessage();

        Message.THORChainSend getThorchainSendMessage();

        Message.Transfer getTransferTokensMessage();

        Message.Undelegate getUnstakeMessage();

        Message.WasmExecuteContractGeneric getWasmExecuteContractGeneric();

        Message.WasmExecuteContractSend getWasmExecuteContractSendMessage();

        Message.WasmExecuteContractTransfer getWasmExecuteContractTransferMessage();

        Message.WasmTerraExecuteContractGeneric getWasmTerraExecuteContractGeneric();

        Message.WasmTerraExecuteContractSend getWasmTerraExecuteContractSendMessage();

        Message.WasmTerraExecuteContractTransfer getWasmTerraExecuteContractTransferMessage();

        Message.WithdrawDelegationReward getWithdrawStakeRewardMessage();

        boolean hasAuthGrant();

        boolean hasAuthRevoke();

        boolean hasMsgVote();

        boolean hasRawJsonMessage();

        boolean hasRestakeMessage();

        boolean hasSendCoinsMessage();

        boolean hasSignDirectMessage();

        boolean hasStakeMessage();

        boolean hasThorchainSendMessage();

        boolean hasTransferTokensMessage();

        boolean hasUnstakeMessage();

        boolean hasWasmExecuteContractGeneric();

        boolean hasWasmExecuteContractSendMessage();

        boolean hasWasmExecuteContractTransferMessage();

        boolean hasWasmTerraExecuteContractGeneric();

        boolean hasWasmTerraExecuteContractSendMessage();

        boolean hasWasmTerraExecuteContractTransferMessage();

        boolean hasWithdrawStakeRewardMessage();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        long getAccountNumber();

        String getChainId();

        ByteString getChainIdBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Fee getFee();

        String getMemo();

        ByteString getMemoBytes();

        Message getMessages(int index);

        int getMessagesCount();

        List<Message> getMessagesList();

        BroadcastMode getMode();

        int getModeValue();

        ByteString getPrivateKey();

        long getSequence();

        SigningMode getSigningMode();

        int getSigningModeValue();

        boolean hasFee();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getError();

        ByteString getErrorBytes();

        String getJson();

        ByteString getJsonBytes();

        String getSerialized();

        ByteString getSerializedBytes();

        ByteString getSignature();

        String getSignatureJson();

        ByteString getSignatureJsonBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Cosmos() {
    }

    /* loaded from: classes6.dex */
    public enum BroadcastMode implements Internal.EnumLite {
        BLOCK(0),
        SYNC(1),
        ASYNC(2),
        UNRECOGNIZED(-1);
        
        public static final int ASYNC_VALUE = 2;
        public static final int BLOCK_VALUE = 0;
        public static final int SYNC_VALUE = 1;
        private static final Internal.EnumLiteMap<BroadcastMode> internalValueMap = new Internal.EnumLiteMap<BroadcastMode>() { // from class: wallet.core.jni.proto.Cosmos.BroadcastMode.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public BroadcastMode findValueByNumber(int number) {
                return BroadcastMode.forNumber(number);
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
        public static BroadcastMode valueOf(int value) {
            return forNumber(value);
        }

        public static BroadcastMode forNumber(int value) {
            if (value != 0) {
                if (value != 1) {
                    if (value != 2) {
                        return null;
                    }
                    return ASYNC;
                }
                return SYNC;
            }
            return BLOCK;
        }

        public static Internal.EnumLiteMap<BroadcastMode> internalGetValueMap() {
            return internalValueMap;
        }

        public static Internal.EnumVerifier internalGetVerifier() {
            return BroadcastModeVerifier.INSTANCE;
        }

        /* loaded from: classes6.dex */
        private static final class BroadcastModeVerifier implements Internal.EnumVerifier {
            static final Internal.EnumVerifier INSTANCE = new BroadcastModeVerifier();

            private BroadcastModeVerifier() {
            }

            @Override // com.google.protobuf.Internal.EnumVerifier
            public boolean isInRange(int number) {
                return BroadcastMode.forNumber(number) != null;
            }
        }

        BroadcastMode(int value) {
            this.value = value;
        }
    }

    /* loaded from: classes6.dex */
    public enum SigningMode implements Internal.EnumLite {
        JSON(0),
        Protobuf(1),
        UNRECOGNIZED(-1);
        
        public static final int JSON_VALUE = 0;
        public static final int Protobuf_VALUE = 1;
        private static final Internal.EnumLiteMap<SigningMode> internalValueMap = new Internal.EnumLiteMap<SigningMode>() { // from class: wallet.core.jni.proto.Cosmos.SigningMode.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public SigningMode findValueByNumber(int number) {
                return SigningMode.forNumber(number);
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
        public static SigningMode valueOf(int value) {
            return forNumber(value);
        }

        public static SigningMode forNumber(int value) {
            if (value != 0) {
                if (value != 1) {
                    return null;
                }
                return Protobuf;
            }
            return JSON;
        }

        public static Internal.EnumLiteMap<SigningMode> internalGetValueMap() {
            return internalValueMap;
        }

        public static Internal.EnumVerifier internalGetVerifier() {
            return SigningModeVerifier.INSTANCE;
        }

        /* loaded from: classes6.dex */
        private static final class SigningModeVerifier implements Internal.EnumVerifier {
            static final Internal.EnumVerifier INSTANCE = new SigningModeVerifier();

            private SigningModeVerifier() {
            }

            @Override // com.google.protobuf.Internal.EnumVerifier
            public boolean isInRange(int number) {
                return SigningMode.forNumber(number) != null;
            }
        }

        SigningMode(int value) {
            this.value = value;
        }
    }

    /* loaded from: classes6.dex */
    public static final class Amount extends GeneratedMessageLite<Amount, Builder> implements AmountOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 2;
        private static final Amount DEFAULT_INSTANCE;
        public static final int DENOM_FIELD_NUMBER = 1;
        private static volatile Parser<Amount> PARSER;
        private String denom_ = "";
        private String amount_ = "";

        private Amount() {
        }

        @Override // wallet.core.jni.proto.Cosmos.AmountOrBuilder
        public String getDenom() {
            return this.denom_;
        }

        @Override // wallet.core.jni.proto.Cosmos.AmountOrBuilder
        public ByteString getDenomBytes() {
            return ByteString.copyFromUtf8(this.denom_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDenom(String value) {
            value.getClass();
            this.denom_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDenom() {
            this.denom_ = getDefaultInstance().getDenom();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDenomBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.denom_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Cosmos.AmountOrBuilder
        public String getAmount() {
            return this.amount_;
        }

        @Override // wallet.core.jni.proto.Cosmos.AmountOrBuilder
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

        public static Amount parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Amount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Amount parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Amount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Amount parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Amount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Amount parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Amount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Amount parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Amount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Amount parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Amount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Amount parseFrom(InputStream input) throws IOException {
            return (Amount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Amount parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Amount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Amount parseDelimitedFrom(InputStream input) throws IOException {
            return (Amount) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Amount parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Amount) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Amount parseFrom(CodedInputStream input) throws IOException {
            return (Amount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Amount parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Amount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Amount prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Amount, Builder> implements AmountOrBuilder {
            /* synthetic */ Builder(C67091 c67091) {
                this();
            }

            private Builder() {
                super(Amount.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Cosmos.AmountOrBuilder
            public String getDenom() {
                return ((Amount) this.instance).getDenom();
            }

            @Override // wallet.core.jni.proto.Cosmos.AmountOrBuilder
            public ByteString getDenomBytes() {
                return ((Amount) this.instance).getDenomBytes();
            }

            public Builder setDenom(String value) {
                copyOnWrite();
                ((Amount) this.instance).setDenom(value);
                return this;
            }

            public Builder clearDenom() {
                copyOnWrite();
                ((Amount) this.instance).clearDenom();
                return this;
            }

            public Builder setDenomBytes(ByteString value) {
                copyOnWrite();
                ((Amount) this.instance).setDenomBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.AmountOrBuilder
            public String getAmount() {
                return ((Amount) this.instance).getAmount();
            }

            @Override // wallet.core.jni.proto.Cosmos.AmountOrBuilder
            public ByteString getAmountBytes() {
                return ((Amount) this.instance).getAmountBytes();
            }

            public Builder setAmount(String value) {
                copyOnWrite();
                ((Amount) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((Amount) this.instance).clearAmount();
                return this;
            }

            public Builder setAmountBytes(ByteString value) {
                copyOnWrite();
                ((Amount) this.instance).setAmountBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Amount();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ", new Object[]{"denom_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Amount> parser = PARSER;
                    if (parser == null) {
                        synchronized (Amount.class) {
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
            Amount amount = new Amount();
            DEFAULT_INSTANCE = amount;
            GeneratedMessageLite.registerDefaultInstance(Amount.class, amount);
        }

        public static Amount getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Amount> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* renamed from: wallet.core.jni.proto.Cosmos$1 */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C67091 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1784xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1784xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1784xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1784xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1784xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1784xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1784xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1784xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class Fee extends GeneratedMessageLite<Fee, Builder> implements FeeOrBuilder {
        public static final int AMOUNTS_FIELD_NUMBER = 1;
        private static final Fee DEFAULT_INSTANCE;
        public static final int GAS_FIELD_NUMBER = 2;
        private static volatile Parser<Fee> PARSER;
        private Internal.ProtobufList<Amount> amounts_ = GeneratedMessageLite.emptyProtobufList();
        private long gas_;

        private Fee() {
        }

        @Override // wallet.core.jni.proto.Cosmos.FeeOrBuilder
        public List<Amount> getAmountsList() {
            return this.amounts_;
        }

        public List<? extends AmountOrBuilder> getAmountsOrBuilderList() {
            return this.amounts_;
        }

        @Override // wallet.core.jni.proto.Cosmos.FeeOrBuilder
        public int getAmountsCount() {
            return this.amounts_.size();
        }

        @Override // wallet.core.jni.proto.Cosmos.FeeOrBuilder
        public Amount getAmounts(int index) {
            return this.amounts_.get(index);
        }

        public AmountOrBuilder getAmountsOrBuilder(int index) {
            return this.amounts_.get(index);
        }

        private void ensureAmountsIsMutable() {
            Internal.ProtobufList<Amount> protobufList = this.amounts_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.amounts_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmounts(int index, Amount value) {
            value.getClass();
            ensureAmountsIsMutable();
            this.amounts_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAmounts(Amount value) {
            value.getClass();
            ensureAmountsIsMutable();
            this.amounts_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAmounts(int index, Amount value) {
            value.getClass();
            ensureAmountsIsMutable();
            this.amounts_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllAmounts(Iterable<? extends Amount> values) {
            ensureAmountsIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.amounts_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAmounts() {
            this.amounts_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeAmounts(int index) {
            ensureAmountsIsMutable();
            this.amounts_.remove(index);
        }

        @Override // wallet.core.jni.proto.Cosmos.FeeOrBuilder
        public long getGas() {
            return this.gas_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGas(long value) {
            this.gas_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGas() {
            this.gas_ = 0L;
        }

        public static Fee parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Fee) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Fee parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Fee) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Fee parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Fee) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Fee parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Fee) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Fee parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Fee) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Fee parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Fee) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Fee parseFrom(InputStream input) throws IOException {
            return (Fee) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Fee parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Fee) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Fee parseDelimitedFrom(InputStream input) throws IOException {
            return (Fee) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Fee parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Fee) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Fee parseFrom(CodedInputStream input) throws IOException {
            return (Fee) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Fee parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Fee) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Fee prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Fee, Builder> implements FeeOrBuilder {
            /* synthetic */ Builder(C67091 c67091) {
                this();
            }

            private Builder() {
                super(Fee.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Cosmos.FeeOrBuilder
            public List<Amount> getAmountsList() {
                return Collections.unmodifiableList(((Fee) this.instance).getAmountsList());
            }

            @Override // wallet.core.jni.proto.Cosmos.FeeOrBuilder
            public int getAmountsCount() {
                return ((Fee) this.instance).getAmountsCount();
            }

            @Override // wallet.core.jni.proto.Cosmos.FeeOrBuilder
            public Amount getAmounts(int index) {
                return ((Fee) this.instance).getAmounts(index);
            }

            public Builder setAmounts(int index, Amount value) {
                copyOnWrite();
                ((Fee) this.instance).setAmounts(index, value);
                return this;
            }

            public Builder setAmounts(int index, Amount.Builder builderForValue) {
                copyOnWrite();
                ((Fee) this.instance).setAmounts(index, builderForValue.build());
                return this;
            }

            public Builder addAmounts(Amount value) {
                copyOnWrite();
                ((Fee) this.instance).addAmounts(value);
                return this;
            }

            public Builder addAmounts(int index, Amount value) {
                copyOnWrite();
                ((Fee) this.instance).addAmounts(index, value);
                return this;
            }

            public Builder addAmounts(Amount.Builder builderForValue) {
                copyOnWrite();
                ((Fee) this.instance).addAmounts(builderForValue.build());
                return this;
            }

            public Builder addAmounts(int index, Amount.Builder builderForValue) {
                copyOnWrite();
                ((Fee) this.instance).addAmounts(index, builderForValue.build());
                return this;
            }

            public Builder addAllAmounts(Iterable<? extends Amount> values) {
                copyOnWrite();
                ((Fee) this.instance).addAllAmounts(values);
                return this;
            }

            public Builder clearAmounts() {
                copyOnWrite();
                ((Fee) this.instance).clearAmounts();
                return this;
            }

            public Builder removeAmounts(int index) {
                copyOnWrite();
                ((Fee) this.instance).removeAmounts(index);
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.FeeOrBuilder
            public long getGas() {
                return ((Fee) this.instance).getGas();
            }

            public Builder setGas(long value) {
                copyOnWrite();
                ((Fee) this.instance).setGas(value);
                return this;
            }

            public Builder clearGas() {
                copyOnWrite();
                ((Fee) this.instance).clearGas();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Fee();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u0003", new Object[]{"amounts_", Amount.class, "gas_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Fee> parser = PARSER;
                    if (parser == null) {
                        synchronized (Fee.class) {
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
            Fee fee = new Fee();
            DEFAULT_INSTANCE = fee;
            GeneratedMessageLite.registerDefaultInstance(Fee.class, fee);
        }

        public static Fee getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Fee> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class Height extends GeneratedMessageLite<Height, Builder> implements HeightOrBuilder {
        private static final Height DEFAULT_INSTANCE;
        private static volatile Parser<Height> PARSER = null;
        public static final int REVISION_HEIGHT_FIELD_NUMBER = 2;
        public static final int REVISION_NUMBER_FIELD_NUMBER = 1;
        private long revisionHeight_;
        private long revisionNumber_;

        private Height() {
        }

        @Override // wallet.core.jni.proto.Cosmos.HeightOrBuilder
        public long getRevisionNumber() {
            return this.revisionNumber_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRevisionNumber(long value) {
            this.revisionNumber_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRevisionNumber() {
            this.revisionNumber_ = 0L;
        }

        @Override // wallet.core.jni.proto.Cosmos.HeightOrBuilder
        public long getRevisionHeight() {
            return this.revisionHeight_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRevisionHeight(long value) {
            this.revisionHeight_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRevisionHeight() {
            this.revisionHeight_ = 0L;
        }

        public static Height parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Height) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Height parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Height) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Height parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Height) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Height parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Height) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Height parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Height) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Height parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Height) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Height parseFrom(InputStream input) throws IOException {
            return (Height) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Height parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Height) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Height parseDelimitedFrom(InputStream input) throws IOException {
            return (Height) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Height parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Height) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Height parseFrom(CodedInputStream input) throws IOException {
            return (Height) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Height parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Height) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Height prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Height, Builder> implements HeightOrBuilder {
            /* synthetic */ Builder(C67091 c67091) {
                this();
            }

            private Builder() {
                super(Height.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Cosmos.HeightOrBuilder
            public long getRevisionNumber() {
                return ((Height) this.instance).getRevisionNumber();
            }

            public Builder setRevisionNumber(long value) {
                copyOnWrite();
                ((Height) this.instance).setRevisionNumber(value);
                return this;
            }

            public Builder clearRevisionNumber() {
                copyOnWrite();
                ((Height) this.instance).clearRevisionNumber();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.HeightOrBuilder
            public long getRevisionHeight() {
                return ((Height) this.instance).getRevisionHeight();
            }

            public Builder setRevisionHeight(long value) {
                copyOnWrite();
                ((Height) this.instance).setRevisionHeight(value);
                return this;
            }

            public Builder clearRevisionHeight() {
                copyOnWrite();
                ((Height) this.instance).clearRevisionHeight();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Height();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0003\u0002\u0003", new Object[]{"revisionNumber_", "revisionHeight_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Height> parser = PARSER;
                    if (parser == null) {
                        synchronized (Height.class) {
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
            Height height = new Height();
            DEFAULT_INSTANCE = height;
            GeneratedMessageLite.registerDefaultInstance(Height.class, height);
        }

        public static Height getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Height> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class Message extends GeneratedMessageLite<Message, Builder> implements MessageOrBuilder {
        public static final int AUTH_GRANT_FIELD_NUMBER = 16;
        public static final int AUTH_REVOKE_FIELD_NUMBER = 17;
        private static final Message DEFAULT_INSTANCE;
        public static final int MSG_VOTE_FIELD_NUMBER = 18;
        private static volatile Parser<Message> PARSER = null;
        public static final int RAW_JSON_MESSAGE_FIELD_NUMBER = 7;
        public static final int RESTAKE_MESSAGE_FIELD_NUMBER = 5;
        public static final int SEND_COINS_MESSAGE_FIELD_NUMBER = 1;
        public static final int SIGN_DIRECT_MESSAGE_FIELD_NUMBER = 15;
        public static final int STAKE_MESSAGE_FIELD_NUMBER = 3;
        public static final int THORCHAIN_SEND_MESSAGE_FIELD_NUMBER = 10;
        public static final int TRANSFER_TOKENS_MESSAGE_FIELD_NUMBER = 2;
        public static final int UNSTAKE_MESSAGE_FIELD_NUMBER = 4;
        public static final int WASM_EXECUTE_CONTRACT_GENERIC_FIELD_NUMBER = 14;
        public static final int WASM_EXECUTE_CONTRACT_SEND_MESSAGE_FIELD_NUMBER = 13;
        public static final int WASM_EXECUTE_CONTRACT_TRANSFER_MESSAGE_FIELD_NUMBER = 12;
        public static final int WASM_TERRA_EXECUTE_CONTRACT_GENERIC_FIELD_NUMBER = 11;
        public static final int WASM_TERRA_EXECUTE_CONTRACT_SEND_MESSAGE_FIELD_NUMBER = 9;
        public static final int WASM_TERRA_EXECUTE_CONTRACT_TRANSFER_MESSAGE_FIELD_NUMBER = 8;
        public static final int WITHDRAW_STAKE_REWARD_MESSAGE_FIELD_NUMBER = 6;
        private int messageOneofCase_ = 0;
        private Object messageOneof_;

        /* loaded from: classes6.dex */
        public interface AuthGrantOrBuilder extends MessageLiteOrBuilder {
            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            long getExpiration();

            StakeAuthorization getGrantStake();

            AuthGrant.GrantTypeCase getGrantTypeCase();

            String getGrantee();

            ByteString getGranteeBytes();

            String getGranter();

            ByteString getGranterBytes();

            boolean hasGrantStake();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface AuthRevokeOrBuilder extends MessageLiteOrBuilder {
            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getGrantee();

            ByteString getGranteeBytes();

            String getGranter();

            ByteString getGranterBytes();

            String getMsgTypeUrl();

            ByteString getMsgTypeUrlBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface BeginRedelegateOrBuilder extends MessageLiteOrBuilder {
            Amount getAmount();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getDelegatorAddress();

            ByteString getDelegatorAddressBytes();

            String getTypePrefix();

            ByteString getTypePrefixBytes();

            String getValidatorDstAddress();

            ByteString getValidatorDstAddressBytes();

            String getValidatorSrcAddress();

            ByteString getValidatorSrcAddressBytes();

            boolean hasAmount();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface DelegateOrBuilder extends MessageLiteOrBuilder {
            Amount getAmount();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getDelegatorAddress();

            ByteString getDelegatorAddressBytes();

            String getTypePrefix();

            ByteString getTypePrefixBytes();

            String getValidatorAddress();

            ByteString getValidatorAddressBytes();

            boolean hasAmount();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface MsgVoteOrBuilder extends MessageLiteOrBuilder {
            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            VoteOption getOption();

            int getOptionValue();

            long getProposalId();

            String getVoter();

            ByteString getVoterBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface RawJSONOrBuilder extends MessageLiteOrBuilder {
            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getType();

            ByteString getTypeBytes();

            String getValue();

            ByteString getValueBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface SendOrBuilder extends MessageLiteOrBuilder {
            Amount getAmounts(int index);

            int getAmountsCount();

            List<Amount> getAmountsList();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getFromAddress();

            ByteString getFromAddressBytes();

            String getToAddress();

            ByteString getToAddressBytes();

            String getTypePrefix();

            ByteString getTypePrefixBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface SignDirectOrBuilder extends MessageLiteOrBuilder {
            ByteString getAuthInfoBytes();

            ByteString getBodyBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface StakeAuthorizationOrBuilder extends MessageLiteOrBuilder {
            StakeAuthorization.Validators getAllowList();

            AuthorizationType getAuthorizationType();

            int getAuthorizationTypeValue();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            StakeAuthorization.Validators getDenyList();

            Amount getMaxTokens();

            StakeAuthorization.ValidatorsCase getValidatorsCase();

            boolean hasAllowList();

            boolean hasDenyList();

            boolean hasMaxTokens();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface THORChainSendOrBuilder extends MessageLiteOrBuilder {
            Amount getAmounts(int index);

            int getAmountsCount();

            List<Amount> getAmountsList();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            ByteString getFromAddress();

            ByteString getToAddress();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface TransferOrBuilder extends MessageLiteOrBuilder {
            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getReceiver();

            ByteString getReceiverBytes();

            String getSender();

            ByteString getSenderBytes();

            String getSourceChannel();

            ByteString getSourceChannelBytes();

            String getSourcePort();

            ByteString getSourcePortBytes();

            Height getTimeoutHeight();

            long getTimeoutTimestamp();

            Amount getToken();

            boolean hasTimeoutHeight();

            boolean hasToken();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface UndelegateOrBuilder extends MessageLiteOrBuilder {
            Amount getAmount();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getDelegatorAddress();

            ByteString getDelegatorAddressBytes();

            String getTypePrefix();

            ByteString getTypePrefixBytes();

            String getValidatorAddress();

            ByteString getValidatorAddressBytes();

            boolean hasAmount();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface WasmExecuteContractGenericOrBuilder extends MessageLiteOrBuilder {
            Amount getCoins(int index);

            int getCoinsCount();

            List<Amount> getCoinsList();

            String getContractAddress();

            ByteString getContractAddressBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getExecuteMsg();

            ByteString getExecuteMsgBytes();

            String getSenderAddress();

            ByteString getSenderAddressBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface WasmExecuteContractSendOrBuilder extends MessageLiteOrBuilder {
            ByteString getAmount();

            String getCoin(int index);

            ByteString getCoinBytes(int index);

            int getCoinCount();

            List<String> getCoinList();

            String getContractAddress();

            ByteString getContractAddressBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getMsg();

            ByteString getMsgBytes();

            String getRecipientContractAddress();

            ByteString getRecipientContractAddressBytes();

            String getSenderAddress();

            ByteString getSenderAddressBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface WasmExecuteContractTransferOrBuilder extends MessageLiteOrBuilder {
            ByteString getAmount();

            String getContractAddress();

            ByteString getContractAddressBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getRecipientAddress();

            ByteString getRecipientAddressBytes();

            String getSenderAddress();

            ByteString getSenderAddressBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface WasmTerraExecuteContractGenericOrBuilder extends MessageLiteOrBuilder {
            Amount getCoins(int index);

            int getCoinsCount();

            List<Amount> getCoinsList();

            String getContractAddress();

            ByteString getContractAddressBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getExecuteMsg();

            ByteString getExecuteMsgBytes();

            String getSenderAddress();

            ByteString getSenderAddressBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface WasmTerraExecuteContractSendOrBuilder extends MessageLiteOrBuilder {
            ByteString getAmount();

            String getCoin(int index);

            ByteString getCoinBytes(int index);

            int getCoinCount();

            List<String> getCoinList();

            String getContractAddress();

            ByteString getContractAddressBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getMsg();

            ByteString getMsgBytes();

            String getRecipientContractAddress();

            ByteString getRecipientContractAddressBytes();

            String getSenderAddress();

            ByteString getSenderAddressBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface WasmTerraExecuteContractTransferOrBuilder extends MessageLiteOrBuilder {
            ByteString getAmount();

            String getContractAddress();

            ByteString getContractAddressBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getRecipientAddress();

            ByteString getRecipientAddressBytes();

            String getSenderAddress();

            ByteString getSenderAddressBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface WithdrawDelegationRewardOrBuilder extends MessageLiteOrBuilder {
            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getDelegatorAddress();

            ByteString getDelegatorAddressBytes();

            String getTypePrefix();

            ByteString getTypePrefixBytes();

            String getValidatorAddress();

            ByteString getValidatorAddressBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        private Message() {
        }

        /* loaded from: classes6.dex */
        public enum AuthorizationType implements Internal.EnumLite {
            UNSPECIFIED(0),
            DELEGATE(1),
            UNDELEGATE(2),
            REDELEGATE(3),
            UNRECOGNIZED(-1);
            
            public static final int DELEGATE_VALUE = 1;
            public static final int REDELEGATE_VALUE = 3;
            public static final int UNDELEGATE_VALUE = 2;
            public static final int UNSPECIFIED_VALUE = 0;
            private static final Internal.EnumLiteMap<AuthorizationType> internalValueMap = new Internal.EnumLiteMap<AuthorizationType>() { // from class: wallet.core.jni.proto.Cosmos.Message.AuthorizationType.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public AuthorizationType findValueByNumber(int number) {
                    return AuthorizationType.forNumber(number);
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
            public static AuthorizationType valueOf(int value) {
                return forNumber(value);
            }

            public static AuthorizationType forNumber(int value) {
                if (value != 0) {
                    if (value != 1) {
                        if (value != 2) {
                            if (value != 3) {
                                return null;
                            }
                            return REDELEGATE;
                        }
                        return UNDELEGATE;
                    }
                    return DELEGATE;
                }
                return UNSPECIFIED;
            }

            public static Internal.EnumLiteMap<AuthorizationType> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return AuthorizationTypeVerifier.INSTANCE;
            }

            /* loaded from: classes6.dex */
            private static final class AuthorizationTypeVerifier implements Internal.EnumVerifier {
                static final Internal.EnumVerifier INSTANCE = new AuthorizationTypeVerifier();

                private AuthorizationTypeVerifier() {
                }

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int number) {
                    return AuthorizationType.forNumber(number) != null;
                }
            }

            AuthorizationType(int value) {
                this.value = value;
            }
        }

        /* loaded from: classes6.dex */
        public enum VoteOption implements Internal.EnumLite {
            _UNSPECIFIED(0),
            YES(1),
            ABSTAIN(2),
            NO(3),
            NO_WITH_VETO(4),
            UNRECOGNIZED(-1);
            
            public static final int ABSTAIN_VALUE = 2;
            public static final int NO_VALUE = 3;
            public static final int NO_WITH_VETO_VALUE = 4;
            public static final int YES_VALUE = 1;
            public static final int _UNSPECIFIED_VALUE = 0;
            private static final Internal.EnumLiteMap<VoteOption> internalValueMap = new Internal.EnumLiteMap<VoteOption>() { // from class: wallet.core.jni.proto.Cosmos.Message.VoteOption.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public VoteOption findValueByNumber(int number) {
                    return VoteOption.forNumber(number);
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
            public static VoteOption valueOf(int value) {
                return forNumber(value);
            }

            public static VoteOption forNumber(int value) {
                if (value != 0) {
                    if (value != 1) {
                        if (value != 2) {
                            if (value != 3) {
                                if (value != 4) {
                                    return null;
                                }
                                return NO_WITH_VETO;
                            }
                            return NO;
                        }
                        return ABSTAIN;
                    }
                    return YES;
                }
                return _UNSPECIFIED;
            }

            public static Internal.EnumLiteMap<VoteOption> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return VoteOptionVerifier.INSTANCE;
            }

            /* loaded from: classes6.dex */
            private static final class VoteOptionVerifier implements Internal.EnumVerifier {
                static final Internal.EnumVerifier INSTANCE = new VoteOptionVerifier();

                private VoteOptionVerifier() {
                }

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int number) {
                    return VoteOption.forNumber(number) != null;
                }
            }

            VoteOption(int value) {
                this.value = value;
            }
        }

        /* loaded from: classes6.dex */
        public static final class Send extends GeneratedMessageLite<Send, Builder> implements SendOrBuilder {
            public static final int AMOUNTS_FIELD_NUMBER = 3;
            private static final Send DEFAULT_INSTANCE;
            public static final int FROM_ADDRESS_FIELD_NUMBER = 1;
            private static volatile Parser<Send> PARSER = null;
            public static final int TO_ADDRESS_FIELD_NUMBER = 2;
            public static final int TYPE_PREFIX_FIELD_NUMBER = 4;
            private String fromAddress_ = "";
            private String toAddress_ = "";
            private Internal.ProtobufList<Amount> amounts_ = GeneratedMessageLite.emptyProtobufList();
            private String typePrefix_ = "";

            private Send() {
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.SendOrBuilder
            public String getFromAddress() {
                return this.fromAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.SendOrBuilder
            public ByteString getFromAddressBytes() {
                return ByteString.copyFromUtf8(this.fromAddress_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setFromAddress(String value) {
                value.getClass();
                this.fromAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearFromAddress() {
                this.fromAddress_ = getDefaultInstance().getFromAddress();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setFromAddressBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.fromAddress_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.SendOrBuilder
            public String getToAddress() {
                return this.toAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.SendOrBuilder
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

            @Override // wallet.core.jni.proto.Cosmos.Message.SendOrBuilder
            public List<Amount> getAmountsList() {
                return this.amounts_;
            }

            public List<? extends AmountOrBuilder> getAmountsOrBuilderList() {
                return this.amounts_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.SendOrBuilder
            public int getAmountsCount() {
                return this.amounts_.size();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.SendOrBuilder
            public Amount getAmounts(int index) {
                return this.amounts_.get(index);
            }

            public AmountOrBuilder getAmountsOrBuilder(int index) {
                return this.amounts_.get(index);
            }

            private void ensureAmountsIsMutable() {
                Internal.ProtobufList<Amount> protobufList = this.amounts_;
                if (protobufList.isModifiable()) {
                    return;
                }
                this.amounts_ = GeneratedMessageLite.mutableCopy(protobufList);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setAmounts(int index, Amount value) {
                value.getClass();
                ensureAmountsIsMutable();
                this.amounts_.set(index, value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addAmounts(Amount value) {
                value.getClass();
                ensureAmountsIsMutable();
                this.amounts_.add(value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addAmounts(int index, Amount value) {
                value.getClass();
                ensureAmountsIsMutable();
                this.amounts_.add(index, value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addAllAmounts(Iterable<? extends Amount> values) {
                ensureAmountsIsMutable();
                AbstractMessageLite.addAll((Iterable) values, (List) this.amounts_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearAmounts() {
                this.amounts_ = GeneratedMessageLite.emptyProtobufList();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void removeAmounts(int index) {
                ensureAmountsIsMutable();
                this.amounts_.remove(index);
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.SendOrBuilder
            public String getTypePrefix() {
                return this.typePrefix_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.SendOrBuilder
            public ByteString getTypePrefixBytes() {
                return ByteString.copyFromUtf8(this.typePrefix_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setTypePrefix(String value) {
                value.getClass();
                this.typePrefix_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearTypePrefix() {
                this.typePrefix_ = getDefaultInstance().getTypePrefix();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setTypePrefixBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.typePrefix_ = value.toStringUtf8();
            }

            public static Send parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (Send) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Send parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Send) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Send parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (Send) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Send parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Send) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Send parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (Send) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Send parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Send) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Send parseFrom(InputStream input) throws IOException {
                return (Send) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Send parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Send) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Send parseDelimitedFrom(InputStream input) throws IOException {
                return (Send) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static Send parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Send) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Send parseFrom(CodedInputStream input) throws IOException {
                return (Send) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Send parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Send) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(Send prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<Send, Builder> implements SendOrBuilder {
                /* synthetic */ Builder(C67091 c67091) {
                    this();
                }

                private Builder() {
                    super(Send.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.SendOrBuilder
                public String getFromAddress() {
                    return ((Send) this.instance).getFromAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.SendOrBuilder
                public ByteString getFromAddressBytes() {
                    return ((Send) this.instance).getFromAddressBytes();
                }

                public Builder setFromAddress(String value) {
                    copyOnWrite();
                    ((Send) this.instance).setFromAddress(value);
                    return this;
                }

                public Builder clearFromAddress() {
                    copyOnWrite();
                    ((Send) this.instance).clearFromAddress();
                    return this;
                }

                public Builder setFromAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((Send) this.instance).setFromAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.SendOrBuilder
                public String getToAddress() {
                    return ((Send) this.instance).getToAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.SendOrBuilder
                public ByteString getToAddressBytes() {
                    return ((Send) this.instance).getToAddressBytes();
                }

                public Builder setToAddress(String value) {
                    copyOnWrite();
                    ((Send) this.instance).setToAddress(value);
                    return this;
                }

                public Builder clearToAddress() {
                    copyOnWrite();
                    ((Send) this.instance).clearToAddress();
                    return this;
                }

                public Builder setToAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((Send) this.instance).setToAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.SendOrBuilder
                public List<Amount> getAmountsList() {
                    return Collections.unmodifiableList(((Send) this.instance).getAmountsList());
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.SendOrBuilder
                public int getAmountsCount() {
                    return ((Send) this.instance).getAmountsCount();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.SendOrBuilder
                public Amount getAmounts(int index) {
                    return ((Send) this.instance).getAmounts(index);
                }

                public Builder setAmounts(int index, Amount value) {
                    copyOnWrite();
                    ((Send) this.instance).setAmounts(index, value);
                    return this;
                }

                public Builder setAmounts(int index, Amount.Builder builderForValue) {
                    copyOnWrite();
                    ((Send) this.instance).setAmounts(index, builderForValue.build());
                    return this;
                }

                public Builder addAmounts(Amount value) {
                    copyOnWrite();
                    ((Send) this.instance).addAmounts(value);
                    return this;
                }

                public Builder addAmounts(int index, Amount value) {
                    copyOnWrite();
                    ((Send) this.instance).addAmounts(index, value);
                    return this;
                }

                public Builder addAmounts(Amount.Builder builderForValue) {
                    copyOnWrite();
                    ((Send) this.instance).addAmounts(builderForValue.build());
                    return this;
                }

                public Builder addAmounts(int index, Amount.Builder builderForValue) {
                    copyOnWrite();
                    ((Send) this.instance).addAmounts(index, builderForValue.build());
                    return this;
                }

                public Builder addAllAmounts(Iterable<? extends Amount> values) {
                    copyOnWrite();
                    ((Send) this.instance).addAllAmounts(values);
                    return this;
                }

                public Builder clearAmounts() {
                    copyOnWrite();
                    ((Send) this.instance).clearAmounts();
                    return this;
                }

                public Builder removeAmounts(int index) {
                    copyOnWrite();
                    ((Send) this.instance).removeAmounts(index);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.SendOrBuilder
                public String getTypePrefix() {
                    return ((Send) this.instance).getTypePrefix();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.SendOrBuilder
                public ByteString getTypePrefixBytes() {
                    return ((Send) this.instance).getTypePrefixBytes();
                }

                public Builder setTypePrefix(String value) {
                    copyOnWrite();
                    ((Send) this.instance).setTypePrefix(value);
                    return this;
                }

                public Builder clearTypePrefix() {
                    copyOnWrite();
                    ((Send) this.instance).clearTypePrefix();
                    return this;
                }

                public Builder setTypePrefixBytes(ByteString value) {
                    copyOnWrite();
                    ((Send) this.instance).setTypePrefixBytes(value);
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new Send();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001Ȉ\u0002Ȉ\u0003\u001b\u0004Ȉ", new Object[]{"fromAddress_", "toAddress_", "amounts_", Amount.class, "typePrefix_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<Send> parser = PARSER;
                        if (parser == null) {
                            synchronized (Send.class) {
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
                Send send = new Send();
                DEFAULT_INSTANCE = send;
                GeneratedMessageLite.registerDefaultInstance(Send.class, send);
            }

            public static Send getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Send> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class Transfer extends GeneratedMessageLite<Transfer, Builder> implements TransferOrBuilder {
            private static final Transfer DEFAULT_INSTANCE;
            private static volatile Parser<Transfer> PARSER = null;
            public static final int RECEIVER_FIELD_NUMBER = 5;
            public static final int SENDER_FIELD_NUMBER = 4;
            public static final int SOURCE_CHANNEL_FIELD_NUMBER = 2;
            public static final int SOURCE_PORT_FIELD_NUMBER = 1;
            public static final int TIMEOUT_HEIGHT_FIELD_NUMBER = 6;
            public static final int TIMEOUT_TIMESTAMP_FIELD_NUMBER = 7;
            public static final int TOKEN_FIELD_NUMBER = 3;
            private Height timeoutHeight_;
            private long timeoutTimestamp_;
            private Amount token_;
            private String sourcePort_ = "";
            private String sourceChannel_ = "";
            private String sender_ = "";
            private String receiver_ = "";

            private Transfer() {
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
            public String getSourcePort() {
                return this.sourcePort_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
            public ByteString getSourcePortBytes() {
                return ByteString.copyFromUtf8(this.sourcePort_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSourcePort(String value) {
                value.getClass();
                this.sourcePort_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearSourcePort() {
                this.sourcePort_ = getDefaultInstance().getSourcePort();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSourcePortBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.sourcePort_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
            public String getSourceChannel() {
                return this.sourceChannel_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
            public ByteString getSourceChannelBytes() {
                return ByteString.copyFromUtf8(this.sourceChannel_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSourceChannel(String value) {
                value.getClass();
                this.sourceChannel_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearSourceChannel() {
                this.sourceChannel_ = getDefaultInstance().getSourceChannel();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSourceChannelBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.sourceChannel_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
            public boolean hasToken() {
                return this.token_ != null;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
            public Amount getToken() {
                Amount amount = this.token_;
                return amount == null ? Amount.getDefaultInstance() : amount;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setToken(Amount value) {
                value.getClass();
                this.token_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeToken(Amount value) {
                value.getClass();
                Amount amount = this.token_;
                if (amount != null && amount != Amount.getDefaultInstance()) {
                    this.token_ = Amount.newBuilder(this.token_).mergeFrom((Amount.Builder) value).buildPartial();
                } else {
                    this.token_ = value;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearToken() {
                this.token_ = null;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
            public String getSender() {
                return this.sender_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
            public ByteString getSenderBytes() {
                return ByteString.copyFromUtf8(this.sender_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSender(String value) {
                value.getClass();
                this.sender_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearSender() {
                this.sender_ = getDefaultInstance().getSender();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSenderBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.sender_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
            public String getReceiver() {
                return this.receiver_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
            public ByteString getReceiverBytes() {
                return ByteString.copyFromUtf8(this.receiver_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setReceiver(String value) {
                value.getClass();
                this.receiver_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearReceiver() {
                this.receiver_ = getDefaultInstance().getReceiver();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setReceiverBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.receiver_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
            public boolean hasTimeoutHeight() {
                return this.timeoutHeight_ != null;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
            public Height getTimeoutHeight() {
                Height height = this.timeoutHeight_;
                return height == null ? Height.getDefaultInstance() : height;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setTimeoutHeight(Height value) {
                value.getClass();
                this.timeoutHeight_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeTimeoutHeight(Height value) {
                value.getClass();
                Height height = this.timeoutHeight_;
                if (height != null && height != Height.getDefaultInstance()) {
                    this.timeoutHeight_ = Height.newBuilder(this.timeoutHeight_).mergeFrom((Height.Builder) value).buildPartial();
                } else {
                    this.timeoutHeight_ = value;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearTimeoutHeight() {
                this.timeoutHeight_ = null;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
            public long getTimeoutTimestamp() {
                return this.timeoutTimestamp_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setTimeoutTimestamp(long value) {
                this.timeoutTimestamp_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearTimeoutTimestamp() {
                this.timeoutTimestamp_ = 0L;
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
                /* synthetic */ Builder(C67091 c67091) {
                    this();
                }

                private Builder() {
                    super(Transfer.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
                public String getSourcePort() {
                    return ((Transfer) this.instance).getSourcePort();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
                public ByteString getSourcePortBytes() {
                    return ((Transfer) this.instance).getSourcePortBytes();
                }

                public Builder setSourcePort(String value) {
                    copyOnWrite();
                    ((Transfer) this.instance).setSourcePort(value);
                    return this;
                }

                public Builder clearSourcePort() {
                    copyOnWrite();
                    ((Transfer) this.instance).clearSourcePort();
                    return this;
                }

                public Builder setSourcePortBytes(ByteString value) {
                    copyOnWrite();
                    ((Transfer) this.instance).setSourcePortBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
                public String getSourceChannel() {
                    return ((Transfer) this.instance).getSourceChannel();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
                public ByteString getSourceChannelBytes() {
                    return ((Transfer) this.instance).getSourceChannelBytes();
                }

                public Builder setSourceChannel(String value) {
                    copyOnWrite();
                    ((Transfer) this.instance).setSourceChannel(value);
                    return this;
                }

                public Builder clearSourceChannel() {
                    copyOnWrite();
                    ((Transfer) this.instance).clearSourceChannel();
                    return this;
                }

                public Builder setSourceChannelBytes(ByteString value) {
                    copyOnWrite();
                    ((Transfer) this.instance).setSourceChannelBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
                public boolean hasToken() {
                    return ((Transfer) this.instance).hasToken();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
                public Amount getToken() {
                    return ((Transfer) this.instance).getToken();
                }

                public Builder setToken(Amount value) {
                    copyOnWrite();
                    ((Transfer) this.instance).setToken(value);
                    return this;
                }

                public Builder setToken(Amount.Builder builderForValue) {
                    copyOnWrite();
                    ((Transfer) this.instance).setToken(builderForValue.build());
                    return this;
                }

                public Builder mergeToken(Amount value) {
                    copyOnWrite();
                    ((Transfer) this.instance).mergeToken(value);
                    return this;
                }

                public Builder clearToken() {
                    copyOnWrite();
                    ((Transfer) this.instance).clearToken();
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
                public String getSender() {
                    return ((Transfer) this.instance).getSender();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
                public ByteString getSenderBytes() {
                    return ((Transfer) this.instance).getSenderBytes();
                }

                public Builder setSender(String value) {
                    copyOnWrite();
                    ((Transfer) this.instance).setSender(value);
                    return this;
                }

                public Builder clearSender() {
                    copyOnWrite();
                    ((Transfer) this.instance).clearSender();
                    return this;
                }

                public Builder setSenderBytes(ByteString value) {
                    copyOnWrite();
                    ((Transfer) this.instance).setSenderBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
                public String getReceiver() {
                    return ((Transfer) this.instance).getReceiver();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
                public ByteString getReceiverBytes() {
                    return ((Transfer) this.instance).getReceiverBytes();
                }

                public Builder setReceiver(String value) {
                    copyOnWrite();
                    ((Transfer) this.instance).setReceiver(value);
                    return this;
                }

                public Builder clearReceiver() {
                    copyOnWrite();
                    ((Transfer) this.instance).clearReceiver();
                    return this;
                }

                public Builder setReceiverBytes(ByteString value) {
                    copyOnWrite();
                    ((Transfer) this.instance).setReceiverBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
                public boolean hasTimeoutHeight() {
                    return ((Transfer) this.instance).hasTimeoutHeight();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
                public Height getTimeoutHeight() {
                    return ((Transfer) this.instance).getTimeoutHeight();
                }

                public Builder setTimeoutHeight(Height value) {
                    copyOnWrite();
                    ((Transfer) this.instance).setTimeoutHeight(value);
                    return this;
                }

                public Builder setTimeoutHeight(Height.Builder builderForValue) {
                    copyOnWrite();
                    ((Transfer) this.instance).setTimeoutHeight(builderForValue.build());
                    return this;
                }

                public Builder mergeTimeoutHeight(Height value) {
                    copyOnWrite();
                    ((Transfer) this.instance).mergeTimeoutHeight(value);
                    return this;
                }

                public Builder clearTimeoutHeight() {
                    copyOnWrite();
                    ((Transfer) this.instance).clearTimeoutHeight();
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.TransferOrBuilder
                public long getTimeoutTimestamp() {
                    return ((Transfer) this.instance).getTimeoutTimestamp();
                }

                public Builder setTimeoutTimestamp(long value) {
                    copyOnWrite();
                    ((Transfer) this.instance).setTimeoutTimestamp(value);
                    return this;
                }

                public Builder clearTimeoutTimestamp() {
                    copyOnWrite();
                    ((Transfer) this.instance).clearTimeoutTimestamp();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new Transfer();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\t\u0004Ȉ\u0005Ȉ\u0006\t\u0007\u0003", new Object[]{"sourcePort_", "sourceChannel_", "token_", "sender_", "receiver_", "timeoutHeight_", "timeoutTimestamp_"});
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
        public static final class Delegate extends GeneratedMessageLite<Delegate, Builder> implements DelegateOrBuilder {
            public static final int AMOUNT_FIELD_NUMBER = 3;
            private static final Delegate DEFAULT_INSTANCE;
            public static final int DELEGATOR_ADDRESS_FIELD_NUMBER = 1;
            private static volatile Parser<Delegate> PARSER = null;
            public static final int TYPE_PREFIX_FIELD_NUMBER = 4;
            public static final int VALIDATOR_ADDRESS_FIELD_NUMBER = 2;
            private Amount amount_;
            private String delegatorAddress_ = "";
            private String validatorAddress_ = "";
            private String typePrefix_ = "";

            private Delegate() {
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.DelegateOrBuilder
            public String getDelegatorAddress() {
                return this.delegatorAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.DelegateOrBuilder
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

            @Override // wallet.core.jni.proto.Cosmos.Message.DelegateOrBuilder
            public String getValidatorAddress() {
                return this.validatorAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.DelegateOrBuilder
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

            @Override // wallet.core.jni.proto.Cosmos.Message.DelegateOrBuilder
            public boolean hasAmount() {
                return this.amount_ != null;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.DelegateOrBuilder
            public Amount getAmount() {
                Amount amount = this.amount_;
                return amount == null ? Amount.getDefaultInstance() : amount;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setAmount(Amount value) {
                value.getClass();
                this.amount_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeAmount(Amount value) {
                value.getClass();
                Amount amount = this.amount_;
                if (amount != null && amount != Amount.getDefaultInstance()) {
                    this.amount_ = Amount.newBuilder(this.amount_).mergeFrom((Amount.Builder) value).buildPartial();
                } else {
                    this.amount_ = value;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearAmount() {
                this.amount_ = null;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.DelegateOrBuilder
            public String getTypePrefix() {
                return this.typePrefix_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.DelegateOrBuilder
            public ByteString getTypePrefixBytes() {
                return ByteString.copyFromUtf8(this.typePrefix_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setTypePrefix(String value) {
                value.getClass();
                this.typePrefix_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearTypePrefix() {
                this.typePrefix_ = getDefaultInstance().getTypePrefix();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setTypePrefixBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.typePrefix_ = value.toStringUtf8();
            }

            public static Delegate parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (Delegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Delegate parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Delegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Delegate parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (Delegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Delegate parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Delegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Delegate parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (Delegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Delegate parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Delegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Delegate parseFrom(InputStream input) throws IOException {
                return (Delegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Delegate parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Delegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Delegate parseDelimitedFrom(InputStream input) throws IOException {
                return (Delegate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static Delegate parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Delegate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Delegate parseFrom(CodedInputStream input) throws IOException {
                return (Delegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Delegate parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Delegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(Delegate prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<Delegate, Builder> implements DelegateOrBuilder {
                /* synthetic */ Builder(C67091 c67091) {
                    this();
                }

                private Builder() {
                    super(Delegate.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.DelegateOrBuilder
                public String getDelegatorAddress() {
                    return ((Delegate) this.instance).getDelegatorAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.DelegateOrBuilder
                public ByteString getDelegatorAddressBytes() {
                    return ((Delegate) this.instance).getDelegatorAddressBytes();
                }

                public Builder setDelegatorAddress(String value) {
                    copyOnWrite();
                    ((Delegate) this.instance).setDelegatorAddress(value);
                    return this;
                }

                public Builder clearDelegatorAddress() {
                    copyOnWrite();
                    ((Delegate) this.instance).clearDelegatorAddress();
                    return this;
                }

                public Builder setDelegatorAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((Delegate) this.instance).setDelegatorAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.DelegateOrBuilder
                public String getValidatorAddress() {
                    return ((Delegate) this.instance).getValidatorAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.DelegateOrBuilder
                public ByteString getValidatorAddressBytes() {
                    return ((Delegate) this.instance).getValidatorAddressBytes();
                }

                public Builder setValidatorAddress(String value) {
                    copyOnWrite();
                    ((Delegate) this.instance).setValidatorAddress(value);
                    return this;
                }

                public Builder clearValidatorAddress() {
                    copyOnWrite();
                    ((Delegate) this.instance).clearValidatorAddress();
                    return this;
                }

                public Builder setValidatorAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((Delegate) this.instance).setValidatorAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.DelegateOrBuilder
                public boolean hasAmount() {
                    return ((Delegate) this.instance).hasAmount();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.DelegateOrBuilder
                public Amount getAmount() {
                    return ((Delegate) this.instance).getAmount();
                }

                public Builder setAmount(Amount value) {
                    copyOnWrite();
                    ((Delegate) this.instance).setAmount(value);
                    return this;
                }

                public Builder setAmount(Amount.Builder builderForValue) {
                    copyOnWrite();
                    ((Delegate) this.instance).setAmount(builderForValue.build());
                    return this;
                }

                public Builder mergeAmount(Amount value) {
                    copyOnWrite();
                    ((Delegate) this.instance).mergeAmount(value);
                    return this;
                }

                public Builder clearAmount() {
                    copyOnWrite();
                    ((Delegate) this.instance).clearAmount();
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.DelegateOrBuilder
                public String getTypePrefix() {
                    return ((Delegate) this.instance).getTypePrefix();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.DelegateOrBuilder
                public ByteString getTypePrefixBytes() {
                    return ((Delegate) this.instance).getTypePrefixBytes();
                }

                public Builder setTypePrefix(String value) {
                    copyOnWrite();
                    ((Delegate) this.instance).setTypePrefix(value);
                    return this;
                }

                public Builder clearTypePrefix() {
                    copyOnWrite();
                    ((Delegate) this.instance).clearTypePrefix();
                    return this;
                }

                public Builder setTypePrefixBytes(ByteString value) {
                    copyOnWrite();
                    ((Delegate) this.instance).setTypePrefixBytes(value);
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new Delegate();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\t\u0004Ȉ", new Object[]{"delegatorAddress_", "validatorAddress_", "amount_", "typePrefix_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<Delegate> parser = PARSER;
                        if (parser == null) {
                            synchronized (Delegate.class) {
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
                Delegate delegate = new Delegate();
                DEFAULT_INSTANCE = delegate;
                GeneratedMessageLite.registerDefaultInstance(Delegate.class, delegate);
            }

            public static Delegate getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Delegate> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class Undelegate extends GeneratedMessageLite<Undelegate, Builder> implements UndelegateOrBuilder {
            public static final int AMOUNT_FIELD_NUMBER = 3;
            private static final Undelegate DEFAULT_INSTANCE;
            public static final int DELEGATOR_ADDRESS_FIELD_NUMBER = 1;
            private static volatile Parser<Undelegate> PARSER = null;
            public static final int TYPE_PREFIX_FIELD_NUMBER = 4;
            public static final int VALIDATOR_ADDRESS_FIELD_NUMBER = 2;
            private Amount amount_;
            private String delegatorAddress_ = "";
            private String validatorAddress_ = "";
            private String typePrefix_ = "";

            private Undelegate() {
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.UndelegateOrBuilder
            public String getDelegatorAddress() {
                return this.delegatorAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.UndelegateOrBuilder
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

            @Override // wallet.core.jni.proto.Cosmos.Message.UndelegateOrBuilder
            public String getValidatorAddress() {
                return this.validatorAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.UndelegateOrBuilder
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

            @Override // wallet.core.jni.proto.Cosmos.Message.UndelegateOrBuilder
            public boolean hasAmount() {
                return this.amount_ != null;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.UndelegateOrBuilder
            public Amount getAmount() {
                Amount amount = this.amount_;
                return amount == null ? Amount.getDefaultInstance() : amount;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setAmount(Amount value) {
                value.getClass();
                this.amount_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeAmount(Amount value) {
                value.getClass();
                Amount amount = this.amount_;
                if (amount != null && amount != Amount.getDefaultInstance()) {
                    this.amount_ = Amount.newBuilder(this.amount_).mergeFrom((Amount.Builder) value).buildPartial();
                } else {
                    this.amount_ = value;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearAmount() {
                this.amount_ = null;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.UndelegateOrBuilder
            public String getTypePrefix() {
                return this.typePrefix_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.UndelegateOrBuilder
            public ByteString getTypePrefixBytes() {
                return ByteString.copyFromUtf8(this.typePrefix_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setTypePrefix(String value) {
                value.getClass();
                this.typePrefix_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearTypePrefix() {
                this.typePrefix_ = getDefaultInstance().getTypePrefix();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setTypePrefixBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.typePrefix_ = value.toStringUtf8();
            }

            public static Undelegate parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (Undelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Undelegate parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Undelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Undelegate parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (Undelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Undelegate parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Undelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Undelegate parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (Undelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Undelegate parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Undelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Undelegate parseFrom(InputStream input) throws IOException {
                return (Undelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Undelegate parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Undelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Undelegate parseDelimitedFrom(InputStream input) throws IOException {
                return (Undelegate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static Undelegate parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Undelegate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Undelegate parseFrom(CodedInputStream input) throws IOException {
                return (Undelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Undelegate parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Undelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(Undelegate prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<Undelegate, Builder> implements UndelegateOrBuilder {
                /* synthetic */ Builder(C67091 c67091) {
                    this();
                }

                private Builder() {
                    super(Undelegate.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.UndelegateOrBuilder
                public String getDelegatorAddress() {
                    return ((Undelegate) this.instance).getDelegatorAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.UndelegateOrBuilder
                public ByteString getDelegatorAddressBytes() {
                    return ((Undelegate) this.instance).getDelegatorAddressBytes();
                }

                public Builder setDelegatorAddress(String value) {
                    copyOnWrite();
                    ((Undelegate) this.instance).setDelegatorAddress(value);
                    return this;
                }

                public Builder clearDelegatorAddress() {
                    copyOnWrite();
                    ((Undelegate) this.instance).clearDelegatorAddress();
                    return this;
                }

                public Builder setDelegatorAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((Undelegate) this.instance).setDelegatorAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.UndelegateOrBuilder
                public String getValidatorAddress() {
                    return ((Undelegate) this.instance).getValidatorAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.UndelegateOrBuilder
                public ByteString getValidatorAddressBytes() {
                    return ((Undelegate) this.instance).getValidatorAddressBytes();
                }

                public Builder setValidatorAddress(String value) {
                    copyOnWrite();
                    ((Undelegate) this.instance).setValidatorAddress(value);
                    return this;
                }

                public Builder clearValidatorAddress() {
                    copyOnWrite();
                    ((Undelegate) this.instance).clearValidatorAddress();
                    return this;
                }

                public Builder setValidatorAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((Undelegate) this.instance).setValidatorAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.UndelegateOrBuilder
                public boolean hasAmount() {
                    return ((Undelegate) this.instance).hasAmount();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.UndelegateOrBuilder
                public Amount getAmount() {
                    return ((Undelegate) this.instance).getAmount();
                }

                public Builder setAmount(Amount value) {
                    copyOnWrite();
                    ((Undelegate) this.instance).setAmount(value);
                    return this;
                }

                public Builder setAmount(Amount.Builder builderForValue) {
                    copyOnWrite();
                    ((Undelegate) this.instance).setAmount(builderForValue.build());
                    return this;
                }

                public Builder mergeAmount(Amount value) {
                    copyOnWrite();
                    ((Undelegate) this.instance).mergeAmount(value);
                    return this;
                }

                public Builder clearAmount() {
                    copyOnWrite();
                    ((Undelegate) this.instance).clearAmount();
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.UndelegateOrBuilder
                public String getTypePrefix() {
                    return ((Undelegate) this.instance).getTypePrefix();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.UndelegateOrBuilder
                public ByteString getTypePrefixBytes() {
                    return ((Undelegate) this.instance).getTypePrefixBytes();
                }

                public Builder setTypePrefix(String value) {
                    copyOnWrite();
                    ((Undelegate) this.instance).setTypePrefix(value);
                    return this;
                }

                public Builder clearTypePrefix() {
                    copyOnWrite();
                    ((Undelegate) this.instance).clearTypePrefix();
                    return this;
                }

                public Builder setTypePrefixBytes(ByteString value) {
                    copyOnWrite();
                    ((Undelegate) this.instance).setTypePrefixBytes(value);
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new Undelegate();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\t\u0004Ȉ", new Object[]{"delegatorAddress_", "validatorAddress_", "amount_", "typePrefix_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<Undelegate> parser = PARSER;
                        if (parser == null) {
                            synchronized (Undelegate.class) {
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
                Undelegate undelegate = new Undelegate();
                DEFAULT_INSTANCE = undelegate;
                GeneratedMessageLite.registerDefaultInstance(Undelegate.class, undelegate);
            }

            public static Undelegate getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Undelegate> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class BeginRedelegate extends GeneratedMessageLite<BeginRedelegate, Builder> implements BeginRedelegateOrBuilder {
            public static final int AMOUNT_FIELD_NUMBER = 4;
            private static final BeginRedelegate DEFAULT_INSTANCE;
            public static final int DELEGATOR_ADDRESS_FIELD_NUMBER = 1;
            private static volatile Parser<BeginRedelegate> PARSER = null;
            public static final int TYPE_PREFIX_FIELD_NUMBER = 5;
            public static final int VALIDATOR_DST_ADDRESS_FIELD_NUMBER = 3;
            public static final int VALIDATOR_SRC_ADDRESS_FIELD_NUMBER = 2;
            private Amount amount_;
            private String delegatorAddress_ = "";
            private String validatorSrcAddress_ = "";
            private String validatorDstAddress_ = "";
            private String typePrefix_ = "";

            private BeginRedelegate() {
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.BeginRedelegateOrBuilder
            public String getDelegatorAddress() {
                return this.delegatorAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.BeginRedelegateOrBuilder
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

            @Override // wallet.core.jni.proto.Cosmos.Message.BeginRedelegateOrBuilder
            public String getValidatorSrcAddress() {
                return this.validatorSrcAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.BeginRedelegateOrBuilder
            public ByteString getValidatorSrcAddressBytes() {
                return ByteString.copyFromUtf8(this.validatorSrcAddress_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setValidatorSrcAddress(String value) {
                value.getClass();
                this.validatorSrcAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearValidatorSrcAddress() {
                this.validatorSrcAddress_ = getDefaultInstance().getValidatorSrcAddress();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setValidatorSrcAddressBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.validatorSrcAddress_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.BeginRedelegateOrBuilder
            public String getValidatorDstAddress() {
                return this.validatorDstAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.BeginRedelegateOrBuilder
            public ByteString getValidatorDstAddressBytes() {
                return ByteString.copyFromUtf8(this.validatorDstAddress_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setValidatorDstAddress(String value) {
                value.getClass();
                this.validatorDstAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearValidatorDstAddress() {
                this.validatorDstAddress_ = getDefaultInstance().getValidatorDstAddress();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setValidatorDstAddressBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.validatorDstAddress_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.BeginRedelegateOrBuilder
            public boolean hasAmount() {
                return this.amount_ != null;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.BeginRedelegateOrBuilder
            public Amount getAmount() {
                Amount amount = this.amount_;
                return amount == null ? Amount.getDefaultInstance() : amount;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setAmount(Amount value) {
                value.getClass();
                this.amount_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeAmount(Amount value) {
                value.getClass();
                Amount amount = this.amount_;
                if (amount != null && amount != Amount.getDefaultInstance()) {
                    this.amount_ = Amount.newBuilder(this.amount_).mergeFrom((Amount.Builder) value).buildPartial();
                } else {
                    this.amount_ = value;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearAmount() {
                this.amount_ = null;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.BeginRedelegateOrBuilder
            public String getTypePrefix() {
                return this.typePrefix_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.BeginRedelegateOrBuilder
            public ByteString getTypePrefixBytes() {
                return ByteString.copyFromUtf8(this.typePrefix_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setTypePrefix(String value) {
                value.getClass();
                this.typePrefix_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearTypePrefix() {
                this.typePrefix_ = getDefaultInstance().getTypePrefix();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setTypePrefixBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.typePrefix_ = value.toStringUtf8();
            }

            public static BeginRedelegate parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (BeginRedelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static BeginRedelegate parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (BeginRedelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static BeginRedelegate parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (BeginRedelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static BeginRedelegate parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (BeginRedelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static BeginRedelegate parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (BeginRedelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static BeginRedelegate parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (BeginRedelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static BeginRedelegate parseFrom(InputStream input) throws IOException {
                return (BeginRedelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static BeginRedelegate parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (BeginRedelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static BeginRedelegate parseDelimitedFrom(InputStream input) throws IOException {
                return (BeginRedelegate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static BeginRedelegate parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (BeginRedelegate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static BeginRedelegate parseFrom(CodedInputStream input) throws IOException {
                return (BeginRedelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static BeginRedelegate parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (BeginRedelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(BeginRedelegate prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<BeginRedelegate, Builder> implements BeginRedelegateOrBuilder {
                /* synthetic */ Builder(C67091 c67091) {
                    this();
                }

                private Builder() {
                    super(BeginRedelegate.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.BeginRedelegateOrBuilder
                public String getDelegatorAddress() {
                    return ((BeginRedelegate) this.instance).getDelegatorAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.BeginRedelegateOrBuilder
                public ByteString getDelegatorAddressBytes() {
                    return ((BeginRedelegate) this.instance).getDelegatorAddressBytes();
                }

                public Builder setDelegatorAddress(String value) {
                    copyOnWrite();
                    ((BeginRedelegate) this.instance).setDelegatorAddress(value);
                    return this;
                }

                public Builder clearDelegatorAddress() {
                    copyOnWrite();
                    ((BeginRedelegate) this.instance).clearDelegatorAddress();
                    return this;
                }

                public Builder setDelegatorAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((BeginRedelegate) this.instance).setDelegatorAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.BeginRedelegateOrBuilder
                public String getValidatorSrcAddress() {
                    return ((BeginRedelegate) this.instance).getValidatorSrcAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.BeginRedelegateOrBuilder
                public ByteString getValidatorSrcAddressBytes() {
                    return ((BeginRedelegate) this.instance).getValidatorSrcAddressBytes();
                }

                public Builder setValidatorSrcAddress(String value) {
                    copyOnWrite();
                    ((BeginRedelegate) this.instance).setValidatorSrcAddress(value);
                    return this;
                }

                public Builder clearValidatorSrcAddress() {
                    copyOnWrite();
                    ((BeginRedelegate) this.instance).clearValidatorSrcAddress();
                    return this;
                }

                public Builder setValidatorSrcAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((BeginRedelegate) this.instance).setValidatorSrcAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.BeginRedelegateOrBuilder
                public String getValidatorDstAddress() {
                    return ((BeginRedelegate) this.instance).getValidatorDstAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.BeginRedelegateOrBuilder
                public ByteString getValidatorDstAddressBytes() {
                    return ((BeginRedelegate) this.instance).getValidatorDstAddressBytes();
                }

                public Builder setValidatorDstAddress(String value) {
                    copyOnWrite();
                    ((BeginRedelegate) this.instance).setValidatorDstAddress(value);
                    return this;
                }

                public Builder clearValidatorDstAddress() {
                    copyOnWrite();
                    ((BeginRedelegate) this.instance).clearValidatorDstAddress();
                    return this;
                }

                public Builder setValidatorDstAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((BeginRedelegate) this.instance).setValidatorDstAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.BeginRedelegateOrBuilder
                public boolean hasAmount() {
                    return ((BeginRedelegate) this.instance).hasAmount();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.BeginRedelegateOrBuilder
                public Amount getAmount() {
                    return ((BeginRedelegate) this.instance).getAmount();
                }

                public Builder setAmount(Amount value) {
                    copyOnWrite();
                    ((BeginRedelegate) this.instance).setAmount(value);
                    return this;
                }

                public Builder setAmount(Amount.Builder builderForValue) {
                    copyOnWrite();
                    ((BeginRedelegate) this.instance).setAmount(builderForValue.build());
                    return this;
                }

                public Builder mergeAmount(Amount value) {
                    copyOnWrite();
                    ((BeginRedelegate) this.instance).mergeAmount(value);
                    return this;
                }

                public Builder clearAmount() {
                    copyOnWrite();
                    ((BeginRedelegate) this.instance).clearAmount();
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.BeginRedelegateOrBuilder
                public String getTypePrefix() {
                    return ((BeginRedelegate) this.instance).getTypePrefix();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.BeginRedelegateOrBuilder
                public ByteString getTypePrefixBytes() {
                    return ((BeginRedelegate) this.instance).getTypePrefixBytes();
                }

                public Builder setTypePrefix(String value) {
                    copyOnWrite();
                    ((BeginRedelegate) this.instance).setTypePrefix(value);
                    return this;
                }

                public Builder clearTypePrefix() {
                    copyOnWrite();
                    ((BeginRedelegate) this.instance).clearTypePrefix();
                    return this;
                }

                public Builder setTypePrefixBytes(ByteString value) {
                    copyOnWrite();
                    ((BeginRedelegate) this.instance).setTypePrefixBytes(value);
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new BeginRedelegate();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004\t\u0005Ȉ", new Object[]{"delegatorAddress_", "validatorSrcAddress_", "validatorDstAddress_", "amount_", "typePrefix_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<BeginRedelegate> parser = PARSER;
                        if (parser == null) {
                            synchronized (BeginRedelegate.class) {
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
                BeginRedelegate beginRedelegate = new BeginRedelegate();
                DEFAULT_INSTANCE = beginRedelegate;
                GeneratedMessageLite.registerDefaultInstance(BeginRedelegate.class, beginRedelegate);
            }

            public static BeginRedelegate getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<BeginRedelegate> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class WithdrawDelegationReward extends GeneratedMessageLite<WithdrawDelegationReward, Builder> implements WithdrawDelegationRewardOrBuilder {
            private static final WithdrawDelegationReward DEFAULT_INSTANCE;
            public static final int DELEGATOR_ADDRESS_FIELD_NUMBER = 1;
            private static volatile Parser<WithdrawDelegationReward> PARSER = null;
            public static final int TYPE_PREFIX_FIELD_NUMBER = 3;
            public static final int VALIDATOR_ADDRESS_FIELD_NUMBER = 2;
            private String delegatorAddress_ = "";
            private String validatorAddress_ = "";
            private String typePrefix_ = "";

            private WithdrawDelegationReward() {
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WithdrawDelegationRewardOrBuilder
            public String getDelegatorAddress() {
                return this.delegatorAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WithdrawDelegationRewardOrBuilder
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

            @Override // wallet.core.jni.proto.Cosmos.Message.WithdrawDelegationRewardOrBuilder
            public String getValidatorAddress() {
                return this.validatorAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WithdrawDelegationRewardOrBuilder
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

            @Override // wallet.core.jni.proto.Cosmos.Message.WithdrawDelegationRewardOrBuilder
            public String getTypePrefix() {
                return this.typePrefix_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WithdrawDelegationRewardOrBuilder
            public ByteString getTypePrefixBytes() {
                return ByteString.copyFromUtf8(this.typePrefix_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setTypePrefix(String value) {
                value.getClass();
                this.typePrefix_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearTypePrefix() {
                this.typePrefix_ = getDefaultInstance().getTypePrefix();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setTypePrefixBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.typePrefix_ = value.toStringUtf8();
            }

            public static WithdrawDelegationReward parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (WithdrawDelegationReward) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WithdrawDelegationReward parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WithdrawDelegationReward) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WithdrawDelegationReward parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (WithdrawDelegationReward) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WithdrawDelegationReward parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WithdrawDelegationReward) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WithdrawDelegationReward parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (WithdrawDelegationReward) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WithdrawDelegationReward parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WithdrawDelegationReward) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WithdrawDelegationReward parseFrom(InputStream input) throws IOException {
                return (WithdrawDelegationReward) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static WithdrawDelegationReward parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WithdrawDelegationReward) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static WithdrawDelegationReward parseDelimitedFrom(InputStream input) throws IOException {
                return (WithdrawDelegationReward) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static WithdrawDelegationReward parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WithdrawDelegationReward) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static WithdrawDelegationReward parseFrom(CodedInputStream input) throws IOException {
                return (WithdrawDelegationReward) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static WithdrawDelegationReward parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WithdrawDelegationReward) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(WithdrawDelegationReward prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<WithdrawDelegationReward, Builder> implements WithdrawDelegationRewardOrBuilder {
                /* synthetic */ Builder(C67091 c67091) {
                    this();
                }

                private Builder() {
                    super(WithdrawDelegationReward.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WithdrawDelegationRewardOrBuilder
                public String getDelegatorAddress() {
                    return ((WithdrawDelegationReward) this.instance).getDelegatorAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WithdrawDelegationRewardOrBuilder
                public ByteString getDelegatorAddressBytes() {
                    return ((WithdrawDelegationReward) this.instance).getDelegatorAddressBytes();
                }

                public Builder setDelegatorAddress(String value) {
                    copyOnWrite();
                    ((WithdrawDelegationReward) this.instance).setDelegatorAddress(value);
                    return this;
                }

                public Builder clearDelegatorAddress() {
                    copyOnWrite();
                    ((WithdrawDelegationReward) this.instance).clearDelegatorAddress();
                    return this;
                }

                public Builder setDelegatorAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((WithdrawDelegationReward) this.instance).setDelegatorAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WithdrawDelegationRewardOrBuilder
                public String getValidatorAddress() {
                    return ((WithdrawDelegationReward) this.instance).getValidatorAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WithdrawDelegationRewardOrBuilder
                public ByteString getValidatorAddressBytes() {
                    return ((WithdrawDelegationReward) this.instance).getValidatorAddressBytes();
                }

                public Builder setValidatorAddress(String value) {
                    copyOnWrite();
                    ((WithdrawDelegationReward) this.instance).setValidatorAddress(value);
                    return this;
                }

                public Builder clearValidatorAddress() {
                    copyOnWrite();
                    ((WithdrawDelegationReward) this.instance).clearValidatorAddress();
                    return this;
                }

                public Builder setValidatorAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((WithdrawDelegationReward) this.instance).setValidatorAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WithdrawDelegationRewardOrBuilder
                public String getTypePrefix() {
                    return ((WithdrawDelegationReward) this.instance).getTypePrefix();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WithdrawDelegationRewardOrBuilder
                public ByteString getTypePrefixBytes() {
                    return ((WithdrawDelegationReward) this.instance).getTypePrefixBytes();
                }

                public Builder setTypePrefix(String value) {
                    copyOnWrite();
                    ((WithdrawDelegationReward) this.instance).setTypePrefix(value);
                    return this;
                }

                public Builder clearTypePrefix() {
                    copyOnWrite();
                    ((WithdrawDelegationReward) this.instance).clearTypePrefix();
                    return this;
                }

                public Builder setTypePrefixBytes(ByteString value) {
                    copyOnWrite();
                    ((WithdrawDelegationReward) this.instance).setTypePrefixBytes(value);
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new WithdrawDelegationReward();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ", new Object[]{"delegatorAddress_", "validatorAddress_", "typePrefix_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<WithdrawDelegationReward> parser = PARSER;
                        if (parser == null) {
                            synchronized (WithdrawDelegationReward.class) {
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
                WithdrawDelegationReward withdrawDelegationReward = new WithdrawDelegationReward();
                DEFAULT_INSTANCE = withdrawDelegationReward;
                GeneratedMessageLite.registerDefaultInstance(WithdrawDelegationReward.class, withdrawDelegationReward);
            }

            public static WithdrawDelegationReward getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<WithdrawDelegationReward> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class WasmTerraExecuteContractTransfer extends GeneratedMessageLite<WasmTerraExecuteContractTransfer, Builder> implements WasmTerraExecuteContractTransferOrBuilder {
            public static final int AMOUNT_FIELD_NUMBER = 3;
            public static final int CONTRACT_ADDRESS_FIELD_NUMBER = 2;
            private static final WasmTerraExecuteContractTransfer DEFAULT_INSTANCE;
            private static volatile Parser<WasmTerraExecuteContractTransfer> PARSER = null;
            public static final int RECIPIENT_ADDRESS_FIELD_NUMBER = 4;
            public static final int SENDER_ADDRESS_FIELD_NUMBER = 1;
            private String senderAddress_ = "";
            private String contractAddress_ = "";
            private ByteString amount_ = ByteString.EMPTY;
            private String recipientAddress_ = "";

            private WasmTerraExecuteContractTransfer() {
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractTransferOrBuilder
            public String getSenderAddress() {
                return this.senderAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractTransferOrBuilder
            public ByteString getSenderAddressBytes() {
                return ByteString.copyFromUtf8(this.senderAddress_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSenderAddress(String value) {
                value.getClass();
                this.senderAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearSenderAddress() {
                this.senderAddress_ = getDefaultInstance().getSenderAddress();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSenderAddressBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.senderAddress_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractTransferOrBuilder
            public String getContractAddress() {
                return this.contractAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractTransferOrBuilder
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

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractTransferOrBuilder
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

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractTransferOrBuilder
            public String getRecipientAddress() {
                return this.recipientAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractTransferOrBuilder
            public ByteString getRecipientAddressBytes() {
                return ByteString.copyFromUtf8(this.recipientAddress_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setRecipientAddress(String value) {
                value.getClass();
                this.recipientAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearRecipientAddress() {
                this.recipientAddress_ = getDefaultInstance().getRecipientAddress();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setRecipientAddressBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.recipientAddress_ = value.toStringUtf8();
            }

            public static WasmTerraExecuteContractTransfer parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (WasmTerraExecuteContractTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WasmTerraExecuteContractTransfer parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WasmTerraExecuteContractTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WasmTerraExecuteContractTransfer parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (WasmTerraExecuteContractTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WasmTerraExecuteContractTransfer parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WasmTerraExecuteContractTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WasmTerraExecuteContractTransfer parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (WasmTerraExecuteContractTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WasmTerraExecuteContractTransfer parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WasmTerraExecuteContractTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WasmTerraExecuteContractTransfer parseFrom(InputStream input) throws IOException {
                return (WasmTerraExecuteContractTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static WasmTerraExecuteContractTransfer parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WasmTerraExecuteContractTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static WasmTerraExecuteContractTransfer parseDelimitedFrom(InputStream input) throws IOException {
                return (WasmTerraExecuteContractTransfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static WasmTerraExecuteContractTransfer parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WasmTerraExecuteContractTransfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static WasmTerraExecuteContractTransfer parseFrom(CodedInputStream input) throws IOException {
                return (WasmTerraExecuteContractTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static WasmTerraExecuteContractTransfer parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WasmTerraExecuteContractTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(WasmTerraExecuteContractTransfer prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<WasmTerraExecuteContractTransfer, Builder> implements WasmTerraExecuteContractTransferOrBuilder {
                /* synthetic */ Builder(C67091 c67091) {
                    this();
                }

                private Builder() {
                    super(WasmTerraExecuteContractTransfer.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractTransferOrBuilder
                public String getSenderAddress() {
                    return ((WasmTerraExecuteContractTransfer) this.instance).getSenderAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractTransferOrBuilder
                public ByteString getSenderAddressBytes() {
                    return ((WasmTerraExecuteContractTransfer) this.instance).getSenderAddressBytes();
                }

                public Builder setSenderAddress(String value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractTransfer) this.instance).setSenderAddress(value);
                    return this;
                }

                public Builder clearSenderAddress() {
                    copyOnWrite();
                    ((WasmTerraExecuteContractTransfer) this.instance).clearSenderAddress();
                    return this;
                }

                public Builder setSenderAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractTransfer) this.instance).setSenderAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractTransferOrBuilder
                public String getContractAddress() {
                    return ((WasmTerraExecuteContractTransfer) this.instance).getContractAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractTransferOrBuilder
                public ByteString getContractAddressBytes() {
                    return ((WasmTerraExecuteContractTransfer) this.instance).getContractAddressBytes();
                }

                public Builder setContractAddress(String value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractTransfer) this.instance).setContractAddress(value);
                    return this;
                }

                public Builder clearContractAddress() {
                    copyOnWrite();
                    ((WasmTerraExecuteContractTransfer) this.instance).clearContractAddress();
                    return this;
                }

                public Builder setContractAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractTransfer) this.instance).setContractAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractTransferOrBuilder
                public ByteString getAmount() {
                    return ((WasmTerraExecuteContractTransfer) this.instance).getAmount();
                }

                public Builder setAmount(ByteString value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractTransfer) this.instance).setAmount(value);
                    return this;
                }

                public Builder clearAmount() {
                    copyOnWrite();
                    ((WasmTerraExecuteContractTransfer) this.instance).clearAmount();
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractTransferOrBuilder
                public String getRecipientAddress() {
                    return ((WasmTerraExecuteContractTransfer) this.instance).getRecipientAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractTransferOrBuilder
                public ByteString getRecipientAddressBytes() {
                    return ((WasmTerraExecuteContractTransfer) this.instance).getRecipientAddressBytes();
                }

                public Builder setRecipientAddress(String value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractTransfer) this.instance).setRecipientAddress(value);
                    return this;
                }

                public Builder clearRecipientAddress() {
                    copyOnWrite();
                    ((WasmTerraExecuteContractTransfer) this.instance).clearRecipientAddress();
                    return this;
                }

                public Builder setRecipientAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractTransfer) this.instance).setRecipientAddressBytes(value);
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new WasmTerraExecuteContractTransfer();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\n\u0004Ȉ", new Object[]{"senderAddress_", "contractAddress_", "amount_", "recipientAddress_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<WasmTerraExecuteContractTransfer> parser = PARSER;
                        if (parser == null) {
                            synchronized (WasmTerraExecuteContractTransfer.class) {
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
                WasmTerraExecuteContractTransfer wasmTerraExecuteContractTransfer = new WasmTerraExecuteContractTransfer();
                DEFAULT_INSTANCE = wasmTerraExecuteContractTransfer;
                GeneratedMessageLite.registerDefaultInstance(WasmTerraExecuteContractTransfer.class, wasmTerraExecuteContractTransfer);
            }

            public static WasmTerraExecuteContractTransfer getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<WasmTerraExecuteContractTransfer> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class WasmTerraExecuteContractSend extends GeneratedMessageLite<WasmTerraExecuteContractSend, Builder> implements WasmTerraExecuteContractSendOrBuilder {
            public static final int AMOUNT_FIELD_NUMBER = 3;
            public static final int COIN_FIELD_NUMBER = 6;
            public static final int CONTRACT_ADDRESS_FIELD_NUMBER = 2;
            private static final WasmTerraExecuteContractSend DEFAULT_INSTANCE;
            public static final int MSG_FIELD_NUMBER = 5;
            private static volatile Parser<WasmTerraExecuteContractSend> PARSER = null;
            public static final int RECIPIENT_CONTRACT_ADDRESS_FIELD_NUMBER = 4;
            public static final int SENDER_ADDRESS_FIELD_NUMBER = 1;
            private String senderAddress_ = "";
            private String contractAddress_ = "";
            private ByteString amount_ = ByteString.EMPTY;
            private String recipientContractAddress_ = "";
            private String msg_ = "";
            private Internal.ProtobufList<String> coin_ = GeneratedMessageLite.emptyProtobufList();

            private WasmTerraExecuteContractSend() {
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
            public String getSenderAddress() {
                return this.senderAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
            public ByteString getSenderAddressBytes() {
                return ByteString.copyFromUtf8(this.senderAddress_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSenderAddress(String value) {
                value.getClass();
                this.senderAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearSenderAddress() {
                this.senderAddress_ = getDefaultInstance().getSenderAddress();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSenderAddressBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.senderAddress_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
            public String getContractAddress() {
                return this.contractAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
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

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
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

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
            public String getRecipientContractAddress() {
                return this.recipientContractAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
            public ByteString getRecipientContractAddressBytes() {
                return ByteString.copyFromUtf8(this.recipientContractAddress_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setRecipientContractAddress(String value) {
                value.getClass();
                this.recipientContractAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearRecipientContractAddress() {
                this.recipientContractAddress_ = getDefaultInstance().getRecipientContractAddress();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setRecipientContractAddressBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.recipientContractAddress_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
            public String getMsg() {
                return this.msg_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
            public ByteString getMsgBytes() {
                return ByteString.copyFromUtf8(this.msg_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setMsg(String value) {
                value.getClass();
                this.msg_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearMsg() {
                this.msg_ = getDefaultInstance().getMsg();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setMsgBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.msg_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
            public List<String> getCoinList() {
                return this.coin_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
            public int getCoinCount() {
                return this.coin_.size();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
            public String getCoin(int index) {
                return this.coin_.get(index);
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
            public ByteString getCoinBytes(int index) {
                return ByteString.copyFromUtf8(this.coin_.get(index));
            }

            private void ensureCoinIsMutable() {
                Internal.ProtobufList<String> protobufList = this.coin_;
                if (protobufList.isModifiable()) {
                    return;
                }
                this.coin_ = GeneratedMessageLite.mutableCopy(protobufList);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setCoin(int index, String value) {
                value.getClass();
                ensureCoinIsMutable();
                this.coin_.set(index, value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addCoin(String value) {
                value.getClass();
                ensureCoinIsMutable();
                this.coin_.add(value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addAllCoin(Iterable<String> values) {
                ensureCoinIsMutable();
                AbstractMessageLite.addAll((Iterable) values, (List) this.coin_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearCoin() {
                this.coin_ = GeneratedMessageLite.emptyProtobufList();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addCoinBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                ensureCoinIsMutable();
                this.coin_.add(value.toStringUtf8());
            }

            public static WasmTerraExecuteContractSend parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (WasmTerraExecuteContractSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WasmTerraExecuteContractSend parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WasmTerraExecuteContractSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WasmTerraExecuteContractSend parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (WasmTerraExecuteContractSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WasmTerraExecuteContractSend parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WasmTerraExecuteContractSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WasmTerraExecuteContractSend parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (WasmTerraExecuteContractSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WasmTerraExecuteContractSend parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WasmTerraExecuteContractSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WasmTerraExecuteContractSend parseFrom(InputStream input) throws IOException {
                return (WasmTerraExecuteContractSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static WasmTerraExecuteContractSend parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WasmTerraExecuteContractSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static WasmTerraExecuteContractSend parseDelimitedFrom(InputStream input) throws IOException {
                return (WasmTerraExecuteContractSend) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static WasmTerraExecuteContractSend parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WasmTerraExecuteContractSend) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static WasmTerraExecuteContractSend parseFrom(CodedInputStream input) throws IOException {
                return (WasmTerraExecuteContractSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static WasmTerraExecuteContractSend parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WasmTerraExecuteContractSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(WasmTerraExecuteContractSend prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<WasmTerraExecuteContractSend, Builder> implements WasmTerraExecuteContractSendOrBuilder {
                /* synthetic */ Builder(C67091 c67091) {
                    this();
                }

                private Builder() {
                    super(WasmTerraExecuteContractSend.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
                public String getSenderAddress() {
                    return ((WasmTerraExecuteContractSend) this.instance).getSenderAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
                public ByteString getSenderAddressBytes() {
                    return ((WasmTerraExecuteContractSend) this.instance).getSenderAddressBytes();
                }

                public Builder setSenderAddress(String value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractSend) this.instance).setSenderAddress(value);
                    return this;
                }

                public Builder clearSenderAddress() {
                    copyOnWrite();
                    ((WasmTerraExecuteContractSend) this.instance).clearSenderAddress();
                    return this;
                }

                public Builder setSenderAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractSend) this.instance).setSenderAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
                public String getContractAddress() {
                    return ((WasmTerraExecuteContractSend) this.instance).getContractAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
                public ByteString getContractAddressBytes() {
                    return ((WasmTerraExecuteContractSend) this.instance).getContractAddressBytes();
                }

                public Builder setContractAddress(String value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractSend) this.instance).setContractAddress(value);
                    return this;
                }

                public Builder clearContractAddress() {
                    copyOnWrite();
                    ((WasmTerraExecuteContractSend) this.instance).clearContractAddress();
                    return this;
                }

                public Builder setContractAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractSend) this.instance).setContractAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
                public ByteString getAmount() {
                    return ((WasmTerraExecuteContractSend) this.instance).getAmount();
                }

                public Builder setAmount(ByteString value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractSend) this.instance).setAmount(value);
                    return this;
                }

                public Builder clearAmount() {
                    copyOnWrite();
                    ((WasmTerraExecuteContractSend) this.instance).clearAmount();
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
                public String getRecipientContractAddress() {
                    return ((WasmTerraExecuteContractSend) this.instance).getRecipientContractAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
                public ByteString getRecipientContractAddressBytes() {
                    return ((WasmTerraExecuteContractSend) this.instance).getRecipientContractAddressBytes();
                }

                public Builder setRecipientContractAddress(String value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractSend) this.instance).setRecipientContractAddress(value);
                    return this;
                }

                public Builder clearRecipientContractAddress() {
                    copyOnWrite();
                    ((WasmTerraExecuteContractSend) this.instance).clearRecipientContractAddress();
                    return this;
                }

                public Builder setRecipientContractAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractSend) this.instance).setRecipientContractAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
                public String getMsg() {
                    return ((WasmTerraExecuteContractSend) this.instance).getMsg();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
                public ByteString getMsgBytes() {
                    return ((WasmTerraExecuteContractSend) this.instance).getMsgBytes();
                }

                public Builder setMsg(String value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractSend) this.instance).setMsg(value);
                    return this;
                }

                public Builder clearMsg() {
                    copyOnWrite();
                    ((WasmTerraExecuteContractSend) this.instance).clearMsg();
                    return this;
                }

                public Builder setMsgBytes(ByteString value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractSend) this.instance).setMsgBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
                public List<String> getCoinList() {
                    return Collections.unmodifiableList(((WasmTerraExecuteContractSend) this.instance).getCoinList());
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
                public int getCoinCount() {
                    return ((WasmTerraExecuteContractSend) this.instance).getCoinCount();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
                public String getCoin(int index) {
                    return ((WasmTerraExecuteContractSend) this.instance).getCoin(index);
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractSendOrBuilder
                public ByteString getCoinBytes(int index) {
                    return ((WasmTerraExecuteContractSend) this.instance).getCoinBytes(index);
                }

                public Builder setCoin(int index, String value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractSend) this.instance).setCoin(index, value);
                    return this;
                }

                public Builder addCoin(String value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractSend) this.instance).addCoin(value);
                    return this;
                }

                public Builder addAllCoin(Iterable<String> values) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractSend) this.instance).addAllCoin(values);
                    return this;
                }

                public Builder clearCoin() {
                    copyOnWrite();
                    ((WasmTerraExecuteContractSend) this.instance).clearCoin();
                    return this;
                }

                public Builder addCoinBytes(ByteString value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractSend) this.instance).addCoinBytes(value);
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new WasmTerraExecuteContractSend();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0001\u0000\u0001Ȉ\u0002Ȉ\u0003\n\u0004Ȉ\u0005Ȉ\u0006Ț", new Object[]{"senderAddress_", "contractAddress_", "amount_", "recipientContractAddress_", "msg_", "coin_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<WasmTerraExecuteContractSend> parser = PARSER;
                        if (parser == null) {
                            synchronized (WasmTerraExecuteContractSend.class) {
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
                WasmTerraExecuteContractSend wasmTerraExecuteContractSend = new WasmTerraExecuteContractSend();
                DEFAULT_INSTANCE = wasmTerraExecuteContractSend;
                GeneratedMessageLite.registerDefaultInstance(WasmTerraExecuteContractSend.class, wasmTerraExecuteContractSend);
            }

            public static WasmTerraExecuteContractSend getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<WasmTerraExecuteContractSend> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class THORChainSend extends GeneratedMessageLite<THORChainSend, Builder> implements THORChainSendOrBuilder {
            public static final int AMOUNTS_FIELD_NUMBER = 3;
            private static final THORChainSend DEFAULT_INSTANCE;
            public static final int FROM_ADDRESS_FIELD_NUMBER = 1;
            private static volatile Parser<THORChainSend> PARSER = null;
            public static final int TO_ADDRESS_FIELD_NUMBER = 2;
            private Internal.ProtobufList<Amount> amounts_;
            private ByteString fromAddress_;
            private ByteString toAddress_;

            private THORChainSend() {
                ByteString byteString = ByteString.EMPTY;
                this.fromAddress_ = byteString;
                this.toAddress_ = byteString;
                this.amounts_ = GeneratedMessageLite.emptyProtobufList();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.THORChainSendOrBuilder
            public ByteString getFromAddress() {
                return this.fromAddress_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setFromAddress(ByteString value) {
                value.getClass();
                this.fromAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearFromAddress() {
                this.fromAddress_ = getDefaultInstance().getFromAddress();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.THORChainSendOrBuilder
            public ByteString getToAddress() {
                return this.toAddress_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setToAddress(ByteString value) {
                value.getClass();
                this.toAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearToAddress() {
                this.toAddress_ = getDefaultInstance().getToAddress();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.THORChainSendOrBuilder
            public List<Amount> getAmountsList() {
                return this.amounts_;
            }

            public List<? extends AmountOrBuilder> getAmountsOrBuilderList() {
                return this.amounts_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.THORChainSendOrBuilder
            public int getAmountsCount() {
                return this.amounts_.size();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.THORChainSendOrBuilder
            public Amount getAmounts(int index) {
                return this.amounts_.get(index);
            }

            public AmountOrBuilder getAmountsOrBuilder(int index) {
                return this.amounts_.get(index);
            }

            private void ensureAmountsIsMutable() {
                Internal.ProtobufList<Amount> protobufList = this.amounts_;
                if (protobufList.isModifiable()) {
                    return;
                }
                this.amounts_ = GeneratedMessageLite.mutableCopy(protobufList);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setAmounts(int index, Amount value) {
                value.getClass();
                ensureAmountsIsMutable();
                this.amounts_.set(index, value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addAmounts(Amount value) {
                value.getClass();
                ensureAmountsIsMutable();
                this.amounts_.add(value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addAmounts(int index, Amount value) {
                value.getClass();
                ensureAmountsIsMutable();
                this.amounts_.add(index, value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addAllAmounts(Iterable<? extends Amount> values) {
                ensureAmountsIsMutable();
                AbstractMessageLite.addAll((Iterable) values, (List) this.amounts_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearAmounts() {
                this.amounts_ = GeneratedMessageLite.emptyProtobufList();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void removeAmounts(int index) {
                ensureAmountsIsMutable();
                this.amounts_.remove(index);
            }

            public static THORChainSend parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (THORChainSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static THORChainSend parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (THORChainSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static THORChainSend parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (THORChainSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static THORChainSend parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (THORChainSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static THORChainSend parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (THORChainSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static THORChainSend parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (THORChainSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static THORChainSend parseFrom(InputStream input) throws IOException {
                return (THORChainSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static THORChainSend parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (THORChainSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static THORChainSend parseDelimitedFrom(InputStream input) throws IOException {
                return (THORChainSend) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static THORChainSend parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (THORChainSend) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static THORChainSend parseFrom(CodedInputStream input) throws IOException {
                return (THORChainSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static THORChainSend parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (THORChainSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(THORChainSend prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<THORChainSend, Builder> implements THORChainSendOrBuilder {
                /* synthetic */ Builder(C67091 c67091) {
                    this();
                }

                private Builder() {
                    super(THORChainSend.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.THORChainSendOrBuilder
                public ByteString getFromAddress() {
                    return ((THORChainSend) this.instance).getFromAddress();
                }

                public Builder setFromAddress(ByteString value) {
                    copyOnWrite();
                    ((THORChainSend) this.instance).setFromAddress(value);
                    return this;
                }

                public Builder clearFromAddress() {
                    copyOnWrite();
                    ((THORChainSend) this.instance).clearFromAddress();
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.THORChainSendOrBuilder
                public ByteString getToAddress() {
                    return ((THORChainSend) this.instance).getToAddress();
                }

                public Builder setToAddress(ByteString value) {
                    copyOnWrite();
                    ((THORChainSend) this.instance).setToAddress(value);
                    return this;
                }

                public Builder clearToAddress() {
                    copyOnWrite();
                    ((THORChainSend) this.instance).clearToAddress();
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.THORChainSendOrBuilder
                public List<Amount> getAmountsList() {
                    return Collections.unmodifiableList(((THORChainSend) this.instance).getAmountsList());
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.THORChainSendOrBuilder
                public int getAmountsCount() {
                    return ((THORChainSend) this.instance).getAmountsCount();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.THORChainSendOrBuilder
                public Amount getAmounts(int index) {
                    return ((THORChainSend) this.instance).getAmounts(index);
                }

                public Builder setAmounts(int index, Amount value) {
                    copyOnWrite();
                    ((THORChainSend) this.instance).setAmounts(index, value);
                    return this;
                }

                public Builder setAmounts(int index, Amount.Builder builderForValue) {
                    copyOnWrite();
                    ((THORChainSend) this.instance).setAmounts(index, builderForValue.build());
                    return this;
                }

                public Builder addAmounts(Amount value) {
                    copyOnWrite();
                    ((THORChainSend) this.instance).addAmounts(value);
                    return this;
                }

                public Builder addAmounts(int index, Amount value) {
                    copyOnWrite();
                    ((THORChainSend) this.instance).addAmounts(index, value);
                    return this;
                }

                public Builder addAmounts(Amount.Builder builderForValue) {
                    copyOnWrite();
                    ((THORChainSend) this.instance).addAmounts(builderForValue.build());
                    return this;
                }

                public Builder addAmounts(int index, Amount.Builder builderForValue) {
                    copyOnWrite();
                    ((THORChainSend) this.instance).addAmounts(index, builderForValue.build());
                    return this;
                }

                public Builder addAllAmounts(Iterable<? extends Amount> values) {
                    copyOnWrite();
                    ((THORChainSend) this.instance).addAllAmounts(values);
                    return this;
                }

                public Builder clearAmounts() {
                    copyOnWrite();
                    ((THORChainSend) this.instance).clearAmounts();
                    return this;
                }

                public Builder removeAmounts(int index) {
                    copyOnWrite();
                    ((THORChainSend) this.instance).removeAmounts(index);
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new THORChainSend();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\n\u0002\n\u0003\u001b", new Object[]{"fromAddress_", "toAddress_", "amounts_", Amount.class});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<THORChainSend> parser = PARSER;
                        if (parser == null) {
                            synchronized (THORChainSend.class) {
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
                THORChainSend tHORChainSend = new THORChainSend();
                DEFAULT_INSTANCE = tHORChainSend;
                GeneratedMessageLite.registerDefaultInstance(THORChainSend.class, tHORChainSend);
            }

            public static THORChainSend getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<THORChainSend> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class WasmTerraExecuteContractGeneric extends GeneratedMessageLite<WasmTerraExecuteContractGeneric, Builder> implements WasmTerraExecuteContractGenericOrBuilder {
            public static final int COINS_FIELD_NUMBER = 5;
            public static final int CONTRACT_ADDRESS_FIELD_NUMBER = 2;
            private static final WasmTerraExecuteContractGeneric DEFAULT_INSTANCE;
            public static final int EXECUTE_MSG_FIELD_NUMBER = 3;
            private static volatile Parser<WasmTerraExecuteContractGeneric> PARSER = null;
            public static final int SENDER_ADDRESS_FIELD_NUMBER = 1;
            private String senderAddress_ = "";
            private String contractAddress_ = "";
            private String executeMsg_ = "";
            private Internal.ProtobufList<Amount> coins_ = GeneratedMessageLite.emptyProtobufList();

            private WasmTerraExecuteContractGeneric() {
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractGenericOrBuilder
            public String getSenderAddress() {
                return this.senderAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractGenericOrBuilder
            public ByteString getSenderAddressBytes() {
                return ByteString.copyFromUtf8(this.senderAddress_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSenderAddress(String value) {
                value.getClass();
                this.senderAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearSenderAddress() {
                this.senderAddress_ = getDefaultInstance().getSenderAddress();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSenderAddressBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.senderAddress_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractGenericOrBuilder
            public String getContractAddress() {
                return this.contractAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractGenericOrBuilder
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

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractGenericOrBuilder
            public String getExecuteMsg() {
                return this.executeMsg_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractGenericOrBuilder
            public ByteString getExecuteMsgBytes() {
                return ByteString.copyFromUtf8(this.executeMsg_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setExecuteMsg(String value) {
                value.getClass();
                this.executeMsg_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearExecuteMsg() {
                this.executeMsg_ = getDefaultInstance().getExecuteMsg();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setExecuteMsgBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.executeMsg_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractGenericOrBuilder
            public List<Amount> getCoinsList() {
                return this.coins_;
            }

            public List<? extends AmountOrBuilder> getCoinsOrBuilderList() {
                return this.coins_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractGenericOrBuilder
            public int getCoinsCount() {
                return this.coins_.size();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractGenericOrBuilder
            public Amount getCoins(int index) {
                return this.coins_.get(index);
            }

            public AmountOrBuilder getCoinsOrBuilder(int index) {
                return this.coins_.get(index);
            }

            private void ensureCoinsIsMutable() {
                Internal.ProtobufList<Amount> protobufList = this.coins_;
                if (protobufList.isModifiable()) {
                    return;
                }
                this.coins_ = GeneratedMessageLite.mutableCopy(protobufList);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setCoins(int index, Amount value) {
                value.getClass();
                ensureCoinsIsMutable();
                this.coins_.set(index, value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addCoins(Amount value) {
                value.getClass();
                ensureCoinsIsMutable();
                this.coins_.add(value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addCoins(int index, Amount value) {
                value.getClass();
                ensureCoinsIsMutable();
                this.coins_.add(index, value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addAllCoins(Iterable<? extends Amount> values) {
                ensureCoinsIsMutable();
                AbstractMessageLite.addAll((Iterable) values, (List) this.coins_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearCoins() {
                this.coins_ = GeneratedMessageLite.emptyProtobufList();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void removeCoins(int index) {
                ensureCoinsIsMutable();
                this.coins_.remove(index);
            }

            public static WasmTerraExecuteContractGeneric parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (WasmTerraExecuteContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WasmTerraExecuteContractGeneric parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WasmTerraExecuteContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WasmTerraExecuteContractGeneric parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (WasmTerraExecuteContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WasmTerraExecuteContractGeneric parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WasmTerraExecuteContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WasmTerraExecuteContractGeneric parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (WasmTerraExecuteContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WasmTerraExecuteContractGeneric parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WasmTerraExecuteContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WasmTerraExecuteContractGeneric parseFrom(InputStream input) throws IOException {
                return (WasmTerraExecuteContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static WasmTerraExecuteContractGeneric parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WasmTerraExecuteContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static WasmTerraExecuteContractGeneric parseDelimitedFrom(InputStream input) throws IOException {
                return (WasmTerraExecuteContractGeneric) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static WasmTerraExecuteContractGeneric parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WasmTerraExecuteContractGeneric) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static WasmTerraExecuteContractGeneric parseFrom(CodedInputStream input) throws IOException {
                return (WasmTerraExecuteContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static WasmTerraExecuteContractGeneric parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WasmTerraExecuteContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(WasmTerraExecuteContractGeneric prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<WasmTerraExecuteContractGeneric, Builder> implements WasmTerraExecuteContractGenericOrBuilder {
                /* synthetic */ Builder(C67091 c67091) {
                    this();
                }

                private Builder() {
                    super(WasmTerraExecuteContractGeneric.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractGenericOrBuilder
                public String getSenderAddress() {
                    return ((WasmTerraExecuteContractGeneric) this.instance).getSenderAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractGenericOrBuilder
                public ByteString getSenderAddressBytes() {
                    return ((WasmTerraExecuteContractGeneric) this.instance).getSenderAddressBytes();
                }

                public Builder setSenderAddress(String value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractGeneric) this.instance).setSenderAddress(value);
                    return this;
                }

                public Builder clearSenderAddress() {
                    copyOnWrite();
                    ((WasmTerraExecuteContractGeneric) this.instance).clearSenderAddress();
                    return this;
                }

                public Builder setSenderAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractGeneric) this.instance).setSenderAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractGenericOrBuilder
                public String getContractAddress() {
                    return ((WasmTerraExecuteContractGeneric) this.instance).getContractAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractGenericOrBuilder
                public ByteString getContractAddressBytes() {
                    return ((WasmTerraExecuteContractGeneric) this.instance).getContractAddressBytes();
                }

                public Builder setContractAddress(String value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractGeneric) this.instance).setContractAddress(value);
                    return this;
                }

                public Builder clearContractAddress() {
                    copyOnWrite();
                    ((WasmTerraExecuteContractGeneric) this.instance).clearContractAddress();
                    return this;
                }

                public Builder setContractAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractGeneric) this.instance).setContractAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractGenericOrBuilder
                public String getExecuteMsg() {
                    return ((WasmTerraExecuteContractGeneric) this.instance).getExecuteMsg();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractGenericOrBuilder
                public ByteString getExecuteMsgBytes() {
                    return ((WasmTerraExecuteContractGeneric) this.instance).getExecuteMsgBytes();
                }

                public Builder setExecuteMsg(String value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractGeneric) this.instance).setExecuteMsg(value);
                    return this;
                }

                public Builder clearExecuteMsg() {
                    copyOnWrite();
                    ((WasmTerraExecuteContractGeneric) this.instance).clearExecuteMsg();
                    return this;
                }

                public Builder setExecuteMsgBytes(ByteString value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractGeneric) this.instance).setExecuteMsgBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractGenericOrBuilder
                public List<Amount> getCoinsList() {
                    return Collections.unmodifiableList(((WasmTerraExecuteContractGeneric) this.instance).getCoinsList());
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractGenericOrBuilder
                public int getCoinsCount() {
                    return ((WasmTerraExecuteContractGeneric) this.instance).getCoinsCount();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmTerraExecuteContractGenericOrBuilder
                public Amount getCoins(int index) {
                    return ((WasmTerraExecuteContractGeneric) this.instance).getCoins(index);
                }

                public Builder setCoins(int index, Amount value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractGeneric) this.instance).setCoins(index, value);
                    return this;
                }

                public Builder setCoins(int index, Amount.Builder builderForValue) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractGeneric) this.instance).setCoins(index, builderForValue.build());
                    return this;
                }

                public Builder addCoins(Amount value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractGeneric) this.instance).addCoins(value);
                    return this;
                }

                public Builder addCoins(int index, Amount value) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractGeneric) this.instance).addCoins(index, value);
                    return this;
                }

                public Builder addCoins(Amount.Builder builderForValue) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractGeneric) this.instance).addCoins(builderForValue.build());
                    return this;
                }

                public Builder addCoins(int index, Amount.Builder builderForValue) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractGeneric) this.instance).addCoins(index, builderForValue.build());
                    return this;
                }

                public Builder addAllCoins(Iterable<? extends Amount> values) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractGeneric) this.instance).addAllCoins(values);
                    return this;
                }

                public Builder clearCoins() {
                    copyOnWrite();
                    ((WasmTerraExecuteContractGeneric) this.instance).clearCoins();
                    return this;
                }

                public Builder removeCoins(int index) {
                    copyOnWrite();
                    ((WasmTerraExecuteContractGeneric) this.instance).removeCoins(index);
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new WasmTerraExecuteContractGeneric();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0005\u0004\u0000\u0001\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0005\u001b", new Object[]{"senderAddress_", "contractAddress_", "executeMsg_", "coins_", Amount.class});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<WasmTerraExecuteContractGeneric> parser = PARSER;
                        if (parser == null) {
                            synchronized (WasmTerraExecuteContractGeneric.class) {
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
                WasmTerraExecuteContractGeneric wasmTerraExecuteContractGeneric = new WasmTerraExecuteContractGeneric();
                DEFAULT_INSTANCE = wasmTerraExecuteContractGeneric;
                GeneratedMessageLite.registerDefaultInstance(WasmTerraExecuteContractGeneric.class, wasmTerraExecuteContractGeneric);
            }

            public static WasmTerraExecuteContractGeneric getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<WasmTerraExecuteContractGeneric> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class WasmExecuteContractTransfer extends GeneratedMessageLite<WasmExecuteContractTransfer, Builder> implements WasmExecuteContractTransferOrBuilder {
            public static final int AMOUNT_FIELD_NUMBER = 3;
            public static final int CONTRACT_ADDRESS_FIELD_NUMBER = 2;
            private static final WasmExecuteContractTransfer DEFAULT_INSTANCE;
            private static volatile Parser<WasmExecuteContractTransfer> PARSER = null;
            public static final int RECIPIENT_ADDRESS_FIELD_NUMBER = 4;
            public static final int SENDER_ADDRESS_FIELD_NUMBER = 1;
            private String senderAddress_ = "";
            private String contractAddress_ = "";
            private ByteString amount_ = ByteString.EMPTY;
            private String recipientAddress_ = "";

            private WasmExecuteContractTransfer() {
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractTransferOrBuilder
            public String getSenderAddress() {
                return this.senderAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractTransferOrBuilder
            public ByteString getSenderAddressBytes() {
                return ByteString.copyFromUtf8(this.senderAddress_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSenderAddress(String value) {
                value.getClass();
                this.senderAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearSenderAddress() {
                this.senderAddress_ = getDefaultInstance().getSenderAddress();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSenderAddressBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.senderAddress_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractTransferOrBuilder
            public String getContractAddress() {
                return this.contractAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractTransferOrBuilder
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

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractTransferOrBuilder
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

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractTransferOrBuilder
            public String getRecipientAddress() {
                return this.recipientAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractTransferOrBuilder
            public ByteString getRecipientAddressBytes() {
                return ByteString.copyFromUtf8(this.recipientAddress_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setRecipientAddress(String value) {
                value.getClass();
                this.recipientAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearRecipientAddress() {
                this.recipientAddress_ = getDefaultInstance().getRecipientAddress();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setRecipientAddressBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.recipientAddress_ = value.toStringUtf8();
            }

            public static WasmExecuteContractTransfer parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (WasmExecuteContractTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WasmExecuteContractTransfer parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WasmExecuteContractTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WasmExecuteContractTransfer parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (WasmExecuteContractTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WasmExecuteContractTransfer parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WasmExecuteContractTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WasmExecuteContractTransfer parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (WasmExecuteContractTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WasmExecuteContractTransfer parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WasmExecuteContractTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WasmExecuteContractTransfer parseFrom(InputStream input) throws IOException {
                return (WasmExecuteContractTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static WasmExecuteContractTransfer parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WasmExecuteContractTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static WasmExecuteContractTransfer parseDelimitedFrom(InputStream input) throws IOException {
                return (WasmExecuteContractTransfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static WasmExecuteContractTransfer parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WasmExecuteContractTransfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static WasmExecuteContractTransfer parseFrom(CodedInputStream input) throws IOException {
                return (WasmExecuteContractTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static WasmExecuteContractTransfer parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WasmExecuteContractTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(WasmExecuteContractTransfer prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<WasmExecuteContractTransfer, Builder> implements WasmExecuteContractTransferOrBuilder {
                /* synthetic */ Builder(C67091 c67091) {
                    this();
                }

                private Builder() {
                    super(WasmExecuteContractTransfer.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractTransferOrBuilder
                public String getSenderAddress() {
                    return ((WasmExecuteContractTransfer) this.instance).getSenderAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractTransferOrBuilder
                public ByteString getSenderAddressBytes() {
                    return ((WasmExecuteContractTransfer) this.instance).getSenderAddressBytes();
                }

                public Builder setSenderAddress(String value) {
                    copyOnWrite();
                    ((WasmExecuteContractTransfer) this.instance).setSenderAddress(value);
                    return this;
                }

                public Builder clearSenderAddress() {
                    copyOnWrite();
                    ((WasmExecuteContractTransfer) this.instance).clearSenderAddress();
                    return this;
                }

                public Builder setSenderAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((WasmExecuteContractTransfer) this.instance).setSenderAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractTransferOrBuilder
                public String getContractAddress() {
                    return ((WasmExecuteContractTransfer) this.instance).getContractAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractTransferOrBuilder
                public ByteString getContractAddressBytes() {
                    return ((WasmExecuteContractTransfer) this.instance).getContractAddressBytes();
                }

                public Builder setContractAddress(String value) {
                    copyOnWrite();
                    ((WasmExecuteContractTransfer) this.instance).setContractAddress(value);
                    return this;
                }

                public Builder clearContractAddress() {
                    copyOnWrite();
                    ((WasmExecuteContractTransfer) this.instance).clearContractAddress();
                    return this;
                }

                public Builder setContractAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((WasmExecuteContractTransfer) this.instance).setContractAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractTransferOrBuilder
                public ByteString getAmount() {
                    return ((WasmExecuteContractTransfer) this.instance).getAmount();
                }

                public Builder setAmount(ByteString value) {
                    copyOnWrite();
                    ((WasmExecuteContractTransfer) this.instance).setAmount(value);
                    return this;
                }

                public Builder clearAmount() {
                    copyOnWrite();
                    ((WasmExecuteContractTransfer) this.instance).clearAmount();
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractTransferOrBuilder
                public String getRecipientAddress() {
                    return ((WasmExecuteContractTransfer) this.instance).getRecipientAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractTransferOrBuilder
                public ByteString getRecipientAddressBytes() {
                    return ((WasmExecuteContractTransfer) this.instance).getRecipientAddressBytes();
                }

                public Builder setRecipientAddress(String value) {
                    copyOnWrite();
                    ((WasmExecuteContractTransfer) this.instance).setRecipientAddress(value);
                    return this;
                }

                public Builder clearRecipientAddress() {
                    copyOnWrite();
                    ((WasmExecuteContractTransfer) this.instance).clearRecipientAddress();
                    return this;
                }

                public Builder setRecipientAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((WasmExecuteContractTransfer) this.instance).setRecipientAddressBytes(value);
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new WasmExecuteContractTransfer();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\n\u0004Ȉ", new Object[]{"senderAddress_", "contractAddress_", "amount_", "recipientAddress_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<WasmExecuteContractTransfer> parser = PARSER;
                        if (parser == null) {
                            synchronized (WasmExecuteContractTransfer.class) {
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
                WasmExecuteContractTransfer wasmExecuteContractTransfer = new WasmExecuteContractTransfer();
                DEFAULT_INSTANCE = wasmExecuteContractTransfer;
                GeneratedMessageLite.registerDefaultInstance(WasmExecuteContractTransfer.class, wasmExecuteContractTransfer);
            }

            public static WasmExecuteContractTransfer getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<WasmExecuteContractTransfer> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class WasmExecuteContractSend extends GeneratedMessageLite<WasmExecuteContractSend, Builder> implements WasmExecuteContractSendOrBuilder {
            public static final int AMOUNT_FIELD_NUMBER = 3;
            public static final int COIN_FIELD_NUMBER = 6;
            public static final int CONTRACT_ADDRESS_FIELD_NUMBER = 2;
            private static final WasmExecuteContractSend DEFAULT_INSTANCE;
            public static final int MSG_FIELD_NUMBER = 5;
            private static volatile Parser<WasmExecuteContractSend> PARSER = null;
            public static final int RECIPIENT_CONTRACT_ADDRESS_FIELD_NUMBER = 4;
            public static final int SENDER_ADDRESS_FIELD_NUMBER = 1;
            private String senderAddress_ = "";
            private String contractAddress_ = "";
            private ByteString amount_ = ByteString.EMPTY;
            private String recipientContractAddress_ = "";
            private String msg_ = "";
            private Internal.ProtobufList<String> coin_ = GeneratedMessageLite.emptyProtobufList();

            private WasmExecuteContractSend() {
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
            public String getSenderAddress() {
                return this.senderAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
            public ByteString getSenderAddressBytes() {
                return ByteString.copyFromUtf8(this.senderAddress_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSenderAddress(String value) {
                value.getClass();
                this.senderAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearSenderAddress() {
                this.senderAddress_ = getDefaultInstance().getSenderAddress();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSenderAddressBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.senderAddress_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
            public String getContractAddress() {
                return this.contractAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
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

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
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

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
            public String getRecipientContractAddress() {
                return this.recipientContractAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
            public ByteString getRecipientContractAddressBytes() {
                return ByteString.copyFromUtf8(this.recipientContractAddress_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setRecipientContractAddress(String value) {
                value.getClass();
                this.recipientContractAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearRecipientContractAddress() {
                this.recipientContractAddress_ = getDefaultInstance().getRecipientContractAddress();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setRecipientContractAddressBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.recipientContractAddress_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
            public String getMsg() {
                return this.msg_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
            public ByteString getMsgBytes() {
                return ByteString.copyFromUtf8(this.msg_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setMsg(String value) {
                value.getClass();
                this.msg_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearMsg() {
                this.msg_ = getDefaultInstance().getMsg();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setMsgBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.msg_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
            public List<String> getCoinList() {
                return this.coin_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
            public int getCoinCount() {
                return this.coin_.size();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
            public String getCoin(int index) {
                return this.coin_.get(index);
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
            public ByteString getCoinBytes(int index) {
                return ByteString.copyFromUtf8(this.coin_.get(index));
            }

            private void ensureCoinIsMutable() {
                Internal.ProtobufList<String> protobufList = this.coin_;
                if (protobufList.isModifiable()) {
                    return;
                }
                this.coin_ = GeneratedMessageLite.mutableCopy(protobufList);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setCoin(int index, String value) {
                value.getClass();
                ensureCoinIsMutable();
                this.coin_.set(index, value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addCoin(String value) {
                value.getClass();
                ensureCoinIsMutable();
                this.coin_.add(value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addAllCoin(Iterable<String> values) {
                ensureCoinIsMutable();
                AbstractMessageLite.addAll((Iterable) values, (List) this.coin_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearCoin() {
                this.coin_ = GeneratedMessageLite.emptyProtobufList();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addCoinBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                ensureCoinIsMutable();
                this.coin_.add(value.toStringUtf8());
            }

            public static WasmExecuteContractSend parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (WasmExecuteContractSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WasmExecuteContractSend parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WasmExecuteContractSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WasmExecuteContractSend parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (WasmExecuteContractSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WasmExecuteContractSend parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WasmExecuteContractSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WasmExecuteContractSend parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (WasmExecuteContractSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WasmExecuteContractSend parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WasmExecuteContractSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WasmExecuteContractSend parseFrom(InputStream input) throws IOException {
                return (WasmExecuteContractSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static WasmExecuteContractSend parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WasmExecuteContractSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static WasmExecuteContractSend parseDelimitedFrom(InputStream input) throws IOException {
                return (WasmExecuteContractSend) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static WasmExecuteContractSend parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WasmExecuteContractSend) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static WasmExecuteContractSend parseFrom(CodedInputStream input) throws IOException {
                return (WasmExecuteContractSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static WasmExecuteContractSend parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WasmExecuteContractSend) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(WasmExecuteContractSend prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<WasmExecuteContractSend, Builder> implements WasmExecuteContractSendOrBuilder {
                /* synthetic */ Builder(C67091 c67091) {
                    this();
                }

                private Builder() {
                    super(WasmExecuteContractSend.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
                public String getSenderAddress() {
                    return ((WasmExecuteContractSend) this.instance).getSenderAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
                public ByteString getSenderAddressBytes() {
                    return ((WasmExecuteContractSend) this.instance).getSenderAddressBytes();
                }

                public Builder setSenderAddress(String value) {
                    copyOnWrite();
                    ((WasmExecuteContractSend) this.instance).setSenderAddress(value);
                    return this;
                }

                public Builder clearSenderAddress() {
                    copyOnWrite();
                    ((WasmExecuteContractSend) this.instance).clearSenderAddress();
                    return this;
                }

                public Builder setSenderAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((WasmExecuteContractSend) this.instance).setSenderAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
                public String getContractAddress() {
                    return ((WasmExecuteContractSend) this.instance).getContractAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
                public ByteString getContractAddressBytes() {
                    return ((WasmExecuteContractSend) this.instance).getContractAddressBytes();
                }

                public Builder setContractAddress(String value) {
                    copyOnWrite();
                    ((WasmExecuteContractSend) this.instance).setContractAddress(value);
                    return this;
                }

                public Builder clearContractAddress() {
                    copyOnWrite();
                    ((WasmExecuteContractSend) this.instance).clearContractAddress();
                    return this;
                }

                public Builder setContractAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((WasmExecuteContractSend) this.instance).setContractAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
                public ByteString getAmount() {
                    return ((WasmExecuteContractSend) this.instance).getAmount();
                }

                public Builder setAmount(ByteString value) {
                    copyOnWrite();
                    ((WasmExecuteContractSend) this.instance).setAmount(value);
                    return this;
                }

                public Builder clearAmount() {
                    copyOnWrite();
                    ((WasmExecuteContractSend) this.instance).clearAmount();
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
                public String getRecipientContractAddress() {
                    return ((WasmExecuteContractSend) this.instance).getRecipientContractAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
                public ByteString getRecipientContractAddressBytes() {
                    return ((WasmExecuteContractSend) this.instance).getRecipientContractAddressBytes();
                }

                public Builder setRecipientContractAddress(String value) {
                    copyOnWrite();
                    ((WasmExecuteContractSend) this.instance).setRecipientContractAddress(value);
                    return this;
                }

                public Builder clearRecipientContractAddress() {
                    copyOnWrite();
                    ((WasmExecuteContractSend) this.instance).clearRecipientContractAddress();
                    return this;
                }

                public Builder setRecipientContractAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((WasmExecuteContractSend) this.instance).setRecipientContractAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
                public String getMsg() {
                    return ((WasmExecuteContractSend) this.instance).getMsg();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
                public ByteString getMsgBytes() {
                    return ((WasmExecuteContractSend) this.instance).getMsgBytes();
                }

                public Builder setMsg(String value) {
                    copyOnWrite();
                    ((WasmExecuteContractSend) this.instance).setMsg(value);
                    return this;
                }

                public Builder clearMsg() {
                    copyOnWrite();
                    ((WasmExecuteContractSend) this.instance).clearMsg();
                    return this;
                }

                public Builder setMsgBytes(ByteString value) {
                    copyOnWrite();
                    ((WasmExecuteContractSend) this.instance).setMsgBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
                public List<String> getCoinList() {
                    return Collections.unmodifiableList(((WasmExecuteContractSend) this.instance).getCoinList());
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
                public int getCoinCount() {
                    return ((WasmExecuteContractSend) this.instance).getCoinCount();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
                public String getCoin(int index) {
                    return ((WasmExecuteContractSend) this.instance).getCoin(index);
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractSendOrBuilder
                public ByteString getCoinBytes(int index) {
                    return ((WasmExecuteContractSend) this.instance).getCoinBytes(index);
                }

                public Builder setCoin(int index, String value) {
                    copyOnWrite();
                    ((WasmExecuteContractSend) this.instance).setCoin(index, value);
                    return this;
                }

                public Builder addCoin(String value) {
                    copyOnWrite();
                    ((WasmExecuteContractSend) this.instance).addCoin(value);
                    return this;
                }

                public Builder addAllCoin(Iterable<String> values) {
                    copyOnWrite();
                    ((WasmExecuteContractSend) this.instance).addAllCoin(values);
                    return this;
                }

                public Builder clearCoin() {
                    copyOnWrite();
                    ((WasmExecuteContractSend) this.instance).clearCoin();
                    return this;
                }

                public Builder addCoinBytes(ByteString value) {
                    copyOnWrite();
                    ((WasmExecuteContractSend) this.instance).addCoinBytes(value);
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new WasmExecuteContractSend();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0001\u0000\u0001Ȉ\u0002Ȉ\u0003\n\u0004Ȉ\u0005Ȉ\u0006Ț", new Object[]{"senderAddress_", "contractAddress_", "amount_", "recipientContractAddress_", "msg_", "coin_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<WasmExecuteContractSend> parser = PARSER;
                        if (parser == null) {
                            synchronized (WasmExecuteContractSend.class) {
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
                WasmExecuteContractSend wasmExecuteContractSend = new WasmExecuteContractSend();
                DEFAULT_INSTANCE = wasmExecuteContractSend;
                GeneratedMessageLite.registerDefaultInstance(WasmExecuteContractSend.class, wasmExecuteContractSend);
            }

            public static WasmExecuteContractSend getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<WasmExecuteContractSend> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class WasmExecuteContractGeneric extends GeneratedMessageLite<WasmExecuteContractGeneric, Builder> implements WasmExecuteContractGenericOrBuilder {
            public static final int COINS_FIELD_NUMBER = 5;
            public static final int CONTRACT_ADDRESS_FIELD_NUMBER = 2;
            private static final WasmExecuteContractGeneric DEFAULT_INSTANCE;
            public static final int EXECUTE_MSG_FIELD_NUMBER = 3;
            private static volatile Parser<WasmExecuteContractGeneric> PARSER = null;
            public static final int SENDER_ADDRESS_FIELD_NUMBER = 1;
            private String senderAddress_ = "";
            private String contractAddress_ = "";
            private String executeMsg_ = "";
            private Internal.ProtobufList<Amount> coins_ = GeneratedMessageLite.emptyProtobufList();

            private WasmExecuteContractGeneric() {
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractGenericOrBuilder
            public String getSenderAddress() {
                return this.senderAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractGenericOrBuilder
            public ByteString getSenderAddressBytes() {
                return ByteString.copyFromUtf8(this.senderAddress_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSenderAddress(String value) {
                value.getClass();
                this.senderAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearSenderAddress() {
                this.senderAddress_ = getDefaultInstance().getSenderAddress();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setSenderAddressBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.senderAddress_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractGenericOrBuilder
            public String getContractAddress() {
                return this.contractAddress_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractGenericOrBuilder
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

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractGenericOrBuilder
            public String getExecuteMsg() {
                return this.executeMsg_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractGenericOrBuilder
            public ByteString getExecuteMsgBytes() {
                return ByteString.copyFromUtf8(this.executeMsg_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setExecuteMsg(String value) {
                value.getClass();
                this.executeMsg_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearExecuteMsg() {
                this.executeMsg_ = getDefaultInstance().getExecuteMsg();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setExecuteMsgBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.executeMsg_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractGenericOrBuilder
            public List<Amount> getCoinsList() {
                return this.coins_;
            }

            public List<? extends AmountOrBuilder> getCoinsOrBuilderList() {
                return this.coins_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractGenericOrBuilder
            public int getCoinsCount() {
                return this.coins_.size();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractGenericOrBuilder
            public Amount getCoins(int index) {
                return this.coins_.get(index);
            }

            public AmountOrBuilder getCoinsOrBuilder(int index) {
                return this.coins_.get(index);
            }

            private void ensureCoinsIsMutable() {
                Internal.ProtobufList<Amount> protobufList = this.coins_;
                if (protobufList.isModifiable()) {
                    return;
                }
                this.coins_ = GeneratedMessageLite.mutableCopy(protobufList);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setCoins(int index, Amount value) {
                value.getClass();
                ensureCoinsIsMutable();
                this.coins_.set(index, value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addCoins(Amount value) {
                value.getClass();
                ensureCoinsIsMutable();
                this.coins_.add(value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addCoins(int index, Amount value) {
                value.getClass();
                ensureCoinsIsMutable();
                this.coins_.add(index, value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addAllCoins(Iterable<? extends Amount> values) {
                ensureCoinsIsMutable();
                AbstractMessageLite.addAll((Iterable) values, (List) this.coins_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearCoins() {
                this.coins_ = GeneratedMessageLite.emptyProtobufList();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void removeCoins(int index) {
                ensureCoinsIsMutable();
                this.coins_.remove(index);
            }

            public static WasmExecuteContractGeneric parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (WasmExecuteContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WasmExecuteContractGeneric parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WasmExecuteContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WasmExecuteContractGeneric parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (WasmExecuteContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WasmExecuteContractGeneric parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WasmExecuteContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WasmExecuteContractGeneric parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (WasmExecuteContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static WasmExecuteContractGeneric parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (WasmExecuteContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static WasmExecuteContractGeneric parseFrom(InputStream input) throws IOException {
                return (WasmExecuteContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static WasmExecuteContractGeneric parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WasmExecuteContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static WasmExecuteContractGeneric parseDelimitedFrom(InputStream input) throws IOException {
                return (WasmExecuteContractGeneric) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static WasmExecuteContractGeneric parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WasmExecuteContractGeneric) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static WasmExecuteContractGeneric parseFrom(CodedInputStream input) throws IOException {
                return (WasmExecuteContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static WasmExecuteContractGeneric parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (WasmExecuteContractGeneric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(WasmExecuteContractGeneric prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<WasmExecuteContractGeneric, Builder> implements WasmExecuteContractGenericOrBuilder {
                /* synthetic */ Builder(C67091 c67091) {
                    this();
                }

                private Builder() {
                    super(WasmExecuteContractGeneric.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractGenericOrBuilder
                public String getSenderAddress() {
                    return ((WasmExecuteContractGeneric) this.instance).getSenderAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractGenericOrBuilder
                public ByteString getSenderAddressBytes() {
                    return ((WasmExecuteContractGeneric) this.instance).getSenderAddressBytes();
                }

                public Builder setSenderAddress(String value) {
                    copyOnWrite();
                    ((WasmExecuteContractGeneric) this.instance).setSenderAddress(value);
                    return this;
                }

                public Builder clearSenderAddress() {
                    copyOnWrite();
                    ((WasmExecuteContractGeneric) this.instance).clearSenderAddress();
                    return this;
                }

                public Builder setSenderAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((WasmExecuteContractGeneric) this.instance).setSenderAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractGenericOrBuilder
                public String getContractAddress() {
                    return ((WasmExecuteContractGeneric) this.instance).getContractAddress();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractGenericOrBuilder
                public ByteString getContractAddressBytes() {
                    return ((WasmExecuteContractGeneric) this.instance).getContractAddressBytes();
                }

                public Builder setContractAddress(String value) {
                    copyOnWrite();
                    ((WasmExecuteContractGeneric) this.instance).setContractAddress(value);
                    return this;
                }

                public Builder clearContractAddress() {
                    copyOnWrite();
                    ((WasmExecuteContractGeneric) this.instance).clearContractAddress();
                    return this;
                }

                public Builder setContractAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((WasmExecuteContractGeneric) this.instance).setContractAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractGenericOrBuilder
                public String getExecuteMsg() {
                    return ((WasmExecuteContractGeneric) this.instance).getExecuteMsg();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractGenericOrBuilder
                public ByteString getExecuteMsgBytes() {
                    return ((WasmExecuteContractGeneric) this.instance).getExecuteMsgBytes();
                }

                public Builder setExecuteMsg(String value) {
                    copyOnWrite();
                    ((WasmExecuteContractGeneric) this.instance).setExecuteMsg(value);
                    return this;
                }

                public Builder clearExecuteMsg() {
                    copyOnWrite();
                    ((WasmExecuteContractGeneric) this.instance).clearExecuteMsg();
                    return this;
                }

                public Builder setExecuteMsgBytes(ByteString value) {
                    copyOnWrite();
                    ((WasmExecuteContractGeneric) this.instance).setExecuteMsgBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractGenericOrBuilder
                public List<Amount> getCoinsList() {
                    return Collections.unmodifiableList(((WasmExecuteContractGeneric) this.instance).getCoinsList());
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractGenericOrBuilder
                public int getCoinsCount() {
                    return ((WasmExecuteContractGeneric) this.instance).getCoinsCount();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.WasmExecuteContractGenericOrBuilder
                public Amount getCoins(int index) {
                    return ((WasmExecuteContractGeneric) this.instance).getCoins(index);
                }

                public Builder setCoins(int index, Amount value) {
                    copyOnWrite();
                    ((WasmExecuteContractGeneric) this.instance).setCoins(index, value);
                    return this;
                }

                public Builder setCoins(int index, Amount.Builder builderForValue) {
                    copyOnWrite();
                    ((WasmExecuteContractGeneric) this.instance).setCoins(index, builderForValue.build());
                    return this;
                }

                public Builder addCoins(Amount value) {
                    copyOnWrite();
                    ((WasmExecuteContractGeneric) this.instance).addCoins(value);
                    return this;
                }

                public Builder addCoins(int index, Amount value) {
                    copyOnWrite();
                    ((WasmExecuteContractGeneric) this.instance).addCoins(index, value);
                    return this;
                }

                public Builder addCoins(Amount.Builder builderForValue) {
                    copyOnWrite();
                    ((WasmExecuteContractGeneric) this.instance).addCoins(builderForValue.build());
                    return this;
                }

                public Builder addCoins(int index, Amount.Builder builderForValue) {
                    copyOnWrite();
                    ((WasmExecuteContractGeneric) this.instance).addCoins(index, builderForValue.build());
                    return this;
                }

                public Builder addAllCoins(Iterable<? extends Amount> values) {
                    copyOnWrite();
                    ((WasmExecuteContractGeneric) this.instance).addAllCoins(values);
                    return this;
                }

                public Builder clearCoins() {
                    copyOnWrite();
                    ((WasmExecuteContractGeneric) this.instance).clearCoins();
                    return this;
                }

                public Builder removeCoins(int index) {
                    copyOnWrite();
                    ((WasmExecuteContractGeneric) this.instance).removeCoins(index);
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new WasmExecuteContractGeneric();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0005\u0004\u0000\u0001\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0005\u001b", new Object[]{"senderAddress_", "contractAddress_", "executeMsg_", "coins_", Amount.class});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<WasmExecuteContractGeneric> parser = PARSER;
                        if (parser == null) {
                            synchronized (WasmExecuteContractGeneric.class) {
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
                WasmExecuteContractGeneric wasmExecuteContractGeneric = new WasmExecuteContractGeneric();
                DEFAULT_INSTANCE = wasmExecuteContractGeneric;
                GeneratedMessageLite.registerDefaultInstance(WasmExecuteContractGeneric.class, wasmExecuteContractGeneric);
            }

            public static WasmExecuteContractGeneric getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<WasmExecuteContractGeneric> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class RawJSON extends GeneratedMessageLite<RawJSON, Builder> implements RawJSONOrBuilder {
            private static final RawJSON DEFAULT_INSTANCE;
            private static volatile Parser<RawJSON> PARSER = null;
            public static final int TYPE_FIELD_NUMBER = 1;
            public static final int VALUE_FIELD_NUMBER = 2;
            private String type_ = "";
            private String value_ = "";

            private RawJSON() {
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.RawJSONOrBuilder
            public String getType() {
                return this.type_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.RawJSONOrBuilder
            public ByteString getTypeBytes() {
                return ByteString.copyFromUtf8(this.type_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setType(String value) {
                value.getClass();
                this.type_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearType() {
                this.type_ = getDefaultInstance().getType();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setTypeBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.type_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.RawJSONOrBuilder
            public String getValue() {
                return this.value_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.RawJSONOrBuilder
            public ByteString getValueBytes() {
                return ByteString.copyFromUtf8(this.value_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setValue(String value) {
                value.getClass();
                this.value_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearValue() {
                this.value_ = getDefaultInstance().getValue();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setValueBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.value_ = value.toStringUtf8();
            }

            public static RawJSON parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (RawJSON) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static RawJSON parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (RawJSON) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static RawJSON parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (RawJSON) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static RawJSON parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (RawJSON) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static RawJSON parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (RawJSON) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static RawJSON parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (RawJSON) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static RawJSON parseFrom(InputStream input) throws IOException {
                return (RawJSON) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static RawJSON parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (RawJSON) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static RawJSON parseDelimitedFrom(InputStream input) throws IOException {
                return (RawJSON) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static RawJSON parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (RawJSON) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static RawJSON parseFrom(CodedInputStream input) throws IOException {
                return (RawJSON) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static RawJSON parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (RawJSON) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(RawJSON prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<RawJSON, Builder> implements RawJSONOrBuilder {
                /* synthetic */ Builder(C67091 c67091) {
                    this();
                }

                private Builder() {
                    super(RawJSON.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.RawJSONOrBuilder
                public String getType() {
                    return ((RawJSON) this.instance).getType();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.RawJSONOrBuilder
                public ByteString getTypeBytes() {
                    return ((RawJSON) this.instance).getTypeBytes();
                }

                public Builder setType(String value) {
                    copyOnWrite();
                    ((RawJSON) this.instance).setType(value);
                    return this;
                }

                public Builder clearType() {
                    copyOnWrite();
                    ((RawJSON) this.instance).clearType();
                    return this;
                }

                public Builder setTypeBytes(ByteString value) {
                    copyOnWrite();
                    ((RawJSON) this.instance).setTypeBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.RawJSONOrBuilder
                public String getValue() {
                    return ((RawJSON) this.instance).getValue();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.RawJSONOrBuilder
                public ByteString getValueBytes() {
                    return ((RawJSON) this.instance).getValueBytes();
                }

                public Builder setValue(String value) {
                    copyOnWrite();
                    ((RawJSON) this.instance).setValue(value);
                    return this;
                }

                public Builder clearValue() {
                    copyOnWrite();
                    ((RawJSON) this.instance).clearValue();
                    return this;
                }

                public Builder setValueBytes(ByteString value) {
                    copyOnWrite();
                    ((RawJSON) this.instance).setValueBytes(value);
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new RawJSON();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ", new Object[]{"type_", "value_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<RawJSON> parser = PARSER;
                        if (parser == null) {
                            synchronized (RawJSON.class) {
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
                RawJSON rawJSON = new RawJSON();
                DEFAULT_INSTANCE = rawJSON;
                GeneratedMessageLite.registerDefaultInstance(RawJSON.class, rawJSON);
            }

            public static RawJSON getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<RawJSON> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class SignDirect extends GeneratedMessageLite<SignDirect, Builder> implements SignDirectOrBuilder {
            public static final int AUTH_INFO_BYTES_FIELD_NUMBER = 2;
            public static final int BODY_BYTES_FIELD_NUMBER = 1;
            private static final SignDirect DEFAULT_INSTANCE;
            private static volatile Parser<SignDirect> PARSER;
            private ByteString authInfoBytes_;
            private ByteString bodyBytes_;

            private SignDirect() {
                ByteString byteString = ByteString.EMPTY;
                this.bodyBytes_ = byteString;
                this.authInfoBytes_ = byteString;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.SignDirectOrBuilder
            public ByteString getBodyBytes() {
                return this.bodyBytes_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setBodyBytes(ByteString value) {
                value.getClass();
                this.bodyBytes_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearBodyBytes() {
                this.bodyBytes_ = getDefaultInstance().getBodyBytes();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.SignDirectOrBuilder
            public ByteString getAuthInfoBytes() {
                return this.authInfoBytes_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setAuthInfoBytes(ByteString value) {
                value.getClass();
                this.authInfoBytes_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearAuthInfoBytes() {
                this.authInfoBytes_ = getDefaultInstance().getAuthInfoBytes();
            }

            public static SignDirect parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (SignDirect) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static SignDirect parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (SignDirect) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static SignDirect parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (SignDirect) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static SignDirect parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (SignDirect) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static SignDirect parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (SignDirect) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static SignDirect parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (SignDirect) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static SignDirect parseFrom(InputStream input) throws IOException {
                return (SignDirect) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static SignDirect parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (SignDirect) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static SignDirect parseDelimitedFrom(InputStream input) throws IOException {
                return (SignDirect) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static SignDirect parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (SignDirect) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static SignDirect parseFrom(CodedInputStream input) throws IOException {
                return (SignDirect) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static SignDirect parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (SignDirect) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(SignDirect prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<SignDirect, Builder> implements SignDirectOrBuilder {
                /* synthetic */ Builder(C67091 c67091) {
                    this();
                }

                private Builder() {
                    super(SignDirect.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.SignDirectOrBuilder
                public ByteString getBodyBytes() {
                    return ((SignDirect) this.instance).getBodyBytes();
                }

                public Builder setBodyBytes(ByteString value) {
                    copyOnWrite();
                    ((SignDirect) this.instance).setBodyBytes(value);
                    return this;
                }

                public Builder clearBodyBytes() {
                    copyOnWrite();
                    ((SignDirect) this.instance).clearBodyBytes();
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.SignDirectOrBuilder
                public ByteString getAuthInfoBytes() {
                    return ((SignDirect) this.instance).getAuthInfoBytes();
                }

                public Builder setAuthInfoBytes(ByteString value) {
                    copyOnWrite();
                    ((SignDirect) this.instance).setAuthInfoBytes(value);
                    return this;
                }

                public Builder clearAuthInfoBytes() {
                    copyOnWrite();
                    ((SignDirect) this.instance).clearAuthInfoBytes();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new SignDirect();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\n", new Object[]{"bodyBytes_", "authInfoBytes_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<SignDirect> parser = PARSER;
                        if (parser == null) {
                            synchronized (SignDirect.class) {
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
                SignDirect signDirect = new SignDirect();
                DEFAULT_INSTANCE = signDirect;
                GeneratedMessageLite.registerDefaultInstance(SignDirect.class, signDirect);
            }

            public static SignDirect getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<SignDirect> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class StakeAuthorization extends GeneratedMessageLite<StakeAuthorization, Builder> implements StakeAuthorizationOrBuilder {
            public static final int ALLOW_LIST_FIELD_NUMBER = 2;
            public static final int AUTHORIZATION_TYPE_FIELD_NUMBER = 4;
            private static final StakeAuthorization DEFAULT_INSTANCE;
            public static final int DENY_LIST_FIELD_NUMBER = 3;
            public static final int MAX_TOKENS_FIELD_NUMBER = 1;
            private static volatile Parser<StakeAuthorization> PARSER;
            private int authorizationType_;
            private Amount maxTokens_;
            private int validatorsCase_ = 0;
            private Object validators_;

            /* loaded from: classes6.dex */
            public interface ValidatorsOrBuilder extends MessageLiteOrBuilder {
                String getAddress(int index);

                ByteString getAddressBytes(int index);

                int getAddressCount();

                List<String> getAddressList();

                @Override // com.google.protobuf.MessageLiteOrBuilder
                /* synthetic */ MessageLite getDefaultInstanceForType();

                @Override // com.google.protobuf.MessageLiteOrBuilder
                /* synthetic */ boolean isInitialized();
            }

            private StakeAuthorization() {
            }

            /* loaded from: classes6.dex */
            public static final class Validators extends GeneratedMessageLite<Validators, Builder> implements ValidatorsOrBuilder {
                public static final int ADDRESS_FIELD_NUMBER = 1;
                private static final Validators DEFAULT_INSTANCE;
                private static volatile Parser<Validators> PARSER;
                private Internal.ProtobufList<String> address_ = GeneratedMessageLite.emptyProtobufList();

                private Validators() {
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorization.ValidatorsOrBuilder
                public List<String> getAddressList() {
                    return this.address_;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorization.ValidatorsOrBuilder
                public int getAddressCount() {
                    return this.address_.size();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorization.ValidatorsOrBuilder
                public String getAddress(int index) {
                    return this.address_.get(index);
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorization.ValidatorsOrBuilder
                public ByteString getAddressBytes(int index) {
                    return ByteString.copyFromUtf8(this.address_.get(index));
                }

                private void ensureAddressIsMutable() {
                    Internal.ProtobufList<String> protobufList = this.address_;
                    if (protobufList.isModifiable()) {
                        return;
                    }
                    this.address_ = GeneratedMessageLite.mutableCopy(protobufList);
                }

                /* JADX INFO: Access modifiers changed from: private */
                public void setAddress(int index, String value) {
                    value.getClass();
                    ensureAddressIsMutable();
                    this.address_.set(index, value);
                }

                /* JADX INFO: Access modifiers changed from: private */
                public void addAddress(String value) {
                    value.getClass();
                    ensureAddressIsMutable();
                    this.address_.add(value);
                }

                /* JADX INFO: Access modifiers changed from: private */
                public void addAllAddress(Iterable<String> values) {
                    ensureAddressIsMutable();
                    AbstractMessageLite.addAll((Iterable) values, (List) this.address_);
                }

                /* JADX INFO: Access modifiers changed from: private */
                public void clearAddress() {
                    this.address_ = GeneratedMessageLite.emptyProtobufList();
                }

                /* JADX INFO: Access modifiers changed from: private */
                public void addAddressBytes(ByteString value) {
                    AbstractMessageLite.checkByteStringIsUtf8(value);
                    ensureAddressIsMutable();
                    this.address_.add(value.toStringUtf8());
                }

                public static Validators parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                    return (Validators) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
                }

                public static Validators parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                    return (Validators) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
                }

                public static Validators parseFrom(ByteString data) throws InvalidProtocolBufferException {
                    return (Validators) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
                }

                public static Validators parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                    return (Validators) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
                }

                public static Validators parseFrom(byte[] data) throws InvalidProtocolBufferException {
                    return (Validators) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
                }

                public static Validators parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                    return (Validators) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
                }

                public static Validators parseFrom(InputStream input) throws IOException {
                    return (Validators) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
                }

                public static Validators parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                    return (Validators) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
                }

                public static Validators parseDelimitedFrom(InputStream input) throws IOException {
                    return (Validators) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
                }

                public static Validators parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                    return (Validators) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
                }

                public static Validators parseFrom(CodedInputStream input) throws IOException {
                    return (Validators) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
                }

                public static Validators parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                    return (Validators) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
                }

                public static Builder newBuilder() {
                    return DEFAULT_INSTANCE.createBuilder();
                }

                public static Builder newBuilder(Validators prototype) {
                    return DEFAULT_INSTANCE.createBuilder(prototype);
                }

                /* loaded from: classes6.dex */
                public static final class Builder extends GeneratedMessageLite.Builder<Validators, Builder> implements ValidatorsOrBuilder {
                    /* synthetic */ Builder(C67091 c67091) {
                        this();
                    }

                    private Builder() {
                        super(Validators.DEFAULT_INSTANCE);
                    }

                    @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorization.ValidatorsOrBuilder
                    public List<String> getAddressList() {
                        return Collections.unmodifiableList(((Validators) this.instance).getAddressList());
                    }

                    @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorization.ValidatorsOrBuilder
                    public int getAddressCount() {
                        return ((Validators) this.instance).getAddressCount();
                    }

                    @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorization.ValidatorsOrBuilder
                    public String getAddress(int index) {
                        return ((Validators) this.instance).getAddress(index);
                    }

                    @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorization.ValidatorsOrBuilder
                    public ByteString getAddressBytes(int index) {
                        return ((Validators) this.instance).getAddressBytes(index);
                    }

                    public Builder setAddress(int index, String value) {
                        copyOnWrite();
                        ((Validators) this.instance).setAddress(index, value);
                        return this;
                    }

                    public Builder addAddress(String value) {
                        copyOnWrite();
                        ((Validators) this.instance).addAddress(value);
                        return this;
                    }

                    public Builder addAllAddress(Iterable<String> values) {
                        copyOnWrite();
                        ((Validators) this.instance).addAllAddress(values);
                        return this;
                    }

                    public Builder clearAddress() {
                        copyOnWrite();
                        ((Validators) this.instance).clearAddress();
                        return this;
                    }

                    public Builder addAddressBytes(ByteString value) {
                        copyOnWrite();
                        ((Validators) this.instance).addAddressBytes(value);
                        return this;
                    }
                }

                @Override // com.google.protobuf.GeneratedMessageLite
                protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                    switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                        case 1:
                            return new Validators();
                        case 2:
                            return new Builder(null);
                        case 3:
                            return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001Ț", new Object[]{"address_"});
                        case 4:
                            return DEFAULT_INSTANCE;
                        case 5:
                            Parser<Validators> parser = PARSER;
                            if (parser == null) {
                                synchronized (Validators.class) {
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
                    Validators validators = new Validators();
                    DEFAULT_INSTANCE = validators;
                    GeneratedMessageLite.registerDefaultInstance(Validators.class, validators);
                }

                public static Validators getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static Parser<Validators> parser() {
                    return DEFAULT_INSTANCE.getParserForType();
                }
            }

            /* loaded from: classes6.dex */
            public enum ValidatorsCase {
                ALLOW_LIST(2),
                DENY_LIST(3),
                VALIDATORS_NOT_SET(0);
                
                private final int value;

                ValidatorsCase(int value) {
                    this.value = value;
                }

                @Deprecated
                public static ValidatorsCase valueOf(int value) {
                    return forNumber(value);
                }

                public static ValidatorsCase forNumber(int value) {
                    if (value != 0) {
                        if (value != 2) {
                            if (value != 3) {
                                return null;
                            }
                            return DENY_LIST;
                        }
                        return ALLOW_LIST;
                    }
                    return VALIDATORS_NOT_SET;
                }

                public int getNumber() {
                    return this.value;
                }
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorizationOrBuilder
            public ValidatorsCase getValidatorsCase() {
                return ValidatorsCase.forNumber(this.validatorsCase_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearValidators() {
                this.validatorsCase_ = 0;
                this.validators_ = null;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorizationOrBuilder
            public boolean hasMaxTokens() {
                return this.maxTokens_ != null;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorizationOrBuilder
            public Amount getMaxTokens() {
                Amount amount = this.maxTokens_;
                return amount == null ? Amount.getDefaultInstance() : amount;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setMaxTokens(Amount value) {
                value.getClass();
                this.maxTokens_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeMaxTokens(Amount value) {
                value.getClass();
                Amount amount = this.maxTokens_;
                if (amount != null && amount != Amount.getDefaultInstance()) {
                    this.maxTokens_ = Amount.newBuilder(this.maxTokens_).mergeFrom((Amount.Builder) value).buildPartial();
                } else {
                    this.maxTokens_ = value;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearMaxTokens() {
                this.maxTokens_ = null;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorizationOrBuilder
            public boolean hasAllowList() {
                return this.validatorsCase_ == 2;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorizationOrBuilder
            public Validators getAllowList() {
                if (this.validatorsCase_ == 2) {
                    return (Validators) this.validators_;
                }
                return Validators.getDefaultInstance();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setAllowList(Validators value) {
                value.getClass();
                this.validators_ = value;
                this.validatorsCase_ = 2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeAllowList(Validators value) {
                value.getClass();
                if (this.validatorsCase_ == 2 && this.validators_ != Validators.getDefaultInstance()) {
                    this.validators_ = Validators.newBuilder((Validators) this.validators_).mergeFrom((Validators.Builder) value).buildPartial();
                } else {
                    this.validators_ = value;
                }
                this.validatorsCase_ = 2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearAllowList() {
                if (this.validatorsCase_ == 2) {
                    this.validatorsCase_ = 0;
                    this.validators_ = null;
                }
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorizationOrBuilder
            public boolean hasDenyList() {
                return this.validatorsCase_ == 3;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorizationOrBuilder
            public Validators getDenyList() {
                if (this.validatorsCase_ == 3) {
                    return (Validators) this.validators_;
                }
                return Validators.getDefaultInstance();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setDenyList(Validators value) {
                value.getClass();
                this.validators_ = value;
                this.validatorsCase_ = 3;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeDenyList(Validators value) {
                value.getClass();
                if (this.validatorsCase_ == 3 && this.validators_ != Validators.getDefaultInstance()) {
                    this.validators_ = Validators.newBuilder((Validators) this.validators_).mergeFrom((Validators.Builder) value).buildPartial();
                } else {
                    this.validators_ = value;
                }
                this.validatorsCase_ = 3;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearDenyList() {
                if (this.validatorsCase_ == 3) {
                    this.validatorsCase_ = 0;
                    this.validators_ = null;
                }
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorizationOrBuilder
            public int getAuthorizationTypeValue() {
                return this.authorizationType_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorizationOrBuilder
            public AuthorizationType getAuthorizationType() {
                AuthorizationType forNumber = AuthorizationType.forNumber(this.authorizationType_);
                return forNumber == null ? AuthorizationType.UNRECOGNIZED : forNumber;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setAuthorizationTypeValue(int value) {
                this.authorizationType_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setAuthorizationType(AuthorizationType value) {
                this.authorizationType_ = value.getNumber();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearAuthorizationType() {
                this.authorizationType_ = 0;
            }

            public static StakeAuthorization parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (StakeAuthorization) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static StakeAuthorization parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (StakeAuthorization) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static StakeAuthorization parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (StakeAuthorization) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static StakeAuthorization parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (StakeAuthorization) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static StakeAuthorization parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (StakeAuthorization) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static StakeAuthorization parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (StakeAuthorization) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static StakeAuthorization parseFrom(InputStream input) throws IOException {
                return (StakeAuthorization) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static StakeAuthorization parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (StakeAuthorization) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static StakeAuthorization parseDelimitedFrom(InputStream input) throws IOException {
                return (StakeAuthorization) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static StakeAuthorization parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (StakeAuthorization) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static StakeAuthorization parseFrom(CodedInputStream input) throws IOException {
                return (StakeAuthorization) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static StakeAuthorization parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (StakeAuthorization) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(StakeAuthorization prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<StakeAuthorization, Builder> implements StakeAuthorizationOrBuilder {
                /* synthetic */ Builder(C67091 c67091) {
                    this();
                }

                private Builder() {
                    super(StakeAuthorization.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorizationOrBuilder
                public ValidatorsCase getValidatorsCase() {
                    return ((StakeAuthorization) this.instance).getValidatorsCase();
                }

                public Builder clearValidators() {
                    copyOnWrite();
                    ((StakeAuthorization) this.instance).clearValidators();
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorizationOrBuilder
                public boolean hasMaxTokens() {
                    return ((StakeAuthorization) this.instance).hasMaxTokens();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorizationOrBuilder
                public Amount getMaxTokens() {
                    return ((StakeAuthorization) this.instance).getMaxTokens();
                }

                public Builder setMaxTokens(Amount value) {
                    copyOnWrite();
                    ((StakeAuthorization) this.instance).setMaxTokens(value);
                    return this;
                }

                public Builder setMaxTokens(Amount.Builder builderForValue) {
                    copyOnWrite();
                    ((StakeAuthorization) this.instance).setMaxTokens(builderForValue.build());
                    return this;
                }

                public Builder mergeMaxTokens(Amount value) {
                    copyOnWrite();
                    ((StakeAuthorization) this.instance).mergeMaxTokens(value);
                    return this;
                }

                public Builder clearMaxTokens() {
                    copyOnWrite();
                    ((StakeAuthorization) this.instance).clearMaxTokens();
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorizationOrBuilder
                public boolean hasAllowList() {
                    return ((StakeAuthorization) this.instance).hasAllowList();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorizationOrBuilder
                public Validators getAllowList() {
                    return ((StakeAuthorization) this.instance).getAllowList();
                }

                public Builder setAllowList(Validators value) {
                    copyOnWrite();
                    ((StakeAuthorization) this.instance).setAllowList(value);
                    return this;
                }

                public Builder setAllowList(Validators.Builder builderForValue) {
                    copyOnWrite();
                    ((StakeAuthorization) this.instance).setAllowList(builderForValue.build());
                    return this;
                }

                public Builder mergeAllowList(Validators value) {
                    copyOnWrite();
                    ((StakeAuthorization) this.instance).mergeAllowList(value);
                    return this;
                }

                public Builder clearAllowList() {
                    copyOnWrite();
                    ((StakeAuthorization) this.instance).clearAllowList();
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorizationOrBuilder
                public boolean hasDenyList() {
                    return ((StakeAuthorization) this.instance).hasDenyList();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorizationOrBuilder
                public Validators getDenyList() {
                    return ((StakeAuthorization) this.instance).getDenyList();
                }

                public Builder setDenyList(Validators value) {
                    copyOnWrite();
                    ((StakeAuthorization) this.instance).setDenyList(value);
                    return this;
                }

                public Builder setDenyList(Validators.Builder builderForValue) {
                    copyOnWrite();
                    ((StakeAuthorization) this.instance).setDenyList(builderForValue.build());
                    return this;
                }

                public Builder mergeDenyList(Validators value) {
                    copyOnWrite();
                    ((StakeAuthorization) this.instance).mergeDenyList(value);
                    return this;
                }

                public Builder clearDenyList() {
                    copyOnWrite();
                    ((StakeAuthorization) this.instance).clearDenyList();
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorizationOrBuilder
                public int getAuthorizationTypeValue() {
                    return ((StakeAuthorization) this.instance).getAuthorizationTypeValue();
                }

                public Builder setAuthorizationTypeValue(int value) {
                    copyOnWrite();
                    ((StakeAuthorization) this.instance).setAuthorizationTypeValue(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.StakeAuthorizationOrBuilder
                public AuthorizationType getAuthorizationType() {
                    return ((StakeAuthorization) this.instance).getAuthorizationType();
                }

                public Builder setAuthorizationType(AuthorizationType value) {
                    copyOnWrite();
                    ((StakeAuthorization) this.instance).setAuthorizationType(value);
                    return this;
                }

                public Builder clearAuthorizationType() {
                    copyOnWrite();
                    ((StakeAuthorization) this.instance).clearAuthorizationType();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new StakeAuthorization();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002<\u0000\u0003<\u0000\u0004\f", new Object[]{"validators_", "validatorsCase_", "maxTokens_", Validators.class, Validators.class, "authorizationType_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<StakeAuthorization> parser = PARSER;
                        if (parser == null) {
                            synchronized (StakeAuthorization.class) {
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
                StakeAuthorization stakeAuthorization = new StakeAuthorization();
                DEFAULT_INSTANCE = stakeAuthorization;
                GeneratedMessageLite.registerDefaultInstance(StakeAuthorization.class, stakeAuthorization);
            }

            public static StakeAuthorization getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<StakeAuthorization> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class AuthGrant extends GeneratedMessageLite<AuthGrant, Builder> implements AuthGrantOrBuilder {
            private static final AuthGrant DEFAULT_INSTANCE;
            public static final int EXPIRATION_FIELD_NUMBER = 4;
            public static final int GRANTEE_FIELD_NUMBER = 2;
            public static final int GRANTER_FIELD_NUMBER = 1;
            public static final int GRANT_STAKE_FIELD_NUMBER = 3;
            private static volatile Parser<AuthGrant> PARSER;
            private long expiration_;
            private Object grantType_;
            private int grantTypeCase_ = 0;
            private String granter_ = "";
            private String grantee_ = "";

            private AuthGrant() {
            }

            /* loaded from: classes6.dex */
            public enum GrantTypeCase {
                GRANT_STAKE(3),
                GRANTTYPE_NOT_SET(0);
                
                private final int value;

                GrantTypeCase(int value) {
                    this.value = value;
                }

                @Deprecated
                public static GrantTypeCase valueOf(int value) {
                    return forNumber(value);
                }

                public static GrantTypeCase forNumber(int value) {
                    if (value != 0) {
                        if (value != 3) {
                            return null;
                        }
                        return GRANT_STAKE;
                    }
                    return GRANTTYPE_NOT_SET;
                }

                public int getNumber() {
                    return this.value;
                }
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.AuthGrantOrBuilder
            public GrantTypeCase getGrantTypeCase() {
                return GrantTypeCase.forNumber(this.grantTypeCase_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearGrantType() {
                this.grantTypeCase_ = 0;
                this.grantType_ = null;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.AuthGrantOrBuilder
            public String getGranter() {
                return this.granter_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.AuthGrantOrBuilder
            public ByteString getGranterBytes() {
                return ByteString.copyFromUtf8(this.granter_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setGranter(String value) {
                value.getClass();
                this.granter_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearGranter() {
                this.granter_ = getDefaultInstance().getGranter();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setGranterBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.granter_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.AuthGrantOrBuilder
            public String getGrantee() {
                return this.grantee_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.AuthGrantOrBuilder
            public ByteString getGranteeBytes() {
                return ByteString.copyFromUtf8(this.grantee_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setGrantee(String value) {
                value.getClass();
                this.grantee_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearGrantee() {
                this.grantee_ = getDefaultInstance().getGrantee();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setGranteeBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.grantee_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.AuthGrantOrBuilder
            public boolean hasGrantStake() {
                return this.grantTypeCase_ == 3;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.AuthGrantOrBuilder
            public StakeAuthorization getGrantStake() {
                if (this.grantTypeCase_ == 3) {
                    return (StakeAuthorization) this.grantType_;
                }
                return StakeAuthorization.getDefaultInstance();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setGrantStake(StakeAuthorization value) {
                value.getClass();
                this.grantType_ = value;
                this.grantTypeCase_ = 3;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeGrantStake(StakeAuthorization value) {
                value.getClass();
                if (this.grantTypeCase_ == 3 && this.grantType_ != StakeAuthorization.getDefaultInstance()) {
                    this.grantType_ = StakeAuthorization.newBuilder((StakeAuthorization) this.grantType_).mergeFrom((StakeAuthorization.Builder) value).buildPartial();
                } else {
                    this.grantType_ = value;
                }
                this.grantTypeCase_ = 3;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearGrantStake() {
                if (this.grantTypeCase_ == 3) {
                    this.grantTypeCase_ = 0;
                    this.grantType_ = null;
                }
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.AuthGrantOrBuilder
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

            public static AuthGrant parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (AuthGrant) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static AuthGrant parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (AuthGrant) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static AuthGrant parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (AuthGrant) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static AuthGrant parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (AuthGrant) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static AuthGrant parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (AuthGrant) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static AuthGrant parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (AuthGrant) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static AuthGrant parseFrom(InputStream input) throws IOException {
                return (AuthGrant) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static AuthGrant parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (AuthGrant) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static AuthGrant parseDelimitedFrom(InputStream input) throws IOException {
                return (AuthGrant) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static AuthGrant parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (AuthGrant) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static AuthGrant parseFrom(CodedInputStream input) throws IOException {
                return (AuthGrant) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static AuthGrant parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (AuthGrant) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(AuthGrant prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<AuthGrant, Builder> implements AuthGrantOrBuilder {
                /* synthetic */ Builder(C67091 c67091) {
                    this();
                }

                private Builder() {
                    super(AuthGrant.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.AuthGrantOrBuilder
                public GrantTypeCase getGrantTypeCase() {
                    return ((AuthGrant) this.instance).getGrantTypeCase();
                }

                public Builder clearGrantType() {
                    copyOnWrite();
                    ((AuthGrant) this.instance).clearGrantType();
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.AuthGrantOrBuilder
                public String getGranter() {
                    return ((AuthGrant) this.instance).getGranter();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.AuthGrantOrBuilder
                public ByteString getGranterBytes() {
                    return ((AuthGrant) this.instance).getGranterBytes();
                }

                public Builder setGranter(String value) {
                    copyOnWrite();
                    ((AuthGrant) this.instance).setGranter(value);
                    return this;
                }

                public Builder clearGranter() {
                    copyOnWrite();
                    ((AuthGrant) this.instance).clearGranter();
                    return this;
                }

                public Builder setGranterBytes(ByteString value) {
                    copyOnWrite();
                    ((AuthGrant) this.instance).setGranterBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.AuthGrantOrBuilder
                public String getGrantee() {
                    return ((AuthGrant) this.instance).getGrantee();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.AuthGrantOrBuilder
                public ByteString getGranteeBytes() {
                    return ((AuthGrant) this.instance).getGranteeBytes();
                }

                public Builder setGrantee(String value) {
                    copyOnWrite();
                    ((AuthGrant) this.instance).setGrantee(value);
                    return this;
                }

                public Builder clearGrantee() {
                    copyOnWrite();
                    ((AuthGrant) this.instance).clearGrantee();
                    return this;
                }

                public Builder setGranteeBytes(ByteString value) {
                    copyOnWrite();
                    ((AuthGrant) this.instance).setGranteeBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.AuthGrantOrBuilder
                public boolean hasGrantStake() {
                    return ((AuthGrant) this.instance).hasGrantStake();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.AuthGrantOrBuilder
                public StakeAuthorization getGrantStake() {
                    return ((AuthGrant) this.instance).getGrantStake();
                }

                public Builder setGrantStake(StakeAuthorization value) {
                    copyOnWrite();
                    ((AuthGrant) this.instance).setGrantStake(value);
                    return this;
                }

                public Builder setGrantStake(StakeAuthorization.Builder builderForValue) {
                    copyOnWrite();
                    ((AuthGrant) this.instance).setGrantStake(builderForValue.build());
                    return this;
                }

                public Builder mergeGrantStake(StakeAuthorization value) {
                    copyOnWrite();
                    ((AuthGrant) this.instance).mergeGrantStake(value);
                    return this;
                }

                public Builder clearGrantStake() {
                    copyOnWrite();
                    ((AuthGrant) this.instance).clearGrantStake();
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.AuthGrantOrBuilder
                public long getExpiration() {
                    return ((AuthGrant) this.instance).getExpiration();
                }

                public Builder setExpiration(long value) {
                    copyOnWrite();
                    ((AuthGrant) this.instance).setExpiration(value);
                    return this;
                }

                public Builder clearExpiration() {
                    copyOnWrite();
                    ((AuthGrant) this.instance).clearExpiration();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new AuthGrant();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003<\u0000\u0004\u0002", new Object[]{"grantType_", "grantTypeCase_", "granter_", "grantee_", StakeAuthorization.class, "expiration_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<AuthGrant> parser = PARSER;
                        if (parser == null) {
                            synchronized (AuthGrant.class) {
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
                AuthGrant authGrant = new AuthGrant();
                DEFAULT_INSTANCE = authGrant;
                GeneratedMessageLite.registerDefaultInstance(AuthGrant.class, authGrant);
            }

            public static AuthGrant getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<AuthGrant> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class AuthRevoke extends GeneratedMessageLite<AuthRevoke, Builder> implements AuthRevokeOrBuilder {
            private static final AuthRevoke DEFAULT_INSTANCE;
            public static final int GRANTEE_FIELD_NUMBER = 2;
            public static final int GRANTER_FIELD_NUMBER = 1;
            public static final int MSG_TYPE_URL_FIELD_NUMBER = 3;
            private static volatile Parser<AuthRevoke> PARSER;
            private String granter_ = "";
            private String grantee_ = "";
            private String msgTypeUrl_ = "";

            private AuthRevoke() {
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.AuthRevokeOrBuilder
            public String getGranter() {
                return this.granter_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.AuthRevokeOrBuilder
            public ByteString getGranterBytes() {
                return ByteString.copyFromUtf8(this.granter_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setGranter(String value) {
                value.getClass();
                this.granter_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearGranter() {
                this.granter_ = getDefaultInstance().getGranter();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setGranterBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.granter_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.AuthRevokeOrBuilder
            public String getGrantee() {
                return this.grantee_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.AuthRevokeOrBuilder
            public ByteString getGranteeBytes() {
                return ByteString.copyFromUtf8(this.grantee_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setGrantee(String value) {
                value.getClass();
                this.grantee_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearGrantee() {
                this.grantee_ = getDefaultInstance().getGrantee();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setGranteeBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.grantee_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.AuthRevokeOrBuilder
            public String getMsgTypeUrl() {
                return this.msgTypeUrl_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.AuthRevokeOrBuilder
            public ByteString getMsgTypeUrlBytes() {
                return ByteString.copyFromUtf8(this.msgTypeUrl_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setMsgTypeUrl(String value) {
                value.getClass();
                this.msgTypeUrl_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearMsgTypeUrl() {
                this.msgTypeUrl_ = getDefaultInstance().getMsgTypeUrl();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setMsgTypeUrlBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.msgTypeUrl_ = value.toStringUtf8();
            }

            public static AuthRevoke parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (AuthRevoke) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static AuthRevoke parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (AuthRevoke) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static AuthRevoke parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (AuthRevoke) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static AuthRevoke parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (AuthRevoke) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static AuthRevoke parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (AuthRevoke) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static AuthRevoke parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (AuthRevoke) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static AuthRevoke parseFrom(InputStream input) throws IOException {
                return (AuthRevoke) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static AuthRevoke parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (AuthRevoke) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static AuthRevoke parseDelimitedFrom(InputStream input) throws IOException {
                return (AuthRevoke) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static AuthRevoke parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (AuthRevoke) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static AuthRevoke parseFrom(CodedInputStream input) throws IOException {
                return (AuthRevoke) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static AuthRevoke parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (AuthRevoke) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(AuthRevoke prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<AuthRevoke, Builder> implements AuthRevokeOrBuilder {
                /* synthetic */ Builder(C67091 c67091) {
                    this();
                }

                private Builder() {
                    super(AuthRevoke.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.AuthRevokeOrBuilder
                public String getGranter() {
                    return ((AuthRevoke) this.instance).getGranter();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.AuthRevokeOrBuilder
                public ByteString getGranterBytes() {
                    return ((AuthRevoke) this.instance).getGranterBytes();
                }

                public Builder setGranter(String value) {
                    copyOnWrite();
                    ((AuthRevoke) this.instance).setGranter(value);
                    return this;
                }

                public Builder clearGranter() {
                    copyOnWrite();
                    ((AuthRevoke) this.instance).clearGranter();
                    return this;
                }

                public Builder setGranterBytes(ByteString value) {
                    copyOnWrite();
                    ((AuthRevoke) this.instance).setGranterBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.AuthRevokeOrBuilder
                public String getGrantee() {
                    return ((AuthRevoke) this.instance).getGrantee();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.AuthRevokeOrBuilder
                public ByteString getGranteeBytes() {
                    return ((AuthRevoke) this.instance).getGranteeBytes();
                }

                public Builder setGrantee(String value) {
                    copyOnWrite();
                    ((AuthRevoke) this.instance).setGrantee(value);
                    return this;
                }

                public Builder clearGrantee() {
                    copyOnWrite();
                    ((AuthRevoke) this.instance).clearGrantee();
                    return this;
                }

                public Builder setGranteeBytes(ByteString value) {
                    copyOnWrite();
                    ((AuthRevoke) this.instance).setGranteeBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.AuthRevokeOrBuilder
                public String getMsgTypeUrl() {
                    return ((AuthRevoke) this.instance).getMsgTypeUrl();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.AuthRevokeOrBuilder
                public ByteString getMsgTypeUrlBytes() {
                    return ((AuthRevoke) this.instance).getMsgTypeUrlBytes();
                }

                public Builder setMsgTypeUrl(String value) {
                    copyOnWrite();
                    ((AuthRevoke) this.instance).setMsgTypeUrl(value);
                    return this;
                }

                public Builder clearMsgTypeUrl() {
                    copyOnWrite();
                    ((AuthRevoke) this.instance).clearMsgTypeUrl();
                    return this;
                }

                public Builder setMsgTypeUrlBytes(ByteString value) {
                    copyOnWrite();
                    ((AuthRevoke) this.instance).setMsgTypeUrlBytes(value);
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new AuthRevoke();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ", new Object[]{"granter_", "grantee_", "msgTypeUrl_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<AuthRevoke> parser = PARSER;
                        if (parser == null) {
                            synchronized (AuthRevoke.class) {
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
                AuthRevoke authRevoke = new AuthRevoke();
                DEFAULT_INSTANCE = authRevoke;
                GeneratedMessageLite.registerDefaultInstance(AuthRevoke.class, authRevoke);
            }

            public static AuthRevoke getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<AuthRevoke> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class MsgVote extends GeneratedMessageLite<MsgVote, Builder> implements MsgVoteOrBuilder {
            private static final MsgVote DEFAULT_INSTANCE;
            public static final int OPTION_FIELD_NUMBER = 3;
            private static volatile Parser<MsgVote> PARSER = null;
            public static final int PROPOSAL_ID_FIELD_NUMBER = 1;
            public static final int VOTER_FIELD_NUMBER = 2;
            private int option_;
            private long proposalId_;
            private String voter_ = "";

            private MsgVote() {
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.MsgVoteOrBuilder
            public long getProposalId() {
                return this.proposalId_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setProposalId(long value) {
                this.proposalId_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearProposalId() {
                this.proposalId_ = 0L;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.MsgVoteOrBuilder
            public String getVoter() {
                return this.voter_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.MsgVoteOrBuilder
            public ByteString getVoterBytes() {
                return ByteString.copyFromUtf8(this.voter_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setVoter(String value) {
                value.getClass();
                this.voter_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearVoter() {
                this.voter_ = getDefaultInstance().getVoter();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setVoterBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.voter_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.MsgVoteOrBuilder
            public int getOptionValue() {
                return this.option_;
            }

            @Override // wallet.core.jni.proto.Cosmos.Message.MsgVoteOrBuilder
            public VoteOption getOption() {
                VoteOption forNumber = VoteOption.forNumber(this.option_);
                return forNumber == null ? VoteOption.UNRECOGNIZED : forNumber;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setOptionValue(int value) {
                this.option_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setOption(VoteOption value) {
                this.option_ = value.getNumber();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearOption() {
                this.option_ = 0;
            }

            public static MsgVote parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (MsgVote) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static MsgVote parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (MsgVote) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static MsgVote parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (MsgVote) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static MsgVote parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (MsgVote) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static MsgVote parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (MsgVote) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static MsgVote parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (MsgVote) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static MsgVote parseFrom(InputStream input) throws IOException {
                return (MsgVote) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static MsgVote parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (MsgVote) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static MsgVote parseDelimitedFrom(InputStream input) throws IOException {
                return (MsgVote) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static MsgVote parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (MsgVote) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static MsgVote parseFrom(CodedInputStream input) throws IOException {
                return (MsgVote) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static MsgVote parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (MsgVote) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(MsgVote prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<MsgVote, Builder> implements MsgVoteOrBuilder {
                /* synthetic */ Builder(C67091 c67091) {
                    this();
                }

                private Builder() {
                    super(MsgVote.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.MsgVoteOrBuilder
                public long getProposalId() {
                    return ((MsgVote) this.instance).getProposalId();
                }

                public Builder setProposalId(long value) {
                    copyOnWrite();
                    ((MsgVote) this.instance).setProposalId(value);
                    return this;
                }

                public Builder clearProposalId() {
                    copyOnWrite();
                    ((MsgVote) this.instance).clearProposalId();
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.MsgVoteOrBuilder
                public String getVoter() {
                    return ((MsgVote) this.instance).getVoter();
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.MsgVoteOrBuilder
                public ByteString getVoterBytes() {
                    return ((MsgVote) this.instance).getVoterBytes();
                }

                public Builder setVoter(String value) {
                    copyOnWrite();
                    ((MsgVote) this.instance).setVoter(value);
                    return this;
                }

                public Builder clearVoter() {
                    copyOnWrite();
                    ((MsgVote) this.instance).clearVoter();
                    return this;
                }

                public Builder setVoterBytes(ByteString value) {
                    copyOnWrite();
                    ((MsgVote) this.instance).setVoterBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.MsgVoteOrBuilder
                public int getOptionValue() {
                    return ((MsgVote) this.instance).getOptionValue();
                }

                public Builder setOptionValue(int value) {
                    copyOnWrite();
                    ((MsgVote) this.instance).setOptionValue(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Cosmos.Message.MsgVoteOrBuilder
                public VoteOption getOption() {
                    return ((MsgVote) this.instance).getOption();
                }

                public Builder setOption(VoteOption value) {
                    copyOnWrite();
                    ((MsgVote) this.instance).setOption(value);
                    return this;
                }

                public Builder clearOption() {
                    copyOnWrite();
                    ((MsgVote) this.instance).clearOption();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new MsgVote();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0003\u0002Ȉ\u0003\f", new Object[]{"proposalId_", "voter_", "option_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<MsgVote> parser = PARSER;
                        if (parser == null) {
                            synchronized (MsgVote.class) {
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
                MsgVote msgVote = new MsgVote();
                DEFAULT_INSTANCE = msgVote;
                GeneratedMessageLite.registerDefaultInstance(MsgVote.class, msgVote);
            }

            public static MsgVote getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<MsgVote> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public enum MessageOneofCase {
            SEND_COINS_MESSAGE(1),
            TRANSFER_TOKENS_MESSAGE(2),
            STAKE_MESSAGE(3),
            UNSTAKE_MESSAGE(4),
            RESTAKE_MESSAGE(5),
            WITHDRAW_STAKE_REWARD_MESSAGE(6),
            RAW_JSON_MESSAGE(7),
            WASM_TERRA_EXECUTE_CONTRACT_TRANSFER_MESSAGE(8),
            WASM_TERRA_EXECUTE_CONTRACT_SEND_MESSAGE(9),
            THORCHAIN_SEND_MESSAGE(10),
            WASM_TERRA_EXECUTE_CONTRACT_GENERIC(11),
            WASM_EXECUTE_CONTRACT_TRANSFER_MESSAGE(12),
            WASM_EXECUTE_CONTRACT_SEND_MESSAGE(13),
            WASM_EXECUTE_CONTRACT_GENERIC(14),
            SIGN_DIRECT_MESSAGE(15),
            AUTH_GRANT(16),
            AUTH_REVOKE(17),
            MSG_VOTE(18),
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
                        return SEND_COINS_MESSAGE;
                    case 2:
                        return TRANSFER_TOKENS_MESSAGE;
                    case 3:
                        return STAKE_MESSAGE;
                    case 4:
                        return UNSTAKE_MESSAGE;
                    case 5:
                        return RESTAKE_MESSAGE;
                    case 6:
                        return WITHDRAW_STAKE_REWARD_MESSAGE;
                    case 7:
                        return RAW_JSON_MESSAGE;
                    case 8:
                        return WASM_TERRA_EXECUTE_CONTRACT_TRANSFER_MESSAGE;
                    case 9:
                        return WASM_TERRA_EXECUTE_CONTRACT_SEND_MESSAGE;
                    case 10:
                        return THORCHAIN_SEND_MESSAGE;
                    case 11:
                        return WASM_TERRA_EXECUTE_CONTRACT_GENERIC;
                    case 12:
                        return WASM_EXECUTE_CONTRACT_TRANSFER_MESSAGE;
                    case 13:
                        return WASM_EXECUTE_CONTRACT_SEND_MESSAGE;
                    case 14:
                        return WASM_EXECUTE_CONTRACT_GENERIC;
                    case 15:
                        return SIGN_DIRECT_MESSAGE;
                    case 16:
                        return AUTH_GRANT;
                    case 17:
                        return AUTH_REVOKE;
                    case 18:
                        return MSG_VOTE;
                    default:
                        return null;
                }
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public MessageOneofCase getMessageOneofCase() {
            return MessageOneofCase.forNumber(this.messageOneofCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMessageOneof() {
            this.messageOneofCase_ = 0;
            this.messageOneof_ = null;
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public boolean hasSendCoinsMessage() {
            return this.messageOneofCase_ == 1;
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public Send getSendCoinsMessage() {
            if (this.messageOneofCase_ == 1) {
                return (Send) this.messageOneof_;
            }
            return Send.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSendCoinsMessage(Send value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeSendCoinsMessage(Send value) {
            value.getClass();
            if (this.messageOneofCase_ == 1 && this.messageOneof_ != Send.getDefaultInstance()) {
                this.messageOneof_ = Send.newBuilder((Send) this.messageOneof_).mergeFrom((Send.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSendCoinsMessage() {
            if (this.messageOneofCase_ == 1) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public boolean hasTransferTokensMessage() {
            return this.messageOneofCase_ == 2;
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public Transfer getTransferTokensMessage() {
            if (this.messageOneofCase_ == 2) {
                return (Transfer) this.messageOneof_;
            }
            return Transfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransferTokensMessage(Transfer value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransferTokensMessage(Transfer value) {
            value.getClass();
            if (this.messageOneofCase_ == 2 && this.messageOneof_ != Transfer.getDefaultInstance()) {
                this.messageOneof_ = Transfer.newBuilder((Transfer) this.messageOneof_).mergeFrom((Transfer.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransferTokensMessage() {
            if (this.messageOneofCase_ == 2) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public boolean hasStakeMessage() {
            return this.messageOneofCase_ == 3;
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public Delegate getStakeMessage() {
            if (this.messageOneofCase_ == 3) {
                return (Delegate) this.messageOneof_;
            }
            return Delegate.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeMessage(Delegate value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeStakeMessage(Delegate value) {
            value.getClass();
            if (this.messageOneofCase_ == 3 && this.messageOneof_ != Delegate.getDefaultInstance()) {
                this.messageOneof_ = Delegate.newBuilder((Delegate) this.messageOneof_).mergeFrom((Delegate.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeMessage() {
            if (this.messageOneofCase_ == 3) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public boolean hasUnstakeMessage() {
            return this.messageOneofCase_ == 4;
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public Undelegate getUnstakeMessage() {
            if (this.messageOneofCase_ == 4) {
                return (Undelegate) this.messageOneof_;
            }
            return Undelegate.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUnstakeMessage(Undelegate value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeUnstakeMessage(Undelegate value) {
            value.getClass();
            if (this.messageOneofCase_ == 4 && this.messageOneof_ != Undelegate.getDefaultInstance()) {
                this.messageOneof_ = Undelegate.newBuilder((Undelegate) this.messageOneof_).mergeFrom((Undelegate.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUnstakeMessage() {
            if (this.messageOneofCase_ == 4) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public boolean hasRestakeMessage() {
            return this.messageOneofCase_ == 5;
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public BeginRedelegate getRestakeMessage() {
            if (this.messageOneofCase_ == 5) {
                return (BeginRedelegate) this.messageOneof_;
            }
            return BeginRedelegate.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRestakeMessage(BeginRedelegate value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeRestakeMessage(BeginRedelegate value) {
            value.getClass();
            if (this.messageOneofCase_ == 5 && this.messageOneof_ != BeginRedelegate.getDefaultInstance()) {
                this.messageOneof_ = BeginRedelegate.newBuilder((BeginRedelegate) this.messageOneof_).mergeFrom((BeginRedelegate.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRestakeMessage() {
            if (this.messageOneofCase_ == 5) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public boolean hasWithdrawStakeRewardMessage() {
            return this.messageOneofCase_ == 6;
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public WithdrawDelegationReward getWithdrawStakeRewardMessage() {
            if (this.messageOneofCase_ == 6) {
                return (WithdrawDelegationReward) this.messageOneof_;
            }
            return WithdrawDelegationReward.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWithdrawStakeRewardMessage(WithdrawDelegationReward value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeWithdrawStakeRewardMessage(WithdrawDelegationReward value) {
            value.getClass();
            if (this.messageOneofCase_ == 6 && this.messageOneof_ != WithdrawDelegationReward.getDefaultInstance()) {
                this.messageOneof_ = WithdrawDelegationReward.newBuilder((WithdrawDelegationReward) this.messageOneof_).mergeFrom((WithdrawDelegationReward.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearWithdrawStakeRewardMessage() {
            if (this.messageOneofCase_ == 6) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public boolean hasRawJsonMessage() {
            return this.messageOneofCase_ == 7;
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public RawJSON getRawJsonMessage() {
            if (this.messageOneofCase_ == 7) {
                return (RawJSON) this.messageOneof_;
            }
            return RawJSON.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRawJsonMessage(RawJSON value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 7;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeRawJsonMessage(RawJSON value) {
            value.getClass();
            if (this.messageOneofCase_ == 7 && this.messageOneof_ != RawJSON.getDefaultInstance()) {
                this.messageOneof_ = RawJSON.newBuilder((RawJSON) this.messageOneof_).mergeFrom((RawJSON.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 7;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRawJsonMessage() {
            if (this.messageOneofCase_ == 7) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public boolean hasWasmTerraExecuteContractTransferMessage() {
            return this.messageOneofCase_ == 8;
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public WasmTerraExecuteContractTransfer getWasmTerraExecuteContractTransferMessage() {
            if (this.messageOneofCase_ == 8) {
                return (WasmTerraExecuteContractTransfer) this.messageOneof_;
            }
            return WasmTerraExecuteContractTransfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWasmTerraExecuteContractTransferMessage(WasmTerraExecuteContractTransfer value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeWasmTerraExecuteContractTransferMessage(WasmTerraExecuteContractTransfer value) {
            value.getClass();
            if (this.messageOneofCase_ == 8 && this.messageOneof_ != WasmTerraExecuteContractTransfer.getDefaultInstance()) {
                this.messageOneof_ = WasmTerraExecuteContractTransfer.newBuilder((WasmTerraExecuteContractTransfer) this.messageOneof_).mergeFrom((WasmTerraExecuteContractTransfer.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearWasmTerraExecuteContractTransferMessage() {
            if (this.messageOneofCase_ == 8) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public boolean hasWasmTerraExecuteContractSendMessage() {
            return this.messageOneofCase_ == 9;
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public WasmTerraExecuteContractSend getWasmTerraExecuteContractSendMessage() {
            if (this.messageOneofCase_ == 9) {
                return (WasmTerraExecuteContractSend) this.messageOneof_;
            }
            return WasmTerraExecuteContractSend.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWasmTerraExecuteContractSendMessage(WasmTerraExecuteContractSend value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeWasmTerraExecuteContractSendMessage(WasmTerraExecuteContractSend value) {
            value.getClass();
            if (this.messageOneofCase_ == 9 && this.messageOneof_ != WasmTerraExecuteContractSend.getDefaultInstance()) {
                this.messageOneof_ = WasmTerraExecuteContractSend.newBuilder((WasmTerraExecuteContractSend) this.messageOneof_).mergeFrom((WasmTerraExecuteContractSend.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearWasmTerraExecuteContractSendMessage() {
            if (this.messageOneofCase_ == 9) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public boolean hasThorchainSendMessage() {
            return this.messageOneofCase_ == 10;
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public THORChainSend getThorchainSendMessage() {
            if (this.messageOneofCase_ == 10) {
                return (THORChainSend) this.messageOneof_;
            }
            return THORChainSend.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setThorchainSendMessage(THORChainSend value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeThorchainSendMessage(THORChainSend value) {
            value.getClass();
            if (this.messageOneofCase_ == 10 && this.messageOneof_ != THORChainSend.getDefaultInstance()) {
                this.messageOneof_ = THORChainSend.newBuilder((THORChainSend) this.messageOneof_).mergeFrom((THORChainSend.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearThorchainSendMessage() {
            if (this.messageOneofCase_ == 10) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public boolean hasWasmTerraExecuteContractGeneric() {
            return this.messageOneofCase_ == 11;
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public WasmTerraExecuteContractGeneric getWasmTerraExecuteContractGeneric() {
            if (this.messageOneofCase_ == 11) {
                return (WasmTerraExecuteContractGeneric) this.messageOneof_;
            }
            return WasmTerraExecuteContractGeneric.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWasmTerraExecuteContractGeneric(WasmTerraExecuteContractGeneric value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeWasmTerraExecuteContractGeneric(WasmTerraExecuteContractGeneric value) {
            value.getClass();
            if (this.messageOneofCase_ == 11 && this.messageOneof_ != WasmTerraExecuteContractGeneric.getDefaultInstance()) {
                this.messageOneof_ = WasmTerraExecuteContractGeneric.newBuilder((WasmTerraExecuteContractGeneric) this.messageOneof_).mergeFrom((WasmTerraExecuteContractGeneric.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearWasmTerraExecuteContractGeneric() {
            if (this.messageOneofCase_ == 11) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public boolean hasWasmExecuteContractTransferMessage() {
            return this.messageOneofCase_ == 12;
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public WasmExecuteContractTransfer getWasmExecuteContractTransferMessage() {
            if (this.messageOneofCase_ == 12) {
                return (WasmExecuteContractTransfer) this.messageOneof_;
            }
            return WasmExecuteContractTransfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWasmExecuteContractTransferMessage(WasmExecuteContractTransfer value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeWasmExecuteContractTransferMessage(WasmExecuteContractTransfer value) {
            value.getClass();
            if (this.messageOneofCase_ == 12 && this.messageOneof_ != WasmExecuteContractTransfer.getDefaultInstance()) {
                this.messageOneof_ = WasmExecuteContractTransfer.newBuilder((WasmExecuteContractTransfer) this.messageOneof_).mergeFrom((WasmExecuteContractTransfer.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearWasmExecuteContractTransferMessage() {
            if (this.messageOneofCase_ == 12) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public boolean hasWasmExecuteContractSendMessage() {
            return this.messageOneofCase_ == 13;
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public WasmExecuteContractSend getWasmExecuteContractSendMessage() {
            if (this.messageOneofCase_ == 13) {
                return (WasmExecuteContractSend) this.messageOneof_;
            }
            return WasmExecuteContractSend.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWasmExecuteContractSendMessage(WasmExecuteContractSend value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 13;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeWasmExecuteContractSendMessage(WasmExecuteContractSend value) {
            value.getClass();
            if (this.messageOneofCase_ == 13 && this.messageOneof_ != WasmExecuteContractSend.getDefaultInstance()) {
                this.messageOneof_ = WasmExecuteContractSend.newBuilder((WasmExecuteContractSend) this.messageOneof_).mergeFrom((WasmExecuteContractSend.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 13;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearWasmExecuteContractSendMessage() {
            if (this.messageOneofCase_ == 13) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public boolean hasWasmExecuteContractGeneric() {
            return this.messageOneofCase_ == 14;
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public WasmExecuteContractGeneric getWasmExecuteContractGeneric() {
            if (this.messageOneofCase_ == 14) {
                return (WasmExecuteContractGeneric) this.messageOneof_;
            }
            return WasmExecuteContractGeneric.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWasmExecuteContractGeneric(WasmExecuteContractGeneric value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 14;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeWasmExecuteContractGeneric(WasmExecuteContractGeneric value) {
            value.getClass();
            if (this.messageOneofCase_ == 14 && this.messageOneof_ != WasmExecuteContractGeneric.getDefaultInstance()) {
                this.messageOneof_ = WasmExecuteContractGeneric.newBuilder((WasmExecuteContractGeneric) this.messageOneof_).mergeFrom((WasmExecuteContractGeneric.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 14;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearWasmExecuteContractGeneric() {
            if (this.messageOneofCase_ == 14) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public boolean hasSignDirectMessage() {
            return this.messageOneofCase_ == 15;
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public SignDirect getSignDirectMessage() {
            if (this.messageOneofCase_ == 15) {
                return (SignDirect) this.messageOneof_;
            }
            return SignDirect.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSignDirectMessage(SignDirect value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 15;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeSignDirectMessage(SignDirect value) {
            value.getClass();
            if (this.messageOneofCase_ == 15 && this.messageOneof_ != SignDirect.getDefaultInstance()) {
                this.messageOneof_ = SignDirect.newBuilder((SignDirect) this.messageOneof_).mergeFrom((SignDirect.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 15;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSignDirectMessage() {
            if (this.messageOneofCase_ == 15) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public boolean hasAuthGrant() {
            return this.messageOneofCase_ == 16;
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public AuthGrant getAuthGrant() {
            if (this.messageOneofCase_ == 16) {
                return (AuthGrant) this.messageOneof_;
            }
            return AuthGrant.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAuthGrant(AuthGrant value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeAuthGrant(AuthGrant value) {
            value.getClass();
            if (this.messageOneofCase_ == 16 && this.messageOneof_ != AuthGrant.getDefaultInstance()) {
                this.messageOneof_ = AuthGrant.newBuilder((AuthGrant) this.messageOneof_).mergeFrom((AuthGrant.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAuthGrant() {
            if (this.messageOneofCase_ == 16) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public boolean hasAuthRevoke() {
            return this.messageOneofCase_ == 17;
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public AuthRevoke getAuthRevoke() {
            if (this.messageOneofCase_ == 17) {
                return (AuthRevoke) this.messageOneof_;
            }
            return AuthRevoke.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAuthRevoke(AuthRevoke value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 17;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeAuthRevoke(AuthRevoke value) {
            value.getClass();
            if (this.messageOneofCase_ == 17 && this.messageOneof_ != AuthRevoke.getDefaultInstance()) {
                this.messageOneof_ = AuthRevoke.newBuilder((AuthRevoke) this.messageOneof_).mergeFrom((AuthRevoke.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 17;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAuthRevoke() {
            if (this.messageOneofCase_ == 17) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public boolean hasMsgVote() {
            return this.messageOneofCase_ == 18;
        }

        @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
        public MsgVote getMsgVote() {
            if (this.messageOneofCase_ == 18) {
                return (MsgVote) this.messageOneof_;
            }
            return MsgVote.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMsgVote(MsgVote value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 18;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeMsgVote(MsgVote value) {
            value.getClass();
            if (this.messageOneofCase_ == 18 && this.messageOneof_ != MsgVote.getDefaultInstance()) {
                this.messageOneof_ = MsgVote.newBuilder((MsgVote) this.messageOneof_).mergeFrom((MsgVote.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 18;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMsgVote() {
            if (this.messageOneofCase_ == 18) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        public static Message parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Message) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Message parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Message) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Message parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Message) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Message parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Message) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Message parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Message) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Message parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Message) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Message parseFrom(InputStream input) throws IOException {
            return (Message) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Message parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Message) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Message parseDelimitedFrom(InputStream input) throws IOException {
            return (Message) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Message parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Message) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Message parseFrom(CodedInputStream input) throws IOException {
            return (Message) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Message parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Message) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Message prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Message, Builder> implements MessageOrBuilder {
            /* synthetic */ Builder(C67091 c67091) {
                this();
            }

            private Builder() {
                super(Message.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public MessageOneofCase getMessageOneofCase() {
                return ((Message) this.instance).getMessageOneofCase();
            }

            public Builder clearMessageOneof() {
                copyOnWrite();
                ((Message) this.instance).clearMessageOneof();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public boolean hasSendCoinsMessage() {
                return ((Message) this.instance).hasSendCoinsMessage();
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public Send getSendCoinsMessage() {
                return ((Message) this.instance).getSendCoinsMessage();
            }

            public Builder setSendCoinsMessage(Send value) {
                copyOnWrite();
                ((Message) this.instance).setSendCoinsMessage(value);
                return this;
            }

            public Builder setSendCoinsMessage(Send.Builder builderForValue) {
                copyOnWrite();
                ((Message) this.instance).setSendCoinsMessage(builderForValue.build());
                return this;
            }

            public Builder mergeSendCoinsMessage(Send value) {
                copyOnWrite();
                ((Message) this.instance).mergeSendCoinsMessage(value);
                return this;
            }

            public Builder clearSendCoinsMessage() {
                copyOnWrite();
                ((Message) this.instance).clearSendCoinsMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public boolean hasTransferTokensMessage() {
                return ((Message) this.instance).hasTransferTokensMessage();
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public Transfer getTransferTokensMessage() {
                return ((Message) this.instance).getTransferTokensMessage();
            }

            public Builder setTransferTokensMessage(Transfer value) {
                copyOnWrite();
                ((Message) this.instance).setTransferTokensMessage(value);
                return this;
            }

            public Builder setTransferTokensMessage(Transfer.Builder builderForValue) {
                copyOnWrite();
                ((Message) this.instance).setTransferTokensMessage(builderForValue.build());
                return this;
            }

            public Builder mergeTransferTokensMessage(Transfer value) {
                copyOnWrite();
                ((Message) this.instance).mergeTransferTokensMessage(value);
                return this;
            }

            public Builder clearTransferTokensMessage() {
                copyOnWrite();
                ((Message) this.instance).clearTransferTokensMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public boolean hasStakeMessage() {
                return ((Message) this.instance).hasStakeMessage();
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public Delegate getStakeMessage() {
                return ((Message) this.instance).getStakeMessage();
            }

            public Builder setStakeMessage(Delegate value) {
                copyOnWrite();
                ((Message) this.instance).setStakeMessage(value);
                return this;
            }

            public Builder setStakeMessage(Delegate.Builder builderForValue) {
                copyOnWrite();
                ((Message) this.instance).setStakeMessage(builderForValue.build());
                return this;
            }

            public Builder mergeStakeMessage(Delegate value) {
                copyOnWrite();
                ((Message) this.instance).mergeStakeMessage(value);
                return this;
            }

            public Builder clearStakeMessage() {
                copyOnWrite();
                ((Message) this.instance).clearStakeMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public boolean hasUnstakeMessage() {
                return ((Message) this.instance).hasUnstakeMessage();
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public Undelegate getUnstakeMessage() {
                return ((Message) this.instance).getUnstakeMessage();
            }

            public Builder setUnstakeMessage(Undelegate value) {
                copyOnWrite();
                ((Message) this.instance).setUnstakeMessage(value);
                return this;
            }

            public Builder setUnstakeMessage(Undelegate.Builder builderForValue) {
                copyOnWrite();
                ((Message) this.instance).setUnstakeMessage(builderForValue.build());
                return this;
            }

            public Builder mergeUnstakeMessage(Undelegate value) {
                copyOnWrite();
                ((Message) this.instance).mergeUnstakeMessage(value);
                return this;
            }

            public Builder clearUnstakeMessage() {
                copyOnWrite();
                ((Message) this.instance).clearUnstakeMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public boolean hasRestakeMessage() {
                return ((Message) this.instance).hasRestakeMessage();
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public BeginRedelegate getRestakeMessage() {
                return ((Message) this.instance).getRestakeMessage();
            }

            public Builder setRestakeMessage(BeginRedelegate value) {
                copyOnWrite();
                ((Message) this.instance).setRestakeMessage(value);
                return this;
            }

            public Builder setRestakeMessage(BeginRedelegate.Builder builderForValue) {
                copyOnWrite();
                ((Message) this.instance).setRestakeMessage(builderForValue.build());
                return this;
            }

            public Builder mergeRestakeMessage(BeginRedelegate value) {
                copyOnWrite();
                ((Message) this.instance).mergeRestakeMessage(value);
                return this;
            }

            public Builder clearRestakeMessage() {
                copyOnWrite();
                ((Message) this.instance).clearRestakeMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public boolean hasWithdrawStakeRewardMessage() {
                return ((Message) this.instance).hasWithdrawStakeRewardMessage();
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public WithdrawDelegationReward getWithdrawStakeRewardMessage() {
                return ((Message) this.instance).getWithdrawStakeRewardMessage();
            }

            public Builder setWithdrawStakeRewardMessage(WithdrawDelegationReward value) {
                copyOnWrite();
                ((Message) this.instance).setWithdrawStakeRewardMessage(value);
                return this;
            }

            public Builder setWithdrawStakeRewardMessage(WithdrawDelegationReward.Builder builderForValue) {
                copyOnWrite();
                ((Message) this.instance).setWithdrawStakeRewardMessage(builderForValue.build());
                return this;
            }

            public Builder mergeWithdrawStakeRewardMessage(WithdrawDelegationReward value) {
                copyOnWrite();
                ((Message) this.instance).mergeWithdrawStakeRewardMessage(value);
                return this;
            }

            public Builder clearWithdrawStakeRewardMessage() {
                copyOnWrite();
                ((Message) this.instance).clearWithdrawStakeRewardMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public boolean hasRawJsonMessage() {
                return ((Message) this.instance).hasRawJsonMessage();
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public RawJSON getRawJsonMessage() {
                return ((Message) this.instance).getRawJsonMessage();
            }

            public Builder setRawJsonMessage(RawJSON value) {
                copyOnWrite();
                ((Message) this.instance).setRawJsonMessage(value);
                return this;
            }

            public Builder setRawJsonMessage(RawJSON.Builder builderForValue) {
                copyOnWrite();
                ((Message) this.instance).setRawJsonMessage(builderForValue.build());
                return this;
            }

            public Builder mergeRawJsonMessage(RawJSON value) {
                copyOnWrite();
                ((Message) this.instance).mergeRawJsonMessage(value);
                return this;
            }

            public Builder clearRawJsonMessage() {
                copyOnWrite();
                ((Message) this.instance).clearRawJsonMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public boolean hasWasmTerraExecuteContractTransferMessage() {
                return ((Message) this.instance).hasWasmTerraExecuteContractTransferMessage();
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public WasmTerraExecuteContractTransfer getWasmTerraExecuteContractTransferMessage() {
                return ((Message) this.instance).getWasmTerraExecuteContractTransferMessage();
            }

            public Builder setWasmTerraExecuteContractTransferMessage(WasmTerraExecuteContractTransfer value) {
                copyOnWrite();
                ((Message) this.instance).setWasmTerraExecuteContractTransferMessage(value);
                return this;
            }

            public Builder setWasmTerraExecuteContractTransferMessage(WasmTerraExecuteContractTransfer.Builder builderForValue) {
                copyOnWrite();
                ((Message) this.instance).setWasmTerraExecuteContractTransferMessage(builderForValue.build());
                return this;
            }

            public Builder mergeWasmTerraExecuteContractTransferMessage(WasmTerraExecuteContractTransfer value) {
                copyOnWrite();
                ((Message) this.instance).mergeWasmTerraExecuteContractTransferMessage(value);
                return this;
            }

            public Builder clearWasmTerraExecuteContractTransferMessage() {
                copyOnWrite();
                ((Message) this.instance).clearWasmTerraExecuteContractTransferMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public boolean hasWasmTerraExecuteContractSendMessage() {
                return ((Message) this.instance).hasWasmTerraExecuteContractSendMessage();
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public WasmTerraExecuteContractSend getWasmTerraExecuteContractSendMessage() {
                return ((Message) this.instance).getWasmTerraExecuteContractSendMessage();
            }

            public Builder setWasmTerraExecuteContractSendMessage(WasmTerraExecuteContractSend value) {
                copyOnWrite();
                ((Message) this.instance).setWasmTerraExecuteContractSendMessage(value);
                return this;
            }

            public Builder setWasmTerraExecuteContractSendMessage(WasmTerraExecuteContractSend.Builder builderForValue) {
                copyOnWrite();
                ((Message) this.instance).setWasmTerraExecuteContractSendMessage(builderForValue.build());
                return this;
            }

            public Builder mergeWasmTerraExecuteContractSendMessage(WasmTerraExecuteContractSend value) {
                copyOnWrite();
                ((Message) this.instance).mergeWasmTerraExecuteContractSendMessage(value);
                return this;
            }

            public Builder clearWasmTerraExecuteContractSendMessage() {
                copyOnWrite();
                ((Message) this.instance).clearWasmTerraExecuteContractSendMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public boolean hasThorchainSendMessage() {
                return ((Message) this.instance).hasThorchainSendMessage();
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public THORChainSend getThorchainSendMessage() {
                return ((Message) this.instance).getThorchainSendMessage();
            }

            public Builder setThorchainSendMessage(THORChainSend value) {
                copyOnWrite();
                ((Message) this.instance).setThorchainSendMessage(value);
                return this;
            }

            public Builder setThorchainSendMessage(THORChainSend.Builder builderForValue) {
                copyOnWrite();
                ((Message) this.instance).setThorchainSendMessage(builderForValue.build());
                return this;
            }

            public Builder mergeThorchainSendMessage(THORChainSend value) {
                copyOnWrite();
                ((Message) this.instance).mergeThorchainSendMessage(value);
                return this;
            }

            public Builder clearThorchainSendMessage() {
                copyOnWrite();
                ((Message) this.instance).clearThorchainSendMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public boolean hasWasmTerraExecuteContractGeneric() {
                return ((Message) this.instance).hasWasmTerraExecuteContractGeneric();
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public WasmTerraExecuteContractGeneric getWasmTerraExecuteContractGeneric() {
                return ((Message) this.instance).getWasmTerraExecuteContractGeneric();
            }

            public Builder setWasmTerraExecuteContractGeneric(WasmTerraExecuteContractGeneric value) {
                copyOnWrite();
                ((Message) this.instance).setWasmTerraExecuteContractGeneric(value);
                return this;
            }

            public Builder setWasmTerraExecuteContractGeneric(WasmTerraExecuteContractGeneric.Builder builderForValue) {
                copyOnWrite();
                ((Message) this.instance).setWasmTerraExecuteContractGeneric(builderForValue.build());
                return this;
            }

            public Builder mergeWasmTerraExecuteContractGeneric(WasmTerraExecuteContractGeneric value) {
                copyOnWrite();
                ((Message) this.instance).mergeWasmTerraExecuteContractGeneric(value);
                return this;
            }

            public Builder clearWasmTerraExecuteContractGeneric() {
                copyOnWrite();
                ((Message) this.instance).clearWasmTerraExecuteContractGeneric();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public boolean hasWasmExecuteContractTransferMessage() {
                return ((Message) this.instance).hasWasmExecuteContractTransferMessage();
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public WasmExecuteContractTransfer getWasmExecuteContractTransferMessage() {
                return ((Message) this.instance).getWasmExecuteContractTransferMessage();
            }

            public Builder setWasmExecuteContractTransferMessage(WasmExecuteContractTransfer value) {
                copyOnWrite();
                ((Message) this.instance).setWasmExecuteContractTransferMessage(value);
                return this;
            }

            public Builder setWasmExecuteContractTransferMessage(WasmExecuteContractTransfer.Builder builderForValue) {
                copyOnWrite();
                ((Message) this.instance).setWasmExecuteContractTransferMessage(builderForValue.build());
                return this;
            }

            public Builder mergeWasmExecuteContractTransferMessage(WasmExecuteContractTransfer value) {
                copyOnWrite();
                ((Message) this.instance).mergeWasmExecuteContractTransferMessage(value);
                return this;
            }

            public Builder clearWasmExecuteContractTransferMessage() {
                copyOnWrite();
                ((Message) this.instance).clearWasmExecuteContractTransferMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public boolean hasWasmExecuteContractSendMessage() {
                return ((Message) this.instance).hasWasmExecuteContractSendMessage();
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public WasmExecuteContractSend getWasmExecuteContractSendMessage() {
                return ((Message) this.instance).getWasmExecuteContractSendMessage();
            }

            public Builder setWasmExecuteContractSendMessage(WasmExecuteContractSend value) {
                copyOnWrite();
                ((Message) this.instance).setWasmExecuteContractSendMessage(value);
                return this;
            }

            public Builder setWasmExecuteContractSendMessage(WasmExecuteContractSend.Builder builderForValue) {
                copyOnWrite();
                ((Message) this.instance).setWasmExecuteContractSendMessage(builderForValue.build());
                return this;
            }

            public Builder mergeWasmExecuteContractSendMessage(WasmExecuteContractSend value) {
                copyOnWrite();
                ((Message) this.instance).mergeWasmExecuteContractSendMessage(value);
                return this;
            }

            public Builder clearWasmExecuteContractSendMessage() {
                copyOnWrite();
                ((Message) this.instance).clearWasmExecuteContractSendMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public boolean hasWasmExecuteContractGeneric() {
                return ((Message) this.instance).hasWasmExecuteContractGeneric();
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public WasmExecuteContractGeneric getWasmExecuteContractGeneric() {
                return ((Message) this.instance).getWasmExecuteContractGeneric();
            }

            public Builder setWasmExecuteContractGeneric(WasmExecuteContractGeneric value) {
                copyOnWrite();
                ((Message) this.instance).setWasmExecuteContractGeneric(value);
                return this;
            }

            public Builder setWasmExecuteContractGeneric(WasmExecuteContractGeneric.Builder builderForValue) {
                copyOnWrite();
                ((Message) this.instance).setWasmExecuteContractGeneric(builderForValue.build());
                return this;
            }

            public Builder mergeWasmExecuteContractGeneric(WasmExecuteContractGeneric value) {
                copyOnWrite();
                ((Message) this.instance).mergeWasmExecuteContractGeneric(value);
                return this;
            }

            public Builder clearWasmExecuteContractGeneric() {
                copyOnWrite();
                ((Message) this.instance).clearWasmExecuteContractGeneric();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public boolean hasSignDirectMessage() {
                return ((Message) this.instance).hasSignDirectMessage();
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public SignDirect getSignDirectMessage() {
                return ((Message) this.instance).getSignDirectMessage();
            }

            public Builder setSignDirectMessage(SignDirect value) {
                copyOnWrite();
                ((Message) this.instance).setSignDirectMessage(value);
                return this;
            }

            public Builder setSignDirectMessage(SignDirect.Builder builderForValue) {
                copyOnWrite();
                ((Message) this.instance).setSignDirectMessage(builderForValue.build());
                return this;
            }

            public Builder mergeSignDirectMessage(SignDirect value) {
                copyOnWrite();
                ((Message) this.instance).mergeSignDirectMessage(value);
                return this;
            }

            public Builder clearSignDirectMessage() {
                copyOnWrite();
                ((Message) this.instance).clearSignDirectMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public boolean hasAuthGrant() {
                return ((Message) this.instance).hasAuthGrant();
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public AuthGrant getAuthGrant() {
                return ((Message) this.instance).getAuthGrant();
            }

            public Builder setAuthGrant(AuthGrant value) {
                copyOnWrite();
                ((Message) this.instance).setAuthGrant(value);
                return this;
            }

            public Builder setAuthGrant(AuthGrant.Builder builderForValue) {
                copyOnWrite();
                ((Message) this.instance).setAuthGrant(builderForValue.build());
                return this;
            }

            public Builder mergeAuthGrant(AuthGrant value) {
                copyOnWrite();
                ((Message) this.instance).mergeAuthGrant(value);
                return this;
            }

            public Builder clearAuthGrant() {
                copyOnWrite();
                ((Message) this.instance).clearAuthGrant();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public boolean hasAuthRevoke() {
                return ((Message) this.instance).hasAuthRevoke();
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public AuthRevoke getAuthRevoke() {
                return ((Message) this.instance).getAuthRevoke();
            }

            public Builder setAuthRevoke(AuthRevoke value) {
                copyOnWrite();
                ((Message) this.instance).setAuthRevoke(value);
                return this;
            }

            public Builder setAuthRevoke(AuthRevoke.Builder builderForValue) {
                copyOnWrite();
                ((Message) this.instance).setAuthRevoke(builderForValue.build());
                return this;
            }

            public Builder mergeAuthRevoke(AuthRevoke value) {
                copyOnWrite();
                ((Message) this.instance).mergeAuthRevoke(value);
                return this;
            }

            public Builder clearAuthRevoke() {
                copyOnWrite();
                ((Message) this.instance).clearAuthRevoke();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public boolean hasMsgVote() {
                return ((Message) this.instance).hasMsgVote();
            }

            @Override // wallet.core.jni.proto.Cosmos.MessageOrBuilder
            public MsgVote getMsgVote() {
                return ((Message) this.instance).getMsgVote();
            }

            public Builder setMsgVote(MsgVote value) {
                copyOnWrite();
                ((Message) this.instance).setMsgVote(value);
                return this;
            }

            public Builder setMsgVote(MsgVote.Builder builderForValue) {
                copyOnWrite();
                ((Message) this.instance).setMsgVote(builderForValue.build());
                return this;
            }

            public Builder mergeMsgVote(MsgVote value) {
                copyOnWrite();
                ((Message) this.instance).mergeMsgVote(value);
                return this;
            }

            public Builder clearMsgVote() {
                copyOnWrite();
                ((Message) this.instance).clearMsgVote();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Message();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0012\u0001\u0000\u0001\u0012\u0012\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\b<\u0000\t<\u0000\n<\u0000\u000b<\u0000\f<\u0000\r<\u0000\u000e<\u0000\u000f<\u0000\u0010<\u0000\u0011<\u0000\u0012<\u0000", new Object[]{"messageOneof_", "messageOneofCase_", Send.class, Transfer.class, Delegate.class, Undelegate.class, BeginRedelegate.class, WithdrawDelegationReward.class, RawJSON.class, WasmTerraExecuteContractTransfer.class, WasmTerraExecuteContractSend.class, THORChainSend.class, WasmTerraExecuteContractGeneric.class, WasmExecuteContractTransfer.class, WasmExecuteContractSend.class, WasmExecuteContractGeneric.class, SignDirect.class, AuthGrant.class, AuthRevoke.class, MsgVote.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Message> parser = PARSER;
                    if (parser == null) {
                        synchronized (Message.class) {
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
            Message message = new Message();
            DEFAULT_INSTANCE = message;
            GeneratedMessageLite.registerDefaultInstance(Message.class, message);
        }

        public static Message getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Message> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int ACCOUNT_NUMBER_FIELD_NUMBER = 2;
        public static final int CHAIN_ID_FIELD_NUMBER = 3;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int FEE_FIELD_NUMBER = 4;
        public static final int MEMO_FIELD_NUMBER = 5;
        public static final int MESSAGES_FIELD_NUMBER = 8;
        public static final int MODE_FIELD_NUMBER = 9;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 7;
        public static final int SEQUENCE_FIELD_NUMBER = 6;
        public static final int SIGNING_MODE_FIELD_NUMBER = 1;
        private long accountNumber_;
        private Fee fee_;
        private int mode_;
        private long sequence_;
        private int signingMode_;
        private String chainId_ = "";
        private String memo_ = "";
        private ByteString privateKey_ = ByteString.EMPTY;
        private Internal.ProtobufList<Message> messages_ = GeneratedMessageLite.emptyProtobufList();

        private SigningInput() {
        }

        @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
        public int getSigningModeValue() {
            return this.signingMode_;
        }

        @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
        public SigningMode getSigningMode() {
            SigningMode forNumber = SigningMode.forNumber(this.signingMode_);
            return forNumber == null ? SigningMode.UNRECOGNIZED : forNumber;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSigningModeValue(int value) {
            this.signingMode_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSigningMode(SigningMode value) {
            this.signingMode_ = value.getNumber();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSigningMode() {
            this.signingMode_ = 0;
        }

        @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
        public long getAccountNumber() {
            return this.accountNumber_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccountNumber(long value) {
            this.accountNumber_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAccountNumber() {
            this.accountNumber_ = 0L;
        }

        @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
        public String getChainId() {
            return this.chainId_;
        }

        @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
        public ByteString getChainIdBytes() {
            return ByteString.copyFromUtf8(this.chainId_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChainId(String value) {
            value.getClass();
            this.chainId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearChainId() {
            this.chainId_ = getDefaultInstance().getChainId();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChainIdBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.chainId_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
        public boolean hasFee() {
            return this.fee_ != null;
        }

        @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
        public Fee getFee() {
            Fee fee = this.fee_;
            return fee == null ? Fee.getDefaultInstance() : fee;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFee(Fee value) {
            value.getClass();
            this.fee_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeFee(Fee value) {
            value.getClass();
            Fee fee = this.fee_;
            if (fee != null && fee != Fee.getDefaultInstance()) {
                this.fee_ = Fee.newBuilder(this.fee_).mergeFrom((Fee.Builder) value).buildPartial();
            } else {
                this.fee_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFee() {
            this.fee_ = null;
        }

        @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
        public String getMemo() {
            return this.memo_;
        }

        @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
        public long getSequence() {
            return this.sequence_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSequence(long value) {
            this.sequence_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSequence() {
            this.sequence_ = 0L;
        }

        @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
        public List<Message> getMessagesList() {
            return this.messages_;
        }

        public List<? extends MessageOrBuilder> getMessagesOrBuilderList() {
            return this.messages_;
        }

        @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
        public int getMessagesCount() {
            return this.messages_.size();
        }

        @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
        public Message getMessages(int index) {
            return this.messages_.get(index);
        }

        public MessageOrBuilder getMessagesOrBuilder(int index) {
            return this.messages_.get(index);
        }

        private void ensureMessagesIsMutable() {
            Internal.ProtobufList<Message> protobufList = this.messages_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.messages_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMessages(int index, Message value) {
            value.getClass();
            ensureMessagesIsMutable();
            this.messages_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addMessages(Message value) {
            value.getClass();
            ensureMessagesIsMutable();
            this.messages_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addMessages(int index, Message value) {
            value.getClass();
            ensureMessagesIsMutable();
            this.messages_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllMessages(Iterable<? extends Message> values) {
            ensureMessagesIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.messages_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMessages() {
            this.messages_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeMessages(int index) {
            ensureMessagesIsMutable();
            this.messages_.remove(index);
        }

        @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
        public int getModeValue() {
            return this.mode_;
        }

        @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
        public BroadcastMode getMode() {
            BroadcastMode forNumber = BroadcastMode.forNumber(this.mode_);
            return forNumber == null ? BroadcastMode.UNRECOGNIZED : forNumber;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setModeValue(int value) {
            this.mode_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMode(BroadcastMode value) {
            this.mode_ = value.getNumber();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMode() {
            this.mode_ = 0;
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
            /* synthetic */ Builder(C67091 c67091) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
            public int getSigningModeValue() {
                return ((SigningInput) this.instance).getSigningModeValue();
            }

            public Builder setSigningModeValue(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setSigningModeValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
            public SigningMode getSigningMode() {
                return ((SigningInput) this.instance).getSigningMode();
            }

            public Builder setSigningMode(SigningMode value) {
                copyOnWrite();
                ((SigningInput) this.instance).setSigningMode(value);
                return this;
            }

            public Builder clearSigningMode() {
                copyOnWrite();
                ((SigningInput) this.instance).clearSigningMode();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
            public long getAccountNumber() {
                return ((SigningInput) this.instance).getAccountNumber();
            }

            public Builder setAccountNumber(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setAccountNumber(value);
                return this;
            }

            public Builder clearAccountNumber() {
                copyOnWrite();
                ((SigningInput) this.instance).clearAccountNumber();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
            public String getChainId() {
                return ((SigningInput) this.instance).getChainId();
            }

            @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
            public ByteString getChainIdBytes() {
                return ((SigningInput) this.instance).getChainIdBytes();
            }

            public Builder setChainId(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setChainId(value);
                return this;
            }

            public Builder clearChainId() {
                copyOnWrite();
                ((SigningInput) this.instance).clearChainId();
                return this;
            }

            public Builder setChainIdBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setChainIdBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
            public boolean hasFee() {
                return ((SigningInput) this.instance).hasFee();
            }

            @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
            public Fee getFee() {
                return ((SigningInput) this.instance).getFee();
            }

            public Builder setFee(Fee value) {
                copyOnWrite();
                ((SigningInput) this.instance).setFee(value);
                return this;
            }

            public Builder setFee(Fee.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setFee(builderForValue.build());
                return this;
            }

            public Builder mergeFee(Fee value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeFee(value);
                return this;
            }

            public Builder clearFee() {
                copyOnWrite();
                ((SigningInput) this.instance).clearFee();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
            public String getMemo() {
                return ((SigningInput) this.instance).getMemo();
            }

            @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
            public ByteString getMemoBytes() {
                return ((SigningInput) this.instance).getMemoBytes();
            }

            public Builder setMemo(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setMemo(value);
                return this;
            }

            public Builder clearMemo() {
                copyOnWrite();
                ((SigningInput) this.instance).clearMemo();
                return this;
            }

            public Builder setMemoBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setMemoBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
            public long getSequence() {
                return ((SigningInput) this.instance).getSequence();
            }

            public Builder setSequence(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setSequence(value);
                return this;
            }

            public Builder clearSequence() {
                copyOnWrite();
                ((SigningInput) this.instance).clearSequence();
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
            public List<Message> getMessagesList() {
                return Collections.unmodifiableList(((SigningInput) this.instance).getMessagesList());
            }

            @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
            public int getMessagesCount() {
                return ((SigningInput) this.instance).getMessagesCount();
            }

            @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
            public Message getMessages(int index) {
                return ((SigningInput) this.instance).getMessages(index);
            }

            public Builder setMessages(int index, Message value) {
                copyOnWrite();
                ((SigningInput) this.instance).setMessages(index, value);
                return this;
            }

            public Builder setMessages(int index, Message.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setMessages(index, builderForValue.build());
                return this;
            }

            public Builder addMessages(Message value) {
                copyOnWrite();
                ((SigningInput) this.instance).addMessages(value);
                return this;
            }

            public Builder addMessages(int index, Message value) {
                copyOnWrite();
                ((SigningInput) this.instance).addMessages(index, value);
                return this;
            }

            public Builder addMessages(Message.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).addMessages(builderForValue.build());
                return this;
            }

            public Builder addMessages(int index, Message.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).addMessages(index, builderForValue.build());
                return this;
            }

            public Builder addAllMessages(Iterable<? extends Message> values) {
                copyOnWrite();
                ((SigningInput) this.instance).addAllMessages(values);
                return this;
            }

            public Builder clearMessages() {
                copyOnWrite();
                ((SigningInput) this.instance).clearMessages();
                return this;
            }

            public Builder removeMessages(int index) {
                copyOnWrite();
                ((SigningInput) this.instance).removeMessages(index);
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
            public int getModeValue() {
                return ((SigningInput) this.instance).getModeValue();
            }

            public Builder setModeValue(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setModeValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.SigningInputOrBuilder
            public BroadcastMode getMode() {
                return ((SigningInput) this.instance).getMode();
            }

            public Builder setMode(BroadcastMode value) {
                copyOnWrite();
                ((SigningInput) this.instance).setMode(value);
                return this;
            }

            public Builder clearMode() {
                copyOnWrite();
                ((SigningInput) this.instance).clearMode();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\t\u0000\u0000\u0001\t\t\u0000\u0001\u0000\u0001\f\u0002\u0003\u0003Ȉ\u0004\t\u0005Ȉ\u0006\u0003\u0007\n\b\u001b\t\f", new Object[]{"signingMode_", "accountNumber_", "chainId_", "fee_", "memo_", "sequence_", "privateKey_", "messages_", Message.class, "mode_"});
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
        public static final int ERROR_FIELD_NUMBER = 4;
        public static final int JSON_FIELD_NUMBER = 2;
        private static volatile Parser<SigningOutput> PARSER = null;
        public static final int SERIALIZED_FIELD_NUMBER = 3;
        public static final int SIGNATURE_FIELD_NUMBER = 1;
        public static final int SIGNATURE_JSON_FIELD_NUMBER = 5;
        private ByteString signature_ = ByteString.EMPTY;
        private String json_ = "";
        private String serialized_ = "";
        private String error_ = "";
        private String signatureJson_ = "";

        private SigningOutput() {
        }

        @Override // wallet.core.jni.proto.Cosmos.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Cosmos.SigningOutputOrBuilder
        public String getJson() {
            return this.json_;
        }

        @Override // wallet.core.jni.proto.Cosmos.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Cosmos.SigningOutputOrBuilder
        public String getSerialized() {
            return this.serialized_;
        }

        @Override // wallet.core.jni.proto.Cosmos.SigningOutputOrBuilder
        public ByteString getSerializedBytes() {
            return ByteString.copyFromUtf8(this.serialized_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSerialized(String value) {
            value.getClass();
            this.serialized_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSerialized() {
            this.serialized_ = getDefaultInstance().getSerialized();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSerializedBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.serialized_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Cosmos.SigningOutputOrBuilder
        public String getError() {
            return this.error_;
        }

        @Override // wallet.core.jni.proto.Cosmos.SigningOutputOrBuilder
        public ByteString getErrorBytes() {
            return ByteString.copyFromUtf8(this.error_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setError(String value) {
            value.getClass();
            this.error_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearError() {
            this.error_ = getDefaultInstance().getError();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setErrorBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.error_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Cosmos.SigningOutputOrBuilder
        public String getSignatureJson() {
            return this.signatureJson_;
        }

        @Override // wallet.core.jni.proto.Cosmos.SigningOutputOrBuilder
        public ByteString getSignatureJsonBytes() {
            return ByteString.copyFromUtf8(this.signatureJson_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSignatureJson(String value) {
            value.getClass();
            this.signatureJson_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSignatureJson() {
            this.signatureJson_ = getDefaultInstance().getSignatureJson();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSignatureJsonBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.signatureJson_ = value.toStringUtf8();
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
            /* synthetic */ Builder(C67091 c67091) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Cosmos.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.Cosmos.SigningOutputOrBuilder
            public String getJson() {
                return ((SigningOutput) this.instance).getJson();
            }

            @Override // wallet.core.jni.proto.Cosmos.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.Cosmos.SigningOutputOrBuilder
            public String getSerialized() {
                return ((SigningOutput) this.instance).getSerialized();
            }

            @Override // wallet.core.jni.proto.Cosmos.SigningOutputOrBuilder
            public ByteString getSerializedBytes() {
                return ((SigningOutput) this.instance).getSerializedBytes();
            }

            public Builder setSerialized(String value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setSerialized(value);
                return this;
            }

            public Builder clearSerialized() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearSerialized();
                return this;
            }

            public Builder setSerializedBytes(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setSerializedBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.SigningOutputOrBuilder
            public String getError() {
                return ((SigningOutput) this.instance).getError();
            }

            @Override // wallet.core.jni.proto.Cosmos.SigningOutputOrBuilder
            public ByteString getErrorBytes() {
                return ((SigningOutput) this.instance).getErrorBytes();
            }

            public Builder setError(String value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setError(value);
                return this;
            }

            public Builder clearError() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearError();
                return this;
            }

            public Builder setErrorBytes(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setErrorBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Cosmos.SigningOutputOrBuilder
            public String getSignatureJson() {
                return ((SigningOutput) this.instance).getSignatureJson();
            }

            @Override // wallet.core.jni.proto.Cosmos.SigningOutputOrBuilder
            public ByteString getSignatureJsonBytes() {
                return ((SigningOutput) this.instance).getSignatureJsonBytes();
            }

            public Builder setSignatureJson(String value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setSignatureJson(value);
                return this;
            }

            public Builder clearSignatureJson() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearSignatureJson();
                return this;
            }

            public Builder setSignatureJsonBytes(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setSignatureJsonBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67091.f1784xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\n\u0002Ȉ\u0003Ȉ\u0004Ȉ\u0005Ȉ", new Object[]{"signature_", "json_", "serialized_", "error_", "signatureJson_"});
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
