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
public final class Binance {

    /* loaded from: classes6.dex */
    public interface CancelTradeOrderOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getRefid();

        ByteString getRefidBytes();

        ByteString getSender();

        String getSymbol();

        ByteString getSymbolBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface ClaimHTLOrderOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getFrom();

        ByteString getRandomNumber();

        ByteString getSwapId();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface DepositHTLTOrderOrBuilder extends MessageLiteOrBuilder {
        SendOrder.Token getAmount(int index);

        int getAmountCount();

        List<SendOrder.Token> getAmountList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getFrom();

        ByteString getSwapId();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface HTLTOrderOrBuilder extends MessageLiteOrBuilder {
        SendOrder.Token getAmount(int index);

        int getAmountCount();

        List<SendOrder.Token> getAmountList();

        boolean getCrossChain();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getExpectedIncome();

        ByteString getExpectedIncomeBytes();

        ByteString getFrom();

        long getHeightSpan();

        ByteString getRandomNumberHash();

        String getRecipientOtherChain();

        ByteString getRecipientOtherChainBytes();

        String getSenderOtherChain();

        ByteString getSenderOtherChainBytes();

        long getTimestamp();

        ByteString getTo();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface RefundHTLTOrderOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getFrom();

        ByteString getSwapId();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SendOrderOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        SendOrder.Input getInputs(int index);

        int getInputsCount();

        List<SendOrder.Input> getInputsList();

        SendOrder.Output getOutputs(int index);

        int getOutputsCount();

        List<SendOrder.Output> getOutputsList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SideChainDelegateOrBuilder extends MessageLiteOrBuilder {
        String getChainId();

        ByteString getChainIdBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        SendOrder.Token getDelegation();

        ByteString getDelegatorAddr();

        ByteString getValidatorAddr();

        boolean hasDelegation();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SideChainRedelegateOrBuilder extends MessageLiteOrBuilder {
        SendOrder.Token getAmount();

        String getChainId();

        ByteString getChainIdBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getDelegatorAddr();

        ByteString getValidatorDstAddr();

        ByteString getValidatorSrcAddr();

        boolean hasAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SideChainUndelegateOrBuilder extends MessageLiteOrBuilder {
        SendOrder.Token getAmount();

        String getChainId();

        ByteString getChainIdBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getDelegatorAddr();

        ByteString getValidatorAddr();

        boolean hasAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SignatureOrBuilder extends MessageLiteOrBuilder {
        long getAccountNumber();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getPubKey();

        long getSequence();

        ByteString getSignature();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        long getAccountNumber();

        TokenBurnOrder getBurnOrder();

        CancelTradeOrder getCancelTradeOrder();

        String getChainId();

        ByteString getChainIdBytes();

        ClaimHTLOrder getClaimHTLTOrder();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        DepositHTLTOrder getDepositHTLTOrder();

        TokenFreezeOrder getFreezeOrder();

        HTLTOrder getHtltOrder();

        TokenIssueOrder getIssueOrder();

        String getMemo();

        ByteString getMemoBytes();

        TokenMintOrder getMintOrder();

        SigningInput.OrderOneofCase getOrderOneofCase();

        ByteString getPrivateKey();

        RefundHTLTOrder getRefundHTLTOrder();

        SendOrder getSendOrder();

        long getSequence();

        SideChainDelegate getSideDelegateOrder();

        SideChainRedelegate getSideRedelegateOrder();

        SideChainUndelegate getSideUndelegateOrder();

        long getSource();

        TimeLockOrder getTimeLockOrder();

        TimeRelockOrder getTimeRelockOrder();

        TimeUnlockOrder getTimeUnlockOrder();

        TradeOrder getTradeOrder();

        TransferOut getTransferOutOrder();

        TokenUnfreezeOrder getUnfreezeOrder();

        boolean hasBurnOrder();

        boolean hasCancelTradeOrder();

        boolean hasClaimHTLTOrder();

        boolean hasDepositHTLTOrder();

        boolean hasFreezeOrder();

        boolean hasHtltOrder();

        boolean hasIssueOrder();

        boolean hasMintOrder();

        boolean hasRefundHTLTOrder();

        boolean hasSendOrder();

        boolean hasSideDelegateOrder();

        boolean hasSideRedelegateOrder();

        boolean hasSideUndelegateOrder();

        boolean hasTimeLockOrder();

        boolean hasTimeRelockOrder();

        boolean hasTimeUnlockOrder();

        boolean hasTradeOrder();

        boolean hasTransferOutOrder();

        boolean hasUnfreezeOrder();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getEncoded();

        Common.SigningError getError();

        String getErrorMessage();

        ByteString getErrorMessageBytes();

        int getErrorValue();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TimeLockOrderOrBuilder extends MessageLiteOrBuilder {
        SendOrder.Token getAmount(int index);

        int getAmountCount();

        List<SendOrder.Token> getAmountList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getDescription();

        ByteString getDescriptionBytes();

        ByteString getFromAddress();

        long getLockTime();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TimeRelockOrderOrBuilder extends MessageLiteOrBuilder {
        SendOrder.Token getAmount(int index);

        int getAmountCount();

        List<SendOrder.Token> getAmountList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getDescription();

        ByteString getDescriptionBytes();

        ByteString getFromAddress();

        long getId();

        long getLockTime();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TimeUnlockOrderOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getFromAddress();

        long getId();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TokenBurnOrderOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getFrom();

        String getSymbol();

        ByteString getSymbolBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TokenFreezeOrderOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getFrom();

        String getSymbol();

        ByteString getSymbolBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TokenIssueOrderOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getFrom();

        boolean getMintable();

        String getName();

        ByteString getNameBytes();

        String getSymbol();

        ByteString getSymbolBytes();

        long getTotalSupply();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TokenMintOrderOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getFrom();

        String getSymbol();

        ByteString getSymbolBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TokenUnfreezeOrderOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getFrom();

        String getSymbol();

        ByteString getSymbolBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TradeOrderOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getId();

        ByteString getIdBytes();

        long getOrdertype();

        long getPrice();

        long getQuantity();

        ByteString getSender();

        long getSide();

        String getSymbol();

        ByteString getSymbolBytes();

        long getTimeinforce();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TransactionOrBuilder extends MessageLiteOrBuilder {
        ByteString getData();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getMemo();

        ByteString getMemoBytes();

        ByteString getMsgs(int index);

        int getMsgsCount();

        List<ByteString> getMsgsList();

        ByteString getSignatures(int index);

        int getSignaturesCount();

        List<ByteString> getSignaturesList();

        long getSource();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TransferOutOrBuilder extends MessageLiteOrBuilder {
        SendOrder.Token getAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getExpireTime();

        ByteString getFrom();

        ByteString getTo();

        boolean hasAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Binance() {
    }

    /* loaded from: classes6.dex */
    public static final class Transaction extends GeneratedMessageLite<Transaction, Builder> implements TransactionOrBuilder {
        public static final int DATA_FIELD_NUMBER = 5;
        private static final Transaction DEFAULT_INSTANCE;
        public static final int MEMO_FIELD_NUMBER = 3;
        public static final int MSGS_FIELD_NUMBER = 1;
        private static volatile Parser<Transaction> PARSER = null;
        public static final int SIGNATURES_FIELD_NUMBER = 2;
        public static final int SOURCE_FIELD_NUMBER = 4;
        private long source_;
        private Internal.ProtobufList<ByteString> msgs_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<ByteString> signatures_ = GeneratedMessageLite.emptyProtobufList();
        private String memo_ = "";
        private ByteString data_ = ByteString.EMPTY;

        private Transaction() {
        }

        @Override // wallet.core.jni.proto.Binance.TransactionOrBuilder
        public List<ByteString> getMsgsList() {
            return this.msgs_;
        }

        @Override // wallet.core.jni.proto.Binance.TransactionOrBuilder
        public int getMsgsCount() {
            return this.msgs_.size();
        }

        @Override // wallet.core.jni.proto.Binance.TransactionOrBuilder
        public ByteString getMsgs(int index) {
            return this.msgs_.get(index);
        }

        private void ensureMsgsIsMutable() {
            Internal.ProtobufList<ByteString> protobufList = this.msgs_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.msgs_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMsgs(int index, ByteString value) {
            value.getClass();
            ensureMsgsIsMutable();
            this.msgs_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addMsgs(ByteString value) {
            value.getClass();
            ensureMsgsIsMutable();
            this.msgs_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllMsgs(Iterable<? extends ByteString> values) {
            ensureMsgsIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.msgs_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMsgs() {
            this.msgs_ = GeneratedMessageLite.emptyProtobufList();
        }

        @Override // wallet.core.jni.proto.Binance.TransactionOrBuilder
        public List<ByteString> getSignaturesList() {
            return this.signatures_;
        }

        @Override // wallet.core.jni.proto.Binance.TransactionOrBuilder
        public int getSignaturesCount() {
            return this.signatures_.size();
        }

        @Override // wallet.core.jni.proto.Binance.TransactionOrBuilder
        public ByteString getSignatures(int index) {
            return this.signatures_.get(index);
        }

        private void ensureSignaturesIsMutable() {
            Internal.ProtobufList<ByteString> protobufList = this.signatures_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.signatures_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSignatures(int index, ByteString value) {
            value.getClass();
            ensureSignaturesIsMutable();
            this.signatures_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addSignatures(ByteString value) {
            value.getClass();
            ensureSignaturesIsMutable();
            this.signatures_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllSignatures(Iterable<? extends ByteString> values) {
            ensureSignaturesIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.signatures_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSignatures() {
            this.signatures_ = GeneratedMessageLite.emptyProtobufList();
        }

        @Override // wallet.core.jni.proto.Binance.TransactionOrBuilder
        public String getMemo() {
            return this.memo_;
        }

        @Override // wallet.core.jni.proto.Binance.TransactionOrBuilder
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

        @Override // wallet.core.jni.proto.Binance.TransactionOrBuilder
        public long getSource() {
            return this.source_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSource(long value) {
            this.source_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSource() {
            this.source_ = 0L;
        }

        @Override // wallet.core.jni.proto.Binance.TransactionOrBuilder
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
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(Transaction.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.TransactionOrBuilder
            public List<ByteString> getMsgsList() {
                return Collections.unmodifiableList(((Transaction) this.instance).getMsgsList());
            }

            @Override // wallet.core.jni.proto.Binance.TransactionOrBuilder
            public int getMsgsCount() {
                return ((Transaction) this.instance).getMsgsCount();
            }

            @Override // wallet.core.jni.proto.Binance.TransactionOrBuilder
            public ByteString getMsgs(int index) {
                return ((Transaction) this.instance).getMsgs(index);
            }

            public Builder setMsgs(int index, ByteString value) {
                copyOnWrite();
                ((Transaction) this.instance).setMsgs(index, value);
                return this;
            }

            public Builder addMsgs(ByteString value) {
                copyOnWrite();
                ((Transaction) this.instance).addMsgs(value);
                return this;
            }

            public Builder addAllMsgs(Iterable<? extends ByteString> values) {
                copyOnWrite();
                ((Transaction) this.instance).addAllMsgs(values);
                return this;
            }

            public Builder clearMsgs() {
                copyOnWrite();
                ((Transaction) this.instance).clearMsgs();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TransactionOrBuilder
            public List<ByteString> getSignaturesList() {
                return Collections.unmodifiableList(((Transaction) this.instance).getSignaturesList());
            }

            @Override // wallet.core.jni.proto.Binance.TransactionOrBuilder
            public int getSignaturesCount() {
                return ((Transaction) this.instance).getSignaturesCount();
            }

            @Override // wallet.core.jni.proto.Binance.TransactionOrBuilder
            public ByteString getSignatures(int index) {
                return ((Transaction) this.instance).getSignatures(index);
            }

            public Builder setSignatures(int index, ByteString value) {
                copyOnWrite();
                ((Transaction) this.instance).setSignatures(index, value);
                return this;
            }

            public Builder addSignatures(ByteString value) {
                copyOnWrite();
                ((Transaction) this.instance).addSignatures(value);
                return this;
            }

            public Builder addAllSignatures(Iterable<? extends ByteString> values) {
                copyOnWrite();
                ((Transaction) this.instance).addAllSignatures(values);
                return this;
            }

            public Builder clearSignatures() {
                copyOnWrite();
                ((Transaction) this.instance).clearSignatures();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TransactionOrBuilder
            public String getMemo() {
                return ((Transaction) this.instance).getMemo();
            }

            @Override // wallet.core.jni.proto.Binance.TransactionOrBuilder
            public ByteString getMemoBytes() {
                return ((Transaction) this.instance).getMemoBytes();
            }

            public Builder setMemo(String value) {
                copyOnWrite();
                ((Transaction) this.instance).setMemo(value);
                return this;
            }

            public Builder clearMemo() {
                copyOnWrite();
                ((Transaction) this.instance).clearMemo();
                return this;
            }

            public Builder setMemoBytes(ByteString value) {
                copyOnWrite();
                ((Transaction) this.instance).setMemoBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TransactionOrBuilder
            public long getSource() {
                return ((Transaction) this.instance).getSource();
            }

            public Builder setSource(long value) {
                copyOnWrite();
                ((Transaction) this.instance).setSource(value);
                return this;
            }

            public Builder clearSource() {
                copyOnWrite();
                ((Transaction) this.instance).clearSource();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TransactionOrBuilder
            public ByteString getData() {
                return ((Transaction) this.instance).getData();
            }

            public Builder setData(ByteString value) {
                copyOnWrite();
                ((Transaction) this.instance).setData(value);
                return this;
            }

            public Builder clearData() {
                copyOnWrite();
                ((Transaction) this.instance).clearData();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Transaction();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u001c\u0002\u001c\u0003Ȉ\u0004\u0002\u0005\n", new Object[]{"msgs_", "signatures_", "memo_", "source_", "data_"});
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

    /* renamed from: wallet.core.jni.proto.Binance$1 */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C67051 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1780xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1780xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1780xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1780xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1780xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1780xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1780xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1780xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class Signature extends GeneratedMessageLite<Signature, Builder> implements SignatureOrBuilder {
        public static final int ACCOUNT_NUMBER_FIELD_NUMBER = 3;
        private static final Signature DEFAULT_INSTANCE;
        private static volatile Parser<Signature> PARSER = null;
        public static final int PUB_KEY_FIELD_NUMBER = 1;
        public static final int SEQUENCE_FIELD_NUMBER = 4;
        public static final int SIGNATURE_FIELD_NUMBER = 2;
        private long accountNumber_;
        private ByteString pubKey_;
        private long sequence_;
        private ByteString signature_;

        private Signature() {
            ByteString byteString = ByteString.EMPTY;
            this.pubKey_ = byteString;
            this.signature_ = byteString;
        }

        @Override // wallet.core.jni.proto.Binance.SignatureOrBuilder
        public ByteString getPubKey() {
            return this.pubKey_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPubKey(ByteString value) {
            value.getClass();
            this.pubKey_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPubKey() {
            this.pubKey_ = getDefaultInstance().getPubKey();
        }

        @Override // wallet.core.jni.proto.Binance.SignatureOrBuilder
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

        @Override // wallet.core.jni.proto.Binance.SignatureOrBuilder
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

        @Override // wallet.core.jni.proto.Binance.SignatureOrBuilder
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

        public static Signature parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Signature) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Signature parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Signature) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Signature parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Signature) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Signature parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Signature) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Signature parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Signature) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Signature parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Signature) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Signature parseFrom(InputStream input) throws IOException {
            return (Signature) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Signature parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Signature) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Signature parseDelimitedFrom(InputStream input) throws IOException {
            return (Signature) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Signature parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Signature) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Signature parseFrom(CodedInputStream input) throws IOException {
            return (Signature) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Signature parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Signature) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Signature prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Signature, Builder> implements SignatureOrBuilder {
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(Signature.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.SignatureOrBuilder
            public ByteString getPubKey() {
                return ((Signature) this.instance).getPubKey();
            }

            public Builder setPubKey(ByteString value) {
                copyOnWrite();
                ((Signature) this.instance).setPubKey(value);
                return this;
            }

            public Builder clearPubKey() {
                copyOnWrite();
                ((Signature) this.instance).clearPubKey();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SignatureOrBuilder
            public ByteString getSignature() {
                return ((Signature) this.instance).getSignature();
            }

            public Builder setSignature(ByteString value) {
                copyOnWrite();
                ((Signature) this.instance).setSignature(value);
                return this;
            }

            public Builder clearSignature() {
                copyOnWrite();
                ((Signature) this.instance).clearSignature();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SignatureOrBuilder
            public long getAccountNumber() {
                return ((Signature) this.instance).getAccountNumber();
            }

            public Builder setAccountNumber(long value) {
                copyOnWrite();
                ((Signature) this.instance).setAccountNumber(value);
                return this;
            }

            public Builder clearAccountNumber() {
                copyOnWrite();
                ((Signature) this.instance).clearAccountNumber();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SignatureOrBuilder
            public long getSequence() {
                return ((Signature) this.instance).getSequence();
            }

            public Builder setSequence(long value) {
                copyOnWrite();
                ((Signature) this.instance).setSequence(value);
                return this;
            }

            public Builder clearSequence() {
                copyOnWrite();
                ((Signature) this.instance).clearSequence();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Signature();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\n\u0002\n\u0003\u0002\u0004\u0002", new Object[]{"pubKey_", "signature_", "accountNumber_", "sequence_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Signature> parser = PARSER;
                    if (parser == null) {
                        synchronized (Signature.class) {
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
            Signature signature = new Signature();
            DEFAULT_INSTANCE = signature;
            GeneratedMessageLite.registerDefaultInstance(Signature.class, signature);
        }

        public static Signature getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Signature> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class TradeOrder extends GeneratedMessageLite<TradeOrder, Builder> implements TradeOrderOrBuilder {
        private static final TradeOrder DEFAULT_INSTANCE;
        public static final int ID_FIELD_NUMBER = 2;
        public static final int ORDERTYPE_FIELD_NUMBER = 4;
        private static volatile Parser<TradeOrder> PARSER = null;
        public static final int PRICE_FIELD_NUMBER = 6;
        public static final int QUANTITY_FIELD_NUMBER = 7;
        public static final int SENDER_FIELD_NUMBER = 1;
        public static final int SIDE_FIELD_NUMBER = 5;
        public static final int SYMBOL_FIELD_NUMBER = 3;
        public static final int TIMEINFORCE_FIELD_NUMBER = 8;
        private long ordertype_;
        private long price_;
        private long quantity_;
        private long side_;
        private long timeinforce_;
        private ByteString sender_ = ByteString.EMPTY;
        private String id_ = "";
        private String symbol_ = "";

        private TradeOrder() {
        }

        @Override // wallet.core.jni.proto.Binance.TradeOrderOrBuilder
        public ByteString getSender() {
            return this.sender_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSender(ByteString value) {
            value.getClass();
            this.sender_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSender() {
            this.sender_ = getDefaultInstance().getSender();
        }

        @Override // wallet.core.jni.proto.Binance.TradeOrderOrBuilder
        public String getId() {
            return this.id_;
        }

        @Override // wallet.core.jni.proto.Binance.TradeOrderOrBuilder
        public ByteString getIdBytes() {
            return ByteString.copyFromUtf8(this.id_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setId(String value) {
            value.getClass();
            this.id_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearId() {
            this.id_ = getDefaultInstance().getId();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIdBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.id_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Binance.TradeOrderOrBuilder
        public String getSymbol() {
            return this.symbol_;
        }

        @Override // wallet.core.jni.proto.Binance.TradeOrderOrBuilder
        public ByteString getSymbolBytes() {
            return ByteString.copyFromUtf8(this.symbol_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSymbol(String value) {
            value.getClass();
            this.symbol_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSymbol() {
            this.symbol_ = getDefaultInstance().getSymbol();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSymbolBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.symbol_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Binance.TradeOrderOrBuilder
        public long getOrdertype() {
            return this.ordertype_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOrdertype(long value) {
            this.ordertype_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOrdertype() {
            this.ordertype_ = 0L;
        }

        @Override // wallet.core.jni.proto.Binance.TradeOrderOrBuilder
        public long getSide() {
            return this.side_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSide(long value) {
            this.side_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSide() {
            this.side_ = 0L;
        }

        @Override // wallet.core.jni.proto.Binance.TradeOrderOrBuilder
        public long getPrice() {
            return this.price_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPrice(long value) {
            this.price_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPrice() {
            this.price_ = 0L;
        }

        @Override // wallet.core.jni.proto.Binance.TradeOrderOrBuilder
        public long getQuantity() {
            return this.quantity_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setQuantity(long value) {
            this.quantity_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearQuantity() {
            this.quantity_ = 0L;
        }

        @Override // wallet.core.jni.proto.Binance.TradeOrderOrBuilder
        public long getTimeinforce() {
            return this.timeinforce_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTimeinforce(long value) {
            this.timeinforce_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTimeinforce() {
            this.timeinforce_ = 0L;
        }

        public static TradeOrder parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TradeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TradeOrder parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TradeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TradeOrder parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TradeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TradeOrder parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TradeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TradeOrder parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TradeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TradeOrder parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TradeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TradeOrder parseFrom(InputStream input) throws IOException {
            return (TradeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TradeOrder parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TradeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TradeOrder parseDelimitedFrom(InputStream input) throws IOException {
            return (TradeOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TradeOrder parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TradeOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TradeOrder parseFrom(CodedInputStream input) throws IOException {
            return (TradeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TradeOrder parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TradeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TradeOrder prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TradeOrder, Builder> implements TradeOrderOrBuilder {
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(TradeOrder.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.TradeOrderOrBuilder
            public ByteString getSender() {
                return ((TradeOrder) this.instance).getSender();
            }

            public Builder setSender(ByteString value) {
                copyOnWrite();
                ((TradeOrder) this.instance).setSender(value);
                return this;
            }

            public Builder clearSender() {
                copyOnWrite();
                ((TradeOrder) this.instance).clearSender();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TradeOrderOrBuilder
            public String getId() {
                return ((TradeOrder) this.instance).getId();
            }

            @Override // wallet.core.jni.proto.Binance.TradeOrderOrBuilder
            public ByteString getIdBytes() {
                return ((TradeOrder) this.instance).getIdBytes();
            }

            public Builder setId(String value) {
                copyOnWrite();
                ((TradeOrder) this.instance).setId(value);
                return this;
            }

            public Builder clearId() {
                copyOnWrite();
                ((TradeOrder) this.instance).clearId();
                return this;
            }

            public Builder setIdBytes(ByteString value) {
                copyOnWrite();
                ((TradeOrder) this.instance).setIdBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TradeOrderOrBuilder
            public String getSymbol() {
                return ((TradeOrder) this.instance).getSymbol();
            }

            @Override // wallet.core.jni.proto.Binance.TradeOrderOrBuilder
            public ByteString getSymbolBytes() {
                return ((TradeOrder) this.instance).getSymbolBytes();
            }

            public Builder setSymbol(String value) {
                copyOnWrite();
                ((TradeOrder) this.instance).setSymbol(value);
                return this;
            }

            public Builder clearSymbol() {
                copyOnWrite();
                ((TradeOrder) this.instance).clearSymbol();
                return this;
            }

            public Builder setSymbolBytes(ByteString value) {
                copyOnWrite();
                ((TradeOrder) this.instance).setSymbolBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TradeOrderOrBuilder
            public long getOrdertype() {
                return ((TradeOrder) this.instance).getOrdertype();
            }

            public Builder setOrdertype(long value) {
                copyOnWrite();
                ((TradeOrder) this.instance).setOrdertype(value);
                return this;
            }

            public Builder clearOrdertype() {
                copyOnWrite();
                ((TradeOrder) this.instance).clearOrdertype();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TradeOrderOrBuilder
            public long getSide() {
                return ((TradeOrder) this.instance).getSide();
            }

            public Builder setSide(long value) {
                copyOnWrite();
                ((TradeOrder) this.instance).setSide(value);
                return this;
            }

            public Builder clearSide() {
                copyOnWrite();
                ((TradeOrder) this.instance).clearSide();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TradeOrderOrBuilder
            public long getPrice() {
                return ((TradeOrder) this.instance).getPrice();
            }

            public Builder setPrice(long value) {
                copyOnWrite();
                ((TradeOrder) this.instance).setPrice(value);
                return this;
            }

            public Builder clearPrice() {
                copyOnWrite();
                ((TradeOrder) this.instance).clearPrice();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TradeOrderOrBuilder
            public long getQuantity() {
                return ((TradeOrder) this.instance).getQuantity();
            }

            public Builder setQuantity(long value) {
                copyOnWrite();
                ((TradeOrder) this.instance).setQuantity(value);
                return this;
            }

            public Builder clearQuantity() {
                copyOnWrite();
                ((TradeOrder) this.instance).clearQuantity();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TradeOrderOrBuilder
            public long getTimeinforce() {
                return ((TradeOrder) this.instance).getTimeinforce();
            }

            public Builder setTimeinforce(long value) {
                copyOnWrite();
                ((TradeOrder) this.instance).setTimeinforce(value);
                return this;
            }

            public Builder clearTimeinforce() {
                copyOnWrite();
                ((TradeOrder) this.instance).clearTimeinforce();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TradeOrder();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\b\u0000\u0000\u0001\b\b\u0000\u0000\u0000\u0001\n\u0002Ȉ\u0003Ȉ\u0004\u0002\u0005\u0002\u0006\u0002\u0007\u0002\b\u0002", new Object[]{"sender_", "id_", "symbol_", "ordertype_", "side_", "price_", "quantity_", "timeinforce_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TradeOrder> parser = PARSER;
                    if (parser == null) {
                        synchronized (TradeOrder.class) {
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
            TradeOrder tradeOrder = new TradeOrder();
            DEFAULT_INSTANCE = tradeOrder;
            GeneratedMessageLite.registerDefaultInstance(TradeOrder.class, tradeOrder);
        }

        public static TradeOrder getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TradeOrder> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class CancelTradeOrder extends GeneratedMessageLite<CancelTradeOrder, Builder> implements CancelTradeOrderOrBuilder {
        private static final CancelTradeOrder DEFAULT_INSTANCE;
        private static volatile Parser<CancelTradeOrder> PARSER = null;
        public static final int REFID_FIELD_NUMBER = 3;
        public static final int SENDER_FIELD_NUMBER = 1;
        public static final int SYMBOL_FIELD_NUMBER = 2;
        private ByteString sender_ = ByteString.EMPTY;
        private String symbol_ = "";
        private String refid_ = "";

        private CancelTradeOrder() {
        }

        @Override // wallet.core.jni.proto.Binance.CancelTradeOrderOrBuilder
        public ByteString getSender() {
            return this.sender_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSender(ByteString value) {
            value.getClass();
            this.sender_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSender() {
            this.sender_ = getDefaultInstance().getSender();
        }

        @Override // wallet.core.jni.proto.Binance.CancelTradeOrderOrBuilder
        public String getSymbol() {
            return this.symbol_;
        }

        @Override // wallet.core.jni.proto.Binance.CancelTradeOrderOrBuilder
        public ByteString getSymbolBytes() {
            return ByteString.copyFromUtf8(this.symbol_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSymbol(String value) {
            value.getClass();
            this.symbol_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSymbol() {
            this.symbol_ = getDefaultInstance().getSymbol();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSymbolBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.symbol_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Binance.CancelTradeOrderOrBuilder
        public String getRefid() {
            return this.refid_;
        }

        @Override // wallet.core.jni.proto.Binance.CancelTradeOrderOrBuilder
        public ByteString getRefidBytes() {
            return ByteString.copyFromUtf8(this.refid_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRefid(String value) {
            value.getClass();
            this.refid_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRefid() {
            this.refid_ = getDefaultInstance().getRefid();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRefidBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.refid_ = value.toStringUtf8();
        }

        public static CancelTradeOrder parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (CancelTradeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CancelTradeOrder parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CancelTradeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CancelTradeOrder parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (CancelTradeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CancelTradeOrder parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CancelTradeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CancelTradeOrder parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (CancelTradeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CancelTradeOrder parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CancelTradeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CancelTradeOrder parseFrom(InputStream input) throws IOException {
            return (CancelTradeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static CancelTradeOrder parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CancelTradeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static CancelTradeOrder parseDelimitedFrom(InputStream input) throws IOException {
            return (CancelTradeOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static CancelTradeOrder parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CancelTradeOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static CancelTradeOrder parseFrom(CodedInputStream input) throws IOException {
            return (CancelTradeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static CancelTradeOrder parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CancelTradeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(CancelTradeOrder prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<CancelTradeOrder, Builder> implements CancelTradeOrderOrBuilder {
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(CancelTradeOrder.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.CancelTradeOrderOrBuilder
            public ByteString getSender() {
                return ((CancelTradeOrder) this.instance).getSender();
            }

            public Builder setSender(ByteString value) {
                copyOnWrite();
                ((CancelTradeOrder) this.instance).setSender(value);
                return this;
            }

            public Builder clearSender() {
                copyOnWrite();
                ((CancelTradeOrder) this.instance).clearSender();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.CancelTradeOrderOrBuilder
            public String getSymbol() {
                return ((CancelTradeOrder) this.instance).getSymbol();
            }

            @Override // wallet.core.jni.proto.Binance.CancelTradeOrderOrBuilder
            public ByteString getSymbolBytes() {
                return ((CancelTradeOrder) this.instance).getSymbolBytes();
            }

            public Builder setSymbol(String value) {
                copyOnWrite();
                ((CancelTradeOrder) this.instance).setSymbol(value);
                return this;
            }

            public Builder clearSymbol() {
                copyOnWrite();
                ((CancelTradeOrder) this.instance).clearSymbol();
                return this;
            }

            public Builder setSymbolBytes(ByteString value) {
                copyOnWrite();
                ((CancelTradeOrder) this.instance).setSymbolBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.CancelTradeOrderOrBuilder
            public String getRefid() {
                return ((CancelTradeOrder) this.instance).getRefid();
            }

            @Override // wallet.core.jni.proto.Binance.CancelTradeOrderOrBuilder
            public ByteString getRefidBytes() {
                return ((CancelTradeOrder) this.instance).getRefidBytes();
            }

            public Builder setRefid(String value) {
                copyOnWrite();
                ((CancelTradeOrder) this.instance).setRefid(value);
                return this;
            }

            public Builder clearRefid() {
                copyOnWrite();
                ((CancelTradeOrder) this.instance).clearRefid();
                return this;
            }

            public Builder setRefidBytes(ByteString value) {
                copyOnWrite();
                ((CancelTradeOrder) this.instance).setRefidBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new CancelTradeOrder();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002Ȉ\u0003Ȉ", new Object[]{"sender_", "symbol_", "refid_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<CancelTradeOrder> parser = PARSER;
                    if (parser == null) {
                        synchronized (CancelTradeOrder.class) {
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
            CancelTradeOrder cancelTradeOrder = new CancelTradeOrder();
            DEFAULT_INSTANCE = cancelTradeOrder;
            GeneratedMessageLite.registerDefaultInstance(CancelTradeOrder.class, cancelTradeOrder);
        }

        public static CancelTradeOrder getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CancelTradeOrder> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class SendOrder extends GeneratedMessageLite<SendOrder, Builder> implements SendOrderOrBuilder {
        private static final SendOrder DEFAULT_INSTANCE;
        public static final int INPUTS_FIELD_NUMBER = 1;
        public static final int OUTPUTS_FIELD_NUMBER = 2;
        private static volatile Parser<SendOrder> PARSER;
        private Internal.ProtobufList<Input> inputs_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<Output> outputs_ = GeneratedMessageLite.emptyProtobufList();

        /* loaded from: classes6.dex */
        public interface InputOrBuilder extends MessageLiteOrBuilder {
            ByteString getAddress();

            Token getCoins(int index);

            int getCoinsCount();

            List<Token> getCoinsList();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface OutputOrBuilder extends MessageLiteOrBuilder {
            ByteString getAddress();

            Token getCoins(int index);

            int getCoinsCount();

            List<Token> getCoinsList();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes6.dex */
        public interface TokenOrBuilder extends MessageLiteOrBuilder {
            long getAmount();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            String getDenom();

            ByteString getDenomBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        private SendOrder() {
        }

        /* loaded from: classes6.dex */
        public static final class Token extends GeneratedMessageLite<Token, Builder> implements TokenOrBuilder {
            public static final int AMOUNT_FIELD_NUMBER = 2;
            private static final Token DEFAULT_INSTANCE;
            public static final int DENOM_FIELD_NUMBER = 1;
            private static volatile Parser<Token> PARSER;
            private long amount_;
            private String denom_ = "";

            private Token() {
            }

            @Override // wallet.core.jni.proto.Binance.SendOrder.TokenOrBuilder
            public String getDenom() {
                return this.denom_;
            }

            @Override // wallet.core.jni.proto.Binance.SendOrder.TokenOrBuilder
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

            @Override // wallet.core.jni.proto.Binance.SendOrder.TokenOrBuilder
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

            public static Token parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (Token) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Token parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Token) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Token parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (Token) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Token parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Token) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Token parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (Token) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Token parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Token) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Token parseFrom(InputStream input) throws IOException {
                return (Token) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Token parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Token) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Token parseDelimitedFrom(InputStream input) throws IOException {
                return (Token) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static Token parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Token) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Token parseFrom(CodedInputStream input) throws IOException {
                return (Token) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Token parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Token) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(Token prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<Token, Builder> implements TokenOrBuilder {
                /* synthetic */ Builder(C67051 c67051) {
                    this();
                }

                private Builder() {
                    super(Token.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Binance.SendOrder.TokenOrBuilder
                public String getDenom() {
                    return ((Token) this.instance).getDenom();
                }

                @Override // wallet.core.jni.proto.Binance.SendOrder.TokenOrBuilder
                public ByteString getDenomBytes() {
                    return ((Token) this.instance).getDenomBytes();
                }

                public Builder setDenom(String value) {
                    copyOnWrite();
                    ((Token) this.instance).setDenom(value);
                    return this;
                }

                public Builder clearDenom() {
                    copyOnWrite();
                    ((Token) this.instance).clearDenom();
                    return this;
                }

                public Builder setDenomBytes(ByteString value) {
                    copyOnWrite();
                    ((Token) this.instance).setDenomBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.Binance.SendOrder.TokenOrBuilder
                public long getAmount() {
                    return ((Token) this.instance).getAmount();
                }

                public Builder setAmount(long value) {
                    copyOnWrite();
                    ((Token) this.instance).setAmount(value);
                    return this;
                }

                public Builder clearAmount() {
                    copyOnWrite();
                    ((Token) this.instance).clearAmount();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new Token();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\u0002", new Object[]{"denom_", "amount_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<Token> parser = PARSER;
                        if (parser == null) {
                            synchronized (Token.class) {
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
                Token token = new Token();
                DEFAULT_INSTANCE = token;
                GeneratedMessageLite.registerDefaultInstance(Token.class, token);
            }

            public static Token getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Token> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class Input extends GeneratedMessageLite<Input, Builder> implements InputOrBuilder {
            public static final int ADDRESS_FIELD_NUMBER = 1;
            public static final int COINS_FIELD_NUMBER = 2;
            private static final Input DEFAULT_INSTANCE;
            private static volatile Parser<Input> PARSER;
            private ByteString address_ = ByteString.EMPTY;
            private Internal.ProtobufList<Token> coins_ = GeneratedMessageLite.emptyProtobufList();

            private Input() {
            }

            @Override // wallet.core.jni.proto.Binance.SendOrder.InputOrBuilder
            public ByteString getAddress() {
                return this.address_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setAddress(ByteString value) {
                value.getClass();
                this.address_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearAddress() {
                this.address_ = getDefaultInstance().getAddress();
            }

            @Override // wallet.core.jni.proto.Binance.SendOrder.InputOrBuilder
            public List<Token> getCoinsList() {
                return this.coins_;
            }

            public List<? extends TokenOrBuilder> getCoinsOrBuilderList() {
                return this.coins_;
            }

            @Override // wallet.core.jni.proto.Binance.SendOrder.InputOrBuilder
            public int getCoinsCount() {
                return this.coins_.size();
            }

            @Override // wallet.core.jni.proto.Binance.SendOrder.InputOrBuilder
            public Token getCoins(int index) {
                return this.coins_.get(index);
            }

            public TokenOrBuilder getCoinsOrBuilder(int index) {
                return this.coins_.get(index);
            }

            private void ensureCoinsIsMutable() {
                Internal.ProtobufList<Token> protobufList = this.coins_;
                if (protobufList.isModifiable()) {
                    return;
                }
                this.coins_ = GeneratedMessageLite.mutableCopy(protobufList);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setCoins(int index, Token value) {
                value.getClass();
                ensureCoinsIsMutable();
                this.coins_.set(index, value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addCoins(Token value) {
                value.getClass();
                ensureCoinsIsMutable();
                this.coins_.add(value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addCoins(int index, Token value) {
                value.getClass();
                ensureCoinsIsMutable();
                this.coins_.add(index, value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addAllCoins(Iterable<? extends Token> values) {
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

            public static Input parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (Input) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Input parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Input) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Input parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (Input) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Input parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Input) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Input parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (Input) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Input parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Input) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Input parseFrom(InputStream input) throws IOException {
                return (Input) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Input parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Input) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Input parseDelimitedFrom(InputStream input) throws IOException {
                return (Input) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static Input parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Input) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Input parseFrom(CodedInputStream input) throws IOException {
                return (Input) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Input parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Input) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(Input prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<Input, Builder> implements InputOrBuilder {
                /* synthetic */ Builder(C67051 c67051) {
                    this();
                }

                private Builder() {
                    super(Input.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Binance.SendOrder.InputOrBuilder
                public ByteString getAddress() {
                    return ((Input) this.instance).getAddress();
                }

                public Builder setAddress(ByteString value) {
                    copyOnWrite();
                    ((Input) this.instance).setAddress(value);
                    return this;
                }

                public Builder clearAddress() {
                    copyOnWrite();
                    ((Input) this.instance).clearAddress();
                    return this;
                }

                @Override // wallet.core.jni.proto.Binance.SendOrder.InputOrBuilder
                public List<Token> getCoinsList() {
                    return Collections.unmodifiableList(((Input) this.instance).getCoinsList());
                }

                @Override // wallet.core.jni.proto.Binance.SendOrder.InputOrBuilder
                public int getCoinsCount() {
                    return ((Input) this.instance).getCoinsCount();
                }

                @Override // wallet.core.jni.proto.Binance.SendOrder.InputOrBuilder
                public Token getCoins(int index) {
                    return ((Input) this.instance).getCoins(index);
                }

                public Builder setCoins(int index, Token value) {
                    copyOnWrite();
                    ((Input) this.instance).setCoins(index, value);
                    return this;
                }

                public Builder setCoins(int index, Token.Builder builderForValue) {
                    copyOnWrite();
                    ((Input) this.instance).setCoins(index, builderForValue.build());
                    return this;
                }

                public Builder addCoins(Token value) {
                    copyOnWrite();
                    ((Input) this.instance).addCoins(value);
                    return this;
                }

                public Builder addCoins(int index, Token value) {
                    copyOnWrite();
                    ((Input) this.instance).addCoins(index, value);
                    return this;
                }

                public Builder addCoins(Token.Builder builderForValue) {
                    copyOnWrite();
                    ((Input) this.instance).addCoins(builderForValue.build());
                    return this;
                }

                public Builder addCoins(int index, Token.Builder builderForValue) {
                    copyOnWrite();
                    ((Input) this.instance).addCoins(index, builderForValue.build());
                    return this;
                }

                public Builder addAllCoins(Iterable<? extends Token> values) {
                    copyOnWrite();
                    ((Input) this.instance).addAllCoins(values);
                    return this;
                }

                public Builder clearCoins() {
                    copyOnWrite();
                    ((Input) this.instance).clearCoins();
                    return this;
                }

                public Builder removeCoins(int index) {
                    copyOnWrite();
                    ((Input) this.instance).removeCoins(index);
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new Input();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\n\u0002\u001b", new Object[]{"address_", "coins_", Token.class});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<Input> parser = PARSER;
                        if (parser == null) {
                            synchronized (Input.class) {
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
                Input input = new Input();
                DEFAULT_INSTANCE = input;
                GeneratedMessageLite.registerDefaultInstance(Input.class, input);
            }

            public static Input getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Input> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes6.dex */
        public static final class Output extends GeneratedMessageLite<Output, Builder> implements OutputOrBuilder {
            public static final int ADDRESS_FIELD_NUMBER = 1;
            public static final int COINS_FIELD_NUMBER = 2;
            private static final Output DEFAULT_INSTANCE;
            private static volatile Parser<Output> PARSER;
            private ByteString address_ = ByteString.EMPTY;
            private Internal.ProtobufList<Token> coins_ = GeneratedMessageLite.emptyProtobufList();

            private Output() {
            }

            @Override // wallet.core.jni.proto.Binance.SendOrder.OutputOrBuilder
            public ByteString getAddress() {
                return this.address_;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setAddress(ByteString value) {
                value.getClass();
                this.address_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearAddress() {
                this.address_ = getDefaultInstance().getAddress();
            }

            @Override // wallet.core.jni.proto.Binance.SendOrder.OutputOrBuilder
            public List<Token> getCoinsList() {
                return this.coins_;
            }

            public List<? extends TokenOrBuilder> getCoinsOrBuilderList() {
                return this.coins_;
            }

            @Override // wallet.core.jni.proto.Binance.SendOrder.OutputOrBuilder
            public int getCoinsCount() {
                return this.coins_.size();
            }

            @Override // wallet.core.jni.proto.Binance.SendOrder.OutputOrBuilder
            public Token getCoins(int index) {
                return this.coins_.get(index);
            }

            public TokenOrBuilder getCoinsOrBuilder(int index) {
                return this.coins_.get(index);
            }

            private void ensureCoinsIsMutable() {
                Internal.ProtobufList<Token> protobufList = this.coins_;
                if (protobufList.isModifiable()) {
                    return;
                }
                this.coins_ = GeneratedMessageLite.mutableCopy(protobufList);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setCoins(int index, Token value) {
                value.getClass();
                ensureCoinsIsMutable();
                this.coins_.set(index, value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addCoins(Token value) {
                value.getClass();
                ensureCoinsIsMutable();
                this.coins_.add(value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addCoins(int index, Token value) {
                value.getClass();
                ensureCoinsIsMutable();
                this.coins_.add(index, value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addAllCoins(Iterable<? extends Token> values) {
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

            public static Output parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (Output) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Output parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Output) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Output parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (Output) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Output parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Output) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Output parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (Output) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Output parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Output) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Output parseFrom(InputStream input) throws IOException {
                return (Output) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Output parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Output) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Output parseDelimitedFrom(InputStream input) throws IOException {
                return (Output) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static Output parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Output) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Output parseFrom(CodedInputStream input) throws IOException {
                return (Output) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Output parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Output) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(Output prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes6.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<Output, Builder> implements OutputOrBuilder {
                /* synthetic */ Builder(C67051 c67051) {
                    this();
                }

                private Builder() {
                    super(Output.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.Binance.SendOrder.OutputOrBuilder
                public ByteString getAddress() {
                    return ((Output) this.instance).getAddress();
                }

                public Builder setAddress(ByteString value) {
                    copyOnWrite();
                    ((Output) this.instance).setAddress(value);
                    return this;
                }

                public Builder clearAddress() {
                    copyOnWrite();
                    ((Output) this.instance).clearAddress();
                    return this;
                }

                @Override // wallet.core.jni.proto.Binance.SendOrder.OutputOrBuilder
                public List<Token> getCoinsList() {
                    return Collections.unmodifiableList(((Output) this.instance).getCoinsList());
                }

                @Override // wallet.core.jni.proto.Binance.SendOrder.OutputOrBuilder
                public int getCoinsCount() {
                    return ((Output) this.instance).getCoinsCount();
                }

                @Override // wallet.core.jni.proto.Binance.SendOrder.OutputOrBuilder
                public Token getCoins(int index) {
                    return ((Output) this.instance).getCoins(index);
                }

                public Builder setCoins(int index, Token value) {
                    copyOnWrite();
                    ((Output) this.instance).setCoins(index, value);
                    return this;
                }

                public Builder setCoins(int index, Token.Builder builderForValue) {
                    copyOnWrite();
                    ((Output) this.instance).setCoins(index, builderForValue.build());
                    return this;
                }

                public Builder addCoins(Token value) {
                    copyOnWrite();
                    ((Output) this.instance).addCoins(value);
                    return this;
                }

                public Builder addCoins(int index, Token value) {
                    copyOnWrite();
                    ((Output) this.instance).addCoins(index, value);
                    return this;
                }

                public Builder addCoins(Token.Builder builderForValue) {
                    copyOnWrite();
                    ((Output) this.instance).addCoins(builderForValue.build());
                    return this;
                }

                public Builder addCoins(int index, Token.Builder builderForValue) {
                    copyOnWrite();
                    ((Output) this.instance).addCoins(index, builderForValue.build());
                    return this;
                }

                public Builder addAllCoins(Iterable<? extends Token> values) {
                    copyOnWrite();
                    ((Output) this.instance).addAllCoins(values);
                    return this;
                }

                public Builder clearCoins() {
                    copyOnWrite();
                    ((Output) this.instance).clearCoins();
                    return this;
                }

                public Builder removeCoins(int index) {
                    copyOnWrite();
                    ((Output) this.instance).removeCoins(index);
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new Output();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\n\u0002\u001b", new Object[]{"address_", "coins_", Token.class});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<Output> parser = PARSER;
                        if (parser == null) {
                            synchronized (Output.class) {
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
                Output output = new Output();
                DEFAULT_INSTANCE = output;
                GeneratedMessageLite.registerDefaultInstance(Output.class, output);
            }

            public static Output getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Output> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        @Override // wallet.core.jni.proto.Binance.SendOrderOrBuilder
        public List<Input> getInputsList() {
            return this.inputs_;
        }

        public List<? extends InputOrBuilder> getInputsOrBuilderList() {
            return this.inputs_;
        }

        @Override // wallet.core.jni.proto.Binance.SendOrderOrBuilder
        public int getInputsCount() {
            return this.inputs_.size();
        }

        @Override // wallet.core.jni.proto.Binance.SendOrderOrBuilder
        public Input getInputs(int index) {
            return this.inputs_.get(index);
        }

        public InputOrBuilder getInputsOrBuilder(int index) {
            return this.inputs_.get(index);
        }

        private void ensureInputsIsMutable() {
            Internal.ProtobufList<Input> protobufList = this.inputs_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.inputs_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setInputs(int index, Input value) {
            value.getClass();
            ensureInputsIsMutable();
            this.inputs_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addInputs(Input value) {
            value.getClass();
            ensureInputsIsMutable();
            this.inputs_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addInputs(int index, Input value) {
            value.getClass();
            ensureInputsIsMutable();
            this.inputs_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllInputs(Iterable<? extends Input> values) {
            ensureInputsIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.inputs_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearInputs() {
            this.inputs_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeInputs(int index) {
            ensureInputsIsMutable();
            this.inputs_.remove(index);
        }

        @Override // wallet.core.jni.proto.Binance.SendOrderOrBuilder
        public List<Output> getOutputsList() {
            return this.outputs_;
        }

        public List<? extends OutputOrBuilder> getOutputsOrBuilderList() {
            return this.outputs_;
        }

        @Override // wallet.core.jni.proto.Binance.SendOrderOrBuilder
        public int getOutputsCount() {
            return this.outputs_.size();
        }

        @Override // wallet.core.jni.proto.Binance.SendOrderOrBuilder
        public Output getOutputs(int index) {
            return this.outputs_.get(index);
        }

        public OutputOrBuilder getOutputsOrBuilder(int index) {
            return this.outputs_.get(index);
        }

        private void ensureOutputsIsMutable() {
            Internal.ProtobufList<Output> protobufList = this.outputs_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.outputs_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOutputs(int index, Output value) {
            value.getClass();
            ensureOutputsIsMutable();
            this.outputs_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addOutputs(Output value) {
            value.getClass();
            ensureOutputsIsMutable();
            this.outputs_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addOutputs(int index, Output value) {
            value.getClass();
            ensureOutputsIsMutable();
            this.outputs_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllOutputs(Iterable<? extends Output> values) {
            ensureOutputsIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.outputs_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOutputs() {
            this.outputs_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeOutputs(int index) {
            ensureOutputsIsMutable();
            this.outputs_.remove(index);
        }

        public static SendOrder parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (SendOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SendOrder parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SendOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SendOrder parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (SendOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SendOrder parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SendOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SendOrder parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (SendOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SendOrder parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SendOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SendOrder parseFrom(InputStream input) throws IOException {
            return (SendOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SendOrder parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SendOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SendOrder parseDelimitedFrom(InputStream input) throws IOException {
            return (SendOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static SendOrder parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SendOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SendOrder parseFrom(CodedInputStream input) throws IOException {
            return (SendOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SendOrder parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SendOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(SendOrder prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SendOrder, Builder> implements SendOrderOrBuilder {
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(SendOrder.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.SendOrderOrBuilder
            public List<Input> getInputsList() {
                return Collections.unmodifiableList(((SendOrder) this.instance).getInputsList());
            }

            @Override // wallet.core.jni.proto.Binance.SendOrderOrBuilder
            public int getInputsCount() {
                return ((SendOrder) this.instance).getInputsCount();
            }

            @Override // wallet.core.jni.proto.Binance.SendOrderOrBuilder
            public Input getInputs(int index) {
                return ((SendOrder) this.instance).getInputs(index);
            }

            public Builder setInputs(int index, Input value) {
                copyOnWrite();
                ((SendOrder) this.instance).setInputs(index, value);
                return this;
            }

            public Builder setInputs(int index, Input.Builder builderForValue) {
                copyOnWrite();
                ((SendOrder) this.instance).setInputs(index, builderForValue.build());
                return this;
            }

            public Builder addInputs(Input value) {
                copyOnWrite();
                ((SendOrder) this.instance).addInputs(value);
                return this;
            }

            public Builder addInputs(int index, Input value) {
                copyOnWrite();
                ((SendOrder) this.instance).addInputs(index, value);
                return this;
            }

            public Builder addInputs(Input.Builder builderForValue) {
                copyOnWrite();
                ((SendOrder) this.instance).addInputs(builderForValue.build());
                return this;
            }

            public Builder addInputs(int index, Input.Builder builderForValue) {
                copyOnWrite();
                ((SendOrder) this.instance).addInputs(index, builderForValue.build());
                return this;
            }

            public Builder addAllInputs(Iterable<? extends Input> values) {
                copyOnWrite();
                ((SendOrder) this.instance).addAllInputs(values);
                return this;
            }

            public Builder clearInputs() {
                copyOnWrite();
                ((SendOrder) this.instance).clearInputs();
                return this;
            }

            public Builder removeInputs(int index) {
                copyOnWrite();
                ((SendOrder) this.instance).removeInputs(index);
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SendOrderOrBuilder
            public List<Output> getOutputsList() {
                return Collections.unmodifiableList(((SendOrder) this.instance).getOutputsList());
            }

            @Override // wallet.core.jni.proto.Binance.SendOrderOrBuilder
            public int getOutputsCount() {
                return ((SendOrder) this.instance).getOutputsCount();
            }

            @Override // wallet.core.jni.proto.Binance.SendOrderOrBuilder
            public Output getOutputs(int index) {
                return ((SendOrder) this.instance).getOutputs(index);
            }

            public Builder setOutputs(int index, Output value) {
                copyOnWrite();
                ((SendOrder) this.instance).setOutputs(index, value);
                return this;
            }

            public Builder setOutputs(int index, Output.Builder builderForValue) {
                copyOnWrite();
                ((SendOrder) this.instance).setOutputs(index, builderForValue.build());
                return this;
            }

            public Builder addOutputs(Output value) {
                copyOnWrite();
                ((SendOrder) this.instance).addOutputs(value);
                return this;
            }

            public Builder addOutputs(int index, Output value) {
                copyOnWrite();
                ((SendOrder) this.instance).addOutputs(index, value);
                return this;
            }

            public Builder addOutputs(Output.Builder builderForValue) {
                copyOnWrite();
                ((SendOrder) this.instance).addOutputs(builderForValue.build());
                return this;
            }

            public Builder addOutputs(int index, Output.Builder builderForValue) {
                copyOnWrite();
                ((SendOrder) this.instance).addOutputs(index, builderForValue.build());
                return this;
            }

            public Builder addAllOutputs(Iterable<? extends Output> values) {
                copyOnWrite();
                ((SendOrder) this.instance).addAllOutputs(values);
                return this;
            }

            public Builder clearOutputs() {
                copyOnWrite();
                ((SendOrder) this.instance).clearOutputs();
                return this;
            }

            public Builder removeOutputs(int index) {
                copyOnWrite();
                ((SendOrder) this.instance).removeOutputs(index);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SendOrder();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001\u001b\u0002\u001b", new Object[]{"inputs_", Input.class, "outputs_", Output.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<SendOrder> parser = PARSER;
                    if (parser == null) {
                        synchronized (SendOrder.class) {
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
            SendOrder sendOrder = new SendOrder();
            DEFAULT_INSTANCE = sendOrder;
            GeneratedMessageLite.registerDefaultInstance(SendOrder.class, sendOrder);
        }

        public static SendOrder getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<SendOrder> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class TokenIssueOrder extends GeneratedMessageLite<TokenIssueOrder, Builder> implements TokenIssueOrderOrBuilder {
        private static final TokenIssueOrder DEFAULT_INSTANCE;
        public static final int FROM_FIELD_NUMBER = 1;
        public static final int MINTABLE_FIELD_NUMBER = 5;
        public static final int NAME_FIELD_NUMBER = 2;
        private static volatile Parser<TokenIssueOrder> PARSER = null;
        public static final int SYMBOL_FIELD_NUMBER = 3;
        public static final int TOTAL_SUPPLY_FIELD_NUMBER = 4;
        private boolean mintable_;
        private long totalSupply_;
        private ByteString from_ = ByteString.EMPTY;
        private String name_ = "";
        private String symbol_ = "";

        private TokenIssueOrder() {
        }

        @Override // wallet.core.jni.proto.Binance.TokenIssueOrderOrBuilder
        public ByteString getFrom() {
            return this.from_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFrom(ByteString value) {
            value.getClass();
            this.from_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFrom() {
            this.from_ = getDefaultInstance().getFrom();
        }

        @Override // wallet.core.jni.proto.Binance.TokenIssueOrderOrBuilder
        public String getName() {
            return this.name_;
        }

        @Override // wallet.core.jni.proto.Binance.TokenIssueOrderOrBuilder
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

        @Override // wallet.core.jni.proto.Binance.TokenIssueOrderOrBuilder
        public String getSymbol() {
            return this.symbol_;
        }

        @Override // wallet.core.jni.proto.Binance.TokenIssueOrderOrBuilder
        public ByteString getSymbolBytes() {
            return ByteString.copyFromUtf8(this.symbol_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSymbol(String value) {
            value.getClass();
            this.symbol_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSymbol() {
            this.symbol_ = getDefaultInstance().getSymbol();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSymbolBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.symbol_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Binance.TokenIssueOrderOrBuilder
        public long getTotalSupply() {
            return this.totalSupply_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTotalSupply(long value) {
            this.totalSupply_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTotalSupply() {
            this.totalSupply_ = 0L;
        }

        @Override // wallet.core.jni.proto.Binance.TokenIssueOrderOrBuilder
        public boolean getMintable() {
            return this.mintable_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMintable(boolean value) {
            this.mintable_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMintable() {
            this.mintable_ = false;
        }

        public static TokenIssueOrder parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TokenIssueOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenIssueOrder parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenIssueOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenIssueOrder parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TokenIssueOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenIssueOrder parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenIssueOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenIssueOrder parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TokenIssueOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenIssueOrder parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenIssueOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenIssueOrder parseFrom(InputStream input) throws IOException {
            return (TokenIssueOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenIssueOrder parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenIssueOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TokenIssueOrder parseDelimitedFrom(InputStream input) throws IOException {
            return (TokenIssueOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenIssueOrder parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenIssueOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TokenIssueOrder parseFrom(CodedInputStream input) throws IOException {
            return (TokenIssueOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenIssueOrder parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenIssueOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TokenIssueOrder prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TokenIssueOrder, Builder> implements TokenIssueOrderOrBuilder {
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(TokenIssueOrder.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.TokenIssueOrderOrBuilder
            public ByteString getFrom() {
                return ((TokenIssueOrder) this.instance).getFrom();
            }

            public Builder setFrom(ByteString value) {
                copyOnWrite();
                ((TokenIssueOrder) this.instance).setFrom(value);
                return this;
            }

            public Builder clearFrom() {
                copyOnWrite();
                ((TokenIssueOrder) this.instance).clearFrom();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TokenIssueOrderOrBuilder
            public String getName() {
                return ((TokenIssueOrder) this.instance).getName();
            }

            @Override // wallet.core.jni.proto.Binance.TokenIssueOrderOrBuilder
            public ByteString getNameBytes() {
                return ((TokenIssueOrder) this.instance).getNameBytes();
            }

            public Builder setName(String value) {
                copyOnWrite();
                ((TokenIssueOrder) this.instance).setName(value);
                return this;
            }

            public Builder clearName() {
                copyOnWrite();
                ((TokenIssueOrder) this.instance).clearName();
                return this;
            }

            public Builder setNameBytes(ByteString value) {
                copyOnWrite();
                ((TokenIssueOrder) this.instance).setNameBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TokenIssueOrderOrBuilder
            public String getSymbol() {
                return ((TokenIssueOrder) this.instance).getSymbol();
            }

            @Override // wallet.core.jni.proto.Binance.TokenIssueOrderOrBuilder
            public ByteString getSymbolBytes() {
                return ((TokenIssueOrder) this.instance).getSymbolBytes();
            }

            public Builder setSymbol(String value) {
                copyOnWrite();
                ((TokenIssueOrder) this.instance).setSymbol(value);
                return this;
            }

            public Builder clearSymbol() {
                copyOnWrite();
                ((TokenIssueOrder) this.instance).clearSymbol();
                return this;
            }

            public Builder setSymbolBytes(ByteString value) {
                copyOnWrite();
                ((TokenIssueOrder) this.instance).setSymbolBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TokenIssueOrderOrBuilder
            public long getTotalSupply() {
                return ((TokenIssueOrder) this.instance).getTotalSupply();
            }

            public Builder setTotalSupply(long value) {
                copyOnWrite();
                ((TokenIssueOrder) this.instance).setTotalSupply(value);
                return this;
            }

            public Builder clearTotalSupply() {
                copyOnWrite();
                ((TokenIssueOrder) this.instance).clearTotalSupply();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TokenIssueOrderOrBuilder
            public boolean getMintable() {
                return ((TokenIssueOrder) this.instance).getMintable();
            }

            public Builder setMintable(boolean value) {
                copyOnWrite();
                ((TokenIssueOrder) this.instance).setMintable(value);
                return this;
            }

            public Builder clearMintable() {
                copyOnWrite();
                ((TokenIssueOrder) this.instance).clearMintable();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TokenIssueOrder();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\n\u0002Ȉ\u0003Ȉ\u0004\u0002\u0005\u0007", new Object[]{"from_", "name_", "symbol_", "totalSupply_", "mintable_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TokenIssueOrder> parser = PARSER;
                    if (parser == null) {
                        synchronized (TokenIssueOrder.class) {
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
            TokenIssueOrder tokenIssueOrder = new TokenIssueOrder();
            DEFAULT_INSTANCE = tokenIssueOrder;
            GeneratedMessageLite.registerDefaultInstance(TokenIssueOrder.class, tokenIssueOrder);
        }

        public static TokenIssueOrder getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TokenIssueOrder> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class TokenMintOrder extends GeneratedMessageLite<TokenMintOrder, Builder> implements TokenMintOrderOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 3;
        private static final TokenMintOrder DEFAULT_INSTANCE;
        public static final int FROM_FIELD_NUMBER = 1;
        private static volatile Parser<TokenMintOrder> PARSER = null;
        public static final int SYMBOL_FIELD_NUMBER = 2;
        private long amount_;
        private ByteString from_ = ByteString.EMPTY;
        private String symbol_ = "";

        private TokenMintOrder() {
        }

        @Override // wallet.core.jni.proto.Binance.TokenMintOrderOrBuilder
        public ByteString getFrom() {
            return this.from_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFrom(ByteString value) {
            value.getClass();
            this.from_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFrom() {
            this.from_ = getDefaultInstance().getFrom();
        }

        @Override // wallet.core.jni.proto.Binance.TokenMintOrderOrBuilder
        public String getSymbol() {
            return this.symbol_;
        }

        @Override // wallet.core.jni.proto.Binance.TokenMintOrderOrBuilder
        public ByteString getSymbolBytes() {
            return ByteString.copyFromUtf8(this.symbol_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSymbol(String value) {
            value.getClass();
            this.symbol_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSymbol() {
            this.symbol_ = getDefaultInstance().getSymbol();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSymbolBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.symbol_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Binance.TokenMintOrderOrBuilder
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

        public static TokenMintOrder parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TokenMintOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenMintOrder parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenMintOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenMintOrder parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TokenMintOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenMintOrder parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenMintOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenMintOrder parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TokenMintOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenMintOrder parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenMintOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenMintOrder parseFrom(InputStream input) throws IOException {
            return (TokenMintOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenMintOrder parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenMintOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TokenMintOrder parseDelimitedFrom(InputStream input) throws IOException {
            return (TokenMintOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenMintOrder parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenMintOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TokenMintOrder parseFrom(CodedInputStream input) throws IOException {
            return (TokenMintOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenMintOrder parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenMintOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TokenMintOrder prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TokenMintOrder, Builder> implements TokenMintOrderOrBuilder {
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(TokenMintOrder.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.TokenMintOrderOrBuilder
            public ByteString getFrom() {
                return ((TokenMintOrder) this.instance).getFrom();
            }

            public Builder setFrom(ByteString value) {
                copyOnWrite();
                ((TokenMintOrder) this.instance).setFrom(value);
                return this;
            }

            public Builder clearFrom() {
                copyOnWrite();
                ((TokenMintOrder) this.instance).clearFrom();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TokenMintOrderOrBuilder
            public String getSymbol() {
                return ((TokenMintOrder) this.instance).getSymbol();
            }

            @Override // wallet.core.jni.proto.Binance.TokenMintOrderOrBuilder
            public ByteString getSymbolBytes() {
                return ((TokenMintOrder) this.instance).getSymbolBytes();
            }

            public Builder setSymbol(String value) {
                copyOnWrite();
                ((TokenMintOrder) this.instance).setSymbol(value);
                return this;
            }

            public Builder clearSymbol() {
                copyOnWrite();
                ((TokenMintOrder) this.instance).clearSymbol();
                return this;
            }

            public Builder setSymbolBytes(ByteString value) {
                copyOnWrite();
                ((TokenMintOrder) this.instance).setSymbolBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TokenMintOrderOrBuilder
            public long getAmount() {
                return ((TokenMintOrder) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((TokenMintOrder) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TokenMintOrder) this.instance).clearAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TokenMintOrder();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002Ȉ\u0003\u0002", new Object[]{"from_", "symbol_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TokenMintOrder> parser = PARSER;
                    if (parser == null) {
                        synchronized (TokenMintOrder.class) {
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
            TokenMintOrder tokenMintOrder = new TokenMintOrder();
            DEFAULT_INSTANCE = tokenMintOrder;
            GeneratedMessageLite.registerDefaultInstance(TokenMintOrder.class, tokenMintOrder);
        }

        public static TokenMintOrder getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TokenMintOrder> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class TokenBurnOrder extends GeneratedMessageLite<TokenBurnOrder, Builder> implements TokenBurnOrderOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 3;
        private static final TokenBurnOrder DEFAULT_INSTANCE;
        public static final int FROM_FIELD_NUMBER = 1;
        private static volatile Parser<TokenBurnOrder> PARSER = null;
        public static final int SYMBOL_FIELD_NUMBER = 2;
        private long amount_;
        private ByteString from_ = ByteString.EMPTY;
        private String symbol_ = "";

        private TokenBurnOrder() {
        }

        @Override // wallet.core.jni.proto.Binance.TokenBurnOrderOrBuilder
        public ByteString getFrom() {
            return this.from_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFrom(ByteString value) {
            value.getClass();
            this.from_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFrom() {
            this.from_ = getDefaultInstance().getFrom();
        }

        @Override // wallet.core.jni.proto.Binance.TokenBurnOrderOrBuilder
        public String getSymbol() {
            return this.symbol_;
        }

        @Override // wallet.core.jni.proto.Binance.TokenBurnOrderOrBuilder
        public ByteString getSymbolBytes() {
            return ByteString.copyFromUtf8(this.symbol_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSymbol(String value) {
            value.getClass();
            this.symbol_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSymbol() {
            this.symbol_ = getDefaultInstance().getSymbol();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSymbolBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.symbol_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Binance.TokenBurnOrderOrBuilder
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

        public static TokenBurnOrder parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TokenBurnOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenBurnOrder parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenBurnOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenBurnOrder parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TokenBurnOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenBurnOrder parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenBurnOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenBurnOrder parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TokenBurnOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenBurnOrder parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenBurnOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenBurnOrder parseFrom(InputStream input) throws IOException {
            return (TokenBurnOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenBurnOrder parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenBurnOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TokenBurnOrder parseDelimitedFrom(InputStream input) throws IOException {
            return (TokenBurnOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenBurnOrder parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenBurnOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TokenBurnOrder parseFrom(CodedInputStream input) throws IOException {
            return (TokenBurnOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenBurnOrder parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenBurnOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TokenBurnOrder prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TokenBurnOrder, Builder> implements TokenBurnOrderOrBuilder {
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(TokenBurnOrder.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.TokenBurnOrderOrBuilder
            public ByteString getFrom() {
                return ((TokenBurnOrder) this.instance).getFrom();
            }

            public Builder setFrom(ByteString value) {
                copyOnWrite();
                ((TokenBurnOrder) this.instance).setFrom(value);
                return this;
            }

            public Builder clearFrom() {
                copyOnWrite();
                ((TokenBurnOrder) this.instance).clearFrom();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TokenBurnOrderOrBuilder
            public String getSymbol() {
                return ((TokenBurnOrder) this.instance).getSymbol();
            }

            @Override // wallet.core.jni.proto.Binance.TokenBurnOrderOrBuilder
            public ByteString getSymbolBytes() {
                return ((TokenBurnOrder) this.instance).getSymbolBytes();
            }

            public Builder setSymbol(String value) {
                copyOnWrite();
                ((TokenBurnOrder) this.instance).setSymbol(value);
                return this;
            }

            public Builder clearSymbol() {
                copyOnWrite();
                ((TokenBurnOrder) this.instance).clearSymbol();
                return this;
            }

            public Builder setSymbolBytes(ByteString value) {
                copyOnWrite();
                ((TokenBurnOrder) this.instance).setSymbolBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TokenBurnOrderOrBuilder
            public long getAmount() {
                return ((TokenBurnOrder) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((TokenBurnOrder) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TokenBurnOrder) this.instance).clearAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TokenBurnOrder();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002Ȉ\u0003\u0002", new Object[]{"from_", "symbol_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TokenBurnOrder> parser = PARSER;
                    if (parser == null) {
                        synchronized (TokenBurnOrder.class) {
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
            TokenBurnOrder tokenBurnOrder = new TokenBurnOrder();
            DEFAULT_INSTANCE = tokenBurnOrder;
            GeneratedMessageLite.registerDefaultInstance(TokenBurnOrder.class, tokenBurnOrder);
        }

        public static TokenBurnOrder getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TokenBurnOrder> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class TokenFreezeOrder extends GeneratedMessageLite<TokenFreezeOrder, Builder> implements TokenFreezeOrderOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 3;
        private static final TokenFreezeOrder DEFAULT_INSTANCE;
        public static final int FROM_FIELD_NUMBER = 1;
        private static volatile Parser<TokenFreezeOrder> PARSER = null;
        public static final int SYMBOL_FIELD_NUMBER = 2;
        private long amount_;
        private ByteString from_ = ByteString.EMPTY;
        private String symbol_ = "";

        private TokenFreezeOrder() {
        }

        @Override // wallet.core.jni.proto.Binance.TokenFreezeOrderOrBuilder
        public ByteString getFrom() {
            return this.from_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFrom(ByteString value) {
            value.getClass();
            this.from_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFrom() {
            this.from_ = getDefaultInstance().getFrom();
        }

        @Override // wallet.core.jni.proto.Binance.TokenFreezeOrderOrBuilder
        public String getSymbol() {
            return this.symbol_;
        }

        @Override // wallet.core.jni.proto.Binance.TokenFreezeOrderOrBuilder
        public ByteString getSymbolBytes() {
            return ByteString.copyFromUtf8(this.symbol_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSymbol(String value) {
            value.getClass();
            this.symbol_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSymbol() {
            this.symbol_ = getDefaultInstance().getSymbol();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSymbolBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.symbol_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Binance.TokenFreezeOrderOrBuilder
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

        public static TokenFreezeOrder parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TokenFreezeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenFreezeOrder parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenFreezeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenFreezeOrder parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TokenFreezeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenFreezeOrder parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenFreezeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenFreezeOrder parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TokenFreezeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenFreezeOrder parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenFreezeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenFreezeOrder parseFrom(InputStream input) throws IOException {
            return (TokenFreezeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenFreezeOrder parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenFreezeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TokenFreezeOrder parseDelimitedFrom(InputStream input) throws IOException {
            return (TokenFreezeOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenFreezeOrder parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenFreezeOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TokenFreezeOrder parseFrom(CodedInputStream input) throws IOException {
            return (TokenFreezeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenFreezeOrder parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenFreezeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TokenFreezeOrder prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TokenFreezeOrder, Builder> implements TokenFreezeOrderOrBuilder {
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(TokenFreezeOrder.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.TokenFreezeOrderOrBuilder
            public ByteString getFrom() {
                return ((TokenFreezeOrder) this.instance).getFrom();
            }

            public Builder setFrom(ByteString value) {
                copyOnWrite();
                ((TokenFreezeOrder) this.instance).setFrom(value);
                return this;
            }

            public Builder clearFrom() {
                copyOnWrite();
                ((TokenFreezeOrder) this.instance).clearFrom();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TokenFreezeOrderOrBuilder
            public String getSymbol() {
                return ((TokenFreezeOrder) this.instance).getSymbol();
            }

            @Override // wallet.core.jni.proto.Binance.TokenFreezeOrderOrBuilder
            public ByteString getSymbolBytes() {
                return ((TokenFreezeOrder) this.instance).getSymbolBytes();
            }

            public Builder setSymbol(String value) {
                copyOnWrite();
                ((TokenFreezeOrder) this.instance).setSymbol(value);
                return this;
            }

            public Builder clearSymbol() {
                copyOnWrite();
                ((TokenFreezeOrder) this.instance).clearSymbol();
                return this;
            }

            public Builder setSymbolBytes(ByteString value) {
                copyOnWrite();
                ((TokenFreezeOrder) this.instance).setSymbolBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TokenFreezeOrderOrBuilder
            public long getAmount() {
                return ((TokenFreezeOrder) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((TokenFreezeOrder) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TokenFreezeOrder) this.instance).clearAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TokenFreezeOrder();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002Ȉ\u0003\u0002", new Object[]{"from_", "symbol_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TokenFreezeOrder> parser = PARSER;
                    if (parser == null) {
                        synchronized (TokenFreezeOrder.class) {
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
            TokenFreezeOrder tokenFreezeOrder = new TokenFreezeOrder();
            DEFAULT_INSTANCE = tokenFreezeOrder;
            GeneratedMessageLite.registerDefaultInstance(TokenFreezeOrder.class, tokenFreezeOrder);
        }

        public static TokenFreezeOrder getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TokenFreezeOrder> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class TokenUnfreezeOrder extends GeneratedMessageLite<TokenUnfreezeOrder, Builder> implements TokenUnfreezeOrderOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 3;
        private static final TokenUnfreezeOrder DEFAULT_INSTANCE;
        public static final int FROM_FIELD_NUMBER = 1;
        private static volatile Parser<TokenUnfreezeOrder> PARSER = null;
        public static final int SYMBOL_FIELD_NUMBER = 2;
        private long amount_;
        private ByteString from_ = ByteString.EMPTY;
        private String symbol_ = "";

        private TokenUnfreezeOrder() {
        }

        @Override // wallet.core.jni.proto.Binance.TokenUnfreezeOrderOrBuilder
        public ByteString getFrom() {
            return this.from_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFrom(ByteString value) {
            value.getClass();
            this.from_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFrom() {
            this.from_ = getDefaultInstance().getFrom();
        }

        @Override // wallet.core.jni.proto.Binance.TokenUnfreezeOrderOrBuilder
        public String getSymbol() {
            return this.symbol_;
        }

        @Override // wallet.core.jni.proto.Binance.TokenUnfreezeOrderOrBuilder
        public ByteString getSymbolBytes() {
            return ByteString.copyFromUtf8(this.symbol_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSymbol(String value) {
            value.getClass();
            this.symbol_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSymbol() {
            this.symbol_ = getDefaultInstance().getSymbol();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSymbolBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.symbol_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Binance.TokenUnfreezeOrderOrBuilder
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

        public static TokenUnfreezeOrder parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TokenUnfreezeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenUnfreezeOrder parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenUnfreezeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenUnfreezeOrder parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TokenUnfreezeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenUnfreezeOrder parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenUnfreezeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenUnfreezeOrder parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TokenUnfreezeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenUnfreezeOrder parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenUnfreezeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenUnfreezeOrder parseFrom(InputStream input) throws IOException {
            return (TokenUnfreezeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenUnfreezeOrder parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenUnfreezeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TokenUnfreezeOrder parseDelimitedFrom(InputStream input) throws IOException {
            return (TokenUnfreezeOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenUnfreezeOrder parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenUnfreezeOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TokenUnfreezeOrder parseFrom(CodedInputStream input) throws IOException {
            return (TokenUnfreezeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenUnfreezeOrder parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenUnfreezeOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TokenUnfreezeOrder prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TokenUnfreezeOrder, Builder> implements TokenUnfreezeOrderOrBuilder {
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(TokenUnfreezeOrder.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.TokenUnfreezeOrderOrBuilder
            public ByteString getFrom() {
                return ((TokenUnfreezeOrder) this.instance).getFrom();
            }

            public Builder setFrom(ByteString value) {
                copyOnWrite();
                ((TokenUnfreezeOrder) this.instance).setFrom(value);
                return this;
            }

            public Builder clearFrom() {
                copyOnWrite();
                ((TokenUnfreezeOrder) this.instance).clearFrom();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TokenUnfreezeOrderOrBuilder
            public String getSymbol() {
                return ((TokenUnfreezeOrder) this.instance).getSymbol();
            }

            @Override // wallet.core.jni.proto.Binance.TokenUnfreezeOrderOrBuilder
            public ByteString getSymbolBytes() {
                return ((TokenUnfreezeOrder) this.instance).getSymbolBytes();
            }

            public Builder setSymbol(String value) {
                copyOnWrite();
                ((TokenUnfreezeOrder) this.instance).setSymbol(value);
                return this;
            }

            public Builder clearSymbol() {
                copyOnWrite();
                ((TokenUnfreezeOrder) this.instance).clearSymbol();
                return this;
            }

            public Builder setSymbolBytes(ByteString value) {
                copyOnWrite();
                ((TokenUnfreezeOrder) this.instance).setSymbolBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TokenUnfreezeOrderOrBuilder
            public long getAmount() {
                return ((TokenUnfreezeOrder) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((TokenUnfreezeOrder) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TokenUnfreezeOrder) this.instance).clearAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TokenUnfreezeOrder();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002Ȉ\u0003\u0002", new Object[]{"from_", "symbol_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TokenUnfreezeOrder> parser = PARSER;
                    if (parser == null) {
                        synchronized (TokenUnfreezeOrder.class) {
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
            TokenUnfreezeOrder tokenUnfreezeOrder = new TokenUnfreezeOrder();
            DEFAULT_INSTANCE = tokenUnfreezeOrder;
            GeneratedMessageLite.registerDefaultInstance(TokenUnfreezeOrder.class, tokenUnfreezeOrder);
        }

        public static TokenUnfreezeOrder getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TokenUnfreezeOrder> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class HTLTOrder extends GeneratedMessageLite<HTLTOrder, Builder> implements HTLTOrderOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 7;
        public static final int CROSS_CHAIN_FIELD_NUMBER = 10;
        private static final HTLTOrder DEFAULT_INSTANCE;
        public static final int EXPECTED_INCOME_FIELD_NUMBER = 8;
        public static final int FROM_FIELD_NUMBER = 1;
        public static final int HEIGHT_SPAN_FIELD_NUMBER = 9;
        private static volatile Parser<HTLTOrder> PARSER = null;
        public static final int RANDOM_NUMBER_HASH_FIELD_NUMBER = 5;
        public static final int RECIPIENT_OTHER_CHAIN_FIELD_NUMBER = 3;
        public static final int SENDER_OTHER_CHAIN_FIELD_NUMBER = 4;
        public static final int TIMESTAMP_FIELD_NUMBER = 6;
        public static final int TO_FIELD_NUMBER = 2;
        private Internal.ProtobufList<SendOrder.Token> amount_;
        private boolean crossChain_;
        private String expectedIncome_;
        private ByteString from_;
        private long heightSpan_;
        private ByteString randomNumberHash_;
        private String recipientOtherChain_;
        private String senderOtherChain_;
        private long timestamp_;
        private ByteString to_;

        private HTLTOrder() {
            ByteString byteString = ByteString.EMPTY;
            this.from_ = byteString;
            this.to_ = byteString;
            this.recipientOtherChain_ = "";
            this.senderOtherChain_ = "";
            this.randomNumberHash_ = byteString;
            this.amount_ = GeneratedMessageLite.emptyProtobufList();
            this.expectedIncome_ = "";
        }

        @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
        public ByteString getFrom() {
            return this.from_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFrom(ByteString value) {
            value.getClass();
            this.from_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFrom() {
            this.from_ = getDefaultInstance().getFrom();
        }

        @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
        public ByteString getTo() {
            return this.to_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTo(ByteString value) {
            value.getClass();
            this.to_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTo() {
            this.to_ = getDefaultInstance().getTo();
        }

        @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
        public String getRecipientOtherChain() {
            return this.recipientOtherChain_;
        }

        @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
        public ByteString getRecipientOtherChainBytes() {
            return ByteString.copyFromUtf8(this.recipientOtherChain_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRecipientOtherChain(String value) {
            value.getClass();
            this.recipientOtherChain_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRecipientOtherChain() {
            this.recipientOtherChain_ = getDefaultInstance().getRecipientOtherChain();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRecipientOtherChainBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.recipientOtherChain_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
        public String getSenderOtherChain() {
            return this.senderOtherChain_;
        }

        @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
        public ByteString getSenderOtherChainBytes() {
            return ByteString.copyFromUtf8(this.senderOtherChain_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSenderOtherChain(String value) {
            value.getClass();
            this.senderOtherChain_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSenderOtherChain() {
            this.senderOtherChain_ = getDefaultInstance().getSenderOtherChain();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSenderOtherChainBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.senderOtherChain_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
        public ByteString getRandomNumberHash() {
            return this.randomNumberHash_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRandomNumberHash(ByteString value) {
            value.getClass();
            this.randomNumberHash_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRandomNumberHash() {
            this.randomNumberHash_ = getDefaultInstance().getRandomNumberHash();
        }

        @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
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

        @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
        public List<SendOrder.Token> getAmountList() {
            return this.amount_;
        }

        public List<? extends SendOrder.TokenOrBuilder> getAmountOrBuilderList() {
            return this.amount_;
        }

        @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
        public int getAmountCount() {
            return this.amount_.size();
        }

        @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
        public SendOrder.Token getAmount(int index) {
            return this.amount_.get(index);
        }

        public SendOrder.TokenOrBuilder getAmountOrBuilder(int index) {
            return this.amount_.get(index);
        }

        private void ensureAmountIsMutable() {
            Internal.ProtobufList<SendOrder.Token> protobufList = this.amount_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.amount_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmount(int index, SendOrder.Token value) {
            value.getClass();
            ensureAmountIsMutable();
            this.amount_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAmount(SendOrder.Token value) {
            value.getClass();
            ensureAmountIsMutable();
            this.amount_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAmount(int index, SendOrder.Token value) {
            value.getClass();
            ensureAmountIsMutable();
            this.amount_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllAmount(Iterable<? extends SendOrder.Token> values) {
            ensureAmountIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.amount_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAmount() {
            this.amount_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeAmount(int index) {
            ensureAmountIsMutable();
            this.amount_.remove(index);
        }

        @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
        public String getExpectedIncome() {
            return this.expectedIncome_;
        }

        @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
        public ByteString getExpectedIncomeBytes() {
            return ByteString.copyFromUtf8(this.expectedIncome_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setExpectedIncome(String value) {
            value.getClass();
            this.expectedIncome_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearExpectedIncome() {
            this.expectedIncome_ = getDefaultInstance().getExpectedIncome();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setExpectedIncomeBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.expectedIncome_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
        public long getHeightSpan() {
            return this.heightSpan_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHeightSpan(long value) {
            this.heightSpan_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearHeightSpan() {
            this.heightSpan_ = 0L;
        }

        @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
        public boolean getCrossChain() {
            return this.crossChain_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCrossChain(boolean value) {
            this.crossChain_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCrossChain() {
            this.crossChain_ = false;
        }

        public static HTLTOrder parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (HTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static HTLTOrder parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (HTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static HTLTOrder parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (HTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static HTLTOrder parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (HTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static HTLTOrder parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (HTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static HTLTOrder parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (HTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static HTLTOrder parseFrom(InputStream input) throws IOException {
            return (HTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static HTLTOrder parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (HTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static HTLTOrder parseDelimitedFrom(InputStream input) throws IOException {
            return (HTLTOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static HTLTOrder parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (HTLTOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static HTLTOrder parseFrom(CodedInputStream input) throws IOException {
            return (HTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static HTLTOrder parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (HTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(HTLTOrder prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<HTLTOrder, Builder> implements HTLTOrderOrBuilder {
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(HTLTOrder.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
            public ByteString getFrom() {
                return ((HTLTOrder) this.instance).getFrom();
            }

            public Builder setFrom(ByteString value) {
                copyOnWrite();
                ((HTLTOrder) this.instance).setFrom(value);
                return this;
            }

            public Builder clearFrom() {
                copyOnWrite();
                ((HTLTOrder) this.instance).clearFrom();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
            public ByteString getTo() {
                return ((HTLTOrder) this.instance).getTo();
            }

            public Builder setTo(ByteString value) {
                copyOnWrite();
                ((HTLTOrder) this.instance).setTo(value);
                return this;
            }

            public Builder clearTo() {
                copyOnWrite();
                ((HTLTOrder) this.instance).clearTo();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
            public String getRecipientOtherChain() {
                return ((HTLTOrder) this.instance).getRecipientOtherChain();
            }

            @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
            public ByteString getRecipientOtherChainBytes() {
                return ((HTLTOrder) this.instance).getRecipientOtherChainBytes();
            }

            public Builder setRecipientOtherChain(String value) {
                copyOnWrite();
                ((HTLTOrder) this.instance).setRecipientOtherChain(value);
                return this;
            }

            public Builder clearRecipientOtherChain() {
                copyOnWrite();
                ((HTLTOrder) this.instance).clearRecipientOtherChain();
                return this;
            }

            public Builder setRecipientOtherChainBytes(ByteString value) {
                copyOnWrite();
                ((HTLTOrder) this.instance).setRecipientOtherChainBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
            public String getSenderOtherChain() {
                return ((HTLTOrder) this.instance).getSenderOtherChain();
            }

            @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
            public ByteString getSenderOtherChainBytes() {
                return ((HTLTOrder) this.instance).getSenderOtherChainBytes();
            }

            public Builder setSenderOtherChain(String value) {
                copyOnWrite();
                ((HTLTOrder) this.instance).setSenderOtherChain(value);
                return this;
            }

            public Builder clearSenderOtherChain() {
                copyOnWrite();
                ((HTLTOrder) this.instance).clearSenderOtherChain();
                return this;
            }

            public Builder setSenderOtherChainBytes(ByteString value) {
                copyOnWrite();
                ((HTLTOrder) this.instance).setSenderOtherChainBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
            public ByteString getRandomNumberHash() {
                return ((HTLTOrder) this.instance).getRandomNumberHash();
            }

            public Builder setRandomNumberHash(ByteString value) {
                copyOnWrite();
                ((HTLTOrder) this.instance).setRandomNumberHash(value);
                return this;
            }

            public Builder clearRandomNumberHash() {
                copyOnWrite();
                ((HTLTOrder) this.instance).clearRandomNumberHash();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
            public long getTimestamp() {
                return ((HTLTOrder) this.instance).getTimestamp();
            }

            public Builder setTimestamp(long value) {
                copyOnWrite();
                ((HTLTOrder) this.instance).setTimestamp(value);
                return this;
            }

            public Builder clearTimestamp() {
                copyOnWrite();
                ((HTLTOrder) this.instance).clearTimestamp();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
            public List<SendOrder.Token> getAmountList() {
                return Collections.unmodifiableList(((HTLTOrder) this.instance).getAmountList());
            }

            @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
            public int getAmountCount() {
                return ((HTLTOrder) this.instance).getAmountCount();
            }

            @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
            public SendOrder.Token getAmount(int index) {
                return ((HTLTOrder) this.instance).getAmount(index);
            }

            public Builder setAmount(int index, SendOrder.Token value) {
                copyOnWrite();
                ((HTLTOrder) this.instance).setAmount(index, value);
                return this;
            }

            public Builder setAmount(int index, SendOrder.Token.Builder builderForValue) {
                copyOnWrite();
                ((HTLTOrder) this.instance).setAmount(index, builderForValue.build());
                return this;
            }

            public Builder addAmount(SendOrder.Token value) {
                copyOnWrite();
                ((HTLTOrder) this.instance).addAmount(value);
                return this;
            }

            public Builder addAmount(int index, SendOrder.Token value) {
                copyOnWrite();
                ((HTLTOrder) this.instance).addAmount(index, value);
                return this;
            }

            public Builder addAmount(SendOrder.Token.Builder builderForValue) {
                copyOnWrite();
                ((HTLTOrder) this.instance).addAmount(builderForValue.build());
                return this;
            }

            public Builder addAmount(int index, SendOrder.Token.Builder builderForValue) {
                copyOnWrite();
                ((HTLTOrder) this.instance).addAmount(index, builderForValue.build());
                return this;
            }

            public Builder addAllAmount(Iterable<? extends SendOrder.Token> values) {
                copyOnWrite();
                ((HTLTOrder) this.instance).addAllAmount(values);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((HTLTOrder) this.instance).clearAmount();
                return this;
            }

            public Builder removeAmount(int index) {
                copyOnWrite();
                ((HTLTOrder) this.instance).removeAmount(index);
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
            public String getExpectedIncome() {
                return ((HTLTOrder) this.instance).getExpectedIncome();
            }

            @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
            public ByteString getExpectedIncomeBytes() {
                return ((HTLTOrder) this.instance).getExpectedIncomeBytes();
            }

            public Builder setExpectedIncome(String value) {
                copyOnWrite();
                ((HTLTOrder) this.instance).setExpectedIncome(value);
                return this;
            }

            public Builder clearExpectedIncome() {
                copyOnWrite();
                ((HTLTOrder) this.instance).clearExpectedIncome();
                return this;
            }

            public Builder setExpectedIncomeBytes(ByteString value) {
                copyOnWrite();
                ((HTLTOrder) this.instance).setExpectedIncomeBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
            public long getHeightSpan() {
                return ((HTLTOrder) this.instance).getHeightSpan();
            }

            public Builder setHeightSpan(long value) {
                copyOnWrite();
                ((HTLTOrder) this.instance).setHeightSpan(value);
                return this;
            }

            public Builder clearHeightSpan() {
                copyOnWrite();
                ((HTLTOrder) this.instance).clearHeightSpan();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.HTLTOrderOrBuilder
            public boolean getCrossChain() {
                return ((HTLTOrder) this.instance).getCrossChain();
            }

            public Builder setCrossChain(boolean value) {
                copyOnWrite();
                ((HTLTOrder) this.instance).setCrossChain(value);
                return this;
            }

            public Builder clearCrossChain() {
                copyOnWrite();
                ((HTLTOrder) this.instance).clearCrossChain();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new HTLTOrder();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\n\u0000\u0000\u0001\n\n\u0000\u0001\u0000\u0001\n\u0002\n\u0003Ȉ\u0004Ȉ\u0005\n\u0006\u0002\u0007\u001b\bȈ\t\u0002\n\u0007", new Object[]{"from_", "to_", "recipientOtherChain_", "senderOtherChain_", "randomNumberHash_", "timestamp_", "amount_", SendOrder.Token.class, "expectedIncome_", "heightSpan_", "crossChain_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<HTLTOrder> parser = PARSER;
                    if (parser == null) {
                        synchronized (HTLTOrder.class) {
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
            HTLTOrder hTLTOrder = new HTLTOrder();
            DEFAULT_INSTANCE = hTLTOrder;
            GeneratedMessageLite.registerDefaultInstance(HTLTOrder.class, hTLTOrder);
        }

        public static HTLTOrder getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<HTLTOrder> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class DepositHTLTOrder extends GeneratedMessageLite<DepositHTLTOrder, Builder> implements DepositHTLTOrderOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 2;
        private static final DepositHTLTOrder DEFAULT_INSTANCE;
        public static final int FROM_FIELD_NUMBER = 1;
        private static volatile Parser<DepositHTLTOrder> PARSER = null;
        public static final int SWAP_ID_FIELD_NUMBER = 3;
        private Internal.ProtobufList<SendOrder.Token> amount_;
        private ByteString from_;
        private ByteString swapId_;

        private DepositHTLTOrder() {
            ByteString byteString = ByteString.EMPTY;
            this.from_ = byteString;
            this.amount_ = GeneratedMessageLite.emptyProtobufList();
            this.swapId_ = byteString;
        }

        @Override // wallet.core.jni.proto.Binance.DepositHTLTOrderOrBuilder
        public ByteString getFrom() {
            return this.from_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFrom(ByteString value) {
            value.getClass();
            this.from_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFrom() {
            this.from_ = getDefaultInstance().getFrom();
        }

        @Override // wallet.core.jni.proto.Binance.DepositHTLTOrderOrBuilder
        public List<SendOrder.Token> getAmountList() {
            return this.amount_;
        }

        public List<? extends SendOrder.TokenOrBuilder> getAmountOrBuilderList() {
            return this.amount_;
        }

        @Override // wallet.core.jni.proto.Binance.DepositHTLTOrderOrBuilder
        public int getAmountCount() {
            return this.amount_.size();
        }

        @Override // wallet.core.jni.proto.Binance.DepositHTLTOrderOrBuilder
        public SendOrder.Token getAmount(int index) {
            return this.amount_.get(index);
        }

        public SendOrder.TokenOrBuilder getAmountOrBuilder(int index) {
            return this.amount_.get(index);
        }

        private void ensureAmountIsMutable() {
            Internal.ProtobufList<SendOrder.Token> protobufList = this.amount_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.amount_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmount(int index, SendOrder.Token value) {
            value.getClass();
            ensureAmountIsMutable();
            this.amount_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAmount(SendOrder.Token value) {
            value.getClass();
            ensureAmountIsMutable();
            this.amount_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAmount(int index, SendOrder.Token value) {
            value.getClass();
            ensureAmountIsMutable();
            this.amount_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllAmount(Iterable<? extends SendOrder.Token> values) {
            ensureAmountIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.amount_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAmount() {
            this.amount_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeAmount(int index) {
            ensureAmountIsMutable();
            this.amount_.remove(index);
        }

        @Override // wallet.core.jni.proto.Binance.DepositHTLTOrderOrBuilder
        public ByteString getSwapId() {
            return this.swapId_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSwapId(ByteString value) {
            value.getClass();
            this.swapId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSwapId() {
            this.swapId_ = getDefaultInstance().getSwapId();
        }

        public static DepositHTLTOrder parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (DepositHTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DepositHTLTOrder parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DepositHTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DepositHTLTOrder parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (DepositHTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DepositHTLTOrder parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DepositHTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DepositHTLTOrder parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (DepositHTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DepositHTLTOrder parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DepositHTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DepositHTLTOrder parseFrom(InputStream input) throws IOException {
            return (DepositHTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DepositHTLTOrder parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DepositHTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DepositHTLTOrder parseDelimitedFrom(InputStream input) throws IOException {
            return (DepositHTLTOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static DepositHTLTOrder parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DepositHTLTOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DepositHTLTOrder parseFrom(CodedInputStream input) throws IOException {
            return (DepositHTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DepositHTLTOrder parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DepositHTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(DepositHTLTOrder prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<DepositHTLTOrder, Builder> implements DepositHTLTOrderOrBuilder {
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(DepositHTLTOrder.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.DepositHTLTOrderOrBuilder
            public ByteString getFrom() {
                return ((DepositHTLTOrder) this.instance).getFrom();
            }

            public Builder setFrom(ByteString value) {
                copyOnWrite();
                ((DepositHTLTOrder) this.instance).setFrom(value);
                return this;
            }

            public Builder clearFrom() {
                copyOnWrite();
                ((DepositHTLTOrder) this.instance).clearFrom();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.DepositHTLTOrderOrBuilder
            public List<SendOrder.Token> getAmountList() {
                return Collections.unmodifiableList(((DepositHTLTOrder) this.instance).getAmountList());
            }

            @Override // wallet.core.jni.proto.Binance.DepositHTLTOrderOrBuilder
            public int getAmountCount() {
                return ((DepositHTLTOrder) this.instance).getAmountCount();
            }

            @Override // wallet.core.jni.proto.Binance.DepositHTLTOrderOrBuilder
            public SendOrder.Token getAmount(int index) {
                return ((DepositHTLTOrder) this.instance).getAmount(index);
            }

            public Builder setAmount(int index, SendOrder.Token value) {
                copyOnWrite();
                ((DepositHTLTOrder) this.instance).setAmount(index, value);
                return this;
            }

            public Builder setAmount(int index, SendOrder.Token.Builder builderForValue) {
                copyOnWrite();
                ((DepositHTLTOrder) this.instance).setAmount(index, builderForValue.build());
                return this;
            }

            public Builder addAmount(SendOrder.Token value) {
                copyOnWrite();
                ((DepositHTLTOrder) this.instance).addAmount(value);
                return this;
            }

            public Builder addAmount(int index, SendOrder.Token value) {
                copyOnWrite();
                ((DepositHTLTOrder) this.instance).addAmount(index, value);
                return this;
            }

            public Builder addAmount(SendOrder.Token.Builder builderForValue) {
                copyOnWrite();
                ((DepositHTLTOrder) this.instance).addAmount(builderForValue.build());
                return this;
            }

            public Builder addAmount(int index, SendOrder.Token.Builder builderForValue) {
                copyOnWrite();
                ((DepositHTLTOrder) this.instance).addAmount(index, builderForValue.build());
                return this;
            }

            public Builder addAllAmount(Iterable<? extends SendOrder.Token> values) {
                copyOnWrite();
                ((DepositHTLTOrder) this.instance).addAllAmount(values);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((DepositHTLTOrder) this.instance).clearAmount();
                return this;
            }

            public Builder removeAmount(int index) {
                copyOnWrite();
                ((DepositHTLTOrder) this.instance).removeAmount(index);
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.DepositHTLTOrderOrBuilder
            public ByteString getSwapId() {
                return ((DepositHTLTOrder) this.instance).getSwapId();
            }

            public Builder setSwapId(ByteString value) {
                copyOnWrite();
                ((DepositHTLTOrder) this.instance).setSwapId(value);
                return this;
            }

            public Builder clearSwapId() {
                copyOnWrite();
                ((DepositHTLTOrder) this.instance).clearSwapId();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new DepositHTLTOrder();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\n\u0002\u001b\u0003\n", new Object[]{"from_", "amount_", SendOrder.Token.class, "swapId_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<DepositHTLTOrder> parser = PARSER;
                    if (parser == null) {
                        synchronized (DepositHTLTOrder.class) {
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
            DepositHTLTOrder depositHTLTOrder = new DepositHTLTOrder();
            DEFAULT_INSTANCE = depositHTLTOrder;
            GeneratedMessageLite.registerDefaultInstance(DepositHTLTOrder.class, depositHTLTOrder);
        }

        public static DepositHTLTOrder getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<DepositHTLTOrder> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class ClaimHTLOrder extends GeneratedMessageLite<ClaimHTLOrder, Builder> implements ClaimHTLOrderOrBuilder {
        private static final ClaimHTLOrder DEFAULT_INSTANCE;
        public static final int FROM_FIELD_NUMBER = 1;
        private static volatile Parser<ClaimHTLOrder> PARSER = null;
        public static final int RANDOM_NUMBER_FIELD_NUMBER = 3;
        public static final int SWAP_ID_FIELD_NUMBER = 2;
        private ByteString from_;
        private ByteString randomNumber_;
        private ByteString swapId_;

        private ClaimHTLOrder() {
            ByteString byteString = ByteString.EMPTY;
            this.from_ = byteString;
            this.swapId_ = byteString;
            this.randomNumber_ = byteString;
        }

        @Override // wallet.core.jni.proto.Binance.ClaimHTLOrderOrBuilder
        public ByteString getFrom() {
            return this.from_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFrom(ByteString value) {
            value.getClass();
            this.from_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFrom() {
            this.from_ = getDefaultInstance().getFrom();
        }

        @Override // wallet.core.jni.proto.Binance.ClaimHTLOrderOrBuilder
        public ByteString getSwapId() {
            return this.swapId_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSwapId(ByteString value) {
            value.getClass();
            this.swapId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSwapId() {
            this.swapId_ = getDefaultInstance().getSwapId();
        }

        @Override // wallet.core.jni.proto.Binance.ClaimHTLOrderOrBuilder
        public ByteString getRandomNumber() {
            return this.randomNumber_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRandomNumber(ByteString value) {
            value.getClass();
            this.randomNumber_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRandomNumber() {
            this.randomNumber_ = getDefaultInstance().getRandomNumber();
        }

        public static ClaimHTLOrder parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (ClaimHTLOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ClaimHTLOrder parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ClaimHTLOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ClaimHTLOrder parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (ClaimHTLOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ClaimHTLOrder parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ClaimHTLOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ClaimHTLOrder parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (ClaimHTLOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ClaimHTLOrder parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ClaimHTLOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ClaimHTLOrder parseFrom(InputStream input) throws IOException {
            return (ClaimHTLOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static ClaimHTLOrder parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ClaimHTLOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static ClaimHTLOrder parseDelimitedFrom(InputStream input) throws IOException {
            return (ClaimHTLOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static ClaimHTLOrder parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ClaimHTLOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static ClaimHTLOrder parseFrom(CodedInputStream input) throws IOException {
            return (ClaimHTLOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static ClaimHTLOrder parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ClaimHTLOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(ClaimHTLOrder prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<ClaimHTLOrder, Builder> implements ClaimHTLOrderOrBuilder {
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(ClaimHTLOrder.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.ClaimHTLOrderOrBuilder
            public ByteString getFrom() {
                return ((ClaimHTLOrder) this.instance).getFrom();
            }

            public Builder setFrom(ByteString value) {
                copyOnWrite();
                ((ClaimHTLOrder) this.instance).setFrom(value);
                return this;
            }

            public Builder clearFrom() {
                copyOnWrite();
                ((ClaimHTLOrder) this.instance).clearFrom();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.ClaimHTLOrderOrBuilder
            public ByteString getSwapId() {
                return ((ClaimHTLOrder) this.instance).getSwapId();
            }

            public Builder setSwapId(ByteString value) {
                copyOnWrite();
                ((ClaimHTLOrder) this.instance).setSwapId(value);
                return this;
            }

            public Builder clearSwapId() {
                copyOnWrite();
                ((ClaimHTLOrder) this.instance).clearSwapId();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.ClaimHTLOrderOrBuilder
            public ByteString getRandomNumber() {
                return ((ClaimHTLOrder) this.instance).getRandomNumber();
            }

            public Builder setRandomNumber(ByteString value) {
                copyOnWrite();
                ((ClaimHTLOrder) this.instance).setRandomNumber(value);
                return this;
            }

            public Builder clearRandomNumber() {
                copyOnWrite();
                ((ClaimHTLOrder) this.instance).clearRandomNumber();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new ClaimHTLOrder();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002\n\u0003\n", new Object[]{"from_", "swapId_", "randomNumber_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<ClaimHTLOrder> parser = PARSER;
                    if (parser == null) {
                        synchronized (ClaimHTLOrder.class) {
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
            ClaimHTLOrder claimHTLOrder = new ClaimHTLOrder();
            DEFAULT_INSTANCE = claimHTLOrder;
            GeneratedMessageLite.registerDefaultInstance(ClaimHTLOrder.class, claimHTLOrder);
        }

        public static ClaimHTLOrder getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<ClaimHTLOrder> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class RefundHTLTOrder extends GeneratedMessageLite<RefundHTLTOrder, Builder> implements RefundHTLTOrderOrBuilder {
        private static final RefundHTLTOrder DEFAULT_INSTANCE;
        public static final int FROM_FIELD_NUMBER = 1;
        private static volatile Parser<RefundHTLTOrder> PARSER = null;
        public static final int SWAP_ID_FIELD_NUMBER = 2;
        private ByteString from_;
        private ByteString swapId_;

        private RefundHTLTOrder() {
            ByteString byteString = ByteString.EMPTY;
            this.from_ = byteString;
            this.swapId_ = byteString;
        }

        @Override // wallet.core.jni.proto.Binance.RefundHTLTOrderOrBuilder
        public ByteString getFrom() {
            return this.from_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFrom(ByteString value) {
            value.getClass();
            this.from_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFrom() {
            this.from_ = getDefaultInstance().getFrom();
        }

        @Override // wallet.core.jni.proto.Binance.RefundHTLTOrderOrBuilder
        public ByteString getSwapId() {
            return this.swapId_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSwapId(ByteString value) {
            value.getClass();
            this.swapId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSwapId() {
            this.swapId_ = getDefaultInstance().getSwapId();
        }

        public static RefundHTLTOrder parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (RefundHTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static RefundHTLTOrder parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (RefundHTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static RefundHTLTOrder parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (RefundHTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static RefundHTLTOrder parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (RefundHTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static RefundHTLTOrder parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (RefundHTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static RefundHTLTOrder parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (RefundHTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static RefundHTLTOrder parseFrom(InputStream input) throws IOException {
            return (RefundHTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static RefundHTLTOrder parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (RefundHTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static RefundHTLTOrder parseDelimitedFrom(InputStream input) throws IOException {
            return (RefundHTLTOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static RefundHTLTOrder parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (RefundHTLTOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static RefundHTLTOrder parseFrom(CodedInputStream input) throws IOException {
            return (RefundHTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static RefundHTLTOrder parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (RefundHTLTOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(RefundHTLTOrder prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<RefundHTLTOrder, Builder> implements RefundHTLTOrderOrBuilder {
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(RefundHTLTOrder.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.RefundHTLTOrderOrBuilder
            public ByteString getFrom() {
                return ((RefundHTLTOrder) this.instance).getFrom();
            }

            public Builder setFrom(ByteString value) {
                copyOnWrite();
                ((RefundHTLTOrder) this.instance).setFrom(value);
                return this;
            }

            public Builder clearFrom() {
                copyOnWrite();
                ((RefundHTLTOrder) this.instance).clearFrom();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.RefundHTLTOrderOrBuilder
            public ByteString getSwapId() {
                return ((RefundHTLTOrder) this.instance).getSwapId();
            }

            public Builder setSwapId(ByteString value) {
                copyOnWrite();
                ((RefundHTLTOrder) this.instance).setSwapId(value);
                return this;
            }

            public Builder clearSwapId() {
                copyOnWrite();
                ((RefundHTLTOrder) this.instance).clearSwapId();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new RefundHTLTOrder();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\n", new Object[]{"from_", "swapId_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<RefundHTLTOrder> parser = PARSER;
                    if (parser == null) {
                        synchronized (RefundHTLTOrder.class) {
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
            RefundHTLTOrder refundHTLTOrder = new RefundHTLTOrder();
            DEFAULT_INSTANCE = refundHTLTOrder;
            GeneratedMessageLite.registerDefaultInstance(RefundHTLTOrder.class, refundHTLTOrder);
        }

        public static RefundHTLTOrder getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<RefundHTLTOrder> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class TransferOut extends GeneratedMessageLite<TransferOut, Builder> implements TransferOutOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 3;
        private static final TransferOut DEFAULT_INSTANCE;
        public static final int EXPIRE_TIME_FIELD_NUMBER = 4;
        public static final int FROM_FIELD_NUMBER = 1;
        private static volatile Parser<TransferOut> PARSER = null;
        public static final int TO_FIELD_NUMBER = 2;
        private SendOrder.Token amount_;
        private long expireTime_;
        private ByteString from_;
        private ByteString to_;

        private TransferOut() {
            ByteString byteString = ByteString.EMPTY;
            this.from_ = byteString;
            this.to_ = byteString;
        }

        @Override // wallet.core.jni.proto.Binance.TransferOutOrBuilder
        public ByteString getFrom() {
            return this.from_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFrom(ByteString value) {
            value.getClass();
            this.from_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFrom() {
            this.from_ = getDefaultInstance().getFrom();
        }

        @Override // wallet.core.jni.proto.Binance.TransferOutOrBuilder
        public ByteString getTo() {
            return this.to_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTo(ByteString value) {
            value.getClass();
            this.to_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTo() {
            this.to_ = getDefaultInstance().getTo();
        }

        @Override // wallet.core.jni.proto.Binance.TransferOutOrBuilder
        public boolean hasAmount() {
            return this.amount_ != null;
        }

        @Override // wallet.core.jni.proto.Binance.TransferOutOrBuilder
        public SendOrder.Token getAmount() {
            SendOrder.Token token = this.amount_;
            return token == null ? SendOrder.Token.getDefaultInstance() : token;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmount(SendOrder.Token value) {
            value.getClass();
            this.amount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeAmount(SendOrder.Token value) {
            value.getClass();
            SendOrder.Token token = this.amount_;
            if (token != null && token != SendOrder.Token.getDefaultInstance()) {
                this.amount_ = SendOrder.Token.newBuilder(this.amount_).mergeFrom((SendOrder.Token.Builder) value).buildPartial();
            } else {
                this.amount_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAmount() {
            this.amount_ = null;
        }

        @Override // wallet.core.jni.proto.Binance.TransferOutOrBuilder
        public long getExpireTime() {
            return this.expireTime_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setExpireTime(long value) {
            this.expireTime_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearExpireTime() {
            this.expireTime_ = 0L;
        }

        public static TransferOut parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TransferOut) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransferOut parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransferOut) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransferOut parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TransferOut) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransferOut parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransferOut) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransferOut parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TransferOut) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransferOut parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransferOut) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransferOut parseFrom(InputStream input) throws IOException {
            return (TransferOut) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransferOut parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransferOut) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransferOut parseDelimitedFrom(InputStream input) throws IOException {
            return (TransferOut) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TransferOut parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransferOut) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransferOut parseFrom(CodedInputStream input) throws IOException {
            return (TransferOut) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransferOut parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransferOut) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TransferOut prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransferOut, Builder> implements TransferOutOrBuilder {
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(TransferOut.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.TransferOutOrBuilder
            public ByteString getFrom() {
                return ((TransferOut) this.instance).getFrom();
            }

            public Builder setFrom(ByteString value) {
                copyOnWrite();
                ((TransferOut) this.instance).setFrom(value);
                return this;
            }

            public Builder clearFrom() {
                copyOnWrite();
                ((TransferOut) this.instance).clearFrom();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TransferOutOrBuilder
            public ByteString getTo() {
                return ((TransferOut) this.instance).getTo();
            }

            public Builder setTo(ByteString value) {
                copyOnWrite();
                ((TransferOut) this.instance).setTo(value);
                return this;
            }

            public Builder clearTo() {
                copyOnWrite();
                ((TransferOut) this.instance).clearTo();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TransferOutOrBuilder
            public boolean hasAmount() {
                return ((TransferOut) this.instance).hasAmount();
            }

            @Override // wallet.core.jni.proto.Binance.TransferOutOrBuilder
            public SendOrder.Token getAmount() {
                return ((TransferOut) this.instance).getAmount();
            }

            public Builder setAmount(SendOrder.Token value) {
                copyOnWrite();
                ((TransferOut) this.instance).setAmount(value);
                return this;
            }

            public Builder setAmount(SendOrder.Token.Builder builderForValue) {
                copyOnWrite();
                ((TransferOut) this.instance).setAmount(builderForValue.build());
                return this;
            }

            public Builder mergeAmount(SendOrder.Token value) {
                copyOnWrite();
                ((TransferOut) this.instance).mergeAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TransferOut) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TransferOutOrBuilder
            public long getExpireTime() {
                return ((TransferOut) this.instance).getExpireTime();
            }

            public Builder setExpireTime(long value) {
                copyOnWrite();
                ((TransferOut) this.instance).setExpireTime(value);
                return this;
            }

            public Builder clearExpireTime() {
                copyOnWrite();
                ((TransferOut) this.instance).clearExpireTime();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransferOut();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\n\u0002\n\u0003\t\u0004\u0002", new Object[]{"from_", "to_", "amount_", "expireTime_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TransferOut> parser = PARSER;
                    if (parser == null) {
                        synchronized (TransferOut.class) {
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
            TransferOut transferOut = new TransferOut();
            DEFAULT_INSTANCE = transferOut;
            GeneratedMessageLite.registerDefaultInstance(TransferOut.class, transferOut);
        }

        public static TransferOut getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TransferOut> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class SideChainDelegate extends GeneratedMessageLite<SideChainDelegate, Builder> implements SideChainDelegateOrBuilder {
        public static final int CHAIN_ID_FIELD_NUMBER = 4;
        private static final SideChainDelegate DEFAULT_INSTANCE;
        public static final int DELEGATION_FIELD_NUMBER = 3;
        public static final int DELEGATOR_ADDR_FIELD_NUMBER = 1;
        private static volatile Parser<SideChainDelegate> PARSER = null;
        public static final int VALIDATOR_ADDR_FIELD_NUMBER = 2;
        private String chainId_;
        private SendOrder.Token delegation_;
        private ByteString delegatorAddr_;
        private ByteString validatorAddr_;

        private SideChainDelegate() {
            ByteString byteString = ByteString.EMPTY;
            this.delegatorAddr_ = byteString;
            this.validatorAddr_ = byteString;
            this.chainId_ = "";
        }

        @Override // wallet.core.jni.proto.Binance.SideChainDelegateOrBuilder
        public ByteString getDelegatorAddr() {
            return this.delegatorAddr_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDelegatorAddr(ByteString value) {
            value.getClass();
            this.delegatorAddr_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDelegatorAddr() {
            this.delegatorAddr_ = getDefaultInstance().getDelegatorAddr();
        }

        @Override // wallet.core.jni.proto.Binance.SideChainDelegateOrBuilder
        public ByteString getValidatorAddr() {
            return this.validatorAddr_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValidatorAddr(ByteString value) {
            value.getClass();
            this.validatorAddr_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValidatorAddr() {
            this.validatorAddr_ = getDefaultInstance().getValidatorAddr();
        }

        @Override // wallet.core.jni.proto.Binance.SideChainDelegateOrBuilder
        public boolean hasDelegation() {
            return this.delegation_ != null;
        }

        @Override // wallet.core.jni.proto.Binance.SideChainDelegateOrBuilder
        public SendOrder.Token getDelegation() {
            SendOrder.Token token = this.delegation_;
            return token == null ? SendOrder.Token.getDefaultInstance() : token;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDelegation(SendOrder.Token value) {
            value.getClass();
            this.delegation_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeDelegation(SendOrder.Token value) {
            value.getClass();
            SendOrder.Token token = this.delegation_;
            if (token != null && token != SendOrder.Token.getDefaultInstance()) {
                this.delegation_ = SendOrder.Token.newBuilder(this.delegation_).mergeFrom((SendOrder.Token.Builder) value).buildPartial();
            } else {
                this.delegation_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDelegation() {
            this.delegation_ = null;
        }

        @Override // wallet.core.jni.proto.Binance.SideChainDelegateOrBuilder
        public String getChainId() {
            return this.chainId_;
        }

        @Override // wallet.core.jni.proto.Binance.SideChainDelegateOrBuilder
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

        public static SideChainDelegate parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (SideChainDelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SideChainDelegate parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SideChainDelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SideChainDelegate parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (SideChainDelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SideChainDelegate parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SideChainDelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SideChainDelegate parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (SideChainDelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SideChainDelegate parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SideChainDelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SideChainDelegate parseFrom(InputStream input) throws IOException {
            return (SideChainDelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SideChainDelegate parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SideChainDelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SideChainDelegate parseDelimitedFrom(InputStream input) throws IOException {
            return (SideChainDelegate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static SideChainDelegate parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SideChainDelegate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SideChainDelegate parseFrom(CodedInputStream input) throws IOException {
            return (SideChainDelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SideChainDelegate parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SideChainDelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(SideChainDelegate prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SideChainDelegate, Builder> implements SideChainDelegateOrBuilder {
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(SideChainDelegate.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.SideChainDelegateOrBuilder
            public ByteString getDelegatorAddr() {
                return ((SideChainDelegate) this.instance).getDelegatorAddr();
            }

            public Builder setDelegatorAddr(ByteString value) {
                copyOnWrite();
                ((SideChainDelegate) this.instance).setDelegatorAddr(value);
                return this;
            }

            public Builder clearDelegatorAddr() {
                copyOnWrite();
                ((SideChainDelegate) this.instance).clearDelegatorAddr();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SideChainDelegateOrBuilder
            public ByteString getValidatorAddr() {
                return ((SideChainDelegate) this.instance).getValidatorAddr();
            }

            public Builder setValidatorAddr(ByteString value) {
                copyOnWrite();
                ((SideChainDelegate) this.instance).setValidatorAddr(value);
                return this;
            }

            public Builder clearValidatorAddr() {
                copyOnWrite();
                ((SideChainDelegate) this.instance).clearValidatorAddr();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SideChainDelegateOrBuilder
            public boolean hasDelegation() {
                return ((SideChainDelegate) this.instance).hasDelegation();
            }

            @Override // wallet.core.jni.proto.Binance.SideChainDelegateOrBuilder
            public SendOrder.Token getDelegation() {
                return ((SideChainDelegate) this.instance).getDelegation();
            }

            public Builder setDelegation(SendOrder.Token value) {
                copyOnWrite();
                ((SideChainDelegate) this.instance).setDelegation(value);
                return this;
            }

            public Builder setDelegation(SendOrder.Token.Builder builderForValue) {
                copyOnWrite();
                ((SideChainDelegate) this.instance).setDelegation(builderForValue.build());
                return this;
            }

            public Builder mergeDelegation(SendOrder.Token value) {
                copyOnWrite();
                ((SideChainDelegate) this.instance).mergeDelegation(value);
                return this;
            }

            public Builder clearDelegation() {
                copyOnWrite();
                ((SideChainDelegate) this.instance).clearDelegation();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SideChainDelegateOrBuilder
            public String getChainId() {
                return ((SideChainDelegate) this.instance).getChainId();
            }

            @Override // wallet.core.jni.proto.Binance.SideChainDelegateOrBuilder
            public ByteString getChainIdBytes() {
                return ((SideChainDelegate) this.instance).getChainIdBytes();
            }

            public Builder setChainId(String value) {
                copyOnWrite();
                ((SideChainDelegate) this.instance).setChainId(value);
                return this;
            }

            public Builder clearChainId() {
                copyOnWrite();
                ((SideChainDelegate) this.instance).clearChainId();
                return this;
            }

            public Builder setChainIdBytes(ByteString value) {
                copyOnWrite();
                ((SideChainDelegate) this.instance).setChainIdBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SideChainDelegate();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\n\u0002\n\u0003\t\u0004Ȉ", new Object[]{"delegatorAddr_", "validatorAddr_", "delegation_", "chainId_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<SideChainDelegate> parser = PARSER;
                    if (parser == null) {
                        synchronized (SideChainDelegate.class) {
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
            SideChainDelegate sideChainDelegate = new SideChainDelegate();
            DEFAULT_INSTANCE = sideChainDelegate;
            GeneratedMessageLite.registerDefaultInstance(SideChainDelegate.class, sideChainDelegate);
        }

        public static SideChainDelegate getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<SideChainDelegate> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class SideChainRedelegate extends GeneratedMessageLite<SideChainRedelegate, Builder> implements SideChainRedelegateOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 4;
        public static final int CHAIN_ID_FIELD_NUMBER = 5;
        private static final SideChainRedelegate DEFAULT_INSTANCE;
        public static final int DELEGATOR_ADDR_FIELD_NUMBER = 1;
        private static volatile Parser<SideChainRedelegate> PARSER = null;
        public static final int VALIDATOR_DST_ADDR_FIELD_NUMBER = 3;
        public static final int VALIDATOR_SRC_ADDR_FIELD_NUMBER = 2;
        private SendOrder.Token amount_;
        private String chainId_;
        private ByteString delegatorAddr_;
        private ByteString validatorDstAddr_;
        private ByteString validatorSrcAddr_;

        private SideChainRedelegate() {
            ByteString byteString = ByteString.EMPTY;
            this.delegatorAddr_ = byteString;
            this.validatorSrcAddr_ = byteString;
            this.validatorDstAddr_ = byteString;
            this.chainId_ = "";
        }

        @Override // wallet.core.jni.proto.Binance.SideChainRedelegateOrBuilder
        public ByteString getDelegatorAddr() {
            return this.delegatorAddr_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDelegatorAddr(ByteString value) {
            value.getClass();
            this.delegatorAddr_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDelegatorAddr() {
            this.delegatorAddr_ = getDefaultInstance().getDelegatorAddr();
        }

        @Override // wallet.core.jni.proto.Binance.SideChainRedelegateOrBuilder
        public ByteString getValidatorSrcAddr() {
            return this.validatorSrcAddr_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValidatorSrcAddr(ByteString value) {
            value.getClass();
            this.validatorSrcAddr_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValidatorSrcAddr() {
            this.validatorSrcAddr_ = getDefaultInstance().getValidatorSrcAddr();
        }

        @Override // wallet.core.jni.proto.Binance.SideChainRedelegateOrBuilder
        public ByteString getValidatorDstAddr() {
            return this.validatorDstAddr_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValidatorDstAddr(ByteString value) {
            value.getClass();
            this.validatorDstAddr_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValidatorDstAddr() {
            this.validatorDstAddr_ = getDefaultInstance().getValidatorDstAddr();
        }

        @Override // wallet.core.jni.proto.Binance.SideChainRedelegateOrBuilder
        public boolean hasAmount() {
            return this.amount_ != null;
        }

        @Override // wallet.core.jni.proto.Binance.SideChainRedelegateOrBuilder
        public SendOrder.Token getAmount() {
            SendOrder.Token token = this.amount_;
            return token == null ? SendOrder.Token.getDefaultInstance() : token;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmount(SendOrder.Token value) {
            value.getClass();
            this.amount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeAmount(SendOrder.Token value) {
            value.getClass();
            SendOrder.Token token = this.amount_;
            if (token != null && token != SendOrder.Token.getDefaultInstance()) {
                this.amount_ = SendOrder.Token.newBuilder(this.amount_).mergeFrom((SendOrder.Token.Builder) value).buildPartial();
            } else {
                this.amount_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAmount() {
            this.amount_ = null;
        }

        @Override // wallet.core.jni.proto.Binance.SideChainRedelegateOrBuilder
        public String getChainId() {
            return this.chainId_;
        }

        @Override // wallet.core.jni.proto.Binance.SideChainRedelegateOrBuilder
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

        public static SideChainRedelegate parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (SideChainRedelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SideChainRedelegate parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SideChainRedelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SideChainRedelegate parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (SideChainRedelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SideChainRedelegate parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SideChainRedelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SideChainRedelegate parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (SideChainRedelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SideChainRedelegate parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SideChainRedelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SideChainRedelegate parseFrom(InputStream input) throws IOException {
            return (SideChainRedelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SideChainRedelegate parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SideChainRedelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SideChainRedelegate parseDelimitedFrom(InputStream input) throws IOException {
            return (SideChainRedelegate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static SideChainRedelegate parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SideChainRedelegate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SideChainRedelegate parseFrom(CodedInputStream input) throws IOException {
            return (SideChainRedelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SideChainRedelegate parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SideChainRedelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(SideChainRedelegate prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SideChainRedelegate, Builder> implements SideChainRedelegateOrBuilder {
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(SideChainRedelegate.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.SideChainRedelegateOrBuilder
            public ByteString getDelegatorAddr() {
                return ((SideChainRedelegate) this.instance).getDelegatorAddr();
            }

            public Builder setDelegatorAddr(ByteString value) {
                copyOnWrite();
                ((SideChainRedelegate) this.instance).setDelegatorAddr(value);
                return this;
            }

            public Builder clearDelegatorAddr() {
                copyOnWrite();
                ((SideChainRedelegate) this.instance).clearDelegatorAddr();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SideChainRedelegateOrBuilder
            public ByteString getValidatorSrcAddr() {
                return ((SideChainRedelegate) this.instance).getValidatorSrcAddr();
            }

            public Builder setValidatorSrcAddr(ByteString value) {
                copyOnWrite();
                ((SideChainRedelegate) this.instance).setValidatorSrcAddr(value);
                return this;
            }

            public Builder clearValidatorSrcAddr() {
                copyOnWrite();
                ((SideChainRedelegate) this.instance).clearValidatorSrcAddr();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SideChainRedelegateOrBuilder
            public ByteString getValidatorDstAddr() {
                return ((SideChainRedelegate) this.instance).getValidatorDstAddr();
            }

            public Builder setValidatorDstAddr(ByteString value) {
                copyOnWrite();
                ((SideChainRedelegate) this.instance).setValidatorDstAddr(value);
                return this;
            }

            public Builder clearValidatorDstAddr() {
                copyOnWrite();
                ((SideChainRedelegate) this.instance).clearValidatorDstAddr();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SideChainRedelegateOrBuilder
            public boolean hasAmount() {
                return ((SideChainRedelegate) this.instance).hasAmount();
            }

            @Override // wallet.core.jni.proto.Binance.SideChainRedelegateOrBuilder
            public SendOrder.Token getAmount() {
                return ((SideChainRedelegate) this.instance).getAmount();
            }

            public Builder setAmount(SendOrder.Token value) {
                copyOnWrite();
                ((SideChainRedelegate) this.instance).setAmount(value);
                return this;
            }

            public Builder setAmount(SendOrder.Token.Builder builderForValue) {
                copyOnWrite();
                ((SideChainRedelegate) this.instance).setAmount(builderForValue.build());
                return this;
            }

            public Builder mergeAmount(SendOrder.Token value) {
                copyOnWrite();
                ((SideChainRedelegate) this.instance).mergeAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((SideChainRedelegate) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SideChainRedelegateOrBuilder
            public String getChainId() {
                return ((SideChainRedelegate) this.instance).getChainId();
            }

            @Override // wallet.core.jni.proto.Binance.SideChainRedelegateOrBuilder
            public ByteString getChainIdBytes() {
                return ((SideChainRedelegate) this.instance).getChainIdBytes();
            }

            public Builder setChainId(String value) {
                copyOnWrite();
                ((SideChainRedelegate) this.instance).setChainId(value);
                return this;
            }

            public Builder clearChainId() {
                copyOnWrite();
                ((SideChainRedelegate) this.instance).clearChainId();
                return this;
            }

            public Builder setChainIdBytes(ByteString value) {
                copyOnWrite();
                ((SideChainRedelegate) this.instance).setChainIdBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SideChainRedelegate();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\n\u0002\n\u0003\n\u0004\t\u0005Ȉ", new Object[]{"delegatorAddr_", "validatorSrcAddr_", "validatorDstAddr_", "amount_", "chainId_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<SideChainRedelegate> parser = PARSER;
                    if (parser == null) {
                        synchronized (SideChainRedelegate.class) {
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
            SideChainRedelegate sideChainRedelegate = new SideChainRedelegate();
            DEFAULT_INSTANCE = sideChainRedelegate;
            GeneratedMessageLite.registerDefaultInstance(SideChainRedelegate.class, sideChainRedelegate);
        }

        public static SideChainRedelegate getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<SideChainRedelegate> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class SideChainUndelegate extends GeneratedMessageLite<SideChainUndelegate, Builder> implements SideChainUndelegateOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 3;
        public static final int CHAIN_ID_FIELD_NUMBER = 4;
        private static final SideChainUndelegate DEFAULT_INSTANCE;
        public static final int DELEGATOR_ADDR_FIELD_NUMBER = 1;
        private static volatile Parser<SideChainUndelegate> PARSER = null;
        public static final int VALIDATOR_ADDR_FIELD_NUMBER = 2;
        private SendOrder.Token amount_;
        private String chainId_;
        private ByteString delegatorAddr_;
        private ByteString validatorAddr_;

        private SideChainUndelegate() {
            ByteString byteString = ByteString.EMPTY;
            this.delegatorAddr_ = byteString;
            this.validatorAddr_ = byteString;
            this.chainId_ = "";
        }

        @Override // wallet.core.jni.proto.Binance.SideChainUndelegateOrBuilder
        public ByteString getDelegatorAddr() {
            return this.delegatorAddr_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDelegatorAddr(ByteString value) {
            value.getClass();
            this.delegatorAddr_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDelegatorAddr() {
            this.delegatorAddr_ = getDefaultInstance().getDelegatorAddr();
        }

        @Override // wallet.core.jni.proto.Binance.SideChainUndelegateOrBuilder
        public ByteString getValidatorAddr() {
            return this.validatorAddr_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValidatorAddr(ByteString value) {
            value.getClass();
            this.validatorAddr_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValidatorAddr() {
            this.validatorAddr_ = getDefaultInstance().getValidatorAddr();
        }

        @Override // wallet.core.jni.proto.Binance.SideChainUndelegateOrBuilder
        public boolean hasAmount() {
            return this.amount_ != null;
        }

        @Override // wallet.core.jni.proto.Binance.SideChainUndelegateOrBuilder
        public SendOrder.Token getAmount() {
            SendOrder.Token token = this.amount_;
            return token == null ? SendOrder.Token.getDefaultInstance() : token;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmount(SendOrder.Token value) {
            value.getClass();
            this.amount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeAmount(SendOrder.Token value) {
            value.getClass();
            SendOrder.Token token = this.amount_;
            if (token != null && token != SendOrder.Token.getDefaultInstance()) {
                this.amount_ = SendOrder.Token.newBuilder(this.amount_).mergeFrom((SendOrder.Token.Builder) value).buildPartial();
            } else {
                this.amount_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAmount() {
            this.amount_ = null;
        }

        @Override // wallet.core.jni.proto.Binance.SideChainUndelegateOrBuilder
        public String getChainId() {
            return this.chainId_;
        }

        @Override // wallet.core.jni.proto.Binance.SideChainUndelegateOrBuilder
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

        public static SideChainUndelegate parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (SideChainUndelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SideChainUndelegate parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SideChainUndelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SideChainUndelegate parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (SideChainUndelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SideChainUndelegate parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SideChainUndelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SideChainUndelegate parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (SideChainUndelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SideChainUndelegate parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SideChainUndelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SideChainUndelegate parseFrom(InputStream input) throws IOException {
            return (SideChainUndelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SideChainUndelegate parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SideChainUndelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SideChainUndelegate parseDelimitedFrom(InputStream input) throws IOException {
            return (SideChainUndelegate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static SideChainUndelegate parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SideChainUndelegate) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SideChainUndelegate parseFrom(CodedInputStream input) throws IOException {
            return (SideChainUndelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SideChainUndelegate parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SideChainUndelegate) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(SideChainUndelegate prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SideChainUndelegate, Builder> implements SideChainUndelegateOrBuilder {
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(SideChainUndelegate.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.SideChainUndelegateOrBuilder
            public ByteString getDelegatorAddr() {
                return ((SideChainUndelegate) this.instance).getDelegatorAddr();
            }

            public Builder setDelegatorAddr(ByteString value) {
                copyOnWrite();
                ((SideChainUndelegate) this.instance).setDelegatorAddr(value);
                return this;
            }

            public Builder clearDelegatorAddr() {
                copyOnWrite();
                ((SideChainUndelegate) this.instance).clearDelegatorAddr();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SideChainUndelegateOrBuilder
            public ByteString getValidatorAddr() {
                return ((SideChainUndelegate) this.instance).getValidatorAddr();
            }

            public Builder setValidatorAddr(ByteString value) {
                copyOnWrite();
                ((SideChainUndelegate) this.instance).setValidatorAddr(value);
                return this;
            }

            public Builder clearValidatorAddr() {
                copyOnWrite();
                ((SideChainUndelegate) this.instance).clearValidatorAddr();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SideChainUndelegateOrBuilder
            public boolean hasAmount() {
                return ((SideChainUndelegate) this.instance).hasAmount();
            }

            @Override // wallet.core.jni.proto.Binance.SideChainUndelegateOrBuilder
            public SendOrder.Token getAmount() {
                return ((SideChainUndelegate) this.instance).getAmount();
            }

            public Builder setAmount(SendOrder.Token value) {
                copyOnWrite();
                ((SideChainUndelegate) this.instance).setAmount(value);
                return this;
            }

            public Builder setAmount(SendOrder.Token.Builder builderForValue) {
                copyOnWrite();
                ((SideChainUndelegate) this.instance).setAmount(builderForValue.build());
                return this;
            }

            public Builder mergeAmount(SendOrder.Token value) {
                copyOnWrite();
                ((SideChainUndelegate) this.instance).mergeAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((SideChainUndelegate) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SideChainUndelegateOrBuilder
            public String getChainId() {
                return ((SideChainUndelegate) this.instance).getChainId();
            }

            @Override // wallet.core.jni.proto.Binance.SideChainUndelegateOrBuilder
            public ByteString getChainIdBytes() {
                return ((SideChainUndelegate) this.instance).getChainIdBytes();
            }

            public Builder setChainId(String value) {
                copyOnWrite();
                ((SideChainUndelegate) this.instance).setChainId(value);
                return this;
            }

            public Builder clearChainId() {
                copyOnWrite();
                ((SideChainUndelegate) this.instance).clearChainId();
                return this;
            }

            public Builder setChainIdBytes(ByteString value) {
                copyOnWrite();
                ((SideChainUndelegate) this.instance).setChainIdBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SideChainUndelegate();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\n\u0002\n\u0003\t\u0004Ȉ", new Object[]{"delegatorAddr_", "validatorAddr_", "amount_", "chainId_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<SideChainUndelegate> parser = PARSER;
                    if (parser == null) {
                        synchronized (SideChainUndelegate.class) {
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
            SideChainUndelegate sideChainUndelegate = new SideChainUndelegate();
            DEFAULT_INSTANCE = sideChainUndelegate;
            GeneratedMessageLite.registerDefaultInstance(SideChainUndelegate.class, sideChainUndelegate);
        }

        public static SideChainUndelegate getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<SideChainUndelegate> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class TimeLockOrder extends GeneratedMessageLite<TimeLockOrder, Builder> implements TimeLockOrderOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 3;
        private static final TimeLockOrder DEFAULT_INSTANCE;
        public static final int DESCRIPTION_FIELD_NUMBER = 2;
        public static final int FROM_ADDRESS_FIELD_NUMBER = 1;
        public static final int LOCK_TIME_FIELD_NUMBER = 4;
        private static volatile Parser<TimeLockOrder> PARSER;
        private long lockTime_;
        private ByteString fromAddress_ = ByteString.EMPTY;
        private String description_ = "";
        private Internal.ProtobufList<SendOrder.Token> amount_ = GeneratedMessageLite.emptyProtobufList();

        private TimeLockOrder() {
        }

        @Override // wallet.core.jni.proto.Binance.TimeLockOrderOrBuilder
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

        @Override // wallet.core.jni.proto.Binance.TimeLockOrderOrBuilder
        public String getDescription() {
            return this.description_;
        }

        @Override // wallet.core.jni.proto.Binance.TimeLockOrderOrBuilder
        public ByteString getDescriptionBytes() {
            return ByteString.copyFromUtf8(this.description_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDescription(String value) {
            value.getClass();
            this.description_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDescription() {
            this.description_ = getDefaultInstance().getDescription();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDescriptionBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.description_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Binance.TimeLockOrderOrBuilder
        public List<SendOrder.Token> getAmountList() {
            return this.amount_;
        }

        public List<? extends SendOrder.TokenOrBuilder> getAmountOrBuilderList() {
            return this.amount_;
        }

        @Override // wallet.core.jni.proto.Binance.TimeLockOrderOrBuilder
        public int getAmountCount() {
            return this.amount_.size();
        }

        @Override // wallet.core.jni.proto.Binance.TimeLockOrderOrBuilder
        public SendOrder.Token getAmount(int index) {
            return this.amount_.get(index);
        }

        public SendOrder.TokenOrBuilder getAmountOrBuilder(int index) {
            return this.amount_.get(index);
        }

        private void ensureAmountIsMutable() {
            Internal.ProtobufList<SendOrder.Token> protobufList = this.amount_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.amount_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmount(int index, SendOrder.Token value) {
            value.getClass();
            ensureAmountIsMutable();
            this.amount_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAmount(SendOrder.Token value) {
            value.getClass();
            ensureAmountIsMutable();
            this.amount_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAmount(int index, SendOrder.Token value) {
            value.getClass();
            ensureAmountIsMutable();
            this.amount_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllAmount(Iterable<? extends SendOrder.Token> values) {
            ensureAmountIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.amount_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAmount() {
            this.amount_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeAmount(int index) {
            ensureAmountIsMutable();
            this.amount_.remove(index);
        }

        @Override // wallet.core.jni.proto.Binance.TimeLockOrderOrBuilder
        public long getLockTime() {
            return this.lockTime_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLockTime(long value) {
            this.lockTime_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearLockTime() {
            this.lockTime_ = 0L;
        }

        public static TimeLockOrder parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TimeLockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TimeLockOrder parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TimeLockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TimeLockOrder parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TimeLockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TimeLockOrder parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TimeLockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TimeLockOrder parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TimeLockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TimeLockOrder parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TimeLockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TimeLockOrder parseFrom(InputStream input) throws IOException {
            return (TimeLockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TimeLockOrder parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TimeLockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TimeLockOrder parseDelimitedFrom(InputStream input) throws IOException {
            return (TimeLockOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TimeLockOrder parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TimeLockOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TimeLockOrder parseFrom(CodedInputStream input) throws IOException {
            return (TimeLockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TimeLockOrder parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TimeLockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TimeLockOrder prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TimeLockOrder, Builder> implements TimeLockOrderOrBuilder {
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(TimeLockOrder.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.TimeLockOrderOrBuilder
            public ByteString getFromAddress() {
                return ((TimeLockOrder) this.instance).getFromAddress();
            }

            public Builder setFromAddress(ByteString value) {
                copyOnWrite();
                ((TimeLockOrder) this.instance).setFromAddress(value);
                return this;
            }

            public Builder clearFromAddress() {
                copyOnWrite();
                ((TimeLockOrder) this.instance).clearFromAddress();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TimeLockOrderOrBuilder
            public String getDescription() {
                return ((TimeLockOrder) this.instance).getDescription();
            }

            @Override // wallet.core.jni.proto.Binance.TimeLockOrderOrBuilder
            public ByteString getDescriptionBytes() {
                return ((TimeLockOrder) this.instance).getDescriptionBytes();
            }

            public Builder setDescription(String value) {
                copyOnWrite();
                ((TimeLockOrder) this.instance).setDescription(value);
                return this;
            }

            public Builder clearDescription() {
                copyOnWrite();
                ((TimeLockOrder) this.instance).clearDescription();
                return this;
            }

            public Builder setDescriptionBytes(ByteString value) {
                copyOnWrite();
                ((TimeLockOrder) this.instance).setDescriptionBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TimeLockOrderOrBuilder
            public List<SendOrder.Token> getAmountList() {
                return Collections.unmodifiableList(((TimeLockOrder) this.instance).getAmountList());
            }

            @Override // wallet.core.jni.proto.Binance.TimeLockOrderOrBuilder
            public int getAmountCount() {
                return ((TimeLockOrder) this.instance).getAmountCount();
            }

            @Override // wallet.core.jni.proto.Binance.TimeLockOrderOrBuilder
            public SendOrder.Token getAmount(int index) {
                return ((TimeLockOrder) this.instance).getAmount(index);
            }

            public Builder setAmount(int index, SendOrder.Token value) {
                copyOnWrite();
                ((TimeLockOrder) this.instance).setAmount(index, value);
                return this;
            }

            public Builder setAmount(int index, SendOrder.Token.Builder builderForValue) {
                copyOnWrite();
                ((TimeLockOrder) this.instance).setAmount(index, builderForValue.build());
                return this;
            }

            public Builder addAmount(SendOrder.Token value) {
                copyOnWrite();
                ((TimeLockOrder) this.instance).addAmount(value);
                return this;
            }

            public Builder addAmount(int index, SendOrder.Token value) {
                copyOnWrite();
                ((TimeLockOrder) this.instance).addAmount(index, value);
                return this;
            }

            public Builder addAmount(SendOrder.Token.Builder builderForValue) {
                copyOnWrite();
                ((TimeLockOrder) this.instance).addAmount(builderForValue.build());
                return this;
            }

            public Builder addAmount(int index, SendOrder.Token.Builder builderForValue) {
                copyOnWrite();
                ((TimeLockOrder) this.instance).addAmount(index, builderForValue.build());
                return this;
            }

            public Builder addAllAmount(Iterable<? extends SendOrder.Token> values) {
                copyOnWrite();
                ((TimeLockOrder) this.instance).addAllAmount(values);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TimeLockOrder) this.instance).clearAmount();
                return this;
            }

            public Builder removeAmount(int index) {
                copyOnWrite();
                ((TimeLockOrder) this.instance).removeAmount(index);
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TimeLockOrderOrBuilder
            public long getLockTime() {
                return ((TimeLockOrder) this.instance).getLockTime();
            }

            public Builder setLockTime(long value) {
                copyOnWrite();
                ((TimeLockOrder) this.instance).setLockTime(value);
                return this;
            }

            public Builder clearLockTime() {
                copyOnWrite();
                ((TimeLockOrder) this.instance).clearLockTime();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TimeLockOrder();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001\n\u0002Ȉ\u0003\u001b\u0004\u0002", new Object[]{"fromAddress_", "description_", "amount_", SendOrder.Token.class, "lockTime_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TimeLockOrder> parser = PARSER;
                    if (parser == null) {
                        synchronized (TimeLockOrder.class) {
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
            TimeLockOrder timeLockOrder = new TimeLockOrder();
            DEFAULT_INSTANCE = timeLockOrder;
            GeneratedMessageLite.registerDefaultInstance(TimeLockOrder.class, timeLockOrder);
        }

        public static TimeLockOrder getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TimeLockOrder> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class TimeRelockOrder extends GeneratedMessageLite<TimeRelockOrder, Builder> implements TimeRelockOrderOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 4;
        private static final TimeRelockOrder DEFAULT_INSTANCE;
        public static final int DESCRIPTION_FIELD_NUMBER = 3;
        public static final int FROM_ADDRESS_FIELD_NUMBER = 1;
        public static final int ID_FIELD_NUMBER = 2;
        public static final int LOCK_TIME_FIELD_NUMBER = 5;
        private static volatile Parser<TimeRelockOrder> PARSER;
        private long id_;
        private long lockTime_;
        private ByteString fromAddress_ = ByteString.EMPTY;
        private String description_ = "";
        private Internal.ProtobufList<SendOrder.Token> amount_ = GeneratedMessageLite.emptyProtobufList();

        private TimeRelockOrder() {
        }

        @Override // wallet.core.jni.proto.Binance.TimeRelockOrderOrBuilder
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

        @Override // wallet.core.jni.proto.Binance.TimeRelockOrderOrBuilder
        public long getId() {
            return this.id_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setId(long value) {
            this.id_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearId() {
            this.id_ = 0L;
        }

        @Override // wallet.core.jni.proto.Binance.TimeRelockOrderOrBuilder
        public String getDescription() {
            return this.description_;
        }

        @Override // wallet.core.jni.proto.Binance.TimeRelockOrderOrBuilder
        public ByteString getDescriptionBytes() {
            return ByteString.copyFromUtf8(this.description_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDescription(String value) {
            value.getClass();
            this.description_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDescription() {
            this.description_ = getDefaultInstance().getDescription();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDescriptionBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.description_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Binance.TimeRelockOrderOrBuilder
        public List<SendOrder.Token> getAmountList() {
            return this.amount_;
        }

        public List<? extends SendOrder.TokenOrBuilder> getAmountOrBuilderList() {
            return this.amount_;
        }

        @Override // wallet.core.jni.proto.Binance.TimeRelockOrderOrBuilder
        public int getAmountCount() {
            return this.amount_.size();
        }

        @Override // wallet.core.jni.proto.Binance.TimeRelockOrderOrBuilder
        public SendOrder.Token getAmount(int index) {
            return this.amount_.get(index);
        }

        public SendOrder.TokenOrBuilder getAmountOrBuilder(int index) {
            return this.amount_.get(index);
        }

        private void ensureAmountIsMutable() {
            Internal.ProtobufList<SendOrder.Token> protobufList = this.amount_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.amount_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmount(int index, SendOrder.Token value) {
            value.getClass();
            ensureAmountIsMutable();
            this.amount_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAmount(SendOrder.Token value) {
            value.getClass();
            ensureAmountIsMutable();
            this.amount_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAmount(int index, SendOrder.Token value) {
            value.getClass();
            ensureAmountIsMutable();
            this.amount_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllAmount(Iterable<? extends SendOrder.Token> values) {
            ensureAmountIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.amount_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAmount() {
            this.amount_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeAmount(int index) {
            ensureAmountIsMutable();
            this.amount_.remove(index);
        }

        @Override // wallet.core.jni.proto.Binance.TimeRelockOrderOrBuilder
        public long getLockTime() {
            return this.lockTime_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLockTime(long value) {
            this.lockTime_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearLockTime() {
            this.lockTime_ = 0L;
        }

        public static TimeRelockOrder parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TimeRelockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TimeRelockOrder parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TimeRelockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TimeRelockOrder parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TimeRelockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TimeRelockOrder parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TimeRelockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TimeRelockOrder parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TimeRelockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TimeRelockOrder parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TimeRelockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TimeRelockOrder parseFrom(InputStream input) throws IOException {
            return (TimeRelockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TimeRelockOrder parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TimeRelockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TimeRelockOrder parseDelimitedFrom(InputStream input) throws IOException {
            return (TimeRelockOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TimeRelockOrder parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TimeRelockOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TimeRelockOrder parseFrom(CodedInputStream input) throws IOException {
            return (TimeRelockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TimeRelockOrder parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TimeRelockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TimeRelockOrder prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TimeRelockOrder, Builder> implements TimeRelockOrderOrBuilder {
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(TimeRelockOrder.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.TimeRelockOrderOrBuilder
            public ByteString getFromAddress() {
                return ((TimeRelockOrder) this.instance).getFromAddress();
            }

            public Builder setFromAddress(ByteString value) {
                copyOnWrite();
                ((TimeRelockOrder) this.instance).setFromAddress(value);
                return this;
            }

            public Builder clearFromAddress() {
                copyOnWrite();
                ((TimeRelockOrder) this.instance).clearFromAddress();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TimeRelockOrderOrBuilder
            public long getId() {
                return ((TimeRelockOrder) this.instance).getId();
            }

            public Builder setId(long value) {
                copyOnWrite();
                ((TimeRelockOrder) this.instance).setId(value);
                return this;
            }

            public Builder clearId() {
                copyOnWrite();
                ((TimeRelockOrder) this.instance).clearId();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TimeRelockOrderOrBuilder
            public String getDescription() {
                return ((TimeRelockOrder) this.instance).getDescription();
            }

            @Override // wallet.core.jni.proto.Binance.TimeRelockOrderOrBuilder
            public ByteString getDescriptionBytes() {
                return ((TimeRelockOrder) this.instance).getDescriptionBytes();
            }

            public Builder setDescription(String value) {
                copyOnWrite();
                ((TimeRelockOrder) this.instance).setDescription(value);
                return this;
            }

            public Builder clearDescription() {
                copyOnWrite();
                ((TimeRelockOrder) this.instance).clearDescription();
                return this;
            }

            public Builder setDescriptionBytes(ByteString value) {
                copyOnWrite();
                ((TimeRelockOrder) this.instance).setDescriptionBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TimeRelockOrderOrBuilder
            public List<SendOrder.Token> getAmountList() {
                return Collections.unmodifiableList(((TimeRelockOrder) this.instance).getAmountList());
            }

            @Override // wallet.core.jni.proto.Binance.TimeRelockOrderOrBuilder
            public int getAmountCount() {
                return ((TimeRelockOrder) this.instance).getAmountCount();
            }

            @Override // wallet.core.jni.proto.Binance.TimeRelockOrderOrBuilder
            public SendOrder.Token getAmount(int index) {
                return ((TimeRelockOrder) this.instance).getAmount(index);
            }

            public Builder setAmount(int index, SendOrder.Token value) {
                copyOnWrite();
                ((TimeRelockOrder) this.instance).setAmount(index, value);
                return this;
            }

            public Builder setAmount(int index, SendOrder.Token.Builder builderForValue) {
                copyOnWrite();
                ((TimeRelockOrder) this.instance).setAmount(index, builderForValue.build());
                return this;
            }

            public Builder addAmount(SendOrder.Token value) {
                copyOnWrite();
                ((TimeRelockOrder) this.instance).addAmount(value);
                return this;
            }

            public Builder addAmount(int index, SendOrder.Token value) {
                copyOnWrite();
                ((TimeRelockOrder) this.instance).addAmount(index, value);
                return this;
            }

            public Builder addAmount(SendOrder.Token.Builder builderForValue) {
                copyOnWrite();
                ((TimeRelockOrder) this.instance).addAmount(builderForValue.build());
                return this;
            }

            public Builder addAmount(int index, SendOrder.Token.Builder builderForValue) {
                copyOnWrite();
                ((TimeRelockOrder) this.instance).addAmount(index, builderForValue.build());
                return this;
            }

            public Builder addAllAmount(Iterable<? extends SendOrder.Token> values) {
                copyOnWrite();
                ((TimeRelockOrder) this.instance).addAllAmount(values);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TimeRelockOrder) this.instance).clearAmount();
                return this;
            }

            public Builder removeAmount(int index) {
                copyOnWrite();
                ((TimeRelockOrder) this.instance).removeAmount(index);
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TimeRelockOrderOrBuilder
            public long getLockTime() {
                return ((TimeRelockOrder) this.instance).getLockTime();
            }

            public Builder setLockTime(long value) {
                copyOnWrite();
                ((TimeRelockOrder) this.instance).setLockTime(value);
                return this;
            }

            public Builder clearLockTime() {
                copyOnWrite();
                ((TimeRelockOrder) this.instance).clearLockTime();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TimeRelockOrder();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0001\u0000\u0001\n\u0002\u0002\u0003Ȉ\u0004\u001b\u0005\u0002", new Object[]{"fromAddress_", "id_", "description_", "amount_", SendOrder.Token.class, "lockTime_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TimeRelockOrder> parser = PARSER;
                    if (parser == null) {
                        synchronized (TimeRelockOrder.class) {
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
            TimeRelockOrder timeRelockOrder = new TimeRelockOrder();
            DEFAULT_INSTANCE = timeRelockOrder;
            GeneratedMessageLite.registerDefaultInstance(TimeRelockOrder.class, timeRelockOrder);
        }

        public static TimeRelockOrder getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TimeRelockOrder> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class TimeUnlockOrder extends GeneratedMessageLite<TimeUnlockOrder, Builder> implements TimeUnlockOrderOrBuilder {
        private static final TimeUnlockOrder DEFAULT_INSTANCE;
        public static final int FROM_ADDRESS_FIELD_NUMBER = 1;
        public static final int ID_FIELD_NUMBER = 2;
        private static volatile Parser<TimeUnlockOrder> PARSER;
        private ByteString fromAddress_ = ByteString.EMPTY;
        private long id_;

        private TimeUnlockOrder() {
        }

        @Override // wallet.core.jni.proto.Binance.TimeUnlockOrderOrBuilder
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

        @Override // wallet.core.jni.proto.Binance.TimeUnlockOrderOrBuilder
        public long getId() {
            return this.id_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setId(long value) {
            this.id_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearId() {
            this.id_ = 0L;
        }

        public static TimeUnlockOrder parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TimeUnlockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TimeUnlockOrder parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TimeUnlockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TimeUnlockOrder parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TimeUnlockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TimeUnlockOrder parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TimeUnlockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TimeUnlockOrder parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TimeUnlockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TimeUnlockOrder parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TimeUnlockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TimeUnlockOrder parseFrom(InputStream input) throws IOException {
            return (TimeUnlockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TimeUnlockOrder parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TimeUnlockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TimeUnlockOrder parseDelimitedFrom(InputStream input) throws IOException {
            return (TimeUnlockOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TimeUnlockOrder parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TimeUnlockOrder) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TimeUnlockOrder parseFrom(CodedInputStream input) throws IOException {
            return (TimeUnlockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TimeUnlockOrder parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TimeUnlockOrder) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TimeUnlockOrder prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TimeUnlockOrder, Builder> implements TimeUnlockOrderOrBuilder {
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(TimeUnlockOrder.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.TimeUnlockOrderOrBuilder
            public ByteString getFromAddress() {
                return ((TimeUnlockOrder) this.instance).getFromAddress();
            }

            public Builder setFromAddress(ByteString value) {
                copyOnWrite();
                ((TimeUnlockOrder) this.instance).setFromAddress(value);
                return this;
            }

            public Builder clearFromAddress() {
                copyOnWrite();
                ((TimeUnlockOrder) this.instance).clearFromAddress();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.TimeUnlockOrderOrBuilder
            public long getId() {
                return ((TimeUnlockOrder) this.instance).getId();
            }

            public Builder setId(long value) {
                copyOnWrite();
                ((TimeUnlockOrder) this.instance).setId(value);
                return this;
            }

            public Builder clearId() {
                copyOnWrite();
                ((TimeUnlockOrder) this.instance).clearId();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TimeUnlockOrder();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\u0002", new Object[]{"fromAddress_", "id_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TimeUnlockOrder> parser = PARSER;
                    if (parser == null) {
                        synchronized (TimeUnlockOrder.class) {
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
            TimeUnlockOrder timeUnlockOrder = new TimeUnlockOrder();
            DEFAULT_INSTANCE = timeUnlockOrder;
            GeneratedMessageLite.registerDefaultInstance(TimeUnlockOrder.class, timeUnlockOrder);
        }

        public static TimeUnlockOrder getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TimeUnlockOrder> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int ACCOUNT_NUMBER_FIELD_NUMBER = 2;
        public static final int BURN_ORDER_FIELD_NUMBER = 19;
        public static final int CANCEL_TRADE_ORDER_FIELD_NUMBER = 9;
        public static final int CHAIN_ID_FIELD_NUMBER = 1;
        public static final int CLAIMHTLT_ORDER_FIELD_NUMBER = 15;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int DEPOSITHTLT_ORDER_FIELD_NUMBER = 14;
        public static final int FREEZE_ORDER_FIELD_NUMBER = 11;
        public static final int HTLT_ORDER_FIELD_NUMBER = 13;
        public static final int ISSUE_ORDER_FIELD_NUMBER = 17;
        public static final int MEMO_FIELD_NUMBER = 5;
        public static final int MINT_ORDER_FIELD_NUMBER = 18;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 6;
        public static final int REFUNDHTLT_ORDER_FIELD_NUMBER = 16;
        public static final int SEND_ORDER_FIELD_NUMBER = 10;
        public static final int SEQUENCE_FIELD_NUMBER = 3;
        public static final int SIDE_DELEGATE_ORDER_FIELD_NUMBER = 21;
        public static final int SIDE_REDELEGATE_ORDER_FIELD_NUMBER = 22;
        public static final int SIDE_UNDELEGATE_ORDER_FIELD_NUMBER = 23;
        public static final int SOURCE_FIELD_NUMBER = 4;
        public static final int TIME_LOCK_ORDER_FIELD_NUMBER = 24;
        public static final int TIME_RELOCK_ORDER_FIELD_NUMBER = 25;
        public static final int TIME_UNLOCK_ORDER_FIELD_NUMBER = 26;
        public static final int TRADE_ORDER_FIELD_NUMBER = 8;
        public static final int TRANSFER_OUT_ORDER_FIELD_NUMBER = 20;
        public static final int UNFREEZE_ORDER_FIELD_NUMBER = 12;
        private long accountNumber_;
        private Object orderOneof_;
        private long sequence_;
        private long source_;
        private int orderOneofCase_ = 0;
        private String chainId_ = "";
        private String memo_ = "";
        private ByteString privateKey_ = ByteString.EMPTY;

        private SigningInput() {
        }

        /* loaded from: classes6.dex */
        public enum OrderOneofCase {
            TRADE_ORDER(8),
            CANCEL_TRADE_ORDER(9),
            SEND_ORDER(10),
            FREEZE_ORDER(11),
            UNFREEZE_ORDER(12),
            HTLT_ORDER(13),
            DEPOSITHTLT_ORDER(14),
            CLAIMHTLT_ORDER(15),
            REFUNDHTLT_ORDER(16),
            ISSUE_ORDER(17),
            MINT_ORDER(18),
            BURN_ORDER(19),
            TRANSFER_OUT_ORDER(20),
            SIDE_DELEGATE_ORDER(21),
            SIDE_REDELEGATE_ORDER(22),
            SIDE_UNDELEGATE_ORDER(23),
            TIME_LOCK_ORDER(24),
            TIME_RELOCK_ORDER(25),
            TIME_UNLOCK_ORDER(26),
            ORDERONEOF_NOT_SET(0);
            
            private final int value;

            OrderOneofCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static OrderOneofCase valueOf(int value) {
                return forNumber(value);
            }

            public static OrderOneofCase forNumber(int value) {
                if (value != 0) {
                    switch (value) {
                        case 8:
                            return TRADE_ORDER;
                        case 9:
                            return CANCEL_TRADE_ORDER;
                        case 10:
                            return SEND_ORDER;
                        case 11:
                            return FREEZE_ORDER;
                        case 12:
                            return UNFREEZE_ORDER;
                        case 13:
                            return HTLT_ORDER;
                        case 14:
                            return DEPOSITHTLT_ORDER;
                        case 15:
                            return CLAIMHTLT_ORDER;
                        case 16:
                            return REFUNDHTLT_ORDER;
                        case 17:
                            return ISSUE_ORDER;
                        case 18:
                            return MINT_ORDER;
                        case 19:
                            return BURN_ORDER;
                        case 20:
                            return TRANSFER_OUT_ORDER;
                        case 21:
                            return SIDE_DELEGATE_ORDER;
                        case 22:
                            return SIDE_REDELEGATE_ORDER;
                        case 23:
                            return SIDE_UNDELEGATE_ORDER;
                        case 24:
                            return TIME_LOCK_ORDER;
                        case 25:
                            return TIME_RELOCK_ORDER;
                        case 26:
                            return TIME_UNLOCK_ORDER;
                        default:
                            return null;
                    }
                }
                return ORDERONEOF_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public OrderOneofCase getOrderOneofCase() {
            return OrderOneofCase.forNumber(this.orderOneofCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOrderOneof() {
            this.orderOneofCase_ = 0;
            this.orderOneof_ = null;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public String getChainId() {
            return this.chainId_;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public long getSource() {
            return this.source_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSource(long value) {
            this.source_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSource() {
            this.source_ = 0L;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public String getMemo() {
            return this.memo_;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public boolean hasTradeOrder() {
            return this.orderOneofCase_ == 8;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public TradeOrder getTradeOrder() {
            if (this.orderOneofCase_ == 8) {
                return (TradeOrder) this.orderOneof_;
            }
            return TradeOrder.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTradeOrder(TradeOrder value) {
            value.getClass();
            this.orderOneof_ = value;
            this.orderOneofCase_ = 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTradeOrder(TradeOrder value) {
            value.getClass();
            if (this.orderOneofCase_ == 8 && this.orderOneof_ != TradeOrder.getDefaultInstance()) {
                this.orderOneof_ = TradeOrder.newBuilder((TradeOrder) this.orderOneof_).mergeFrom((TradeOrder.Builder) value).buildPartial();
            } else {
                this.orderOneof_ = value;
            }
            this.orderOneofCase_ = 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTradeOrder() {
            if (this.orderOneofCase_ == 8) {
                this.orderOneofCase_ = 0;
                this.orderOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public boolean hasCancelTradeOrder() {
            return this.orderOneofCase_ == 9;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public CancelTradeOrder getCancelTradeOrder() {
            if (this.orderOneofCase_ == 9) {
                return (CancelTradeOrder) this.orderOneof_;
            }
            return CancelTradeOrder.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCancelTradeOrder(CancelTradeOrder value) {
            value.getClass();
            this.orderOneof_ = value;
            this.orderOneofCase_ = 9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeCancelTradeOrder(CancelTradeOrder value) {
            value.getClass();
            if (this.orderOneofCase_ == 9 && this.orderOneof_ != CancelTradeOrder.getDefaultInstance()) {
                this.orderOneof_ = CancelTradeOrder.newBuilder((CancelTradeOrder) this.orderOneof_).mergeFrom((CancelTradeOrder.Builder) value).buildPartial();
            } else {
                this.orderOneof_ = value;
            }
            this.orderOneofCase_ = 9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCancelTradeOrder() {
            if (this.orderOneofCase_ == 9) {
                this.orderOneofCase_ = 0;
                this.orderOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public boolean hasSendOrder() {
            return this.orderOneofCase_ == 10;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public SendOrder getSendOrder() {
            if (this.orderOneofCase_ == 10) {
                return (SendOrder) this.orderOneof_;
            }
            return SendOrder.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSendOrder(SendOrder value) {
            value.getClass();
            this.orderOneof_ = value;
            this.orderOneofCase_ = 10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeSendOrder(SendOrder value) {
            value.getClass();
            if (this.orderOneofCase_ == 10 && this.orderOneof_ != SendOrder.getDefaultInstance()) {
                this.orderOneof_ = SendOrder.newBuilder((SendOrder) this.orderOneof_).mergeFrom((SendOrder.Builder) value).buildPartial();
            } else {
                this.orderOneof_ = value;
            }
            this.orderOneofCase_ = 10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSendOrder() {
            if (this.orderOneofCase_ == 10) {
                this.orderOneofCase_ = 0;
                this.orderOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public boolean hasFreezeOrder() {
            return this.orderOneofCase_ == 11;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public TokenFreezeOrder getFreezeOrder() {
            if (this.orderOneofCase_ == 11) {
                return (TokenFreezeOrder) this.orderOneof_;
            }
            return TokenFreezeOrder.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFreezeOrder(TokenFreezeOrder value) {
            value.getClass();
            this.orderOneof_ = value;
            this.orderOneofCase_ = 11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeFreezeOrder(TokenFreezeOrder value) {
            value.getClass();
            if (this.orderOneofCase_ == 11 && this.orderOneof_ != TokenFreezeOrder.getDefaultInstance()) {
                this.orderOneof_ = TokenFreezeOrder.newBuilder((TokenFreezeOrder) this.orderOneof_).mergeFrom((TokenFreezeOrder.Builder) value).buildPartial();
            } else {
                this.orderOneof_ = value;
            }
            this.orderOneofCase_ = 11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFreezeOrder() {
            if (this.orderOneofCase_ == 11) {
                this.orderOneofCase_ = 0;
                this.orderOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public boolean hasUnfreezeOrder() {
            return this.orderOneofCase_ == 12;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public TokenUnfreezeOrder getUnfreezeOrder() {
            if (this.orderOneofCase_ == 12) {
                return (TokenUnfreezeOrder) this.orderOneof_;
            }
            return TokenUnfreezeOrder.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUnfreezeOrder(TokenUnfreezeOrder value) {
            value.getClass();
            this.orderOneof_ = value;
            this.orderOneofCase_ = 12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeUnfreezeOrder(TokenUnfreezeOrder value) {
            value.getClass();
            if (this.orderOneofCase_ == 12 && this.orderOneof_ != TokenUnfreezeOrder.getDefaultInstance()) {
                this.orderOneof_ = TokenUnfreezeOrder.newBuilder((TokenUnfreezeOrder) this.orderOneof_).mergeFrom((TokenUnfreezeOrder.Builder) value).buildPartial();
            } else {
                this.orderOneof_ = value;
            }
            this.orderOneofCase_ = 12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUnfreezeOrder() {
            if (this.orderOneofCase_ == 12) {
                this.orderOneofCase_ = 0;
                this.orderOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public boolean hasHtltOrder() {
            return this.orderOneofCase_ == 13;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public HTLTOrder getHtltOrder() {
            if (this.orderOneofCase_ == 13) {
                return (HTLTOrder) this.orderOneof_;
            }
            return HTLTOrder.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHtltOrder(HTLTOrder value) {
            value.getClass();
            this.orderOneof_ = value;
            this.orderOneofCase_ = 13;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeHtltOrder(HTLTOrder value) {
            value.getClass();
            if (this.orderOneofCase_ == 13 && this.orderOneof_ != HTLTOrder.getDefaultInstance()) {
                this.orderOneof_ = HTLTOrder.newBuilder((HTLTOrder) this.orderOneof_).mergeFrom((HTLTOrder.Builder) value).buildPartial();
            } else {
                this.orderOneof_ = value;
            }
            this.orderOneofCase_ = 13;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearHtltOrder() {
            if (this.orderOneofCase_ == 13) {
                this.orderOneofCase_ = 0;
                this.orderOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public boolean hasDepositHTLTOrder() {
            return this.orderOneofCase_ == 14;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public DepositHTLTOrder getDepositHTLTOrder() {
            if (this.orderOneofCase_ == 14) {
                return (DepositHTLTOrder) this.orderOneof_;
            }
            return DepositHTLTOrder.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDepositHTLTOrder(DepositHTLTOrder value) {
            value.getClass();
            this.orderOneof_ = value;
            this.orderOneofCase_ = 14;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeDepositHTLTOrder(DepositHTLTOrder value) {
            value.getClass();
            if (this.orderOneofCase_ == 14 && this.orderOneof_ != DepositHTLTOrder.getDefaultInstance()) {
                this.orderOneof_ = DepositHTLTOrder.newBuilder((DepositHTLTOrder) this.orderOneof_).mergeFrom((DepositHTLTOrder.Builder) value).buildPartial();
            } else {
                this.orderOneof_ = value;
            }
            this.orderOneofCase_ = 14;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDepositHTLTOrder() {
            if (this.orderOneofCase_ == 14) {
                this.orderOneofCase_ = 0;
                this.orderOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public boolean hasClaimHTLTOrder() {
            return this.orderOneofCase_ == 15;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public ClaimHTLOrder getClaimHTLTOrder() {
            if (this.orderOneofCase_ == 15) {
                return (ClaimHTLOrder) this.orderOneof_;
            }
            return ClaimHTLOrder.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setClaimHTLTOrder(ClaimHTLOrder value) {
            value.getClass();
            this.orderOneof_ = value;
            this.orderOneofCase_ = 15;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeClaimHTLTOrder(ClaimHTLOrder value) {
            value.getClass();
            if (this.orderOneofCase_ == 15 && this.orderOneof_ != ClaimHTLOrder.getDefaultInstance()) {
                this.orderOneof_ = ClaimHTLOrder.newBuilder((ClaimHTLOrder) this.orderOneof_).mergeFrom((ClaimHTLOrder.Builder) value).buildPartial();
            } else {
                this.orderOneof_ = value;
            }
            this.orderOneofCase_ = 15;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearClaimHTLTOrder() {
            if (this.orderOneofCase_ == 15) {
                this.orderOneofCase_ = 0;
                this.orderOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public boolean hasRefundHTLTOrder() {
            return this.orderOneofCase_ == 16;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public RefundHTLTOrder getRefundHTLTOrder() {
            if (this.orderOneofCase_ == 16) {
                return (RefundHTLTOrder) this.orderOneof_;
            }
            return RefundHTLTOrder.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRefundHTLTOrder(RefundHTLTOrder value) {
            value.getClass();
            this.orderOneof_ = value;
            this.orderOneofCase_ = 16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeRefundHTLTOrder(RefundHTLTOrder value) {
            value.getClass();
            if (this.orderOneofCase_ == 16 && this.orderOneof_ != RefundHTLTOrder.getDefaultInstance()) {
                this.orderOneof_ = RefundHTLTOrder.newBuilder((RefundHTLTOrder) this.orderOneof_).mergeFrom((RefundHTLTOrder.Builder) value).buildPartial();
            } else {
                this.orderOneof_ = value;
            }
            this.orderOneofCase_ = 16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRefundHTLTOrder() {
            if (this.orderOneofCase_ == 16) {
                this.orderOneofCase_ = 0;
                this.orderOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public boolean hasIssueOrder() {
            return this.orderOneofCase_ == 17;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public TokenIssueOrder getIssueOrder() {
            if (this.orderOneofCase_ == 17) {
                return (TokenIssueOrder) this.orderOneof_;
            }
            return TokenIssueOrder.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIssueOrder(TokenIssueOrder value) {
            value.getClass();
            this.orderOneof_ = value;
            this.orderOneofCase_ = 17;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeIssueOrder(TokenIssueOrder value) {
            value.getClass();
            if (this.orderOneofCase_ == 17 && this.orderOneof_ != TokenIssueOrder.getDefaultInstance()) {
                this.orderOneof_ = TokenIssueOrder.newBuilder((TokenIssueOrder) this.orderOneof_).mergeFrom((TokenIssueOrder.Builder) value).buildPartial();
            } else {
                this.orderOneof_ = value;
            }
            this.orderOneofCase_ = 17;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearIssueOrder() {
            if (this.orderOneofCase_ == 17) {
                this.orderOneofCase_ = 0;
                this.orderOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public boolean hasMintOrder() {
            return this.orderOneofCase_ == 18;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public TokenMintOrder getMintOrder() {
            if (this.orderOneofCase_ == 18) {
                return (TokenMintOrder) this.orderOneof_;
            }
            return TokenMintOrder.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMintOrder(TokenMintOrder value) {
            value.getClass();
            this.orderOneof_ = value;
            this.orderOneofCase_ = 18;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeMintOrder(TokenMintOrder value) {
            value.getClass();
            if (this.orderOneofCase_ == 18 && this.orderOneof_ != TokenMintOrder.getDefaultInstance()) {
                this.orderOneof_ = TokenMintOrder.newBuilder((TokenMintOrder) this.orderOneof_).mergeFrom((TokenMintOrder.Builder) value).buildPartial();
            } else {
                this.orderOneof_ = value;
            }
            this.orderOneofCase_ = 18;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMintOrder() {
            if (this.orderOneofCase_ == 18) {
                this.orderOneofCase_ = 0;
                this.orderOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public boolean hasBurnOrder() {
            return this.orderOneofCase_ == 19;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public TokenBurnOrder getBurnOrder() {
            if (this.orderOneofCase_ == 19) {
                return (TokenBurnOrder) this.orderOneof_;
            }
            return TokenBurnOrder.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBurnOrder(TokenBurnOrder value) {
            value.getClass();
            this.orderOneof_ = value;
            this.orderOneofCase_ = 19;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeBurnOrder(TokenBurnOrder value) {
            value.getClass();
            if (this.orderOneofCase_ == 19 && this.orderOneof_ != TokenBurnOrder.getDefaultInstance()) {
                this.orderOneof_ = TokenBurnOrder.newBuilder((TokenBurnOrder) this.orderOneof_).mergeFrom((TokenBurnOrder.Builder) value).buildPartial();
            } else {
                this.orderOneof_ = value;
            }
            this.orderOneofCase_ = 19;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBurnOrder() {
            if (this.orderOneofCase_ == 19) {
                this.orderOneofCase_ = 0;
                this.orderOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public boolean hasTransferOutOrder() {
            return this.orderOneofCase_ == 20;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public TransferOut getTransferOutOrder() {
            if (this.orderOneofCase_ == 20) {
                return (TransferOut) this.orderOneof_;
            }
            return TransferOut.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransferOutOrder(TransferOut value) {
            value.getClass();
            this.orderOneof_ = value;
            this.orderOneofCase_ = 20;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransferOutOrder(TransferOut value) {
            value.getClass();
            if (this.orderOneofCase_ == 20 && this.orderOneof_ != TransferOut.getDefaultInstance()) {
                this.orderOneof_ = TransferOut.newBuilder((TransferOut) this.orderOneof_).mergeFrom((TransferOut.Builder) value).buildPartial();
            } else {
                this.orderOneof_ = value;
            }
            this.orderOneofCase_ = 20;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransferOutOrder() {
            if (this.orderOneofCase_ == 20) {
                this.orderOneofCase_ = 0;
                this.orderOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public boolean hasSideDelegateOrder() {
            return this.orderOneofCase_ == 21;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public SideChainDelegate getSideDelegateOrder() {
            if (this.orderOneofCase_ == 21) {
                return (SideChainDelegate) this.orderOneof_;
            }
            return SideChainDelegate.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSideDelegateOrder(SideChainDelegate value) {
            value.getClass();
            this.orderOneof_ = value;
            this.orderOneofCase_ = 21;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeSideDelegateOrder(SideChainDelegate value) {
            value.getClass();
            if (this.orderOneofCase_ == 21 && this.orderOneof_ != SideChainDelegate.getDefaultInstance()) {
                this.orderOneof_ = SideChainDelegate.newBuilder((SideChainDelegate) this.orderOneof_).mergeFrom((SideChainDelegate.Builder) value).buildPartial();
            } else {
                this.orderOneof_ = value;
            }
            this.orderOneofCase_ = 21;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSideDelegateOrder() {
            if (this.orderOneofCase_ == 21) {
                this.orderOneofCase_ = 0;
                this.orderOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public boolean hasSideRedelegateOrder() {
            return this.orderOneofCase_ == 22;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public SideChainRedelegate getSideRedelegateOrder() {
            if (this.orderOneofCase_ == 22) {
                return (SideChainRedelegate) this.orderOneof_;
            }
            return SideChainRedelegate.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSideRedelegateOrder(SideChainRedelegate value) {
            value.getClass();
            this.orderOneof_ = value;
            this.orderOneofCase_ = 22;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeSideRedelegateOrder(SideChainRedelegate value) {
            value.getClass();
            if (this.orderOneofCase_ == 22 && this.orderOneof_ != SideChainRedelegate.getDefaultInstance()) {
                this.orderOneof_ = SideChainRedelegate.newBuilder((SideChainRedelegate) this.orderOneof_).mergeFrom((SideChainRedelegate.Builder) value).buildPartial();
            } else {
                this.orderOneof_ = value;
            }
            this.orderOneofCase_ = 22;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSideRedelegateOrder() {
            if (this.orderOneofCase_ == 22) {
                this.orderOneofCase_ = 0;
                this.orderOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public boolean hasSideUndelegateOrder() {
            return this.orderOneofCase_ == 23;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public SideChainUndelegate getSideUndelegateOrder() {
            if (this.orderOneofCase_ == 23) {
                return (SideChainUndelegate) this.orderOneof_;
            }
            return SideChainUndelegate.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSideUndelegateOrder(SideChainUndelegate value) {
            value.getClass();
            this.orderOneof_ = value;
            this.orderOneofCase_ = 23;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeSideUndelegateOrder(SideChainUndelegate value) {
            value.getClass();
            if (this.orderOneofCase_ == 23 && this.orderOneof_ != SideChainUndelegate.getDefaultInstance()) {
                this.orderOneof_ = SideChainUndelegate.newBuilder((SideChainUndelegate) this.orderOneof_).mergeFrom((SideChainUndelegate.Builder) value).buildPartial();
            } else {
                this.orderOneof_ = value;
            }
            this.orderOneofCase_ = 23;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSideUndelegateOrder() {
            if (this.orderOneofCase_ == 23) {
                this.orderOneofCase_ = 0;
                this.orderOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public boolean hasTimeLockOrder() {
            return this.orderOneofCase_ == 24;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public TimeLockOrder getTimeLockOrder() {
            if (this.orderOneofCase_ == 24) {
                return (TimeLockOrder) this.orderOneof_;
            }
            return TimeLockOrder.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTimeLockOrder(TimeLockOrder value) {
            value.getClass();
            this.orderOneof_ = value;
            this.orderOneofCase_ = 24;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTimeLockOrder(TimeLockOrder value) {
            value.getClass();
            if (this.orderOneofCase_ == 24 && this.orderOneof_ != TimeLockOrder.getDefaultInstance()) {
                this.orderOneof_ = TimeLockOrder.newBuilder((TimeLockOrder) this.orderOneof_).mergeFrom((TimeLockOrder.Builder) value).buildPartial();
            } else {
                this.orderOneof_ = value;
            }
            this.orderOneofCase_ = 24;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTimeLockOrder() {
            if (this.orderOneofCase_ == 24) {
                this.orderOneofCase_ = 0;
                this.orderOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public boolean hasTimeRelockOrder() {
            return this.orderOneofCase_ == 25;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public TimeRelockOrder getTimeRelockOrder() {
            if (this.orderOneofCase_ == 25) {
                return (TimeRelockOrder) this.orderOneof_;
            }
            return TimeRelockOrder.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTimeRelockOrder(TimeRelockOrder value) {
            value.getClass();
            this.orderOneof_ = value;
            this.orderOneofCase_ = 25;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTimeRelockOrder(TimeRelockOrder value) {
            value.getClass();
            if (this.orderOneofCase_ == 25 && this.orderOneof_ != TimeRelockOrder.getDefaultInstance()) {
                this.orderOneof_ = TimeRelockOrder.newBuilder((TimeRelockOrder) this.orderOneof_).mergeFrom((TimeRelockOrder.Builder) value).buildPartial();
            } else {
                this.orderOneof_ = value;
            }
            this.orderOneofCase_ = 25;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTimeRelockOrder() {
            if (this.orderOneofCase_ == 25) {
                this.orderOneofCase_ = 0;
                this.orderOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public boolean hasTimeUnlockOrder() {
            return this.orderOneofCase_ == 26;
        }

        @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
        public TimeUnlockOrder getTimeUnlockOrder() {
            if (this.orderOneofCase_ == 26) {
                return (TimeUnlockOrder) this.orderOneof_;
            }
            return TimeUnlockOrder.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTimeUnlockOrder(TimeUnlockOrder value) {
            value.getClass();
            this.orderOneof_ = value;
            this.orderOneofCase_ = 26;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTimeUnlockOrder(TimeUnlockOrder value) {
            value.getClass();
            if (this.orderOneofCase_ == 26 && this.orderOneof_ != TimeUnlockOrder.getDefaultInstance()) {
                this.orderOneof_ = TimeUnlockOrder.newBuilder((TimeUnlockOrder) this.orderOneof_).mergeFrom((TimeUnlockOrder.Builder) value).buildPartial();
            } else {
                this.orderOneof_ = value;
            }
            this.orderOneofCase_ = 26;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTimeUnlockOrder() {
            if (this.orderOneofCase_ == 26) {
                this.orderOneofCase_ = 0;
                this.orderOneof_ = null;
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
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public OrderOneofCase getOrderOneofCase() {
                return ((SigningInput) this.instance).getOrderOneofCase();
            }

            public Builder clearOrderOneof() {
                copyOnWrite();
                ((SigningInput) this.instance).clearOrderOneof();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public String getChainId() {
                return ((SigningInput) this.instance).getChainId();
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public long getSource() {
                return ((SigningInput) this.instance).getSource();
            }

            public Builder setSource(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setSource(value);
                return this;
            }

            public Builder clearSource() {
                copyOnWrite();
                ((SigningInput) this.instance).clearSource();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public String getMemo() {
                return ((SigningInput) this.instance).getMemo();
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public boolean hasTradeOrder() {
                return ((SigningInput) this.instance).hasTradeOrder();
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public TradeOrder getTradeOrder() {
                return ((SigningInput) this.instance).getTradeOrder();
            }

            public Builder setTradeOrder(TradeOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTradeOrder(value);
                return this;
            }

            public Builder setTradeOrder(TradeOrder.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setTradeOrder(builderForValue.build());
                return this;
            }

            public Builder mergeTradeOrder(TradeOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeTradeOrder(value);
                return this;
            }

            public Builder clearTradeOrder() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTradeOrder();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public boolean hasCancelTradeOrder() {
                return ((SigningInput) this.instance).hasCancelTradeOrder();
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public CancelTradeOrder getCancelTradeOrder() {
                return ((SigningInput) this.instance).getCancelTradeOrder();
            }

            public Builder setCancelTradeOrder(CancelTradeOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).setCancelTradeOrder(value);
                return this;
            }

            public Builder setCancelTradeOrder(CancelTradeOrder.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setCancelTradeOrder(builderForValue.build());
                return this;
            }

            public Builder mergeCancelTradeOrder(CancelTradeOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeCancelTradeOrder(value);
                return this;
            }

            public Builder clearCancelTradeOrder() {
                copyOnWrite();
                ((SigningInput) this.instance).clearCancelTradeOrder();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public boolean hasSendOrder() {
                return ((SigningInput) this.instance).hasSendOrder();
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public SendOrder getSendOrder() {
                return ((SigningInput) this.instance).getSendOrder();
            }

            public Builder setSendOrder(SendOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).setSendOrder(value);
                return this;
            }

            public Builder setSendOrder(SendOrder.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setSendOrder(builderForValue.build());
                return this;
            }

            public Builder mergeSendOrder(SendOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeSendOrder(value);
                return this;
            }

            public Builder clearSendOrder() {
                copyOnWrite();
                ((SigningInput) this.instance).clearSendOrder();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public boolean hasFreezeOrder() {
                return ((SigningInput) this.instance).hasFreezeOrder();
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public TokenFreezeOrder getFreezeOrder() {
                return ((SigningInput) this.instance).getFreezeOrder();
            }

            public Builder setFreezeOrder(TokenFreezeOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).setFreezeOrder(value);
                return this;
            }

            public Builder setFreezeOrder(TokenFreezeOrder.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setFreezeOrder(builderForValue.build());
                return this;
            }

            public Builder mergeFreezeOrder(TokenFreezeOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeFreezeOrder(value);
                return this;
            }

            public Builder clearFreezeOrder() {
                copyOnWrite();
                ((SigningInput) this.instance).clearFreezeOrder();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public boolean hasUnfreezeOrder() {
                return ((SigningInput) this.instance).hasUnfreezeOrder();
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public TokenUnfreezeOrder getUnfreezeOrder() {
                return ((SigningInput) this.instance).getUnfreezeOrder();
            }

            public Builder setUnfreezeOrder(TokenUnfreezeOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).setUnfreezeOrder(value);
                return this;
            }

            public Builder setUnfreezeOrder(TokenUnfreezeOrder.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setUnfreezeOrder(builderForValue.build());
                return this;
            }

            public Builder mergeUnfreezeOrder(TokenUnfreezeOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeUnfreezeOrder(value);
                return this;
            }

            public Builder clearUnfreezeOrder() {
                copyOnWrite();
                ((SigningInput) this.instance).clearUnfreezeOrder();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public boolean hasHtltOrder() {
                return ((SigningInput) this.instance).hasHtltOrder();
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public HTLTOrder getHtltOrder() {
                return ((SigningInput) this.instance).getHtltOrder();
            }

            public Builder setHtltOrder(HTLTOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).setHtltOrder(value);
                return this;
            }

            public Builder setHtltOrder(HTLTOrder.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setHtltOrder(builderForValue.build());
                return this;
            }

            public Builder mergeHtltOrder(HTLTOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeHtltOrder(value);
                return this;
            }

            public Builder clearHtltOrder() {
                copyOnWrite();
                ((SigningInput) this.instance).clearHtltOrder();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public boolean hasDepositHTLTOrder() {
                return ((SigningInput) this.instance).hasDepositHTLTOrder();
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public DepositHTLTOrder getDepositHTLTOrder() {
                return ((SigningInput) this.instance).getDepositHTLTOrder();
            }

            public Builder setDepositHTLTOrder(DepositHTLTOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).setDepositHTLTOrder(value);
                return this;
            }

            public Builder setDepositHTLTOrder(DepositHTLTOrder.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setDepositHTLTOrder(builderForValue.build());
                return this;
            }

            public Builder mergeDepositHTLTOrder(DepositHTLTOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeDepositHTLTOrder(value);
                return this;
            }

            public Builder clearDepositHTLTOrder() {
                copyOnWrite();
                ((SigningInput) this.instance).clearDepositHTLTOrder();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public boolean hasClaimHTLTOrder() {
                return ((SigningInput) this.instance).hasClaimHTLTOrder();
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public ClaimHTLOrder getClaimHTLTOrder() {
                return ((SigningInput) this.instance).getClaimHTLTOrder();
            }

            public Builder setClaimHTLTOrder(ClaimHTLOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).setClaimHTLTOrder(value);
                return this;
            }

            public Builder setClaimHTLTOrder(ClaimHTLOrder.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setClaimHTLTOrder(builderForValue.build());
                return this;
            }

            public Builder mergeClaimHTLTOrder(ClaimHTLOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeClaimHTLTOrder(value);
                return this;
            }

            public Builder clearClaimHTLTOrder() {
                copyOnWrite();
                ((SigningInput) this.instance).clearClaimHTLTOrder();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public boolean hasRefundHTLTOrder() {
                return ((SigningInput) this.instance).hasRefundHTLTOrder();
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public RefundHTLTOrder getRefundHTLTOrder() {
                return ((SigningInput) this.instance).getRefundHTLTOrder();
            }

            public Builder setRefundHTLTOrder(RefundHTLTOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).setRefundHTLTOrder(value);
                return this;
            }

            public Builder setRefundHTLTOrder(RefundHTLTOrder.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setRefundHTLTOrder(builderForValue.build());
                return this;
            }

            public Builder mergeRefundHTLTOrder(RefundHTLTOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeRefundHTLTOrder(value);
                return this;
            }

            public Builder clearRefundHTLTOrder() {
                copyOnWrite();
                ((SigningInput) this.instance).clearRefundHTLTOrder();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public boolean hasIssueOrder() {
                return ((SigningInput) this.instance).hasIssueOrder();
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public TokenIssueOrder getIssueOrder() {
                return ((SigningInput) this.instance).getIssueOrder();
            }

            public Builder setIssueOrder(TokenIssueOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).setIssueOrder(value);
                return this;
            }

            public Builder setIssueOrder(TokenIssueOrder.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setIssueOrder(builderForValue.build());
                return this;
            }

            public Builder mergeIssueOrder(TokenIssueOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeIssueOrder(value);
                return this;
            }

            public Builder clearIssueOrder() {
                copyOnWrite();
                ((SigningInput) this.instance).clearIssueOrder();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public boolean hasMintOrder() {
                return ((SigningInput) this.instance).hasMintOrder();
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public TokenMintOrder getMintOrder() {
                return ((SigningInput) this.instance).getMintOrder();
            }

            public Builder setMintOrder(TokenMintOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).setMintOrder(value);
                return this;
            }

            public Builder setMintOrder(TokenMintOrder.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setMintOrder(builderForValue.build());
                return this;
            }

            public Builder mergeMintOrder(TokenMintOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeMintOrder(value);
                return this;
            }

            public Builder clearMintOrder() {
                copyOnWrite();
                ((SigningInput) this.instance).clearMintOrder();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public boolean hasBurnOrder() {
                return ((SigningInput) this.instance).hasBurnOrder();
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public TokenBurnOrder getBurnOrder() {
                return ((SigningInput) this.instance).getBurnOrder();
            }

            public Builder setBurnOrder(TokenBurnOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).setBurnOrder(value);
                return this;
            }

            public Builder setBurnOrder(TokenBurnOrder.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setBurnOrder(builderForValue.build());
                return this;
            }

            public Builder mergeBurnOrder(TokenBurnOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeBurnOrder(value);
                return this;
            }

            public Builder clearBurnOrder() {
                copyOnWrite();
                ((SigningInput) this.instance).clearBurnOrder();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public boolean hasTransferOutOrder() {
                return ((SigningInput) this.instance).hasTransferOutOrder();
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public TransferOut getTransferOutOrder() {
                return ((SigningInput) this.instance).getTransferOutOrder();
            }

            public Builder setTransferOutOrder(TransferOut value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTransferOutOrder(value);
                return this;
            }

            public Builder setTransferOutOrder(TransferOut.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setTransferOutOrder(builderForValue.build());
                return this;
            }

            public Builder mergeTransferOutOrder(TransferOut value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeTransferOutOrder(value);
                return this;
            }

            public Builder clearTransferOutOrder() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTransferOutOrder();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public boolean hasSideDelegateOrder() {
                return ((SigningInput) this.instance).hasSideDelegateOrder();
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public SideChainDelegate getSideDelegateOrder() {
                return ((SigningInput) this.instance).getSideDelegateOrder();
            }

            public Builder setSideDelegateOrder(SideChainDelegate value) {
                copyOnWrite();
                ((SigningInput) this.instance).setSideDelegateOrder(value);
                return this;
            }

            public Builder setSideDelegateOrder(SideChainDelegate.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setSideDelegateOrder(builderForValue.build());
                return this;
            }

            public Builder mergeSideDelegateOrder(SideChainDelegate value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeSideDelegateOrder(value);
                return this;
            }

            public Builder clearSideDelegateOrder() {
                copyOnWrite();
                ((SigningInput) this.instance).clearSideDelegateOrder();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public boolean hasSideRedelegateOrder() {
                return ((SigningInput) this.instance).hasSideRedelegateOrder();
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public SideChainRedelegate getSideRedelegateOrder() {
                return ((SigningInput) this.instance).getSideRedelegateOrder();
            }

            public Builder setSideRedelegateOrder(SideChainRedelegate value) {
                copyOnWrite();
                ((SigningInput) this.instance).setSideRedelegateOrder(value);
                return this;
            }

            public Builder setSideRedelegateOrder(SideChainRedelegate.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setSideRedelegateOrder(builderForValue.build());
                return this;
            }

            public Builder mergeSideRedelegateOrder(SideChainRedelegate value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeSideRedelegateOrder(value);
                return this;
            }

            public Builder clearSideRedelegateOrder() {
                copyOnWrite();
                ((SigningInput) this.instance).clearSideRedelegateOrder();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public boolean hasSideUndelegateOrder() {
                return ((SigningInput) this.instance).hasSideUndelegateOrder();
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public SideChainUndelegate getSideUndelegateOrder() {
                return ((SigningInput) this.instance).getSideUndelegateOrder();
            }

            public Builder setSideUndelegateOrder(SideChainUndelegate value) {
                copyOnWrite();
                ((SigningInput) this.instance).setSideUndelegateOrder(value);
                return this;
            }

            public Builder setSideUndelegateOrder(SideChainUndelegate.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setSideUndelegateOrder(builderForValue.build());
                return this;
            }

            public Builder mergeSideUndelegateOrder(SideChainUndelegate value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeSideUndelegateOrder(value);
                return this;
            }

            public Builder clearSideUndelegateOrder() {
                copyOnWrite();
                ((SigningInput) this.instance).clearSideUndelegateOrder();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public boolean hasTimeLockOrder() {
                return ((SigningInput) this.instance).hasTimeLockOrder();
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public TimeLockOrder getTimeLockOrder() {
                return ((SigningInput) this.instance).getTimeLockOrder();
            }

            public Builder setTimeLockOrder(TimeLockOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTimeLockOrder(value);
                return this;
            }

            public Builder setTimeLockOrder(TimeLockOrder.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setTimeLockOrder(builderForValue.build());
                return this;
            }

            public Builder mergeTimeLockOrder(TimeLockOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeTimeLockOrder(value);
                return this;
            }

            public Builder clearTimeLockOrder() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTimeLockOrder();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public boolean hasTimeRelockOrder() {
                return ((SigningInput) this.instance).hasTimeRelockOrder();
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public TimeRelockOrder getTimeRelockOrder() {
                return ((SigningInput) this.instance).getTimeRelockOrder();
            }

            public Builder setTimeRelockOrder(TimeRelockOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTimeRelockOrder(value);
                return this;
            }

            public Builder setTimeRelockOrder(TimeRelockOrder.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setTimeRelockOrder(builderForValue.build());
                return this;
            }

            public Builder mergeTimeRelockOrder(TimeRelockOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeTimeRelockOrder(value);
                return this;
            }

            public Builder clearTimeRelockOrder() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTimeRelockOrder();
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public boolean hasTimeUnlockOrder() {
                return ((SigningInput) this.instance).hasTimeUnlockOrder();
            }

            @Override // wallet.core.jni.proto.Binance.SigningInputOrBuilder
            public TimeUnlockOrder getTimeUnlockOrder() {
                return ((SigningInput) this.instance).getTimeUnlockOrder();
            }

            public Builder setTimeUnlockOrder(TimeUnlockOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTimeUnlockOrder(value);
                return this;
            }

            public Builder setTimeUnlockOrder(TimeUnlockOrder.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setTimeUnlockOrder(builderForValue.build());
                return this;
            }

            public Builder mergeTimeUnlockOrder(TimeUnlockOrder value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeTimeUnlockOrder(value);
                return this;
            }

            public Builder clearTimeUnlockOrder() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTimeUnlockOrder();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0019\u0001\u0000\u0001\u001a\u0019\u0000\u0000\u0000\u0001Ȉ\u0002\u0002\u0003\u0002\u0004\u0002\u0005Ȉ\u0006\n\b<\u0000\t<\u0000\n<\u0000\u000b<\u0000\f<\u0000\r<\u0000\u000e<\u0000\u000f<\u0000\u0010<\u0000\u0011<\u0000\u0012<\u0000\u0013<\u0000\u0014<\u0000\u0015<\u0000\u0016<\u0000\u0017<\u0000\u0018<\u0000\u0019<\u0000\u001a<\u0000", new Object[]{"orderOneof_", "orderOneofCase_", "chainId_", "accountNumber_", "sequence_", "source_", "memo_", "privateKey_", TradeOrder.class, CancelTradeOrder.class, SendOrder.class, TokenFreezeOrder.class, TokenUnfreezeOrder.class, HTLTOrder.class, DepositHTLTOrder.class, ClaimHTLOrder.class, RefundHTLTOrder.class, TokenIssueOrder.class, TokenMintOrder.class, TokenBurnOrder.class, TransferOut.class, SideChainDelegate.class, SideChainRedelegate.class, SideChainUndelegate.class, TimeLockOrder.class, TimeRelockOrder.class, TimeUnlockOrder.class});
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
        public static final int ERROR_FIELD_NUMBER = 2;
        public static final int ERROR_MESSAGE_FIELD_NUMBER = 3;
        private static volatile Parser<SigningOutput> PARSER;
        private ByteString encoded_ = ByteString.EMPTY;
        private String errorMessage_ = "";
        private int error_;

        private SigningOutput() {
        }

        @Override // wallet.core.jni.proto.Binance.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Binance.SigningOutputOrBuilder
        public int getErrorValue() {
            return this.error_;
        }

        @Override // wallet.core.jni.proto.Binance.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Binance.SigningOutputOrBuilder
        public String getErrorMessage() {
            return this.errorMessage_;
        }

        @Override // wallet.core.jni.proto.Binance.SigningOutputOrBuilder
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
            /* synthetic */ Builder(C67051 c67051) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Binance.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.Binance.SigningOutputOrBuilder
            public int getErrorValue() {
                return ((SigningOutput) this.instance).getErrorValue();
            }

            public Builder setErrorValue(int value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setErrorValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Binance.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.Binance.SigningOutputOrBuilder
            public String getErrorMessage() {
                return ((SigningOutput) this.instance).getErrorMessage();
            }

            @Override // wallet.core.jni.proto.Binance.SigningOutputOrBuilder
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
            switch (C67051.f1780xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002\f\u0003Ȉ", new Object[]{"encoded_", "error_", "errorMessage_"});
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
