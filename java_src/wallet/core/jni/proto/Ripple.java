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
/* loaded from: classes7.dex */
public final class Ripple {

    /* loaded from: classes7.dex */
    public interface CurrencyAmountOrBuilder extends MessageLiteOrBuilder {
        String getCurrency();

        ByteString getCurrencyBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getIssuer();

        ByteString getIssuerBytes();

        String getValue();

        ByteString getValueBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface OperationNFTokenAcceptOfferOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getSellOffer();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface OperationNFTokenBurnOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getNftokenId();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface OperationNFTokenCancelOfferOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getTokenOffers(int index);

        int getTokenOffersCount();

        List<ByteString> getTokenOffersList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface OperationNFTokenCreateOfferOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getDestination();

        ByteString getDestinationBytes();

        ByteString getNftokenId();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface OperationPaymentOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        OperationPayment.AmountOneofCase getAmountOneofCase();

        CurrencyAmount getCurrencyAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getDestination();

        ByteString getDestinationBytes();

        long getDestinationTag();

        boolean hasAmount();

        boolean hasCurrencyAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface OperationTrustSetOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        CurrencyAmount getLimitAmount();

        boolean hasLimitAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        String getAccount();

        ByteString getAccountBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getFee();

        long getFlags();

        int getLastLedgerSequence();

        OperationNFTokenAcceptOffer getOpNftokenAcceptOffer();

        OperationNFTokenBurn getOpNftokenBurn();

        OperationNFTokenCancelOffer getOpNftokenCancelOffer();

        OperationNFTokenCreateOffer getOpNftokenCreateOffer();

        OperationPayment getOpPayment();

        OperationTrustSet getOpTrustSet();

        SigningInput.OperationOneofCase getOperationOneofCase();

        ByteString getPrivateKey();

        int getSequence();

        boolean hasOpNftokenAcceptOffer();

        boolean hasOpNftokenBurn();

        boolean hasOpNftokenCancelOffer();

        boolean hasOpNftokenCreateOffer();

        boolean hasOpPayment();

        boolean hasOpTrustSet();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getEncoded();

        Common.SigningError getError();

        int getErrorValue();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Ripple() {
    }

    /* loaded from: classes7.dex */
    public static final class CurrencyAmount extends GeneratedMessageLite<CurrencyAmount, Builder> implements CurrencyAmountOrBuilder {
        public static final int CURRENCY_FIELD_NUMBER = 1;
        private static final CurrencyAmount DEFAULT_INSTANCE;
        public static final int ISSUER_FIELD_NUMBER = 3;
        private static volatile Parser<CurrencyAmount> PARSER = null;
        public static final int VALUE_FIELD_NUMBER = 2;
        private String currency_ = "";
        private String value_ = "";
        private String issuer_ = "";

        private CurrencyAmount() {
        }

        @Override // wallet.core.jni.proto.Ripple.CurrencyAmountOrBuilder
        public String getCurrency() {
            return this.currency_;
        }

        @Override // wallet.core.jni.proto.Ripple.CurrencyAmountOrBuilder
        public ByteString getCurrencyBytes() {
            return ByteString.copyFromUtf8(this.currency_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCurrency(String value) {
            value.getClass();
            this.currency_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCurrency() {
            this.currency_ = getDefaultInstance().getCurrency();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCurrencyBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.currency_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Ripple.CurrencyAmountOrBuilder
        public String getValue() {
            return this.value_;
        }

        @Override // wallet.core.jni.proto.Ripple.CurrencyAmountOrBuilder
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

        @Override // wallet.core.jni.proto.Ripple.CurrencyAmountOrBuilder
        public String getIssuer() {
            return this.issuer_;
        }

        @Override // wallet.core.jni.proto.Ripple.CurrencyAmountOrBuilder
        public ByteString getIssuerBytes() {
            return ByteString.copyFromUtf8(this.issuer_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIssuer(String value) {
            value.getClass();
            this.issuer_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearIssuer() {
            this.issuer_ = getDefaultInstance().getIssuer();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIssuerBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.issuer_ = value.toStringUtf8();
        }

        public static CurrencyAmount parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (CurrencyAmount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CurrencyAmount parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CurrencyAmount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CurrencyAmount parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (CurrencyAmount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CurrencyAmount parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CurrencyAmount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CurrencyAmount parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (CurrencyAmount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CurrencyAmount parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CurrencyAmount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CurrencyAmount parseFrom(InputStream input) throws IOException {
            return (CurrencyAmount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static CurrencyAmount parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CurrencyAmount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static CurrencyAmount parseDelimitedFrom(InputStream input) throws IOException {
            return (CurrencyAmount) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static CurrencyAmount parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CurrencyAmount) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static CurrencyAmount parseFrom(CodedInputStream input) throws IOException {
            return (CurrencyAmount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static CurrencyAmount parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CurrencyAmount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(CurrencyAmount prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<CurrencyAmount, Builder> implements CurrencyAmountOrBuilder {
            /* synthetic */ Builder(C77601 c77601) {
                this();
            }

            private Builder() {
                super(CurrencyAmount.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Ripple.CurrencyAmountOrBuilder
            public String getCurrency() {
                return ((CurrencyAmount) this.instance).getCurrency();
            }

            @Override // wallet.core.jni.proto.Ripple.CurrencyAmountOrBuilder
            public ByteString getCurrencyBytes() {
                return ((CurrencyAmount) this.instance).getCurrencyBytes();
            }

            public Builder setCurrency(String value) {
                copyOnWrite();
                ((CurrencyAmount) this.instance).setCurrency(value);
                return this;
            }

            public Builder clearCurrency() {
                copyOnWrite();
                ((CurrencyAmount) this.instance).clearCurrency();
                return this;
            }

            public Builder setCurrencyBytes(ByteString value) {
                copyOnWrite();
                ((CurrencyAmount) this.instance).setCurrencyBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Ripple.CurrencyAmountOrBuilder
            public String getValue() {
                return ((CurrencyAmount) this.instance).getValue();
            }

            @Override // wallet.core.jni.proto.Ripple.CurrencyAmountOrBuilder
            public ByteString getValueBytes() {
                return ((CurrencyAmount) this.instance).getValueBytes();
            }

            public Builder setValue(String value) {
                copyOnWrite();
                ((CurrencyAmount) this.instance).setValue(value);
                return this;
            }

            public Builder clearValue() {
                copyOnWrite();
                ((CurrencyAmount) this.instance).clearValue();
                return this;
            }

            public Builder setValueBytes(ByteString value) {
                copyOnWrite();
                ((CurrencyAmount) this.instance).setValueBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Ripple.CurrencyAmountOrBuilder
            public String getIssuer() {
                return ((CurrencyAmount) this.instance).getIssuer();
            }

            @Override // wallet.core.jni.proto.Ripple.CurrencyAmountOrBuilder
            public ByteString getIssuerBytes() {
                return ((CurrencyAmount) this.instance).getIssuerBytes();
            }

            public Builder setIssuer(String value) {
                copyOnWrite();
                ((CurrencyAmount) this.instance).setIssuer(value);
                return this;
            }

            public Builder clearIssuer() {
                copyOnWrite();
                ((CurrencyAmount) this.instance).clearIssuer();
                return this;
            }

            public Builder setIssuerBytes(ByteString value) {
                copyOnWrite();
                ((CurrencyAmount) this.instance).setIssuerBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77601.f2155xa1df5c61[method.ordinal()]) {
                case 1:
                    return new CurrencyAmount();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ", new Object[]{"currency_", "value_", "issuer_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<CurrencyAmount> parser = PARSER;
                    if (parser == null) {
                        synchronized (CurrencyAmount.class) {
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
            CurrencyAmount currencyAmount = new CurrencyAmount();
            DEFAULT_INSTANCE = currencyAmount;
            GeneratedMessageLite.registerDefaultInstance(CurrencyAmount.class, currencyAmount);
        }

        public static CurrencyAmount getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CurrencyAmount> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* renamed from: wallet.core.jni.proto.Ripple$1 */
    /* loaded from: classes7.dex */
    static /* synthetic */ class C77601 {

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
    public static final class OperationTrustSet extends GeneratedMessageLite<OperationTrustSet, Builder> implements OperationTrustSetOrBuilder {
        private static final OperationTrustSet DEFAULT_INSTANCE;
        public static final int LIMIT_AMOUNT_FIELD_NUMBER = 1;
        private static volatile Parser<OperationTrustSet> PARSER;
        private CurrencyAmount limitAmount_;

        private OperationTrustSet() {
        }

        @Override // wallet.core.jni.proto.Ripple.OperationTrustSetOrBuilder
        public boolean hasLimitAmount() {
            return this.limitAmount_ != null;
        }

        @Override // wallet.core.jni.proto.Ripple.OperationTrustSetOrBuilder
        public CurrencyAmount getLimitAmount() {
            CurrencyAmount currencyAmount = this.limitAmount_;
            return currencyAmount == null ? CurrencyAmount.getDefaultInstance() : currencyAmount;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLimitAmount(CurrencyAmount value) {
            value.getClass();
            this.limitAmount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeLimitAmount(CurrencyAmount value) {
            value.getClass();
            CurrencyAmount currencyAmount = this.limitAmount_;
            if (currencyAmount != null && currencyAmount != CurrencyAmount.getDefaultInstance()) {
                this.limitAmount_ = CurrencyAmount.newBuilder(this.limitAmount_).mergeFrom((CurrencyAmount.Builder) value).buildPartial();
            } else {
                this.limitAmount_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearLimitAmount() {
            this.limitAmount_ = null;
        }

        public static OperationTrustSet parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (OperationTrustSet) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationTrustSet parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationTrustSet) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationTrustSet parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (OperationTrustSet) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationTrustSet parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationTrustSet) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationTrustSet parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (OperationTrustSet) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationTrustSet parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationTrustSet) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationTrustSet parseFrom(InputStream input) throws IOException {
            return (OperationTrustSet) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationTrustSet parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationTrustSet) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationTrustSet parseDelimitedFrom(InputStream input) throws IOException {
            return (OperationTrustSet) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationTrustSet parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationTrustSet) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationTrustSet parseFrom(CodedInputStream input) throws IOException {
            return (OperationTrustSet) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationTrustSet parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationTrustSet) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(OperationTrustSet prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<OperationTrustSet, Builder> implements OperationTrustSetOrBuilder {
            /* synthetic */ Builder(C77601 c77601) {
                this();
            }

            private Builder() {
                super(OperationTrustSet.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Ripple.OperationTrustSetOrBuilder
            public boolean hasLimitAmount() {
                return ((OperationTrustSet) this.instance).hasLimitAmount();
            }

            @Override // wallet.core.jni.proto.Ripple.OperationTrustSetOrBuilder
            public CurrencyAmount getLimitAmount() {
                return ((OperationTrustSet) this.instance).getLimitAmount();
            }

            public Builder setLimitAmount(CurrencyAmount value) {
                copyOnWrite();
                ((OperationTrustSet) this.instance).setLimitAmount(value);
                return this;
            }

            public Builder setLimitAmount(CurrencyAmount.Builder builderForValue) {
                copyOnWrite();
                ((OperationTrustSet) this.instance).setLimitAmount(builderForValue.build());
                return this;
            }

            public Builder mergeLimitAmount(CurrencyAmount value) {
                copyOnWrite();
                ((OperationTrustSet) this.instance).mergeLimitAmount(value);
                return this;
            }

            public Builder clearLimitAmount() {
                copyOnWrite();
                ((OperationTrustSet) this.instance).clearLimitAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77601.f2155xa1df5c61[method.ordinal()]) {
                case 1:
                    return new OperationTrustSet();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t", new Object[]{"limitAmount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<OperationTrustSet> parser = PARSER;
                    if (parser == null) {
                        synchronized (OperationTrustSet.class) {
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
            OperationTrustSet operationTrustSet = new OperationTrustSet();
            DEFAULT_INSTANCE = operationTrustSet;
            GeneratedMessageLite.registerDefaultInstance(OperationTrustSet.class, operationTrustSet);
        }

        public static OperationTrustSet getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<OperationTrustSet> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class OperationPayment extends GeneratedMessageLite<OperationPayment, Builder> implements OperationPaymentOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 1;
        public static final int CURRENCY_AMOUNT_FIELD_NUMBER = 2;
        private static final OperationPayment DEFAULT_INSTANCE;
        public static final int DESTINATION_FIELD_NUMBER = 3;
        public static final int DESTINATION_TAG_FIELD_NUMBER = 4;
        private static volatile Parser<OperationPayment> PARSER;
        private Object amountOneof_;
        private long destinationTag_;
        private int amountOneofCase_ = 0;
        private String destination_ = "";

        private OperationPayment() {
        }

        /* loaded from: classes7.dex */
        public enum AmountOneofCase {
            AMOUNT(1),
            CURRENCY_AMOUNT(2),
            AMOUNTONEOF_NOT_SET(0);
            
            private final int value;

            AmountOneofCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static AmountOneofCase valueOf(int value) {
                return forNumber(value);
            }

            public static AmountOneofCase forNumber(int value) {
                if (value != 0) {
                    if (value != 1) {
                        if (value != 2) {
                            return null;
                        }
                        return CURRENCY_AMOUNT;
                    }
                    return AMOUNT;
                }
                return AMOUNTONEOF_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Ripple.OperationPaymentOrBuilder
        public AmountOneofCase getAmountOneofCase() {
            return AmountOneofCase.forNumber(this.amountOneofCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAmountOneof() {
            this.amountOneofCase_ = 0;
            this.amountOneof_ = null;
        }

        @Override // wallet.core.jni.proto.Ripple.OperationPaymentOrBuilder
        public boolean hasAmount() {
            return this.amountOneofCase_ == 1;
        }

        @Override // wallet.core.jni.proto.Ripple.OperationPaymentOrBuilder
        public long getAmount() {
            if (this.amountOneofCase_ == 1) {
                return ((Long) this.amountOneof_).longValue();
            }
            return 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmount(long value) {
            this.amountOneofCase_ = 1;
            this.amountOneof_ = Long.valueOf(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAmount() {
            if (this.amountOneofCase_ == 1) {
                this.amountOneofCase_ = 0;
                this.amountOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Ripple.OperationPaymentOrBuilder
        public boolean hasCurrencyAmount() {
            return this.amountOneofCase_ == 2;
        }

        @Override // wallet.core.jni.proto.Ripple.OperationPaymentOrBuilder
        public CurrencyAmount getCurrencyAmount() {
            if (this.amountOneofCase_ == 2) {
                return (CurrencyAmount) this.amountOneof_;
            }
            return CurrencyAmount.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCurrencyAmount(CurrencyAmount value) {
            value.getClass();
            this.amountOneof_ = value;
            this.amountOneofCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeCurrencyAmount(CurrencyAmount value) {
            value.getClass();
            if (this.amountOneofCase_ == 2 && this.amountOneof_ != CurrencyAmount.getDefaultInstance()) {
                this.amountOneof_ = CurrencyAmount.newBuilder((CurrencyAmount) this.amountOneof_).mergeFrom((CurrencyAmount.Builder) value).buildPartial();
            } else {
                this.amountOneof_ = value;
            }
            this.amountOneofCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCurrencyAmount() {
            if (this.amountOneofCase_ == 2) {
                this.amountOneofCase_ = 0;
                this.amountOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Ripple.OperationPaymentOrBuilder
        public String getDestination() {
            return this.destination_;
        }

        @Override // wallet.core.jni.proto.Ripple.OperationPaymentOrBuilder
        public ByteString getDestinationBytes() {
            return ByteString.copyFromUtf8(this.destination_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDestination(String value) {
            value.getClass();
            this.destination_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDestination() {
            this.destination_ = getDefaultInstance().getDestination();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDestinationBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.destination_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Ripple.OperationPaymentOrBuilder
        public long getDestinationTag() {
            return this.destinationTag_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDestinationTag(long value) {
            this.destinationTag_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDestinationTag() {
            this.destinationTag_ = 0L;
        }

        public static OperationPayment parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (OperationPayment) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationPayment parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationPayment) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationPayment parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (OperationPayment) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationPayment parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationPayment) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationPayment parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (OperationPayment) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationPayment parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationPayment) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationPayment parseFrom(InputStream input) throws IOException {
            return (OperationPayment) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationPayment parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationPayment) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationPayment parseDelimitedFrom(InputStream input) throws IOException {
            return (OperationPayment) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationPayment parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationPayment) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationPayment parseFrom(CodedInputStream input) throws IOException {
            return (OperationPayment) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationPayment parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationPayment) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(OperationPayment prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<OperationPayment, Builder> implements OperationPaymentOrBuilder {
            /* synthetic */ Builder(C77601 c77601) {
                this();
            }

            private Builder() {
                super(OperationPayment.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Ripple.OperationPaymentOrBuilder
            public AmountOneofCase getAmountOneofCase() {
                return ((OperationPayment) this.instance).getAmountOneofCase();
            }

            public Builder clearAmountOneof() {
                copyOnWrite();
                ((OperationPayment) this.instance).clearAmountOneof();
                return this;
            }

            @Override // wallet.core.jni.proto.Ripple.OperationPaymentOrBuilder
            public boolean hasAmount() {
                return ((OperationPayment) this.instance).hasAmount();
            }

            @Override // wallet.core.jni.proto.Ripple.OperationPaymentOrBuilder
            public long getAmount() {
                return ((OperationPayment) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((OperationPayment) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((OperationPayment) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Ripple.OperationPaymentOrBuilder
            public boolean hasCurrencyAmount() {
                return ((OperationPayment) this.instance).hasCurrencyAmount();
            }

            @Override // wallet.core.jni.proto.Ripple.OperationPaymentOrBuilder
            public CurrencyAmount getCurrencyAmount() {
                return ((OperationPayment) this.instance).getCurrencyAmount();
            }

            public Builder setCurrencyAmount(CurrencyAmount value) {
                copyOnWrite();
                ((OperationPayment) this.instance).setCurrencyAmount(value);
                return this;
            }

            public Builder setCurrencyAmount(CurrencyAmount.Builder builderForValue) {
                copyOnWrite();
                ((OperationPayment) this.instance).setCurrencyAmount(builderForValue.build());
                return this;
            }

            public Builder mergeCurrencyAmount(CurrencyAmount value) {
                copyOnWrite();
                ((OperationPayment) this.instance).mergeCurrencyAmount(value);
                return this;
            }

            public Builder clearCurrencyAmount() {
                copyOnWrite();
                ((OperationPayment) this.instance).clearCurrencyAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Ripple.OperationPaymentOrBuilder
            public String getDestination() {
                return ((OperationPayment) this.instance).getDestination();
            }

            @Override // wallet.core.jni.proto.Ripple.OperationPaymentOrBuilder
            public ByteString getDestinationBytes() {
                return ((OperationPayment) this.instance).getDestinationBytes();
            }

            public Builder setDestination(String value) {
                copyOnWrite();
                ((OperationPayment) this.instance).setDestination(value);
                return this;
            }

            public Builder clearDestination() {
                copyOnWrite();
                ((OperationPayment) this.instance).clearDestination();
                return this;
            }

            public Builder setDestinationBytes(ByteString value) {
                copyOnWrite();
                ((OperationPayment) this.instance).setDestinationBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Ripple.OperationPaymentOrBuilder
            public long getDestinationTag() {
                return ((OperationPayment) this.instance).getDestinationTag();
            }

            public Builder setDestinationTag(long value) {
                copyOnWrite();
                ((OperationPayment) this.instance).setDestinationTag(value);
                return this;
            }

            public Builder clearDestinationTag() {
                copyOnWrite();
                ((OperationPayment) this.instance).clearDestinationTag();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77601.f2155xa1df5c61[method.ordinal()]) {
                case 1:
                    return new OperationPayment();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u00015\u0000\u0002<\u0000\u0003Ȉ\u0004\u0002", new Object[]{"amountOneof_", "amountOneofCase_", CurrencyAmount.class, "destination_", "destinationTag_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<OperationPayment> parser = PARSER;
                    if (parser == null) {
                        synchronized (OperationPayment.class) {
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
            OperationPayment operationPayment = new OperationPayment();
            DEFAULT_INSTANCE = operationPayment;
            GeneratedMessageLite.registerDefaultInstance(OperationPayment.class, operationPayment);
        }

        public static OperationPayment getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<OperationPayment> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class OperationNFTokenBurn extends GeneratedMessageLite<OperationNFTokenBurn, Builder> implements OperationNFTokenBurnOrBuilder {
        private static final OperationNFTokenBurn DEFAULT_INSTANCE;
        public static final int NFTOKEN_ID_FIELD_NUMBER = 1;
        private static volatile Parser<OperationNFTokenBurn> PARSER;
        private ByteString nftokenId_ = ByteString.EMPTY;

        private OperationNFTokenBurn() {
        }

        @Override // wallet.core.jni.proto.Ripple.OperationNFTokenBurnOrBuilder
        public ByteString getNftokenId() {
            return this.nftokenId_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNftokenId(ByteString value) {
            value.getClass();
            this.nftokenId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNftokenId() {
            this.nftokenId_ = getDefaultInstance().getNftokenId();
        }

        public static OperationNFTokenBurn parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (OperationNFTokenBurn) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationNFTokenBurn parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationNFTokenBurn) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationNFTokenBurn parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (OperationNFTokenBurn) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationNFTokenBurn parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationNFTokenBurn) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationNFTokenBurn parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (OperationNFTokenBurn) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationNFTokenBurn parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationNFTokenBurn) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationNFTokenBurn parseFrom(InputStream input) throws IOException {
            return (OperationNFTokenBurn) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationNFTokenBurn parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationNFTokenBurn) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationNFTokenBurn parseDelimitedFrom(InputStream input) throws IOException {
            return (OperationNFTokenBurn) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationNFTokenBurn parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationNFTokenBurn) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationNFTokenBurn parseFrom(CodedInputStream input) throws IOException {
            return (OperationNFTokenBurn) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationNFTokenBurn parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationNFTokenBurn) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(OperationNFTokenBurn prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<OperationNFTokenBurn, Builder> implements OperationNFTokenBurnOrBuilder {
            /* synthetic */ Builder(C77601 c77601) {
                this();
            }

            private Builder() {
                super(OperationNFTokenBurn.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Ripple.OperationNFTokenBurnOrBuilder
            public ByteString getNftokenId() {
                return ((OperationNFTokenBurn) this.instance).getNftokenId();
            }

            public Builder setNftokenId(ByteString value) {
                copyOnWrite();
                ((OperationNFTokenBurn) this.instance).setNftokenId(value);
                return this;
            }

            public Builder clearNftokenId() {
                copyOnWrite();
                ((OperationNFTokenBurn) this.instance).clearNftokenId();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77601.f2155xa1df5c61[method.ordinal()]) {
                case 1:
                    return new OperationNFTokenBurn();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n", new Object[]{"nftokenId_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<OperationNFTokenBurn> parser = PARSER;
                    if (parser == null) {
                        synchronized (OperationNFTokenBurn.class) {
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
            OperationNFTokenBurn operationNFTokenBurn = new OperationNFTokenBurn();
            DEFAULT_INSTANCE = operationNFTokenBurn;
            GeneratedMessageLite.registerDefaultInstance(OperationNFTokenBurn.class, operationNFTokenBurn);
        }

        public static OperationNFTokenBurn getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<OperationNFTokenBurn> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class OperationNFTokenCreateOffer extends GeneratedMessageLite<OperationNFTokenCreateOffer, Builder> implements OperationNFTokenCreateOfferOrBuilder {
        private static final OperationNFTokenCreateOffer DEFAULT_INSTANCE;
        public static final int DESTINATION_FIELD_NUMBER = 2;
        public static final int NFTOKEN_ID_FIELD_NUMBER = 1;
        private static volatile Parser<OperationNFTokenCreateOffer> PARSER;
        private ByteString nftokenId_ = ByteString.EMPTY;
        private String destination_ = "";

        private OperationNFTokenCreateOffer() {
        }

        @Override // wallet.core.jni.proto.Ripple.OperationNFTokenCreateOfferOrBuilder
        public ByteString getNftokenId() {
            return this.nftokenId_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNftokenId(ByteString value) {
            value.getClass();
            this.nftokenId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNftokenId() {
            this.nftokenId_ = getDefaultInstance().getNftokenId();
        }

        @Override // wallet.core.jni.proto.Ripple.OperationNFTokenCreateOfferOrBuilder
        public String getDestination() {
            return this.destination_;
        }

        @Override // wallet.core.jni.proto.Ripple.OperationNFTokenCreateOfferOrBuilder
        public ByteString getDestinationBytes() {
            return ByteString.copyFromUtf8(this.destination_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDestination(String value) {
            value.getClass();
            this.destination_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDestination() {
            this.destination_ = getDefaultInstance().getDestination();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDestinationBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.destination_ = value.toStringUtf8();
        }

        public static OperationNFTokenCreateOffer parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (OperationNFTokenCreateOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationNFTokenCreateOffer parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationNFTokenCreateOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationNFTokenCreateOffer parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (OperationNFTokenCreateOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationNFTokenCreateOffer parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationNFTokenCreateOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationNFTokenCreateOffer parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (OperationNFTokenCreateOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationNFTokenCreateOffer parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationNFTokenCreateOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationNFTokenCreateOffer parseFrom(InputStream input) throws IOException {
            return (OperationNFTokenCreateOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationNFTokenCreateOffer parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationNFTokenCreateOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationNFTokenCreateOffer parseDelimitedFrom(InputStream input) throws IOException {
            return (OperationNFTokenCreateOffer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationNFTokenCreateOffer parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationNFTokenCreateOffer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationNFTokenCreateOffer parseFrom(CodedInputStream input) throws IOException {
            return (OperationNFTokenCreateOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationNFTokenCreateOffer parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationNFTokenCreateOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(OperationNFTokenCreateOffer prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<OperationNFTokenCreateOffer, Builder> implements OperationNFTokenCreateOfferOrBuilder {
            /* synthetic */ Builder(C77601 c77601) {
                this();
            }

            private Builder() {
                super(OperationNFTokenCreateOffer.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Ripple.OperationNFTokenCreateOfferOrBuilder
            public ByteString getNftokenId() {
                return ((OperationNFTokenCreateOffer) this.instance).getNftokenId();
            }

            public Builder setNftokenId(ByteString value) {
                copyOnWrite();
                ((OperationNFTokenCreateOffer) this.instance).setNftokenId(value);
                return this;
            }

            public Builder clearNftokenId() {
                copyOnWrite();
                ((OperationNFTokenCreateOffer) this.instance).clearNftokenId();
                return this;
            }

            @Override // wallet.core.jni.proto.Ripple.OperationNFTokenCreateOfferOrBuilder
            public String getDestination() {
                return ((OperationNFTokenCreateOffer) this.instance).getDestination();
            }

            @Override // wallet.core.jni.proto.Ripple.OperationNFTokenCreateOfferOrBuilder
            public ByteString getDestinationBytes() {
                return ((OperationNFTokenCreateOffer) this.instance).getDestinationBytes();
            }

            public Builder setDestination(String value) {
                copyOnWrite();
                ((OperationNFTokenCreateOffer) this.instance).setDestination(value);
                return this;
            }

            public Builder clearDestination() {
                copyOnWrite();
                ((OperationNFTokenCreateOffer) this.instance).clearDestination();
                return this;
            }

            public Builder setDestinationBytes(ByteString value) {
                copyOnWrite();
                ((OperationNFTokenCreateOffer) this.instance).setDestinationBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77601.f2155xa1df5c61[method.ordinal()]) {
                case 1:
                    return new OperationNFTokenCreateOffer();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002Ȉ", new Object[]{"nftokenId_", "destination_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<OperationNFTokenCreateOffer> parser = PARSER;
                    if (parser == null) {
                        synchronized (OperationNFTokenCreateOffer.class) {
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
            OperationNFTokenCreateOffer operationNFTokenCreateOffer = new OperationNFTokenCreateOffer();
            DEFAULT_INSTANCE = operationNFTokenCreateOffer;
            GeneratedMessageLite.registerDefaultInstance(OperationNFTokenCreateOffer.class, operationNFTokenCreateOffer);
        }

        public static OperationNFTokenCreateOffer getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<OperationNFTokenCreateOffer> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class OperationNFTokenAcceptOffer extends GeneratedMessageLite<OperationNFTokenAcceptOffer, Builder> implements OperationNFTokenAcceptOfferOrBuilder {
        private static final OperationNFTokenAcceptOffer DEFAULT_INSTANCE;
        private static volatile Parser<OperationNFTokenAcceptOffer> PARSER = null;
        public static final int SELL_OFFER_FIELD_NUMBER = 1;
        private ByteString sellOffer_ = ByteString.EMPTY;

        private OperationNFTokenAcceptOffer() {
        }

        @Override // wallet.core.jni.proto.Ripple.OperationNFTokenAcceptOfferOrBuilder
        public ByteString getSellOffer() {
            return this.sellOffer_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSellOffer(ByteString value) {
            value.getClass();
            this.sellOffer_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSellOffer() {
            this.sellOffer_ = getDefaultInstance().getSellOffer();
        }

        public static OperationNFTokenAcceptOffer parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (OperationNFTokenAcceptOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationNFTokenAcceptOffer parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationNFTokenAcceptOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationNFTokenAcceptOffer parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (OperationNFTokenAcceptOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationNFTokenAcceptOffer parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationNFTokenAcceptOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationNFTokenAcceptOffer parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (OperationNFTokenAcceptOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationNFTokenAcceptOffer parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationNFTokenAcceptOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationNFTokenAcceptOffer parseFrom(InputStream input) throws IOException {
            return (OperationNFTokenAcceptOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationNFTokenAcceptOffer parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationNFTokenAcceptOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationNFTokenAcceptOffer parseDelimitedFrom(InputStream input) throws IOException {
            return (OperationNFTokenAcceptOffer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationNFTokenAcceptOffer parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationNFTokenAcceptOffer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationNFTokenAcceptOffer parseFrom(CodedInputStream input) throws IOException {
            return (OperationNFTokenAcceptOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationNFTokenAcceptOffer parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationNFTokenAcceptOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(OperationNFTokenAcceptOffer prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<OperationNFTokenAcceptOffer, Builder> implements OperationNFTokenAcceptOfferOrBuilder {
            /* synthetic */ Builder(C77601 c77601) {
                this();
            }

            private Builder() {
                super(OperationNFTokenAcceptOffer.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Ripple.OperationNFTokenAcceptOfferOrBuilder
            public ByteString getSellOffer() {
                return ((OperationNFTokenAcceptOffer) this.instance).getSellOffer();
            }

            public Builder setSellOffer(ByteString value) {
                copyOnWrite();
                ((OperationNFTokenAcceptOffer) this.instance).setSellOffer(value);
                return this;
            }

            public Builder clearSellOffer() {
                copyOnWrite();
                ((OperationNFTokenAcceptOffer) this.instance).clearSellOffer();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77601.f2155xa1df5c61[method.ordinal()]) {
                case 1:
                    return new OperationNFTokenAcceptOffer();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n", new Object[]{"sellOffer_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<OperationNFTokenAcceptOffer> parser = PARSER;
                    if (parser == null) {
                        synchronized (OperationNFTokenAcceptOffer.class) {
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
            OperationNFTokenAcceptOffer operationNFTokenAcceptOffer = new OperationNFTokenAcceptOffer();
            DEFAULT_INSTANCE = operationNFTokenAcceptOffer;
            GeneratedMessageLite.registerDefaultInstance(OperationNFTokenAcceptOffer.class, operationNFTokenAcceptOffer);
        }

        public static OperationNFTokenAcceptOffer getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<OperationNFTokenAcceptOffer> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class OperationNFTokenCancelOffer extends GeneratedMessageLite<OperationNFTokenCancelOffer, Builder> implements OperationNFTokenCancelOfferOrBuilder {
        private static final OperationNFTokenCancelOffer DEFAULT_INSTANCE;
        private static volatile Parser<OperationNFTokenCancelOffer> PARSER = null;
        public static final int TOKEN_OFFERS_FIELD_NUMBER = 1;
        private Internal.ProtobufList<ByteString> tokenOffers_ = GeneratedMessageLite.emptyProtobufList();

        private OperationNFTokenCancelOffer() {
        }

        @Override // wallet.core.jni.proto.Ripple.OperationNFTokenCancelOfferOrBuilder
        public List<ByteString> getTokenOffersList() {
            return this.tokenOffers_;
        }

        @Override // wallet.core.jni.proto.Ripple.OperationNFTokenCancelOfferOrBuilder
        public int getTokenOffersCount() {
            return this.tokenOffers_.size();
        }

        @Override // wallet.core.jni.proto.Ripple.OperationNFTokenCancelOfferOrBuilder
        public ByteString getTokenOffers(int index) {
            return this.tokenOffers_.get(index);
        }

        private void ensureTokenOffersIsMutable() {
            Internal.ProtobufList<ByteString> protobufList = this.tokenOffers_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.tokenOffers_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTokenOffers(int index, ByteString value) {
            value.getClass();
            ensureTokenOffersIsMutable();
            this.tokenOffers_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addTokenOffers(ByteString value) {
            value.getClass();
            ensureTokenOffersIsMutable();
            this.tokenOffers_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllTokenOffers(Iterable<? extends ByteString> values) {
            ensureTokenOffersIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.tokenOffers_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTokenOffers() {
            this.tokenOffers_ = GeneratedMessageLite.emptyProtobufList();
        }

        public static OperationNFTokenCancelOffer parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (OperationNFTokenCancelOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationNFTokenCancelOffer parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationNFTokenCancelOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationNFTokenCancelOffer parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (OperationNFTokenCancelOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationNFTokenCancelOffer parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationNFTokenCancelOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationNFTokenCancelOffer parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (OperationNFTokenCancelOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationNFTokenCancelOffer parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationNFTokenCancelOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationNFTokenCancelOffer parseFrom(InputStream input) throws IOException {
            return (OperationNFTokenCancelOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationNFTokenCancelOffer parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationNFTokenCancelOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationNFTokenCancelOffer parseDelimitedFrom(InputStream input) throws IOException {
            return (OperationNFTokenCancelOffer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationNFTokenCancelOffer parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationNFTokenCancelOffer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationNFTokenCancelOffer parseFrom(CodedInputStream input) throws IOException {
            return (OperationNFTokenCancelOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationNFTokenCancelOffer parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationNFTokenCancelOffer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(OperationNFTokenCancelOffer prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<OperationNFTokenCancelOffer, Builder> implements OperationNFTokenCancelOfferOrBuilder {
            /* synthetic */ Builder(C77601 c77601) {
                this();
            }

            private Builder() {
                super(OperationNFTokenCancelOffer.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Ripple.OperationNFTokenCancelOfferOrBuilder
            public List<ByteString> getTokenOffersList() {
                return Collections.unmodifiableList(((OperationNFTokenCancelOffer) this.instance).getTokenOffersList());
            }

            @Override // wallet.core.jni.proto.Ripple.OperationNFTokenCancelOfferOrBuilder
            public int getTokenOffersCount() {
                return ((OperationNFTokenCancelOffer) this.instance).getTokenOffersCount();
            }

            @Override // wallet.core.jni.proto.Ripple.OperationNFTokenCancelOfferOrBuilder
            public ByteString getTokenOffers(int index) {
                return ((OperationNFTokenCancelOffer) this.instance).getTokenOffers(index);
            }

            public Builder setTokenOffers(int index, ByteString value) {
                copyOnWrite();
                ((OperationNFTokenCancelOffer) this.instance).setTokenOffers(index, value);
                return this;
            }

            public Builder addTokenOffers(ByteString value) {
                copyOnWrite();
                ((OperationNFTokenCancelOffer) this.instance).addTokenOffers(value);
                return this;
            }

            public Builder addAllTokenOffers(Iterable<? extends ByteString> values) {
                copyOnWrite();
                ((OperationNFTokenCancelOffer) this.instance).addAllTokenOffers(values);
                return this;
            }

            public Builder clearTokenOffers() {
                copyOnWrite();
                ((OperationNFTokenCancelOffer) this.instance).clearTokenOffers();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77601.f2155xa1df5c61[method.ordinal()]) {
                case 1:
                    return new OperationNFTokenCancelOffer();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001c", new Object[]{"tokenOffers_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<OperationNFTokenCancelOffer> parser = PARSER;
                    if (parser == null) {
                        synchronized (OperationNFTokenCancelOffer.class) {
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
            OperationNFTokenCancelOffer operationNFTokenCancelOffer = new OperationNFTokenCancelOffer();
            DEFAULT_INSTANCE = operationNFTokenCancelOffer;
            GeneratedMessageLite.registerDefaultInstance(OperationNFTokenCancelOffer.class, operationNFTokenCancelOffer);
        }

        public static OperationNFTokenCancelOffer getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<OperationNFTokenCancelOffer> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int ACCOUNT_FIELD_NUMBER = 4;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int FEE_FIELD_NUMBER = 1;
        public static final int FLAGS_FIELD_NUMBER = 5;
        public static final int LAST_LEDGER_SEQUENCE_FIELD_NUMBER = 3;
        public static final int OP_NFTOKEN_ACCEPT_OFFER_FIELD_NUMBER = 11;
        public static final int OP_NFTOKEN_BURN_FIELD_NUMBER = 9;
        public static final int OP_NFTOKEN_CANCEL_OFFER_FIELD_NUMBER = 12;
        public static final int OP_NFTOKEN_CREATE_OFFER_FIELD_NUMBER = 10;
        public static final int OP_PAYMENT_FIELD_NUMBER = 8;
        public static final int OP_TRUST_SET_FIELD_NUMBER = 7;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 6;
        public static final int SEQUENCE_FIELD_NUMBER = 2;
        private long fee_;
        private long flags_;
        private int lastLedgerSequence_;
        private Object operationOneof_;
        private int sequence_;
        private int operationOneofCase_ = 0;
        private String account_ = "";
        private ByteString privateKey_ = ByteString.EMPTY;

        private SigningInput() {
        }

        /* loaded from: classes7.dex */
        public enum OperationOneofCase {
            OP_TRUST_SET(7),
            OP_PAYMENT(8),
            OP_NFTOKEN_BURN(9),
            OP_NFTOKEN_CREATE_OFFER(10),
            OP_NFTOKEN_ACCEPT_OFFER(11),
            OP_NFTOKEN_CANCEL_OFFER(12),
            OPERATIONONEOF_NOT_SET(0);
            
            private final int value;

            OperationOneofCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static OperationOneofCase valueOf(int value) {
                return forNumber(value);
            }

            public static OperationOneofCase forNumber(int value) {
                if (value != 0) {
                    switch (value) {
                        case 7:
                            return OP_TRUST_SET;
                        case 8:
                            return OP_PAYMENT;
                        case 9:
                            return OP_NFTOKEN_BURN;
                        case 10:
                            return OP_NFTOKEN_CREATE_OFFER;
                        case 11:
                            return OP_NFTOKEN_ACCEPT_OFFER;
                        case 12:
                            return OP_NFTOKEN_CANCEL_OFFER;
                        default:
                            return null;
                    }
                }
                return OPERATIONONEOF_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
        public OperationOneofCase getOperationOneofCase() {
            return OperationOneofCase.forNumber(this.operationOneofCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOperationOneof() {
            this.operationOneofCase_ = 0;
            this.operationOneof_ = null;
        }

        @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
        public int getSequence() {
            return this.sequence_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSequence(int value) {
            this.sequence_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSequence() {
            this.sequence_ = 0;
        }

        @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
        public int getLastLedgerSequence() {
            return this.lastLedgerSequence_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLastLedgerSequence(int value) {
            this.lastLedgerSequence_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearLastLedgerSequence() {
            this.lastLedgerSequence_ = 0;
        }

        @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
        public String getAccount() {
            return this.account_;
        }

        @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
        public ByteString getAccountBytes() {
            return ByteString.copyFromUtf8(this.account_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccount(String value) {
            value.getClass();
            this.account_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAccount() {
            this.account_ = getDefaultInstance().getAccount();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccountBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.account_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
        public long getFlags() {
            return this.flags_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFlags(long value) {
            this.flags_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFlags() {
            this.flags_ = 0L;
        }

        @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
        public boolean hasOpTrustSet() {
            return this.operationOneofCase_ == 7;
        }

        @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
        public OperationTrustSet getOpTrustSet() {
            if (this.operationOneofCase_ == 7) {
                return (OperationTrustSet) this.operationOneof_;
            }
            return OperationTrustSet.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOpTrustSet(OperationTrustSet value) {
            value.getClass();
            this.operationOneof_ = value;
            this.operationOneofCase_ = 7;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeOpTrustSet(OperationTrustSet value) {
            value.getClass();
            if (this.operationOneofCase_ == 7 && this.operationOneof_ != OperationTrustSet.getDefaultInstance()) {
                this.operationOneof_ = OperationTrustSet.newBuilder((OperationTrustSet) this.operationOneof_).mergeFrom((OperationTrustSet.Builder) value).buildPartial();
            } else {
                this.operationOneof_ = value;
            }
            this.operationOneofCase_ = 7;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOpTrustSet() {
            if (this.operationOneofCase_ == 7) {
                this.operationOneofCase_ = 0;
                this.operationOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
        public boolean hasOpPayment() {
            return this.operationOneofCase_ == 8;
        }

        @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
        public OperationPayment getOpPayment() {
            if (this.operationOneofCase_ == 8) {
                return (OperationPayment) this.operationOneof_;
            }
            return OperationPayment.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOpPayment(OperationPayment value) {
            value.getClass();
            this.operationOneof_ = value;
            this.operationOneofCase_ = 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeOpPayment(OperationPayment value) {
            value.getClass();
            if (this.operationOneofCase_ == 8 && this.operationOneof_ != OperationPayment.getDefaultInstance()) {
                this.operationOneof_ = OperationPayment.newBuilder((OperationPayment) this.operationOneof_).mergeFrom((OperationPayment.Builder) value).buildPartial();
            } else {
                this.operationOneof_ = value;
            }
            this.operationOneofCase_ = 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOpPayment() {
            if (this.operationOneofCase_ == 8) {
                this.operationOneofCase_ = 0;
                this.operationOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
        public boolean hasOpNftokenBurn() {
            return this.operationOneofCase_ == 9;
        }

        @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
        public OperationNFTokenBurn getOpNftokenBurn() {
            if (this.operationOneofCase_ == 9) {
                return (OperationNFTokenBurn) this.operationOneof_;
            }
            return OperationNFTokenBurn.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOpNftokenBurn(OperationNFTokenBurn value) {
            value.getClass();
            this.operationOneof_ = value;
            this.operationOneofCase_ = 9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeOpNftokenBurn(OperationNFTokenBurn value) {
            value.getClass();
            if (this.operationOneofCase_ == 9 && this.operationOneof_ != OperationNFTokenBurn.getDefaultInstance()) {
                this.operationOneof_ = OperationNFTokenBurn.newBuilder((OperationNFTokenBurn) this.operationOneof_).mergeFrom((OperationNFTokenBurn.Builder) value).buildPartial();
            } else {
                this.operationOneof_ = value;
            }
            this.operationOneofCase_ = 9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOpNftokenBurn() {
            if (this.operationOneofCase_ == 9) {
                this.operationOneofCase_ = 0;
                this.operationOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
        public boolean hasOpNftokenCreateOffer() {
            return this.operationOneofCase_ == 10;
        }

        @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
        public OperationNFTokenCreateOffer getOpNftokenCreateOffer() {
            if (this.operationOneofCase_ == 10) {
                return (OperationNFTokenCreateOffer) this.operationOneof_;
            }
            return OperationNFTokenCreateOffer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOpNftokenCreateOffer(OperationNFTokenCreateOffer value) {
            value.getClass();
            this.operationOneof_ = value;
            this.operationOneofCase_ = 10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeOpNftokenCreateOffer(OperationNFTokenCreateOffer value) {
            value.getClass();
            if (this.operationOneofCase_ == 10 && this.operationOneof_ != OperationNFTokenCreateOffer.getDefaultInstance()) {
                this.operationOneof_ = OperationNFTokenCreateOffer.newBuilder((OperationNFTokenCreateOffer) this.operationOneof_).mergeFrom((OperationNFTokenCreateOffer.Builder) value).buildPartial();
            } else {
                this.operationOneof_ = value;
            }
            this.operationOneofCase_ = 10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOpNftokenCreateOffer() {
            if (this.operationOneofCase_ == 10) {
                this.operationOneofCase_ = 0;
                this.operationOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
        public boolean hasOpNftokenAcceptOffer() {
            return this.operationOneofCase_ == 11;
        }

        @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
        public OperationNFTokenAcceptOffer getOpNftokenAcceptOffer() {
            if (this.operationOneofCase_ == 11) {
                return (OperationNFTokenAcceptOffer) this.operationOneof_;
            }
            return OperationNFTokenAcceptOffer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOpNftokenAcceptOffer(OperationNFTokenAcceptOffer value) {
            value.getClass();
            this.operationOneof_ = value;
            this.operationOneofCase_ = 11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeOpNftokenAcceptOffer(OperationNFTokenAcceptOffer value) {
            value.getClass();
            if (this.operationOneofCase_ == 11 && this.operationOneof_ != OperationNFTokenAcceptOffer.getDefaultInstance()) {
                this.operationOneof_ = OperationNFTokenAcceptOffer.newBuilder((OperationNFTokenAcceptOffer) this.operationOneof_).mergeFrom((OperationNFTokenAcceptOffer.Builder) value).buildPartial();
            } else {
                this.operationOneof_ = value;
            }
            this.operationOneofCase_ = 11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOpNftokenAcceptOffer() {
            if (this.operationOneofCase_ == 11) {
                this.operationOneofCase_ = 0;
                this.operationOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
        public boolean hasOpNftokenCancelOffer() {
            return this.operationOneofCase_ == 12;
        }

        @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
        public OperationNFTokenCancelOffer getOpNftokenCancelOffer() {
            if (this.operationOneofCase_ == 12) {
                return (OperationNFTokenCancelOffer) this.operationOneof_;
            }
            return OperationNFTokenCancelOffer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOpNftokenCancelOffer(OperationNFTokenCancelOffer value) {
            value.getClass();
            this.operationOneof_ = value;
            this.operationOneofCase_ = 12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeOpNftokenCancelOffer(OperationNFTokenCancelOffer value) {
            value.getClass();
            if (this.operationOneofCase_ == 12 && this.operationOneof_ != OperationNFTokenCancelOffer.getDefaultInstance()) {
                this.operationOneof_ = OperationNFTokenCancelOffer.newBuilder((OperationNFTokenCancelOffer) this.operationOneof_).mergeFrom((OperationNFTokenCancelOffer.Builder) value).buildPartial();
            } else {
                this.operationOneof_ = value;
            }
            this.operationOneofCase_ = 12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOpNftokenCancelOffer() {
            if (this.operationOneofCase_ == 12) {
                this.operationOneofCase_ = 0;
                this.operationOneof_ = null;
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
            /* synthetic */ Builder(C77601 c77601) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
            public OperationOneofCase getOperationOneofCase() {
                return ((SigningInput) this.instance).getOperationOneofCase();
            }

            public Builder clearOperationOneof() {
                copyOnWrite();
                ((SigningInput) this.instance).clearOperationOneof();
                return this;
            }

            @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
            public int getSequence() {
                return ((SigningInput) this.instance).getSequence();
            }

            public Builder setSequence(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setSequence(value);
                return this;
            }

            public Builder clearSequence() {
                copyOnWrite();
                ((SigningInput) this.instance).clearSequence();
                return this;
            }

            @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
            public int getLastLedgerSequence() {
                return ((SigningInput) this.instance).getLastLedgerSequence();
            }

            public Builder setLastLedgerSequence(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setLastLedgerSequence(value);
                return this;
            }

            public Builder clearLastLedgerSequence() {
                copyOnWrite();
                ((SigningInput) this.instance).clearLastLedgerSequence();
                return this;
            }

            @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
            public String getAccount() {
                return ((SigningInput) this.instance).getAccount();
            }

            @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
            public ByteString getAccountBytes() {
                return ((SigningInput) this.instance).getAccountBytes();
            }

            public Builder setAccount(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setAccount(value);
                return this;
            }

            public Builder clearAccount() {
                copyOnWrite();
                ((SigningInput) this.instance).clearAccount();
                return this;
            }

            public Builder setAccountBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setAccountBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
            public long getFlags() {
                return ((SigningInput) this.instance).getFlags();
            }

            public Builder setFlags(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setFlags(value);
                return this;
            }

            public Builder clearFlags() {
                copyOnWrite();
                ((SigningInput) this.instance).clearFlags();
                return this;
            }

            @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
            public boolean hasOpTrustSet() {
                return ((SigningInput) this.instance).hasOpTrustSet();
            }

            @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
            public OperationTrustSet getOpTrustSet() {
                return ((SigningInput) this.instance).getOpTrustSet();
            }

            public Builder setOpTrustSet(OperationTrustSet value) {
                copyOnWrite();
                ((SigningInput) this.instance).setOpTrustSet(value);
                return this;
            }

            public Builder setOpTrustSet(OperationTrustSet.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setOpTrustSet(builderForValue.build());
                return this;
            }

            public Builder mergeOpTrustSet(OperationTrustSet value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeOpTrustSet(value);
                return this;
            }

            public Builder clearOpTrustSet() {
                copyOnWrite();
                ((SigningInput) this.instance).clearOpTrustSet();
                return this;
            }

            @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
            public boolean hasOpPayment() {
                return ((SigningInput) this.instance).hasOpPayment();
            }

            @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
            public OperationPayment getOpPayment() {
                return ((SigningInput) this.instance).getOpPayment();
            }

            public Builder setOpPayment(OperationPayment value) {
                copyOnWrite();
                ((SigningInput) this.instance).setOpPayment(value);
                return this;
            }

            public Builder setOpPayment(OperationPayment.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setOpPayment(builderForValue.build());
                return this;
            }

            public Builder mergeOpPayment(OperationPayment value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeOpPayment(value);
                return this;
            }

            public Builder clearOpPayment() {
                copyOnWrite();
                ((SigningInput) this.instance).clearOpPayment();
                return this;
            }

            @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
            public boolean hasOpNftokenBurn() {
                return ((SigningInput) this.instance).hasOpNftokenBurn();
            }

            @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
            public OperationNFTokenBurn getOpNftokenBurn() {
                return ((SigningInput) this.instance).getOpNftokenBurn();
            }

            public Builder setOpNftokenBurn(OperationNFTokenBurn value) {
                copyOnWrite();
                ((SigningInput) this.instance).setOpNftokenBurn(value);
                return this;
            }

            public Builder setOpNftokenBurn(OperationNFTokenBurn.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setOpNftokenBurn(builderForValue.build());
                return this;
            }

            public Builder mergeOpNftokenBurn(OperationNFTokenBurn value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeOpNftokenBurn(value);
                return this;
            }

            public Builder clearOpNftokenBurn() {
                copyOnWrite();
                ((SigningInput) this.instance).clearOpNftokenBurn();
                return this;
            }

            @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
            public boolean hasOpNftokenCreateOffer() {
                return ((SigningInput) this.instance).hasOpNftokenCreateOffer();
            }

            @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
            public OperationNFTokenCreateOffer getOpNftokenCreateOffer() {
                return ((SigningInput) this.instance).getOpNftokenCreateOffer();
            }

            public Builder setOpNftokenCreateOffer(OperationNFTokenCreateOffer value) {
                copyOnWrite();
                ((SigningInput) this.instance).setOpNftokenCreateOffer(value);
                return this;
            }

            public Builder setOpNftokenCreateOffer(OperationNFTokenCreateOffer.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setOpNftokenCreateOffer(builderForValue.build());
                return this;
            }

            public Builder mergeOpNftokenCreateOffer(OperationNFTokenCreateOffer value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeOpNftokenCreateOffer(value);
                return this;
            }

            public Builder clearOpNftokenCreateOffer() {
                copyOnWrite();
                ((SigningInput) this.instance).clearOpNftokenCreateOffer();
                return this;
            }

            @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
            public boolean hasOpNftokenAcceptOffer() {
                return ((SigningInput) this.instance).hasOpNftokenAcceptOffer();
            }

            @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
            public OperationNFTokenAcceptOffer getOpNftokenAcceptOffer() {
                return ((SigningInput) this.instance).getOpNftokenAcceptOffer();
            }

            public Builder setOpNftokenAcceptOffer(OperationNFTokenAcceptOffer value) {
                copyOnWrite();
                ((SigningInput) this.instance).setOpNftokenAcceptOffer(value);
                return this;
            }

            public Builder setOpNftokenAcceptOffer(OperationNFTokenAcceptOffer.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setOpNftokenAcceptOffer(builderForValue.build());
                return this;
            }

            public Builder mergeOpNftokenAcceptOffer(OperationNFTokenAcceptOffer value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeOpNftokenAcceptOffer(value);
                return this;
            }

            public Builder clearOpNftokenAcceptOffer() {
                copyOnWrite();
                ((SigningInput) this.instance).clearOpNftokenAcceptOffer();
                return this;
            }

            @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
            public boolean hasOpNftokenCancelOffer() {
                return ((SigningInput) this.instance).hasOpNftokenCancelOffer();
            }

            @Override // wallet.core.jni.proto.Ripple.SigningInputOrBuilder
            public OperationNFTokenCancelOffer getOpNftokenCancelOffer() {
                return ((SigningInput) this.instance).getOpNftokenCancelOffer();
            }

            public Builder setOpNftokenCancelOffer(OperationNFTokenCancelOffer value) {
                copyOnWrite();
                ((SigningInput) this.instance).setOpNftokenCancelOffer(value);
                return this;
            }

            public Builder setOpNftokenCancelOffer(OperationNFTokenCancelOffer.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setOpNftokenCancelOffer(builderForValue.build());
                return this;
            }

            public Builder mergeOpNftokenCancelOffer(OperationNFTokenCancelOffer value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeOpNftokenCancelOffer(value);
                return this;
            }

            public Builder clearOpNftokenCancelOffer() {
                copyOnWrite();
                ((SigningInput) this.instance).clearOpNftokenCancelOffer();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77601.f2155xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\f\u0001\u0000\u0001\f\f\u0000\u0000\u0000\u0001\u0002\u0002\u0004\u0003\u0004\u0004Ȉ\u0005\u0002\u0006\n\u0007<\u0000\b<\u0000\t<\u0000\n<\u0000\u000b<\u0000\f<\u0000", new Object[]{"operationOneof_", "operationOneofCase_", "fee_", "sequence_", "lastLedgerSequence_", "account_", "flags_", "privateKey_", OperationTrustSet.class, OperationPayment.class, OperationNFTokenBurn.class, OperationNFTokenCreateOffer.class, OperationNFTokenAcceptOffer.class, OperationNFTokenCancelOffer.class});
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
        public static final int ERROR_FIELD_NUMBER = 2;
        private static volatile Parser<SigningOutput> PARSER;
        private ByteString encoded_ = ByteString.EMPTY;
        private int error_;

        private SigningOutput() {
        }

        @Override // wallet.core.jni.proto.Ripple.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Ripple.SigningOutputOrBuilder
        public int getErrorValue() {
            return this.error_;
        }

        @Override // wallet.core.jni.proto.Ripple.SigningOutputOrBuilder
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

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningOutput, Builder> implements SigningOutputOrBuilder {
            /* synthetic */ Builder(C77601 c77601) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Ripple.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.Ripple.SigningOutputOrBuilder
            public int getErrorValue() {
                return ((SigningOutput) this.instance).getErrorValue();
            }

            public Builder setErrorValue(int value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setErrorValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Ripple.SigningOutputOrBuilder
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
            switch (C77601.f2155xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\f", new Object[]{"encoded_", "error_"});
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
