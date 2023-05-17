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
import wallet.core.jni.proto.Common;
/* loaded from: classes6.dex */
public final class Cardano {

    /* loaded from: classes6.dex */
    public interface DelegateOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getDepositAmount();

        ByteString getPoolId();

        String getStakingAddress();

        ByteString getStakingAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface DeregisterStakingKeyOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getStakingAddress();

        ByteString getStakingAddressBytes();

        long getUndepositAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface OutPointOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getOutputIndex();

        ByteString getTxHash();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface RegisterStakingKeyOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getDepositAmount();

        String getStakingAddress();

        ByteString getStakingAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Delegate getDelegate();

        DeregisterStakingKey getDeregisterStakingKey();

        TransactionPlan getPlan();

        ByteString getPrivateKey(int index);

        int getPrivateKeyCount();

        List<ByteString> getPrivateKeyList();

        RegisterStakingKey getRegisterStakingKey();

        Transfer getTransferMessage();

        long getTtl();

        TxInput getUtxos(int index);

        int getUtxosCount();

        List<TxInput> getUtxosList();

        Withdraw getWithdraw();

        boolean hasDelegate();

        boolean hasDeregisterStakingKey();

        boolean hasPlan();

        boolean hasRegisterStakingKey();

        boolean hasTransferMessage();

        boolean hasWithdraw();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getEncoded();

        Common.SigningError getError();

        int getErrorValue();

        ByteString getTxId();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TokenAmountOrBuilder extends MessageLiteOrBuilder {
        ByteString getAmount();

        String getAssetName();

        ByteString getAssetNameBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getPolicyId();

        ByteString getPolicyIdBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TokenBundleOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        TokenAmount getToken(int index);

        int getTokenCount();

        List<TokenAmount> getTokenList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TransactionPlanOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        long getAvailableAmount();

        TokenAmount getAvailableTokens(int index);

        int getAvailableTokensCount();

        List<TokenAmount> getAvailableTokensList();

        long getChange();

        TokenAmount getChangeTokens(int index);

        int getChangeTokensCount();

        List<TokenAmount> getChangeTokensList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getDeposit();

        Common.SigningError getError();

        int getErrorValue();

        long getFee();

        TokenAmount getOutputTokens(int index);

        int getOutputTokensCount();

        List<TokenAmount> getOutputTokensList();

        long getUndeposit();

        TxInput getUtxos(int index);

        int getUtxosCount();

        List<TxInput> getUtxosList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TransferOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        String getChangeAddress();

        ByteString getChangeAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getForceFee();

        String getToAddress();

        ByteString getToAddressBytes();

        TokenBundle getTokenAmount();

        boolean getUseMaxAmount();

        boolean hasTokenAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TxInputOrBuilder extends MessageLiteOrBuilder {
        String getAddress();

        ByteString getAddressBytes();

        long getAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        OutPoint getOutPoint();

        TokenAmount getTokenAmount(int index);

        int getTokenAmountCount();

        List<TokenAmount> getTokenAmountList();

        boolean hasOutPoint();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TxOutputOrBuilder extends MessageLiteOrBuilder {
        String getAddress();

        ByteString getAddressBytes();

        long getAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        TokenAmount getTokenAmount(int index);

        int getTokenAmountCount();

        List<TokenAmount> getTokenAmountList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface WithdrawOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getStakingAddress();

        ByteString getStakingAddressBytes();

        long getWithdrawAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Cardano() {
    }

    /* loaded from: classes6.dex */
    public static final class OutPoint extends GeneratedMessageLite<OutPoint, Builder> implements OutPointOrBuilder {
        private static final OutPoint DEFAULT_INSTANCE;
        public static final int OUTPUT_INDEX_FIELD_NUMBER = 2;
        private static volatile Parser<OutPoint> PARSER = null;
        public static final int TX_HASH_FIELD_NUMBER = 1;
        private long outputIndex_;
        private ByteString txHash_ = ByteString.EMPTY;

        private OutPoint() {
        }

        @Override // wallet.core.jni.proto.Cardano.OutPointOrBuilder
        public ByteString getTxHash() {
            return this.txHash_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTxHash(ByteString value) {
            value.getClass();
            this.txHash_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTxHash() {
            this.txHash_ = getDefaultInstance().getTxHash();
        }

        @Override // wallet.core.jni.proto.Cardano.OutPointOrBuilder
        public long getOutputIndex() {
            return this.outputIndex_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOutputIndex(long value) {
            this.outputIndex_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOutputIndex() {
            this.outputIndex_ = 0L;
        }

        public static OutPoint parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OutPoint parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OutPoint parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OutPoint parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OutPoint parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OutPoint parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OutPoint parseFrom(InputStream input) throws IOException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OutPoint parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OutPoint parseDelimitedFrom(InputStream input) throws IOException {
            return (OutPoint) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static OutPoint parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OutPoint) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OutPoint parseFrom(CodedInputStream input) throws IOException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OutPoint parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(OutPoint prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<OutPoint, Builder> implements OutPointOrBuilder {
            /* synthetic */ Builder(C68091 c68091) {
                this();
            }

            private Builder() {
                super(OutPoint.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Cardano.OutPointOrBuilder
            public ByteString getTxHash() {
                return ((OutPoint) this.instance).getTxHash();
            }

            public Builder setTxHash(ByteString value) {
                copyOnWrite();
                ((OutPoint) this.instance).setTxHash(value);
                return this;
            }

            public Builder clearTxHash() {
                copyOnWrite();
                ((OutPoint) this.instance).clearTxHash();
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.OutPointOrBuilder
            public long getOutputIndex() {
                return ((OutPoint) this.instance).getOutputIndex();
            }

            public Builder setOutputIndex(long value) {
                copyOnWrite();
                ((OutPoint) this.instance).setOutputIndex(value);
                return this;
            }

            public Builder clearOutputIndex() {
                copyOnWrite();
                ((OutPoint) this.instance).clearOutputIndex();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68091.f1790xa1df5c61[method.ordinal()]) {
                case 1:
                    return new OutPoint();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\u0003", new Object[]{"txHash_", "outputIndex_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<OutPoint> parser = PARSER;
                    if (parser == null) {
                        synchronized (OutPoint.class) {
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
            OutPoint outPoint = new OutPoint();
            DEFAULT_INSTANCE = outPoint;
            GeneratedMessageLite.registerDefaultInstance(OutPoint.class, outPoint);
        }

        public static OutPoint getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<OutPoint> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* renamed from: wallet.core.jni.proto.Cardano$1 */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C68091 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1790xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1790xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1790xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1790xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1790xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1790xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1790xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1790xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class TokenAmount extends GeneratedMessageLite<TokenAmount, Builder> implements TokenAmountOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 3;
        public static final int ASSET_NAME_FIELD_NUMBER = 2;
        private static final TokenAmount DEFAULT_INSTANCE;
        private static volatile Parser<TokenAmount> PARSER = null;
        public static final int POLICY_ID_FIELD_NUMBER = 1;
        private String policyId_ = "";
        private String assetName_ = "";
        private ByteString amount_ = ByteString.EMPTY;

        private TokenAmount() {
        }

        @Override // wallet.core.jni.proto.Cardano.TokenAmountOrBuilder
        public String getPolicyId() {
            return this.policyId_;
        }

        @Override // wallet.core.jni.proto.Cardano.TokenAmountOrBuilder
        public ByteString getPolicyIdBytes() {
            return ByteString.copyFromUtf8(this.policyId_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPolicyId(String value) {
            value.getClass();
            this.policyId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPolicyId() {
            this.policyId_ = getDefaultInstance().getPolicyId();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPolicyIdBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.policyId_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Cardano.TokenAmountOrBuilder
        public String getAssetName() {
            return this.assetName_;
        }

        @Override // wallet.core.jni.proto.Cardano.TokenAmountOrBuilder
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

        @Override // wallet.core.jni.proto.Cardano.TokenAmountOrBuilder
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

        public static TokenAmount parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TokenAmount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenAmount parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenAmount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenAmount parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TokenAmount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenAmount parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenAmount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenAmount parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TokenAmount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenAmount parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenAmount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenAmount parseFrom(InputStream input) throws IOException {
            return (TokenAmount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenAmount parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenAmount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TokenAmount parseDelimitedFrom(InputStream input) throws IOException {
            return (TokenAmount) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenAmount parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenAmount) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TokenAmount parseFrom(CodedInputStream input) throws IOException {
            return (TokenAmount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenAmount parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenAmount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TokenAmount prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TokenAmount, Builder> implements TokenAmountOrBuilder {
            /* synthetic */ Builder(C68091 c68091) {
                this();
            }

            private Builder() {
                super(TokenAmount.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Cardano.TokenAmountOrBuilder
            public String getPolicyId() {
                return ((TokenAmount) this.instance).getPolicyId();
            }

            @Override // wallet.core.jni.proto.Cardano.TokenAmountOrBuilder
            public ByteString getPolicyIdBytes() {
                return ((TokenAmount) this.instance).getPolicyIdBytes();
            }

            public Builder setPolicyId(String value) {
                copyOnWrite();
                ((TokenAmount) this.instance).setPolicyId(value);
                return this;
            }

            public Builder clearPolicyId() {
                copyOnWrite();
                ((TokenAmount) this.instance).clearPolicyId();
                return this;
            }

            public Builder setPolicyIdBytes(ByteString value) {
                copyOnWrite();
                ((TokenAmount) this.instance).setPolicyIdBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.TokenAmountOrBuilder
            public String getAssetName() {
                return ((TokenAmount) this.instance).getAssetName();
            }

            @Override // wallet.core.jni.proto.Cardano.TokenAmountOrBuilder
            public ByteString getAssetNameBytes() {
                return ((TokenAmount) this.instance).getAssetNameBytes();
            }

            public Builder setAssetName(String value) {
                copyOnWrite();
                ((TokenAmount) this.instance).setAssetName(value);
                return this;
            }

            public Builder clearAssetName() {
                copyOnWrite();
                ((TokenAmount) this.instance).clearAssetName();
                return this;
            }

            public Builder setAssetNameBytes(ByteString value) {
                copyOnWrite();
                ((TokenAmount) this.instance).setAssetNameBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.TokenAmountOrBuilder
            public ByteString getAmount() {
                return ((TokenAmount) this.instance).getAmount();
            }

            public Builder setAmount(ByteString value) {
                copyOnWrite();
                ((TokenAmount) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TokenAmount) this.instance).clearAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68091.f1790xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TokenAmount();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\n", new Object[]{"policyId_", "assetName_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TokenAmount> parser = PARSER;
                    if (parser == null) {
                        synchronized (TokenAmount.class) {
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
            TokenAmount tokenAmount = new TokenAmount();
            DEFAULT_INSTANCE = tokenAmount;
            GeneratedMessageLite.registerDefaultInstance(TokenAmount.class, tokenAmount);
        }

        public static TokenAmount getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TokenAmount> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class TxInput extends GeneratedMessageLite<TxInput, Builder> implements TxInputOrBuilder {
        public static final int ADDRESS_FIELD_NUMBER = 2;
        public static final int AMOUNT_FIELD_NUMBER = 3;
        private static final TxInput DEFAULT_INSTANCE;
        public static final int OUT_POINT_FIELD_NUMBER = 1;
        private static volatile Parser<TxInput> PARSER = null;
        public static final int TOKEN_AMOUNT_FIELD_NUMBER = 4;
        private long amount_;
        private OutPoint outPoint_;
        private String address_ = "";
        private Internal.ProtobufList<TokenAmount> tokenAmount_ = GeneratedMessageLite.emptyProtobufList();

        private TxInput() {
        }

        @Override // wallet.core.jni.proto.Cardano.TxInputOrBuilder
        public boolean hasOutPoint() {
            return this.outPoint_ != null;
        }

        @Override // wallet.core.jni.proto.Cardano.TxInputOrBuilder
        public OutPoint getOutPoint() {
            OutPoint outPoint = this.outPoint_;
            return outPoint == null ? OutPoint.getDefaultInstance() : outPoint;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOutPoint(OutPoint value) {
            value.getClass();
            this.outPoint_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeOutPoint(OutPoint value) {
            value.getClass();
            OutPoint outPoint = this.outPoint_;
            if (outPoint != null && outPoint != OutPoint.getDefaultInstance()) {
                this.outPoint_ = OutPoint.newBuilder(this.outPoint_).mergeFrom((OutPoint.Builder) value).buildPartial();
            } else {
                this.outPoint_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOutPoint() {
            this.outPoint_ = null;
        }

        @Override // wallet.core.jni.proto.Cardano.TxInputOrBuilder
        public String getAddress() {
            return this.address_;
        }

        @Override // wallet.core.jni.proto.Cardano.TxInputOrBuilder
        public ByteString getAddressBytes() {
            return ByteString.copyFromUtf8(this.address_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAddress(String value) {
            value.getClass();
            this.address_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAddress() {
            this.address_ = getDefaultInstance().getAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.address_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Cardano.TxInputOrBuilder
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

        @Override // wallet.core.jni.proto.Cardano.TxInputOrBuilder
        public List<TokenAmount> getTokenAmountList() {
            return this.tokenAmount_;
        }

        public List<? extends TokenAmountOrBuilder> getTokenAmountOrBuilderList() {
            return this.tokenAmount_;
        }

        @Override // wallet.core.jni.proto.Cardano.TxInputOrBuilder
        public int getTokenAmountCount() {
            return this.tokenAmount_.size();
        }

        @Override // wallet.core.jni.proto.Cardano.TxInputOrBuilder
        public TokenAmount getTokenAmount(int index) {
            return this.tokenAmount_.get(index);
        }

        public TokenAmountOrBuilder getTokenAmountOrBuilder(int index) {
            return this.tokenAmount_.get(index);
        }

        private void ensureTokenAmountIsMutable() {
            Internal.ProtobufList<TokenAmount> protobufList = this.tokenAmount_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.tokenAmount_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTokenAmount(int index, TokenAmount value) {
            value.getClass();
            ensureTokenAmountIsMutable();
            this.tokenAmount_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addTokenAmount(TokenAmount value) {
            value.getClass();
            ensureTokenAmountIsMutable();
            this.tokenAmount_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addTokenAmount(int index, TokenAmount value) {
            value.getClass();
            ensureTokenAmountIsMutable();
            this.tokenAmount_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllTokenAmount(Iterable<? extends TokenAmount> values) {
            ensureTokenAmountIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.tokenAmount_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTokenAmount() {
            this.tokenAmount_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeTokenAmount(int index) {
            ensureTokenAmountIsMutable();
            this.tokenAmount_.remove(index);
        }

        public static TxInput parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TxInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TxInput parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TxInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TxInput parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TxInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TxInput parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TxInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TxInput parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TxInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TxInput parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TxInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TxInput parseFrom(InputStream input) throws IOException {
            return (TxInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TxInput parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TxInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TxInput parseDelimitedFrom(InputStream input) throws IOException {
            return (TxInput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TxInput parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TxInput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TxInput parseFrom(CodedInputStream input) throws IOException {
            return (TxInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TxInput parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TxInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TxInput prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TxInput, Builder> implements TxInputOrBuilder {
            /* synthetic */ Builder(C68091 c68091) {
                this();
            }

            private Builder() {
                super(TxInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Cardano.TxInputOrBuilder
            public boolean hasOutPoint() {
                return ((TxInput) this.instance).hasOutPoint();
            }

            @Override // wallet.core.jni.proto.Cardano.TxInputOrBuilder
            public OutPoint getOutPoint() {
                return ((TxInput) this.instance).getOutPoint();
            }

            public Builder setOutPoint(OutPoint value) {
                copyOnWrite();
                ((TxInput) this.instance).setOutPoint(value);
                return this;
            }

            public Builder setOutPoint(OutPoint.Builder builderForValue) {
                copyOnWrite();
                ((TxInput) this.instance).setOutPoint(builderForValue.build());
                return this;
            }

            public Builder mergeOutPoint(OutPoint value) {
                copyOnWrite();
                ((TxInput) this.instance).mergeOutPoint(value);
                return this;
            }

            public Builder clearOutPoint() {
                copyOnWrite();
                ((TxInput) this.instance).clearOutPoint();
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.TxInputOrBuilder
            public String getAddress() {
                return ((TxInput) this.instance).getAddress();
            }

            @Override // wallet.core.jni.proto.Cardano.TxInputOrBuilder
            public ByteString getAddressBytes() {
                return ((TxInput) this.instance).getAddressBytes();
            }

            public Builder setAddress(String value) {
                copyOnWrite();
                ((TxInput) this.instance).setAddress(value);
                return this;
            }

            public Builder clearAddress() {
                copyOnWrite();
                ((TxInput) this.instance).clearAddress();
                return this;
            }

            public Builder setAddressBytes(ByteString value) {
                copyOnWrite();
                ((TxInput) this.instance).setAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.TxInputOrBuilder
            public long getAmount() {
                return ((TxInput) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((TxInput) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TxInput) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.TxInputOrBuilder
            public List<TokenAmount> getTokenAmountList() {
                return Collections.unmodifiableList(((TxInput) this.instance).getTokenAmountList());
            }

            @Override // wallet.core.jni.proto.Cardano.TxInputOrBuilder
            public int getTokenAmountCount() {
                return ((TxInput) this.instance).getTokenAmountCount();
            }

            @Override // wallet.core.jni.proto.Cardano.TxInputOrBuilder
            public TokenAmount getTokenAmount(int index) {
                return ((TxInput) this.instance).getTokenAmount(index);
            }

            public Builder setTokenAmount(int index, TokenAmount value) {
                copyOnWrite();
                ((TxInput) this.instance).setTokenAmount(index, value);
                return this;
            }

            public Builder setTokenAmount(int index, TokenAmount.Builder builderForValue) {
                copyOnWrite();
                ((TxInput) this.instance).setTokenAmount(index, builderForValue.build());
                return this;
            }

            public Builder addTokenAmount(TokenAmount value) {
                copyOnWrite();
                ((TxInput) this.instance).addTokenAmount(value);
                return this;
            }

            public Builder addTokenAmount(int index, TokenAmount value) {
                copyOnWrite();
                ((TxInput) this.instance).addTokenAmount(index, value);
                return this;
            }

            public Builder addTokenAmount(TokenAmount.Builder builderForValue) {
                copyOnWrite();
                ((TxInput) this.instance).addTokenAmount(builderForValue.build());
                return this;
            }

            public Builder addTokenAmount(int index, TokenAmount.Builder builderForValue) {
                copyOnWrite();
                ((TxInput) this.instance).addTokenAmount(index, builderForValue.build());
                return this;
            }

            public Builder addAllTokenAmount(Iterable<? extends TokenAmount> values) {
                copyOnWrite();
                ((TxInput) this.instance).addAllTokenAmount(values);
                return this;
            }

            public Builder clearTokenAmount() {
                copyOnWrite();
                ((TxInput) this.instance).clearTokenAmount();
                return this;
            }

            public Builder removeTokenAmount(int index) {
                copyOnWrite();
                ((TxInput) this.instance).removeTokenAmount(index);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68091.f1790xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TxInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001\t\u0002Ȉ\u0003\u0003\u0004\u001b", new Object[]{"outPoint_", "address_", "amount_", "tokenAmount_", TokenAmount.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TxInput> parser = PARSER;
                    if (parser == null) {
                        synchronized (TxInput.class) {
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
            TxInput txInput = new TxInput();
            DEFAULT_INSTANCE = txInput;
            GeneratedMessageLite.registerDefaultInstance(TxInput.class, txInput);
        }

        public static TxInput getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TxInput> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class TxOutput extends GeneratedMessageLite<TxOutput, Builder> implements TxOutputOrBuilder {
        public static final int ADDRESS_FIELD_NUMBER = 1;
        public static final int AMOUNT_FIELD_NUMBER = 2;
        private static final TxOutput DEFAULT_INSTANCE;
        private static volatile Parser<TxOutput> PARSER = null;
        public static final int TOKEN_AMOUNT_FIELD_NUMBER = 3;
        private long amount_;
        private String address_ = "";
        private Internal.ProtobufList<TokenAmount> tokenAmount_ = GeneratedMessageLite.emptyProtobufList();

        private TxOutput() {
        }

        @Override // wallet.core.jni.proto.Cardano.TxOutputOrBuilder
        public String getAddress() {
            return this.address_;
        }

        @Override // wallet.core.jni.proto.Cardano.TxOutputOrBuilder
        public ByteString getAddressBytes() {
            return ByteString.copyFromUtf8(this.address_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAddress(String value) {
            value.getClass();
            this.address_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAddress() {
            this.address_ = getDefaultInstance().getAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.address_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Cardano.TxOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Cardano.TxOutputOrBuilder
        public List<TokenAmount> getTokenAmountList() {
            return this.tokenAmount_;
        }

        public List<? extends TokenAmountOrBuilder> getTokenAmountOrBuilderList() {
            return this.tokenAmount_;
        }

        @Override // wallet.core.jni.proto.Cardano.TxOutputOrBuilder
        public int getTokenAmountCount() {
            return this.tokenAmount_.size();
        }

        @Override // wallet.core.jni.proto.Cardano.TxOutputOrBuilder
        public TokenAmount getTokenAmount(int index) {
            return this.tokenAmount_.get(index);
        }

        public TokenAmountOrBuilder getTokenAmountOrBuilder(int index) {
            return this.tokenAmount_.get(index);
        }

        private void ensureTokenAmountIsMutable() {
            Internal.ProtobufList<TokenAmount> protobufList = this.tokenAmount_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.tokenAmount_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTokenAmount(int index, TokenAmount value) {
            value.getClass();
            ensureTokenAmountIsMutable();
            this.tokenAmount_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addTokenAmount(TokenAmount value) {
            value.getClass();
            ensureTokenAmountIsMutable();
            this.tokenAmount_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addTokenAmount(int index, TokenAmount value) {
            value.getClass();
            ensureTokenAmountIsMutable();
            this.tokenAmount_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllTokenAmount(Iterable<? extends TokenAmount> values) {
            ensureTokenAmountIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.tokenAmount_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTokenAmount() {
            this.tokenAmount_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeTokenAmount(int index) {
            ensureTokenAmountIsMutable();
            this.tokenAmount_.remove(index);
        }

        public static TxOutput parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TxOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TxOutput parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TxOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TxOutput parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TxOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TxOutput parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TxOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TxOutput parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TxOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TxOutput parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TxOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TxOutput parseFrom(InputStream input) throws IOException {
            return (TxOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TxOutput parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TxOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TxOutput parseDelimitedFrom(InputStream input) throws IOException {
            return (TxOutput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TxOutput parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TxOutput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TxOutput parseFrom(CodedInputStream input) throws IOException {
            return (TxOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TxOutput parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TxOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TxOutput prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TxOutput, Builder> implements TxOutputOrBuilder {
            /* synthetic */ Builder(C68091 c68091) {
                this();
            }

            private Builder() {
                super(TxOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Cardano.TxOutputOrBuilder
            public String getAddress() {
                return ((TxOutput) this.instance).getAddress();
            }

            @Override // wallet.core.jni.proto.Cardano.TxOutputOrBuilder
            public ByteString getAddressBytes() {
                return ((TxOutput) this.instance).getAddressBytes();
            }

            public Builder setAddress(String value) {
                copyOnWrite();
                ((TxOutput) this.instance).setAddress(value);
                return this;
            }

            public Builder clearAddress() {
                copyOnWrite();
                ((TxOutput) this.instance).clearAddress();
                return this;
            }

            public Builder setAddressBytes(ByteString value) {
                copyOnWrite();
                ((TxOutput) this.instance).setAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.TxOutputOrBuilder
            public long getAmount() {
                return ((TxOutput) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((TxOutput) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TxOutput) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.TxOutputOrBuilder
            public List<TokenAmount> getTokenAmountList() {
                return Collections.unmodifiableList(((TxOutput) this.instance).getTokenAmountList());
            }

            @Override // wallet.core.jni.proto.Cardano.TxOutputOrBuilder
            public int getTokenAmountCount() {
                return ((TxOutput) this.instance).getTokenAmountCount();
            }

            @Override // wallet.core.jni.proto.Cardano.TxOutputOrBuilder
            public TokenAmount getTokenAmount(int index) {
                return ((TxOutput) this.instance).getTokenAmount(index);
            }

            public Builder setTokenAmount(int index, TokenAmount value) {
                copyOnWrite();
                ((TxOutput) this.instance).setTokenAmount(index, value);
                return this;
            }

            public Builder setTokenAmount(int index, TokenAmount.Builder builderForValue) {
                copyOnWrite();
                ((TxOutput) this.instance).setTokenAmount(index, builderForValue.build());
                return this;
            }

            public Builder addTokenAmount(TokenAmount value) {
                copyOnWrite();
                ((TxOutput) this.instance).addTokenAmount(value);
                return this;
            }

            public Builder addTokenAmount(int index, TokenAmount value) {
                copyOnWrite();
                ((TxOutput) this.instance).addTokenAmount(index, value);
                return this;
            }

            public Builder addTokenAmount(TokenAmount.Builder builderForValue) {
                copyOnWrite();
                ((TxOutput) this.instance).addTokenAmount(builderForValue.build());
                return this;
            }

            public Builder addTokenAmount(int index, TokenAmount.Builder builderForValue) {
                copyOnWrite();
                ((TxOutput) this.instance).addTokenAmount(index, builderForValue.build());
                return this;
            }

            public Builder addAllTokenAmount(Iterable<? extends TokenAmount> values) {
                copyOnWrite();
                ((TxOutput) this.instance).addAllTokenAmount(values);
                return this;
            }

            public Builder clearTokenAmount() {
                copyOnWrite();
                ((TxOutput) this.instance).clearTokenAmount();
                return this;
            }

            public Builder removeTokenAmount(int index) {
                copyOnWrite();
                ((TxOutput) this.instance).removeTokenAmount(index);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68091.f1790xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TxOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001Ȉ\u0002\u0003\u0003\u001b", new Object[]{"address_", "amount_", "tokenAmount_", TokenAmount.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TxOutput> parser = PARSER;
                    if (parser == null) {
                        synchronized (TxOutput.class) {
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
            TxOutput txOutput = new TxOutput();
            DEFAULT_INSTANCE = txOutput;
            GeneratedMessageLite.registerDefaultInstance(TxOutput.class, txOutput);
        }

        public static TxOutput getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TxOutput> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class TokenBundle extends GeneratedMessageLite<TokenBundle, Builder> implements TokenBundleOrBuilder {
        private static final TokenBundle DEFAULT_INSTANCE;
        private static volatile Parser<TokenBundle> PARSER = null;
        public static final int TOKEN_FIELD_NUMBER = 1;
        private Internal.ProtobufList<TokenAmount> token_ = GeneratedMessageLite.emptyProtobufList();

        private TokenBundle() {
        }

        @Override // wallet.core.jni.proto.Cardano.TokenBundleOrBuilder
        public List<TokenAmount> getTokenList() {
            return this.token_;
        }

        public List<? extends TokenAmountOrBuilder> getTokenOrBuilderList() {
            return this.token_;
        }

        @Override // wallet.core.jni.proto.Cardano.TokenBundleOrBuilder
        public int getTokenCount() {
            return this.token_.size();
        }

        @Override // wallet.core.jni.proto.Cardano.TokenBundleOrBuilder
        public TokenAmount getToken(int index) {
            return this.token_.get(index);
        }

        public TokenAmountOrBuilder getTokenOrBuilder(int index) {
            return this.token_.get(index);
        }

        private void ensureTokenIsMutable() {
            Internal.ProtobufList<TokenAmount> protobufList = this.token_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.token_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToken(int index, TokenAmount value) {
            value.getClass();
            ensureTokenIsMutable();
            this.token_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addToken(TokenAmount value) {
            value.getClass();
            ensureTokenIsMutable();
            this.token_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addToken(int index, TokenAmount value) {
            value.getClass();
            ensureTokenIsMutable();
            this.token_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllToken(Iterable<? extends TokenAmount> values) {
            ensureTokenIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.token_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearToken() {
            this.token_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeToken(int index) {
            ensureTokenIsMutable();
            this.token_.remove(index);
        }

        public static TokenBundle parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TokenBundle) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenBundle parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenBundle) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenBundle parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TokenBundle) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenBundle parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenBundle) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenBundle parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TokenBundle) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenBundle parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenBundle) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenBundle parseFrom(InputStream input) throws IOException {
            return (TokenBundle) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenBundle parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenBundle) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TokenBundle parseDelimitedFrom(InputStream input) throws IOException {
            return (TokenBundle) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenBundle parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenBundle) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TokenBundle parseFrom(CodedInputStream input) throws IOException {
            return (TokenBundle) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenBundle parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenBundle) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TokenBundle prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TokenBundle, Builder> implements TokenBundleOrBuilder {
            /* synthetic */ Builder(C68091 c68091) {
                this();
            }

            private Builder() {
                super(TokenBundle.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Cardano.TokenBundleOrBuilder
            public List<TokenAmount> getTokenList() {
                return Collections.unmodifiableList(((TokenBundle) this.instance).getTokenList());
            }

            @Override // wallet.core.jni.proto.Cardano.TokenBundleOrBuilder
            public int getTokenCount() {
                return ((TokenBundle) this.instance).getTokenCount();
            }

            @Override // wallet.core.jni.proto.Cardano.TokenBundleOrBuilder
            public TokenAmount getToken(int index) {
                return ((TokenBundle) this.instance).getToken(index);
            }

            public Builder setToken(int index, TokenAmount value) {
                copyOnWrite();
                ((TokenBundle) this.instance).setToken(index, value);
                return this;
            }

            public Builder setToken(int index, TokenAmount.Builder builderForValue) {
                copyOnWrite();
                ((TokenBundle) this.instance).setToken(index, builderForValue.build());
                return this;
            }

            public Builder addToken(TokenAmount value) {
                copyOnWrite();
                ((TokenBundle) this.instance).addToken(value);
                return this;
            }

            public Builder addToken(int index, TokenAmount value) {
                copyOnWrite();
                ((TokenBundle) this.instance).addToken(index, value);
                return this;
            }

            public Builder addToken(TokenAmount.Builder builderForValue) {
                copyOnWrite();
                ((TokenBundle) this.instance).addToken(builderForValue.build());
                return this;
            }

            public Builder addToken(int index, TokenAmount.Builder builderForValue) {
                copyOnWrite();
                ((TokenBundle) this.instance).addToken(index, builderForValue.build());
                return this;
            }

            public Builder addAllToken(Iterable<? extends TokenAmount> values) {
                copyOnWrite();
                ((TokenBundle) this.instance).addAllToken(values);
                return this;
            }

            public Builder clearToken() {
                copyOnWrite();
                ((TokenBundle) this.instance).clearToken();
                return this;
            }

            public Builder removeToken(int index) {
                copyOnWrite();
                ((TokenBundle) this.instance).removeToken(index);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68091.f1790xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TokenBundle();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"token_", TokenAmount.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TokenBundle> parser = PARSER;
                    if (parser == null) {
                        synchronized (TokenBundle.class) {
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
            TokenBundle tokenBundle = new TokenBundle();
            DEFAULT_INSTANCE = tokenBundle;
            GeneratedMessageLite.registerDefaultInstance(TokenBundle.class, tokenBundle);
        }

        public static TokenBundle getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TokenBundle> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class Transfer extends GeneratedMessageLite<Transfer, Builder> implements TransferOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 3;
        public static final int CHANGE_ADDRESS_FIELD_NUMBER = 2;
        private static final Transfer DEFAULT_INSTANCE;
        public static final int FORCE_FEE_FIELD_NUMBER = 6;
        private static volatile Parser<Transfer> PARSER = null;
        public static final int TOKEN_AMOUNT_FIELD_NUMBER = 4;
        public static final int TO_ADDRESS_FIELD_NUMBER = 1;
        public static final int USE_MAX_AMOUNT_FIELD_NUMBER = 5;
        private long amount_;
        private long forceFee_;
        private TokenBundle tokenAmount_;
        private boolean useMaxAmount_;
        private String toAddress_ = "";
        private String changeAddress_ = "";

        private Transfer() {
        }

        @Override // wallet.core.jni.proto.Cardano.TransferOrBuilder
        public String getToAddress() {
            return this.toAddress_;
        }

        @Override // wallet.core.jni.proto.Cardano.TransferOrBuilder
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

        @Override // wallet.core.jni.proto.Cardano.TransferOrBuilder
        public String getChangeAddress() {
            return this.changeAddress_;
        }

        @Override // wallet.core.jni.proto.Cardano.TransferOrBuilder
        public ByteString getChangeAddressBytes() {
            return ByteString.copyFromUtf8(this.changeAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChangeAddress(String value) {
            value.getClass();
            this.changeAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearChangeAddress() {
            this.changeAddress_ = getDefaultInstance().getChangeAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChangeAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.changeAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Cardano.TransferOrBuilder
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

        @Override // wallet.core.jni.proto.Cardano.TransferOrBuilder
        public boolean hasTokenAmount() {
            return this.tokenAmount_ != null;
        }

        @Override // wallet.core.jni.proto.Cardano.TransferOrBuilder
        public TokenBundle getTokenAmount() {
            TokenBundle tokenBundle = this.tokenAmount_;
            return tokenBundle == null ? TokenBundle.getDefaultInstance() : tokenBundle;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTokenAmount(TokenBundle value) {
            value.getClass();
            this.tokenAmount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTokenAmount(TokenBundle value) {
            value.getClass();
            TokenBundle tokenBundle = this.tokenAmount_;
            if (tokenBundle != null && tokenBundle != TokenBundle.getDefaultInstance()) {
                this.tokenAmount_ = TokenBundle.newBuilder(this.tokenAmount_).mergeFrom((TokenBundle.Builder) value).buildPartial();
            } else {
                this.tokenAmount_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTokenAmount() {
            this.tokenAmount_ = null;
        }

        @Override // wallet.core.jni.proto.Cardano.TransferOrBuilder
        public boolean getUseMaxAmount() {
            return this.useMaxAmount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUseMaxAmount(boolean value) {
            this.useMaxAmount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUseMaxAmount() {
            this.useMaxAmount_ = false;
        }

        @Override // wallet.core.jni.proto.Cardano.TransferOrBuilder
        public long getForceFee() {
            return this.forceFee_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setForceFee(long value) {
            this.forceFee_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearForceFee() {
            this.forceFee_ = 0L;
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
            /* synthetic */ Builder(C68091 c68091) {
                this();
            }

            private Builder() {
                super(Transfer.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Cardano.TransferOrBuilder
            public String getToAddress() {
                return ((Transfer) this.instance).getToAddress();
            }

            @Override // wallet.core.jni.proto.Cardano.TransferOrBuilder
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

            @Override // wallet.core.jni.proto.Cardano.TransferOrBuilder
            public String getChangeAddress() {
                return ((Transfer) this.instance).getChangeAddress();
            }

            @Override // wallet.core.jni.proto.Cardano.TransferOrBuilder
            public ByteString getChangeAddressBytes() {
                return ((Transfer) this.instance).getChangeAddressBytes();
            }

            public Builder setChangeAddress(String value) {
                copyOnWrite();
                ((Transfer) this.instance).setChangeAddress(value);
                return this;
            }

            public Builder clearChangeAddress() {
                copyOnWrite();
                ((Transfer) this.instance).clearChangeAddress();
                return this;
            }

            public Builder setChangeAddressBytes(ByteString value) {
                copyOnWrite();
                ((Transfer) this.instance).setChangeAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.TransferOrBuilder
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

            @Override // wallet.core.jni.proto.Cardano.TransferOrBuilder
            public boolean hasTokenAmount() {
                return ((Transfer) this.instance).hasTokenAmount();
            }

            @Override // wallet.core.jni.proto.Cardano.TransferOrBuilder
            public TokenBundle getTokenAmount() {
                return ((Transfer) this.instance).getTokenAmount();
            }

            public Builder setTokenAmount(TokenBundle value) {
                copyOnWrite();
                ((Transfer) this.instance).setTokenAmount(value);
                return this;
            }

            public Builder setTokenAmount(TokenBundle.Builder builderForValue) {
                copyOnWrite();
                ((Transfer) this.instance).setTokenAmount(builderForValue.build());
                return this;
            }

            public Builder mergeTokenAmount(TokenBundle value) {
                copyOnWrite();
                ((Transfer) this.instance).mergeTokenAmount(value);
                return this;
            }

            public Builder clearTokenAmount() {
                copyOnWrite();
                ((Transfer) this.instance).clearTokenAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.TransferOrBuilder
            public boolean getUseMaxAmount() {
                return ((Transfer) this.instance).getUseMaxAmount();
            }

            public Builder setUseMaxAmount(boolean value) {
                copyOnWrite();
                ((Transfer) this.instance).setUseMaxAmount(value);
                return this;
            }

            public Builder clearUseMaxAmount() {
                copyOnWrite();
                ((Transfer) this.instance).clearUseMaxAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.TransferOrBuilder
            public long getForceFee() {
                return ((Transfer) this.instance).getForceFee();
            }

            public Builder setForceFee(long value) {
                copyOnWrite();
                ((Transfer) this.instance).setForceFee(value);
                return this;
            }

            public Builder clearForceFee() {
                copyOnWrite();
                ((Transfer) this.instance).clearForceFee();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68091.f1790xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Transfer();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u0003\u0004\t\u0005\u0007\u0006\u0003", new Object[]{"toAddress_", "changeAddress_", "amount_", "tokenAmount_", "useMaxAmount_", "forceFee_"});
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
    public static final class RegisterStakingKey extends GeneratedMessageLite<RegisterStakingKey, Builder> implements RegisterStakingKeyOrBuilder {
        private static final RegisterStakingKey DEFAULT_INSTANCE;
        public static final int DEPOSIT_AMOUNT_FIELD_NUMBER = 2;
        private static volatile Parser<RegisterStakingKey> PARSER = null;
        public static final int STAKING_ADDRESS_FIELD_NUMBER = 1;
        private long depositAmount_;
        private String stakingAddress_ = "";

        private RegisterStakingKey() {
        }

        @Override // wallet.core.jni.proto.Cardano.RegisterStakingKeyOrBuilder
        public String getStakingAddress() {
            return this.stakingAddress_;
        }

        @Override // wallet.core.jni.proto.Cardano.RegisterStakingKeyOrBuilder
        public ByteString getStakingAddressBytes() {
            return ByteString.copyFromUtf8(this.stakingAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakingAddress(String value) {
            value.getClass();
            this.stakingAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakingAddress() {
            this.stakingAddress_ = getDefaultInstance().getStakingAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakingAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.stakingAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Cardano.RegisterStakingKeyOrBuilder
        public long getDepositAmount() {
            return this.depositAmount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDepositAmount(long value) {
            this.depositAmount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDepositAmount() {
            this.depositAmount_ = 0L;
        }

        public static RegisterStakingKey parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (RegisterStakingKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static RegisterStakingKey parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (RegisterStakingKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static RegisterStakingKey parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (RegisterStakingKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static RegisterStakingKey parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (RegisterStakingKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static RegisterStakingKey parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (RegisterStakingKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static RegisterStakingKey parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (RegisterStakingKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static RegisterStakingKey parseFrom(InputStream input) throws IOException {
            return (RegisterStakingKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static RegisterStakingKey parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (RegisterStakingKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static RegisterStakingKey parseDelimitedFrom(InputStream input) throws IOException {
            return (RegisterStakingKey) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static RegisterStakingKey parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (RegisterStakingKey) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static RegisterStakingKey parseFrom(CodedInputStream input) throws IOException {
            return (RegisterStakingKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static RegisterStakingKey parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (RegisterStakingKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(RegisterStakingKey prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<RegisterStakingKey, Builder> implements RegisterStakingKeyOrBuilder {
            /* synthetic */ Builder(C68091 c68091) {
                this();
            }

            private Builder() {
                super(RegisterStakingKey.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Cardano.RegisterStakingKeyOrBuilder
            public String getStakingAddress() {
                return ((RegisterStakingKey) this.instance).getStakingAddress();
            }

            @Override // wallet.core.jni.proto.Cardano.RegisterStakingKeyOrBuilder
            public ByteString getStakingAddressBytes() {
                return ((RegisterStakingKey) this.instance).getStakingAddressBytes();
            }

            public Builder setStakingAddress(String value) {
                copyOnWrite();
                ((RegisterStakingKey) this.instance).setStakingAddress(value);
                return this;
            }

            public Builder clearStakingAddress() {
                copyOnWrite();
                ((RegisterStakingKey) this.instance).clearStakingAddress();
                return this;
            }

            public Builder setStakingAddressBytes(ByteString value) {
                copyOnWrite();
                ((RegisterStakingKey) this.instance).setStakingAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.RegisterStakingKeyOrBuilder
            public long getDepositAmount() {
                return ((RegisterStakingKey) this.instance).getDepositAmount();
            }

            public Builder setDepositAmount(long value) {
                copyOnWrite();
                ((RegisterStakingKey) this.instance).setDepositAmount(value);
                return this;
            }

            public Builder clearDepositAmount() {
                copyOnWrite();
                ((RegisterStakingKey) this.instance).clearDepositAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68091.f1790xa1df5c61[method.ordinal()]) {
                case 1:
                    return new RegisterStakingKey();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\u0003", new Object[]{"stakingAddress_", "depositAmount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<RegisterStakingKey> parser = PARSER;
                    if (parser == null) {
                        synchronized (RegisterStakingKey.class) {
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
            RegisterStakingKey registerStakingKey = new RegisterStakingKey();
            DEFAULT_INSTANCE = registerStakingKey;
            GeneratedMessageLite.registerDefaultInstance(RegisterStakingKey.class, registerStakingKey);
        }

        public static RegisterStakingKey getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<RegisterStakingKey> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class DeregisterStakingKey extends GeneratedMessageLite<DeregisterStakingKey, Builder> implements DeregisterStakingKeyOrBuilder {
        private static final DeregisterStakingKey DEFAULT_INSTANCE;
        private static volatile Parser<DeregisterStakingKey> PARSER = null;
        public static final int STAKING_ADDRESS_FIELD_NUMBER = 1;
        public static final int UNDEPOSIT_AMOUNT_FIELD_NUMBER = 2;
        private String stakingAddress_ = "";
        private long undepositAmount_;

        private DeregisterStakingKey() {
        }

        @Override // wallet.core.jni.proto.Cardano.DeregisterStakingKeyOrBuilder
        public String getStakingAddress() {
            return this.stakingAddress_;
        }

        @Override // wallet.core.jni.proto.Cardano.DeregisterStakingKeyOrBuilder
        public ByteString getStakingAddressBytes() {
            return ByteString.copyFromUtf8(this.stakingAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakingAddress(String value) {
            value.getClass();
            this.stakingAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakingAddress() {
            this.stakingAddress_ = getDefaultInstance().getStakingAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakingAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.stakingAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Cardano.DeregisterStakingKeyOrBuilder
        public long getUndepositAmount() {
            return this.undepositAmount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUndepositAmount(long value) {
            this.undepositAmount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUndepositAmount() {
            this.undepositAmount_ = 0L;
        }

        public static DeregisterStakingKey parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (DeregisterStakingKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DeregisterStakingKey parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DeregisterStakingKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DeregisterStakingKey parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (DeregisterStakingKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DeregisterStakingKey parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DeregisterStakingKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DeregisterStakingKey parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (DeregisterStakingKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DeregisterStakingKey parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DeregisterStakingKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DeregisterStakingKey parseFrom(InputStream input) throws IOException {
            return (DeregisterStakingKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DeregisterStakingKey parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DeregisterStakingKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DeregisterStakingKey parseDelimitedFrom(InputStream input) throws IOException {
            return (DeregisterStakingKey) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static DeregisterStakingKey parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DeregisterStakingKey) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DeregisterStakingKey parseFrom(CodedInputStream input) throws IOException {
            return (DeregisterStakingKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DeregisterStakingKey parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DeregisterStakingKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(DeregisterStakingKey prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<DeregisterStakingKey, Builder> implements DeregisterStakingKeyOrBuilder {
            /* synthetic */ Builder(C68091 c68091) {
                this();
            }

            private Builder() {
                super(DeregisterStakingKey.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Cardano.DeregisterStakingKeyOrBuilder
            public String getStakingAddress() {
                return ((DeregisterStakingKey) this.instance).getStakingAddress();
            }

            @Override // wallet.core.jni.proto.Cardano.DeregisterStakingKeyOrBuilder
            public ByteString getStakingAddressBytes() {
                return ((DeregisterStakingKey) this.instance).getStakingAddressBytes();
            }

            public Builder setStakingAddress(String value) {
                copyOnWrite();
                ((DeregisterStakingKey) this.instance).setStakingAddress(value);
                return this;
            }

            public Builder clearStakingAddress() {
                copyOnWrite();
                ((DeregisterStakingKey) this.instance).clearStakingAddress();
                return this;
            }

            public Builder setStakingAddressBytes(ByteString value) {
                copyOnWrite();
                ((DeregisterStakingKey) this.instance).setStakingAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.DeregisterStakingKeyOrBuilder
            public long getUndepositAmount() {
                return ((DeregisterStakingKey) this.instance).getUndepositAmount();
            }

            public Builder setUndepositAmount(long value) {
                copyOnWrite();
                ((DeregisterStakingKey) this.instance).setUndepositAmount(value);
                return this;
            }

            public Builder clearUndepositAmount() {
                copyOnWrite();
                ((DeregisterStakingKey) this.instance).clearUndepositAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68091.f1790xa1df5c61[method.ordinal()]) {
                case 1:
                    return new DeregisterStakingKey();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\u0003", new Object[]{"stakingAddress_", "undepositAmount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<DeregisterStakingKey> parser = PARSER;
                    if (parser == null) {
                        synchronized (DeregisterStakingKey.class) {
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
            DeregisterStakingKey deregisterStakingKey = new DeregisterStakingKey();
            DEFAULT_INSTANCE = deregisterStakingKey;
            GeneratedMessageLite.registerDefaultInstance(DeregisterStakingKey.class, deregisterStakingKey);
        }

        public static DeregisterStakingKey getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<DeregisterStakingKey> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class Delegate extends GeneratedMessageLite<Delegate, Builder> implements DelegateOrBuilder {
        private static final Delegate DEFAULT_INSTANCE;
        public static final int DEPOSIT_AMOUNT_FIELD_NUMBER = 3;
        private static volatile Parser<Delegate> PARSER = null;
        public static final int POOL_ID_FIELD_NUMBER = 2;
        public static final int STAKING_ADDRESS_FIELD_NUMBER = 1;
        private long depositAmount_;
        private String stakingAddress_ = "";
        private ByteString poolId_ = ByteString.EMPTY;

        private Delegate() {
        }

        @Override // wallet.core.jni.proto.Cardano.DelegateOrBuilder
        public String getStakingAddress() {
            return this.stakingAddress_;
        }

        @Override // wallet.core.jni.proto.Cardano.DelegateOrBuilder
        public ByteString getStakingAddressBytes() {
            return ByteString.copyFromUtf8(this.stakingAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakingAddress(String value) {
            value.getClass();
            this.stakingAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakingAddress() {
            this.stakingAddress_ = getDefaultInstance().getStakingAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakingAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.stakingAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Cardano.DelegateOrBuilder
        public ByteString getPoolId() {
            return this.poolId_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPoolId(ByteString value) {
            value.getClass();
            this.poolId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPoolId() {
            this.poolId_ = getDefaultInstance().getPoolId();
        }

        @Override // wallet.core.jni.proto.Cardano.DelegateOrBuilder
        public long getDepositAmount() {
            return this.depositAmount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDepositAmount(long value) {
            this.depositAmount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDepositAmount() {
            this.depositAmount_ = 0L;
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
            /* synthetic */ Builder(C68091 c68091) {
                this();
            }

            private Builder() {
                super(Delegate.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Cardano.DelegateOrBuilder
            public String getStakingAddress() {
                return ((Delegate) this.instance).getStakingAddress();
            }

            @Override // wallet.core.jni.proto.Cardano.DelegateOrBuilder
            public ByteString getStakingAddressBytes() {
                return ((Delegate) this.instance).getStakingAddressBytes();
            }

            public Builder setStakingAddress(String value) {
                copyOnWrite();
                ((Delegate) this.instance).setStakingAddress(value);
                return this;
            }

            public Builder clearStakingAddress() {
                copyOnWrite();
                ((Delegate) this.instance).clearStakingAddress();
                return this;
            }

            public Builder setStakingAddressBytes(ByteString value) {
                copyOnWrite();
                ((Delegate) this.instance).setStakingAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.DelegateOrBuilder
            public ByteString getPoolId() {
                return ((Delegate) this.instance).getPoolId();
            }

            public Builder setPoolId(ByteString value) {
                copyOnWrite();
                ((Delegate) this.instance).setPoolId(value);
                return this;
            }

            public Builder clearPoolId() {
                copyOnWrite();
                ((Delegate) this.instance).clearPoolId();
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.DelegateOrBuilder
            public long getDepositAmount() {
                return ((Delegate) this.instance).getDepositAmount();
            }

            public Builder setDepositAmount(long value) {
                copyOnWrite();
                ((Delegate) this.instance).setDepositAmount(value);
                return this;
            }

            public Builder clearDepositAmount() {
                copyOnWrite();
                ((Delegate) this.instance).clearDepositAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68091.f1790xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Delegate();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\u0003", new Object[]{"stakingAddress_", "poolId_", "depositAmount_"});
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
    public static final class Withdraw extends GeneratedMessageLite<Withdraw, Builder> implements WithdrawOrBuilder {
        private static final Withdraw DEFAULT_INSTANCE;
        private static volatile Parser<Withdraw> PARSER = null;
        public static final int STAKING_ADDRESS_FIELD_NUMBER = 1;
        public static final int WITHDRAW_AMOUNT_FIELD_NUMBER = 2;
        private String stakingAddress_ = "";
        private long withdrawAmount_;

        private Withdraw() {
        }

        @Override // wallet.core.jni.proto.Cardano.WithdrawOrBuilder
        public String getStakingAddress() {
            return this.stakingAddress_;
        }

        @Override // wallet.core.jni.proto.Cardano.WithdrawOrBuilder
        public ByteString getStakingAddressBytes() {
            return ByteString.copyFromUtf8(this.stakingAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakingAddress(String value) {
            value.getClass();
            this.stakingAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakingAddress() {
            this.stakingAddress_ = getDefaultInstance().getStakingAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakingAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.stakingAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Cardano.WithdrawOrBuilder
        public long getWithdrawAmount() {
            return this.withdrawAmount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWithdrawAmount(long value) {
            this.withdrawAmount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearWithdrawAmount() {
            this.withdrawAmount_ = 0L;
        }

        public static Withdraw parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Withdraw) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Withdraw parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Withdraw) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Withdraw parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Withdraw) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Withdraw parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Withdraw) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Withdraw parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Withdraw) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Withdraw parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Withdraw) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Withdraw parseFrom(InputStream input) throws IOException {
            return (Withdraw) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Withdraw parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Withdraw) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Withdraw parseDelimitedFrom(InputStream input) throws IOException {
            return (Withdraw) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Withdraw parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Withdraw) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Withdraw parseFrom(CodedInputStream input) throws IOException {
            return (Withdraw) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Withdraw parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Withdraw) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Withdraw prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Withdraw, Builder> implements WithdrawOrBuilder {
            /* synthetic */ Builder(C68091 c68091) {
                this();
            }

            private Builder() {
                super(Withdraw.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Cardano.WithdrawOrBuilder
            public String getStakingAddress() {
                return ((Withdraw) this.instance).getStakingAddress();
            }

            @Override // wallet.core.jni.proto.Cardano.WithdrawOrBuilder
            public ByteString getStakingAddressBytes() {
                return ((Withdraw) this.instance).getStakingAddressBytes();
            }

            public Builder setStakingAddress(String value) {
                copyOnWrite();
                ((Withdraw) this.instance).setStakingAddress(value);
                return this;
            }

            public Builder clearStakingAddress() {
                copyOnWrite();
                ((Withdraw) this.instance).clearStakingAddress();
                return this;
            }

            public Builder setStakingAddressBytes(ByteString value) {
                copyOnWrite();
                ((Withdraw) this.instance).setStakingAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.WithdrawOrBuilder
            public long getWithdrawAmount() {
                return ((Withdraw) this.instance).getWithdrawAmount();
            }

            public Builder setWithdrawAmount(long value) {
                copyOnWrite();
                ((Withdraw) this.instance).setWithdrawAmount(value);
                return this;
            }

            public Builder clearWithdrawAmount() {
                copyOnWrite();
                ((Withdraw) this.instance).clearWithdrawAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68091.f1790xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Withdraw();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\u0003", new Object[]{"stakingAddress_", "withdrawAmount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Withdraw> parser = PARSER;
                    if (parser == null) {
                        synchronized (Withdraw.class) {
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
            Withdraw withdraw = new Withdraw();
            DEFAULT_INSTANCE = withdraw;
            GeneratedMessageLite.registerDefaultInstance(Withdraw.class, withdraw);
        }

        public static Withdraw getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Withdraw> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class TransactionPlan extends GeneratedMessageLite<TransactionPlan, Builder> implements TransactionPlanOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 2;
        public static final int AVAILABLE_AMOUNT_FIELD_NUMBER = 1;
        public static final int AVAILABLE_TOKENS_FIELD_NUMBER = 5;
        public static final int CHANGE_FIELD_NUMBER = 4;
        public static final int CHANGE_TOKENS_FIELD_NUMBER = 7;
        private static final TransactionPlan DEFAULT_INSTANCE;
        public static final int DEPOSIT_FIELD_NUMBER = 10;
        public static final int ERROR_FIELD_NUMBER = 9;
        public static final int FEE_FIELD_NUMBER = 3;
        public static final int OUTPUT_TOKENS_FIELD_NUMBER = 6;
        private static volatile Parser<TransactionPlan> PARSER = null;
        public static final int UNDEPOSIT_FIELD_NUMBER = 11;
        public static final int UTXOS_FIELD_NUMBER = 8;
        private long amount_;
        private long availableAmount_;
        private long change_;
        private long deposit_;
        private int error_;
        private long fee_;
        private long undeposit_;
        private Internal.ProtobufList<TokenAmount> availableTokens_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<TokenAmount> outputTokens_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<TokenAmount> changeTokens_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<TxInput> utxos_ = GeneratedMessageLite.emptyProtobufList();

        private TransactionPlan() {
        }

        @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
        public long getAvailableAmount() {
            return this.availableAmount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAvailableAmount(long value) {
            this.availableAmount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAvailableAmount() {
            this.availableAmount_ = 0L;
        }

        @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
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

        @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
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

        @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
        public long getChange() {
            return this.change_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChange(long value) {
            this.change_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearChange() {
            this.change_ = 0L;
        }

        @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
        public long getDeposit() {
            return this.deposit_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDeposit(long value) {
            this.deposit_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDeposit() {
            this.deposit_ = 0L;
        }

        @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
        public long getUndeposit() {
            return this.undeposit_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUndeposit(long value) {
            this.undeposit_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUndeposit() {
            this.undeposit_ = 0L;
        }

        @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
        public List<TokenAmount> getAvailableTokensList() {
            return this.availableTokens_;
        }

        public List<? extends TokenAmountOrBuilder> getAvailableTokensOrBuilderList() {
            return this.availableTokens_;
        }

        @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
        public int getAvailableTokensCount() {
            return this.availableTokens_.size();
        }

        @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
        public TokenAmount getAvailableTokens(int index) {
            return this.availableTokens_.get(index);
        }

        public TokenAmountOrBuilder getAvailableTokensOrBuilder(int index) {
            return this.availableTokens_.get(index);
        }

        private void ensureAvailableTokensIsMutable() {
            Internal.ProtobufList<TokenAmount> protobufList = this.availableTokens_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.availableTokens_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAvailableTokens(int index, TokenAmount value) {
            value.getClass();
            ensureAvailableTokensIsMutable();
            this.availableTokens_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAvailableTokens(TokenAmount value) {
            value.getClass();
            ensureAvailableTokensIsMutable();
            this.availableTokens_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAvailableTokens(int index, TokenAmount value) {
            value.getClass();
            ensureAvailableTokensIsMutable();
            this.availableTokens_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllAvailableTokens(Iterable<? extends TokenAmount> values) {
            ensureAvailableTokensIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.availableTokens_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAvailableTokens() {
            this.availableTokens_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeAvailableTokens(int index) {
            ensureAvailableTokensIsMutable();
            this.availableTokens_.remove(index);
        }

        @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
        public List<TokenAmount> getOutputTokensList() {
            return this.outputTokens_;
        }

        public List<? extends TokenAmountOrBuilder> getOutputTokensOrBuilderList() {
            return this.outputTokens_;
        }

        @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
        public int getOutputTokensCount() {
            return this.outputTokens_.size();
        }

        @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
        public TokenAmount getOutputTokens(int index) {
            return this.outputTokens_.get(index);
        }

        public TokenAmountOrBuilder getOutputTokensOrBuilder(int index) {
            return this.outputTokens_.get(index);
        }

        private void ensureOutputTokensIsMutable() {
            Internal.ProtobufList<TokenAmount> protobufList = this.outputTokens_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.outputTokens_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOutputTokens(int index, TokenAmount value) {
            value.getClass();
            ensureOutputTokensIsMutable();
            this.outputTokens_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addOutputTokens(TokenAmount value) {
            value.getClass();
            ensureOutputTokensIsMutable();
            this.outputTokens_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addOutputTokens(int index, TokenAmount value) {
            value.getClass();
            ensureOutputTokensIsMutable();
            this.outputTokens_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllOutputTokens(Iterable<? extends TokenAmount> values) {
            ensureOutputTokensIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.outputTokens_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOutputTokens() {
            this.outputTokens_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeOutputTokens(int index) {
            ensureOutputTokensIsMutable();
            this.outputTokens_.remove(index);
        }

        @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
        public List<TokenAmount> getChangeTokensList() {
            return this.changeTokens_;
        }

        public List<? extends TokenAmountOrBuilder> getChangeTokensOrBuilderList() {
            return this.changeTokens_;
        }

        @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
        public int getChangeTokensCount() {
            return this.changeTokens_.size();
        }

        @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
        public TokenAmount getChangeTokens(int index) {
            return this.changeTokens_.get(index);
        }

        public TokenAmountOrBuilder getChangeTokensOrBuilder(int index) {
            return this.changeTokens_.get(index);
        }

        private void ensureChangeTokensIsMutable() {
            Internal.ProtobufList<TokenAmount> protobufList = this.changeTokens_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.changeTokens_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChangeTokens(int index, TokenAmount value) {
            value.getClass();
            ensureChangeTokensIsMutable();
            this.changeTokens_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addChangeTokens(TokenAmount value) {
            value.getClass();
            ensureChangeTokensIsMutable();
            this.changeTokens_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addChangeTokens(int index, TokenAmount value) {
            value.getClass();
            ensureChangeTokensIsMutable();
            this.changeTokens_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllChangeTokens(Iterable<? extends TokenAmount> values) {
            ensureChangeTokensIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.changeTokens_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearChangeTokens() {
            this.changeTokens_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeChangeTokens(int index) {
            ensureChangeTokensIsMutable();
            this.changeTokens_.remove(index);
        }

        @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
        public List<TxInput> getUtxosList() {
            return this.utxos_;
        }

        public List<? extends TxInputOrBuilder> getUtxosOrBuilderList() {
            return this.utxos_;
        }

        @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
        public int getUtxosCount() {
            return this.utxos_.size();
        }

        @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
        public TxInput getUtxos(int index) {
            return this.utxos_.get(index);
        }

        public TxInputOrBuilder getUtxosOrBuilder(int index) {
            return this.utxos_.get(index);
        }

        private void ensureUtxosIsMutable() {
            Internal.ProtobufList<TxInput> protobufList = this.utxos_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.utxos_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUtxos(int index, TxInput value) {
            value.getClass();
            ensureUtxosIsMutable();
            this.utxos_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addUtxos(TxInput value) {
            value.getClass();
            ensureUtxosIsMutable();
            this.utxos_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addUtxos(int index, TxInput value) {
            value.getClass();
            ensureUtxosIsMutable();
            this.utxos_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllUtxos(Iterable<? extends TxInput> values) {
            ensureUtxosIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.utxos_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUtxos() {
            this.utxos_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeUtxos(int index) {
            ensureUtxosIsMutable();
            this.utxos_.remove(index);
        }

        @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
        public int getErrorValue() {
            return this.error_;
        }

        @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
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

        public static TransactionPlan parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionPlan parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionPlan parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionPlan parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionPlan parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionPlan parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionPlan parseFrom(InputStream input) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionPlan parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionPlan parseDelimitedFrom(InputStream input) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionPlan parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionPlan parseFrom(CodedInputStream input) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionPlan parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TransactionPlan prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransactionPlan, Builder> implements TransactionPlanOrBuilder {
            /* synthetic */ Builder(C68091 c68091) {
                this();
            }

            private Builder() {
                super(TransactionPlan.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
            public long getAvailableAmount() {
                return ((TransactionPlan) this.instance).getAvailableAmount();
            }

            public Builder setAvailableAmount(long value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setAvailableAmount(value);
                return this;
            }

            public Builder clearAvailableAmount() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearAvailableAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
            public long getAmount() {
                return ((TransactionPlan) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
            public long getFee() {
                return ((TransactionPlan) this.instance).getFee();
            }

            public Builder setFee(long value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setFee(value);
                return this;
            }

            public Builder clearFee() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearFee();
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
            public long getChange() {
                return ((TransactionPlan) this.instance).getChange();
            }

            public Builder setChange(long value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setChange(value);
                return this;
            }

            public Builder clearChange() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearChange();
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
            public long getDeposit() {
                return ((TransactionPlan) this.instance).getDeposit();
            }

            public Builder setDeposit(long value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setDeposit(value);
                return this;
            }

            public Builder clearDeposit() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearDeposit();
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
            public long getUndeposit() {
                return ((TransactionPlan) this.instance).getUndeposit();
            }

            public Builder setUndeposit(long value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setUndeposit(value);
                return this;
            }

            public Builder clearUndeposit() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearUndeposit();
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
            public List<TokenAmount> getAvailableTokensList() {
                return Collections.unmodifiableList(((TransactionPlan) this.instance).getAvailableTokensList());
            }

            @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
            public int getAvailableTokensCount() {
                return ((TransactionPlan) this.instance).getAvailableTokensCount();
            }

            @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
            public TokenAmount getAvailableTokens(int index) {
                return ((TransactionPlan) this.instance).getAvailableTokens(index);
            }

            public Builder setAvailableTokens(int index, TokenAmount value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setAvailableTokens(index, value);
                return this;
            }

            public Builder setAvailableTokens(int index, TokenAmount.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setAvailableTokens(index, builderForValue.build());
                return this;
            }

            public Builder addAvailableTokens(TokenAmount value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addAvailableTokens(value);
                return this;
            }

            public Builder addAvailableTokens(int index, TokenAmount value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addAvailableTokens(index, value);
                return this;
            }

            public Builder addAvailableTokens(TokenAmount.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addAvailableTokens(builderForValue.build());
                return this;
            }

            public Builder addAvailableTokens(int index, TokenAmount.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addAvailableTokens(index, builderForValue.build());
                return this;
            }

            public Builder addAllAvailableTokens(Iterable<? extends TokenAmount> values) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addAllAvailableTokens(values);
                return this;
            }

            public Builder clearAvailableTokens() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearAvailableTokens();
                return this;
            }

            public Builder removeAvailableTokens(int index) {
                copyOnWrite();
                ((TransactionPlan) this.instance).removeAvailableTokens(index);
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
            public List<TokenAmount> getOutputTokensList() {
                return Collections.unmodifiableList(((TransactionPlan) this.instance).getOutputTokensList());
            }

            @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
            public int getOutputTokensCount() {
                return ((TransactionPlan) this.instance).getOutputTokensCount();
            }

            @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
            public TokenAmount getOutputTokens(int index) {
                return ((TransactionPlan) this.instance).getOutputTokens(index);
            }

            public Builder setOutputTokens(int index, TokenAmount value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setOutputTokens(index, value);
                return this;
            }

            public Builder setOutputTokens(int index, TokenAmount.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setOutputTokens(index, builderForValue.build());
                return this;
            }

            public Builder addOutputTokens(TokenAmount value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addOutputTokens(value);
                return this;
            }

            public Builder addOutputTokens(int index, TokenAmount value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addOutputTokens(index, value);
                return this;
            }

            public Builder addOutputTokens(TokenAmount.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addOutputTokens(builderForValue.build());
                return this;
            }

            public Builder addOutputTokens(int index, TokenAmount.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addOutputTokens(index, builderForValue.build());
                return this;
            }

            public Builder addAllOutputTokens(Iterable<? extends TokenAmount> values) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addAllOutputTokens(values);
                return this;
            }

            public Builder clearOutputTokens() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearOutputTokens();
                return this;
            }

            public Builder removeOutputTokens(int index) {
                copyOnWrite();
                ((TransactionPlan) this.instance).removeOutputTokens(index);
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
            public List<TokenAmount> getChangeTokensList() {
                return Collections.unmodifiableList(((TransactionPlan) this.instance).getChangeTokensList());
            }

            @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
            public int getChangeTokensCount() {
                return ((TransactionPlan) this.instance).getChangeTokensCount();
            }

            @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
            public TokenAmount getChangeTokens(int index) {
                return ((TransactionPlan) this.instance).getChangeTokens(index);
            }

            public Builder setChangeTokens(int index, TokenAmount value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setChangeTokens(index, value);
                return this;
            }

            public Builder setChangeTokens(int index, TokenAmount.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setChangeTokens(index, builderForValue.build());
                return this;
            }

            public Builder addChangeTokens(TokenAmount value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addChangeTokens(value);
                return this;
            }

            public Builder addChangeTokens(int index, TokenAmount value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addChangeTokens(index, value);
                return this;
            }

            public Builder addChangeTokens(TokenAmount.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addChangeTokens(builderForValue.build());
                return this;
            }

            public Builder addChangeTokens(int index, TokenAmount.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addChangeTokens(index, builderForValue.build());
                return this;
            }

            public Builder addAllChangeTokens(Iterable<? extends TokenAmount> values) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addAllChangeTokens(values);
                return this;
            }

            public Builder clearChangeTokens() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearChangeTokens();
                return this;
            }

            public Builder removeChangeTokens(int index) {
                copyOnWrite();
                ((TransactionPlan) this.instance).removeChangeTokens(index);
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
            public List<TxInput> getUtxosList() {
                return Collections.unmodifiableList(((TransactionPlan) this.instance).getUtxosList());
            }

            @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
            public int getUtxosCount() {
                return ((TransactionPlan) this.instance).getUtxosCount();
            }

            @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
            public TxInput getUtxos(int index) {
                return ((TransactionPlan) this.instance).getUtxos(index);
            }

            public Builder setUtxos(int index, TxInput value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setUtxos(index, value);
                return this;
            }

            public Builder setUtxos(int index, TxInput.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setUtxos(index, builderForValue.build());
                return this;
            }

            public Builder addUtxos(TxInput value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addUtxos(value);
                return this;
            }

            public Builder addUtxos(int index, TxInput value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addUtxos(index, value);
                return this;
            }

            public Builder addUtxos(TxInput.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addUtxos(builderForValue.build());
                return this;
            }

            public Builder addUtxos(int index, TxInput.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addUtxos(index, builderForValue.build());
                return this;
            }

            public Builder addAllUtxos(Iterable<? extends TxInput> values) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addAllUtxos(values);
                return this;
            }

            public Builder clearUtxos() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearUtxos();
                return this;
            }

            public Builder removeUtxos(int index) {
                copyOnWrite();
                ((TransactionPlan) this.instance).removeUtxos(index);
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
            public int getErrorValue() {
                return ((TransactionPlan) this.instance).getErrorValue();
            }

            public Builder setErrorValue(int value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setErrorValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.TransactionPlanOrBuilder
            public Common.SigningError getError() {
                return ((TransactionPlan) this.instance).getError();
            }

            public Builder setError(Common.SigningError value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setError(value);
                return this;
            }

            public Builder clearError() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearError();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68091.f1790xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransactionPlan();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u000b\u0000\u0000\u0001\u000b\u000b\u0000\u0004\u0000\u0001\u0003\u0002\u0003\u0003\u0003\u0004\u0003\u0005\u001b\u0006\u001b\u0007\u001b\b\u001b\t\f\n\u0003\u000b\u0003", new Object[]{"availableAmount_", "amount_", "fee_", "change_", "availableTokens_", TokenAmount.class, "outputTokens_", TokenAmount.class, "changeTokens_", TokenAmount.class, "utxos_", TxInput.class, "error_", "deposit_", "undeposit_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TransactionPlan> parser = PARSER;
                    if (parser == null) {
                        synchronized (TransactionPlan.class) {
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
            TransactionPlan transactionPlan = new TransactionPlan();
            DEFAULT_INSTANCE = transactionPlan;
            GeneratedMessageLite.registerDefaultInstance(TransactionPlan.class, transactionPlan);
        }

        public static TransactionPlan getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TransactionPlan> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int DELEGATE_FIELD_NUMBER = 7;
        public static final int DEREGISTER_STAKING_KEY_FIELD_NUMBER = 9;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PLAN_FIELD_NUMBER = 5;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 2;
        public static final int REGISTER_STAKING_KEY_FIELD_NUMBER = 6;
        public static final int TRANSFER_MESSAGE_FIELD_NUMBER = 3;
        public static final int TTL_FIELD_NUMBER = 4;
        public static final int UTXOS_FIELD_NUMBER = 1;
        public static final int WITHDRAW_FIELD_NUMBER = 8;
        private Delegate delegate_;
        private DeregisterStakingKey deregisterStakingKey_;
        private TransactionPlan plan_;
        private RegisterStakingKey registerStakingKey_;
        private Transfer transferMessage_;
        private long ttl_;
        private Withdraw withdraw_;
        private Internal.ProtobufList<TxInput> utxos_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<ByteString> privateKey_ = GeneratedMessageLite.emptyProtobufList();

        private SigningInput() {
        }

        @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
        public List<TxInput> getUtxosList() {
            return this.utxos_;
        }

        public List<? extends TxInputOrBuilder> getUtxosOrBuilderList() {
            return this.utxos_;
        }

        @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
        public int getUtxosCount() {
            return this.utxos_.size();
        }

        @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
        public TxInput getUtxos(int index) {
            return this.utxos_.get(index);
        }

        public TxInputOrBuilder getUtxosOrBuilder(int index) {
            return this.utxos_.get(index);
        }

        private void ensureUtxosIsMutable() {
            Internal.ProtobufList<TxInput> protobufList = this.utxos_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.utxos_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUtxos(int index, TxInput value) {
            value.getClass();
            ensureUtxosIsMutable();
            this.utxos_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addUtxos(TxInput value) {
            value.getClass();
            ensureUtxosIsMutable();
            this.utxos_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addUtxos(int index, TxInput value) {
            value.getClass();
            ensureUtxosIsMutable();
            this.utxos_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllUtxos(Iterable<? extends TxInput> values) {
            ensureUtxosIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.utxos_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUtxos() {
            this.utxos_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeUtxos(int index) {
            ensureUtxosIsMutable();
            this.utxos_.remove(index);
        }

        @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
        public List<ByteString> getPrivateKeyList() {
            return this.privateKey_;
        }

        @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
        public int getPrivateKeyCount() {
            return this.privateKey_.size();
        }

        @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
        public ByteString getPrivateKey(int index) {
            return this.privateKey_.get(index);
        }

        private void ensurePrivateKeyIsMutable() {
            Internal.ProtobufList<ByteString> protobufList = this.privateKey_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.privateKey_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPrivateKey(int index, ByteString value) {
            value.getClass();
            ensurePrivateKeyIsMutable();
            this.privateKey_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addPrivateKey(ByteString value) {
            value.getClass();
            ensurePrivateKeyIsMutable();
            this.privateKey_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllPrivateKey(Iterable<? extends ByteString> values) {
            ensurePrivateKeyIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.privateKey_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPrivateKey() {
            this.privateKey_ = GeneratedMessageLite.emptyProtobufList();
        }

        @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
        public boolean hasTransferMessage() {
            return this.transferMessage_ != null;
        }

        @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
        public Transfer getTransferMessage() {
            Transfer transfer = this.transferMessage_;
            return transfer == null ? Transfer.getDefaultInstance() : transfer;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransferMessage(Transfer value) {
            value.getClass();
            this.transferMessage_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransferMessage(Transfer value) {
            value.getClass();
            Transfer transfer = this.transferMessage_;
            if (transfer != null && transfer != Transfer.getDefaultInstance()) {
                this.transferMessage_ = Transfer.newBuilder(this.transferMessage_).mergeFrom((Transfer.Builder) value).buildPartial();
            } else {
                this.transferMessage_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransferMessage() {
            this.transferMessage_ = null;
        }

        @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
        public boolean hasRegisterStakingKey() {
            return this.registerStakingKey_ != null;
        }

        @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
        public RegisterStakingKey getRegisterStakingKey() {
            RegisterStakingKey registerStakingKey = this.registerStakingKey_;
            return registerStakingKey == null ? RegisterStakingKey.getDefaultInstance() : registerStakingKey;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRegisterStakingKey(RegisterStakingKey value) {
            value.getClass();
            this.registerStakingKey_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeRegisterStakingKey(RegisterStakingKey value) {
            value.getClass();
            RegisterStakingKey registerStakingKey = this.registerStakingKey_;
            if (registerStakingKey != null && registerStakingKey != RegisterStakingKey.getDefaultInstance()) {
                this.registerStakingKey_ = RegisterStakingKey.newBuilder(this.registerStakingKey_).mergeFrom((RegisterStakingKey.Builder) value).buildPartial();
            } else {
                this.registerStakingKey_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRegisterStakingKey() {
            this.registerStakingKey_ = null;
        }

        @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
        public boolean hasDelegate() {
            return this.delegate_ != null;
        }

        @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
        public Delegate getDelegate() {
            Delegate delegate = this.delegate_;
            return delegate == null ? Delegate.getDefaultInstance() : delegate;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDelegate(Delegate value) {
            value.getClass();
            this.delegate_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeDelegate(Delegate value) {
            value.getClass();
            Delegate delegate = this.delegate_;
            if (delegate != null && delegate != Delegate.getDefaultInstance()) {
                this.delegate_ = Delegate.newBuilder(this.delegate_).mergeFrom((Delegate.Builder) value).buildPartial();
            } else {
                this.delegate_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDelegate() {
            this.delegate_ = null;
        }

        @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
        public boolean hasWithdraw() {
            return this.withdraw_ != null;
        }

        @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
        public Withdraw getWithdraw() {
            Withdraw withdraw = this.withdraw_;
            return withdraw == null ? Withdraw.getDefaultInstance() : withdraw;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWithdraw(Withdraw value) {
            value.getClass();
            this.withdraw_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeWithdraw(Withdraw value) {
            value.getClass();
            Withdraw withdraw = this.withdraw_;
            if (withdraw != null && withdraw != Withdraw.getDefaultInstance()) {
                this.withdraw_ = Withdraw.newBuilder(this.withdraw_).mergeFrom((Withdraw.Builder) value).buildPartial();
            } else {
                this.withdraw_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearWithdraw() {
            this.withdraw_ = null;
        }

        @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
        public boolean hasDeregisterStakingKey() {
            return this.deregisterStakingKey_ != null;
        }

        @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
        public DeregisterStakingKey getDeregisterStakingKey() {
            DeregisterStakingKey deregisterStakingKey = this.deregisterStakingKey_;
            return deregisterStakingKey == null ? DeregisterStakingKey.getDefaultInstance() : deregisterStakingKey;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDeregisterStakingKey(DeregisterStakingKey value) {
            value.getClass();
            this.deregisterStakingKey_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeDeregisterStakingKey(DeregisterStakingKey value) {
            value.getClass();
            DeregisterStakingKey deregisterStakingKey = this.deregisterStakingKey_;
            if (deregisterStakingKey != null && deregisterStakingKey != DeregisterStakingKey.getDefaultInstance()) {
                this.deregisterStakingKey_ = DeregisterStakingKey.newBuilder(this.deregisterStakingKey_).mergeFrom((DeregisterStakingKey.Builder) value).buildPartial();
            } else {
                this.deregisterStakingKey_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDeregisterStakingKey() {
            this.deregisterStakingKey_ = null;
        }

        @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
        public long getTtl() {
            return this.ttl_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTtl(long value) {
            this.ttl_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTtl() {
            this.ttl_ = 0L;
        }

        @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
        public boolean hasPlan() {
            return this.plan_ != null;
        }

        @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
        public TransactionPlan getPlan() {
            TransactionPlan transactionPlan = this.plan_;
            return transactionPlan == null ? TransactionPlan.getDefaultInstance() : transactionPlan;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPlan(TransactionPlan value) {
            value.getClass();
            this.plan_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergePlan(TransactionPlan value) {
            value.getClass();
            TransactionPlan transactionPlan = this.plan_;
            if (transactionPlan != null && transactionPlan != TransactionPlan.getDefaultInstance()) {
                this.plan_ = TransactionPlan.newBuilder(this.plan_).mergeFrom((TransactionPlan.Builder) value).buildPartial();
            } else {
                this.plan_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPlan() {
            this.plan_ = null;
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
            /* synthetic */ Builder(C68091 c68091) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
            public List<TxInput> getUtxosList() {
                return Collections.unmodifiableList(((SigningInput) this.instance).getUtxosList());
            }

            @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
            public int getUtxosCount() {
                return ((SigningInput) this.instance).getUtxosCount();
            }

            @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
            public TxInput getUtxos(int index) {
                return ((SigningInput) this.instance).getUtxos(index);
            }

            public Builder setUtxos(int index, TxInput value) {
                copyOnWrite();
                ((SigningInput) this.instance).setUtxos(index, value);
                return this;
            }

            public Builder setUtxos(int index, TxInput.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setUtxos(index, builderForValue.build());
                return this;
            }

            public Builder addUtxos(TxInput value) {
                copyOnWrite();
                ((SigningInput) this.instance).addUtxos(value);
                return this;
            }

            public Builder addUtxos(int index, TxInput value) {
                copyOnWrite();
                ((SigningInput) this.instance).addUtxos(index, value);
                return this;
            }

            public Builder addUtxos(TxInput.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).addUtxos(builderForValue.build());
                return this;
            }

            public Builder addUtxos(int index, TxInput.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).addUtxos(index, builderForValue.build());
                return this;
            }

            public Builder addAllUtxos(Iterable<? extends TxInput> values) {
                copyOnWrite();
                ((SigningInput) this.instance).addAllUtxos(values);
                return this;
            }

            public Builder clearUtxos() {
                copyOnWrite();
                ((SigningInput) this.instance).clearUtxos();
                return this;
            }

            public Builder removeUtxos(int index) {
                copyOnWrite();
                ((SigningInput) this.instance).removeUtxos(index);
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
            public List<ByteString> getPrivateKeyList() {
                return Collections.unmodifiableList(((SigningInput) this.instance).getPrivateKeyList());
            }

            @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
            public int getPrivateKeyCount() {
                return ((SigningInput) this.instance).getPrivateKeyCount();
            }

            @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
            public ByteString getPrivateKey(int index) {
                return ((SigningInput) this.instance).getPrivateKey(index);
            }

            public Builder setPrivateKey(int index, ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setPrivateKey(index, value);
                return this;
            }

            public Builder addPrivateKey(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).addPrivateKey(value);
                return this;
            }

            public Builder addAllPrivateKey(Iterable<? extends ByteString> values) {
                copyOnWrite();
                ((SigningInput) this.instance).addAllPrivateKey(values);
                return this;
            }

            public Builder clearPrivateKey() {
                copyOnWrite();
                ((SigningInput) this.instance).clearPrivateKey();
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
            public boolean hasTransferMessage() {
                return ((SigningInput) this.instance).hasTransferMessage();
            }

            @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
            public Transfer getTransferMessage() {
                return ((SigningInput) this.instance).getTransferMessage();
            }

            public Builder setTransferMessage(Transfer value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTransferMessage(value);
                return this;
            }

            public Builder setTransferMessage(Transfer.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setTransferMessage(builderForValue.build());
                return this;
            }

            public Builder mergeTransferMessage(Transfer value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeTransferMessage(value);
                return this;
            }

            public Builder clearTransferMessage() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTransferMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
            public boolean hasRegisterStakingKey() {
                return ((SigningInput) this.instance).hasRegisterStakingKey();
            }

            @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
            public RegisterStakingKey getRegisterStakingKey() {
                return ((SigningInput) this.instance).getRegisterStakingKey();
            }

            public Builder setRegisterStakingKey(RegisterStakingKey value) {
                copyOnWrite();
                ((SigningInput) this.instance).setRegisterStakingKey(value);
                return this;
            }

            public Builder setRegisterStakingKey(RegisterStakingKey.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setRegisterStakingKey(builderForValue.build());
                return this;
            }

            public Builder mergeRegisterStakingKey(RegisterStakingKey value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeRegisterStakingKey(value);
                return this;
            }

            public Builder clearRegisterStakingKey() {
                copyOnWrite();
                ((SigningInput) this.instance).clearRegisterStakingKey();
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
            public boolean hasDelegate() {
                return ((SigningInput) this.instance).hasDelegate();
            }

            @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
            public Delegate getDelegate() {
                return ((SigningInput) this.instance).getDelegate();
            }

            public Builder setDelegate(Delegate value) {
                copyOnWrite();
                ((SigningInput) this.instance).setDelegate(value);
                return this;
            }

            public Builder setDelegate(Delegate.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setDelegate(builderForValue.build());
                return this;
            }

            public Builder mergeDelegate(Delegate value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeDelegate(value);
                return this;
            }

            public Builder clearDelegate() {
                copyOnWrite();
                ((SigningInput) this.instance).clearDelegate();
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
            public boolean hasWithdraw() {
                return ((SigningInput) this.instance).hasWithdraw();
            }

            @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
            public Withdraw getWithdraw() {
                return ((SigningInput) this.instance).getWithdraw();
            }

            public Builder setWithdraw(Withdraw value) {
                copyOnWrite();
                ((SigningInput) this.instance).setWithdraw(value);
                return this;
            }

            public Builder setWithdraw(Withdraw.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setWithdraw(builderForValue.build());
                return this;
            }

            public Builder mergeWithdraw(Withdraw value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeWithdraw(value);
                return this;
            }

            public Builder clearWithdraw() {
                copyOnWrite();
                ((SigningInput) this.instance).clearWithdraw();
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
            public boolean hasDeregisterStakingKey() {
                return ((SigningInput) this.instance).hasDeregisterStakingKey();
            }

            @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
            public DeregisterStakingKey getDeregisterStakingKey() {
                return ((SigningInput) this.instance).getDeregisterStakingKey();
            }

            public Builder setDeregisterStakingKey(DeregisterStakingKey value) {
                copyOnWrite();
                ((SigningInput) this.instance).setDeregisterStakingKey(value);
                return this;
            }

            public Builder setDeregisterStakingKey(DeregisterStakingKey.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setDeregisterStakingKey(builderForValue.build());
                return this;
            }

            public Builder mergeDeregisterStakingKey(DeregisterStakingKey value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeDeregisterStakingKey(value);
                return this;
            }

            public Builder clearDeregisterStakingKey() {
                copyOnWrite();
                ((SigningInput) this.instance).clearDeregisterStakingKey();
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
            public long getTtl() {
                return ((SigningInput) this.instance).getTtl();
            }

            public Builder setTtl(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTtl(value);
                return this;
            }

            public Builder clearTtl() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTtl();
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
            public boolean hasPlan() {
                return ((SigningInput) this.instance).hasPlan();
            }

            @Override // wallet.core.jni.proto.Cardano.SigningInputOrBuilder
            public TransactionPlan getPlan() {
                return ((SigningInput) this.instance).getPlan();
            }

            public Builder setPlan(TransactionPlan value) {
                copyOnWrite();
                ((SigningInput) this.instance).setPlan(value);
                return this;
            }

            public Builder setPlan(TransactionPlan.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setPlan(builderForValue.build());
                return this;
            }

            public Builder mergePlan(TransactionPlan value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergePlan(value);
                return this;
            }

            public Builder clearPlan() {
                copyOnWrite();
                ((SigningInput) this.instance).clearPlan();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68091.f1790xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\t\u0000\u0000\u0001\t\t\u0000\u0002\u0000\u0001\u001b\u0002\u001c\u0003\t\u0004\u0003\u0005\t\u0006\t\u0007\t\b\t\t\t", new Object[]{"utxos_", TxInput.class, "privateKey_", "transferMessage_", "ttl_", "plan_", "registerStakingKey_", "delegate_", "withdraw_", "deregisterStakingKey_"});
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
        public static final int ENCODED_FIELD_NUMBER = 1;
        public static final int ERROR_FIELD_NUMBER = 3;
        private static volatile Parser<SigningOutput> PARSER = null;
        public static final int TX_ID_FIELD_NUMBER = 2;
        private ByteString encoded_;
        private int error_;
        private ByteString txId_;

        private SigningOutput() {
            ByteString byteString = ByteString.EMPTY;
            this.encoded_ = byteString;
            this.txId_ = byteString;
        }

        @Override // wallet.core.jni.proto.Cardano.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Cardano.SigningOutputOrBuilder
        public ByteString getTxId() {
            return this.txId_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTxId(ByteString value) {
            value.getClass();
            this.txId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTxId() {
            this.txId_ = getDefaultInstance().getTxId();
        }

        @Override // wallet.core.jni.proto.Cardano.SigningOutputOrBuilder
        public int getErrorValue() {
            return this.error_;
        }

        @Override // wallet.core.jni.proto.Cardano.SigningOutputOrBuilder
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
            /* synthetic */ Builder(C68091 c68091) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Cardano.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.Cardano.SigningOutputOrBuilder
            public ByteString getTxId() {
                return ((SigningOutput) this.instance).getTxId();
            }

            public Builder setTxId(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setTxId(value);
                return this;
            }

            public Builder clearTxId() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearTxId();
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.SigningOutputOrBuilder
            public int getErrorValue() {
                return ((SigningOutput) this.instance).getErrorValue();
            }

            public Builder setErrorValue(int value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setErrorValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Cardano.SigningOutputOrBuilder
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
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68091.f1790xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002\n\u0003\f", new Object[]{"encoded_", "txId_", "error_"});
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
