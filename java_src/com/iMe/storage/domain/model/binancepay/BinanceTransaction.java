package com.iMe.storage.domain.model.binancepay;

import com.iMe.i_staking.response.StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceTransaction.kt */
/* loaded from: classes4.dex */
public abstract class BinanceTransaction {
    private final double amount;
    private final String asset;
    private final String assetLogo;
    private final String assetName;
    private final String createdAt;
    private final BinanceTransactionDirection direction;
    private final String initiatorUserId;
    private final String orderId;
    private final String payerUserId;
    private final BinanceTransactionStatus status;
    private final String transactionId;
    private final BinanceTransactionType type;

    public /* synthetic */ BinanceTransaction(String str, String str2, String str3, String str4, double d, String str5, String str6, String str7, BinanceTransactionDirection binanceTransactionDirection, BinanceTransactionType binanceTransactionType, BinanceTransactionStatus binanceTransactionStatus, String str8, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, d, str5, str6, str7, binanceTransactionDirection, binanceTransactionType, binanceTransactionStatus, str8);
    }

    private BinanceTransaction(String str, String str2, String str3, String str4, double d, String str5, String str6, String str7, BinanceTransactionDirection binanceTransactionDirection, BinanceTransactionType binanceTransactionType, BinanceTransactionStatus binanceTransactionStatus, String str8) {
        this.orderId = str;
        this.transactionId = str2;
        this.payerUserId = str3;
        this.initiatorUserId = str4;
        this.amount = d;
        this.asset = str5;
        this.assetName = str6;
        this.assetLogo = str7;
        this.direction = binanceTransactionDirection;
        this.type = binanceTransactionType;
        this.status = binanceTransactionStatus;
        this.createdAt = str8;
    }

    public String getOrderId() {
        return this.orderId;
    }

    public String getTransactionId() {
        return this.transactionId;
    }

    public String getPayerUserId() {
        return this.payerUserId;
    }

    public String getInitiatorUserId() {
        return this.initiatorUserId;
    }

    public double getAmount() {
        return this.amount;
    }

    public String getAsset() {
        return this.asset;
    }

    public String getAssetName() {
        return this.assetName;
    }

    public String getAssetLogo() {
        return this.assetLogo;
    }

    public BinanceTransactionDirection getDirection() {
        return this.direction;
    }

    public BinanceTransactionType getType() {
        return this.type;
    }

    public BinanceTransactionStatus getStatus() {
        return this.status;
    }

    public String getCreatedAt() {
        return this.createdAt;
    }

    /* compiled from: BinanceTransaction.kt */
    /* loaded from: classes4.dex */
    public static final class Unsupported extends BinanceTransaction {
        private final String createdAt;
        private final BinanceTransactionDirection direction;
        private final String orderId;
        private final BinanceTransactionStatus status;
        private final String transactionId;
        private final BinanceTransactionType type;

        public static /* synthetic */ Unsupported copy$default(Unsupported unsupported, String str, String str2, BinanceTransactionDirection binanceTransactionDirection, BinanceTransactionType binanceTransactionType, BinanceTransactionStatus binanceTransactionStatus, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = unsupported.getOrderId();
            }
            if ((i & 2) != 0) {
                str2 = unsupported.getTransactionId();
            }
            String str4 = str2;
            if ((i & 4) != 0) {
                binanceTransactionDirection = unsupported.getDirection();
            }
            BinanceTransactionDirection binanceTransactionDirection2 = binanceTransactionDirection;
            if ((i & 8) != 0) {
                binanceTransactionType = unsupported.getType();
            }
            BinanceTransactionType binanceTransactionType2 = binanceTransactionType;
            if ((i & 16) != 0) {
                binanceTransactionStatus = unsupported.getStatus();
            }
            BinanceTransactionStatus binanceTransactionStatus2 = binanceTransactionStatus;
            if ((i & 32) != 0) {
                str3 = unsupported.getCreatedAt();
            }
            return unsupported.copy(str, str4, binanceTransactionDirection2, binanceTransactionType2, binanceTransactionStatus2, str3);
        }

        public final String component1() {
            return getOrderId();
        }

        public final String component2() {
            return getTransactionId();
        }

        public final BinanceTransactionDirection component3() {
            return getDirection();
        }

        public final BinanceTransactionType component4() {
            return getType();
        }

        public final BinanceTransactionStatus component5() {
            return getStatus();
        }

        public final String component6() {
            return getCreatedAt();
        }

        public final Unsupported copy(String orderId, String transactionId, BinanceTransactionDirection direction, BinanceTransactionType type, BinanceTransactionStatus status, String createdAt) {
            Intrinsics.checkNotNullParameter(orderId, "orderId");
            Intrinsics.checkNotNullParameter(transactionId, "transactionId");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            return new Unsupported(orderId, transactionId, direction, type, status, createdAt);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Unsupported) {
                Unsupported unsupported = (Unsupported) obj;
                return Intrinsics.areEqual(getOrderId(), unsupported.getOrderId()) && Intrinsics.areEqual(getTransactionId(), unsupported.getTransactionId()) && getDirection() == unsupported.getDirection() && getType() == unsupported.getType() && getStatus() == unsupported.getStatus() && Intrinsics.areEqual(getCreatedAt(), unsupported.getCreatedAt());
            }
            return false;
        }

        public int hashCode() {
            return (((((((((getOrderId().hashCode() * 31) + getTransactionId().hashCode()) * 31) + getDirection().hashCode()) * 31) + getType().hashCode()) * 31) + getStatus().hashCode()) * 31) + getCreatedAt().hashCode();
        }

        public String toString() {
            return "Unsupported(orderId=" + getOrderId() + ", transactionId=" + getTransactionId() + ", direction=" + getDirection() + ", type=" + getType() + ", status=" + getStatus() + ", createdAt=" + getCreatedAt() + ')';
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public String getOrderId() {
            return this.orderId;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public String getTransactionId() {
            return this.transactionId;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public BinanceTransactionDirection getDirection() {
            return this.direction;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public BinanceTransactionType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public BinanceTransactionStatus getStatus() {
            return this.status;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public String getCreatedAt() {
            return this.createdAt;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Unsupported(String orderId, String transactionId, BinanceTransactionDirection direction, BinanceTransactionType type, BinanceTransactionStatus status, String createdAt) {
            super(orderId, transactionId, "", createdAt, 0.0d, "", "", "", direction, type, status, createdAt, null);
            Intrinsics.checkNotNullParameter(orderId, "orderId");
            Intrinsics.checkNotNullParameter(transactionId, "transactionId");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            this.orderId = orderId;
            this.transactionId = transactionId;
            this.direction = direction;
            this.type = type;
            this.status = status;
            this.createdAt = createdAt;
        }
    }

    /* compiled from: BinanceTransaction.kt */
    /* loaded from: classes4.dex */
    public static final class Pay extends BinanceTransaction {
        private final double amount;
        private final String asset;
        private final String assetLogo;
        private final String assetName;
        private final String clientTradeNo;
        private final String createdAt;
        private final BinanceTransactionDirection direction;
        private final String initiatorUserId;
        private final String orderId;
        private final String payerUserId;
        private final BinanceTransactionStatus status;
        private final String transactionId;
        private final BinanceTransactionType type;

        public final String component1() {
            return getOrderId();
        }

        public final BinanceTransactionType component10() {
            return getType();
        }

        public final BinanceTransactionStatus component11() {
            return getStatus();
        }

        public final String component12() {
            return getCreatedAt();
        }

        public final String component13() {
            return this.clientTradeNo;
        }

        public final String component2() {
            return getTransactionId();
        }

        public final String component3() {
            return getPayerUserId();
        }

        public final String component4() {
            return getInitiatorUserId();
        }

        public final double component5() {
            return getAmount();
        }

        public final String component6() {
            return getAsset();
        }

        public final String component7() {
            return getAssetName();
        }

        public final String component8() {
            return getAssetLogo();
        }

        public final BinanceTransactionDirection component9() {
            return getDirection();
        }

        public final Pay copy(String orderId, String transactionId, String payerUserId, String initiatorUserId, double d, String asset, String assetName, String assetLogo, BinanceTransactionDirection direction, BinanceTransactionType type, BinanceTransactionStatus status, String createdAt, String clientTradeNo) {
            Intrinsics.checkNotNullParameter(orderId, "orderId");
            Intrinsics.checkNotNullParameter(transactionId, "transactionId");
            Intrinsics.checkNotNullParameter(payerUserId, "payerUserId");
            Intrinsics.checkNotNullParameter(initiatorUserId, "initiatorUserId");
            Intrinsics.checkNotNullParameter(asset, "asset");
            Intrinsics.checkNotNullParameter(assetName, "assetName");
            Intrinsics.checkNotNullParameter(assetLogo, "assetLogo");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(clientTradeNo, "clientTradeNo");
            return new Pay(orderId, transactionId, payerUserId, initiatorUserId, d, asset, assetName, assetLogo, direction, type, status, createdAt, clientTradeNo);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Pay) {
                Pay pay = (Pay) obj;
                return Intrinsics.areEqual(getOrderId(), pay.getOrderId()) && Intrinsics.areEqual(getTransactionId(), pay.getTransactionId()) && Intrinsics.areEqual(getPayerUserId(), pay.getPayerUserId()) && Intrinsics.areEqual(getInitiatorUserId(), pay.getInitiatorUserId()) && Double.compare(getAmount(), pay.getAmount()) == 0 && Intrinsics.areEqual(getAsset(), pay.getAsset()) && Intrinsics.areEqual(getAssetName(), pay.getAssetName()) && Intrinsics.areEqual(getAssetLogo(), pay.getAssetLogo()) && getDirection() == pay.getDirection() && getType() == pay.getType() && getStatus() == pay.getStatus() && Intrinsics.areEqual(getCreatedAt(), pay.getCreatedAt()) && Intrinsics.areEqual(this.clientTradeNo, pay.clientTradeNo);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((((((((getOrderId().hashCode() * 31) + getTransactionId().hashCode()) * 31) + getPayerUserId().hashCode()) * 31) + getInitiatorUserId().hashCode()) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m718m(getAmount())) * 31) + getAsset().hashCode()) * 31) + getAssetName().hashCode()) * 31) + getAssetLogo().hashCode()) * 31) + getDirection().hashCode()) * 31) + getType().hashCode()) * 31) + getStatus().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + this.clientTradeNo.hashCode();
        }

        public String toString() {
            return "Pay(orderId=" + getOrderId() + ", transactionId=" + getTransactionId() + ", payerUserId=" + getPayerUserId() + ", initiatorUserId=" + getInitiatorUserId() + ", amount=" + getAmount() + ", asset=" + getAsset() + ", assetName=" + getAssetName() + ", assetLogo=" + getAssetLogo() + ", direction=" + getDirection() + ", type=" + getType() + ", status=" + getStatus() + ", createdAt=" + getCreatedAt() + ", clientTradeNo=" + this.clientTradeNo + ')';
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public String getOrderId() {
            return this.orderId;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public String getTransactionId() {
            return this.transactionId;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public String getPayerUserId() {
            return this.payerUserId;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public String getInitiatorUserId() {
            return this.initiatorUserId;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public double getAmount() {
            return this.amount;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public String getAsset() {
            return this.asset;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public String getAssetName() {
            return this.assetName;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public String getAssetLogo() {
            return this.assetLogo;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public BinanceTransactionDirection getDirection() {
            return this.direction;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public BinanceTransactionType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public BinanceTransactionStatus getStatus() {
            return this.status;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public String getCreatedAt() {
            return this.createdAt;
        }

        public final String getClientTradeNo() {
            return this.clientTradeNo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Pay(String orderId, String transactionId, String payerUserId, String initiatorUserId, double d, String asset, String assetName, String assetLogo, BinanceTransactionDirection direction, BinanceTransactionType type, BinanceTransactionStatus status, String createdAt, String clientTradeNo) {
            super(orderId, transactionId, payerUserId, initiatorUserId, d, asset, assetName, assetLogo, direction, type, status, createdAt, null);
            Intrinsics.checkNotNullParameter(orderId, "orderId");
            Intrinsics.checkNotNullParameter(transactionId, "transactionId");
            Intrinsics.checkNotNullParameter(payerUserId, "payerUserId");
            Intrinsics.checkNotNullParameter(initiatorUserId, "initiatorUserId");
            Intrinsics.checkNotNullParameter(asset, "asset");
            Intrinsics.checkNotNullParameter(assetName, "assetName");
            Intrinsics.checkNotNullParameter(assetLogo, "assetLogo");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(clientTradeNo, "clientTradeNo");
            this.orderId = orderId;
            this.transactionId = transactionId;
            this.payerUserId = payerUserId;
            this.initiatorUserId = initiatorUserId;
            this.amount = d;
            this.asset = asset;
            this.assetName = assetName;
            this.assetLogo = assetLogo;
            this.direction = direction;
            this.type = type;
            this.status = status;
            this.createdAt = createdAt;
            this.clientTradeNo = clientTradeNo;
        }
    }

    /* compiled from: BinanceTransaction.kt */
    /* loaded from: classes4.dex */
    public static final class Convert extends BinanceTransaction {
        private final double amount;
        private final String asset;
        private final String assetLogo;
        private final String assetName;
        private final String createdAt;
        private final BinanceTransactionDirection direction;
        private final String initiatorUserId;
        private final double inputAmount;
        private final String inputAssetCode;
        private final String inputAssetShortName;
        private final String orderId;
        private final double outputAmount;
        private final String outputAssetCode;
        private final String outputAssetShortName;
        private final String payerUserId;
        private final BinanceTransactionStatus status;
        private final String transactionId;
        private final BinanceTransactionType type;

        public final String component1() {
            return getOrderId();
        }

        public final BinanceTransactionType component10() {
            return getType();
        }

        public final BinanceTransactionStatus component11() {
            return getStatus();
        }

        public final String component12() {
            return getCreatedAt();
        }

        public final double component13() {
            return this.inputAmount;
        }

        public final double component14() {
            return this.outputAmount;
        }

        public final String component15() {
            return this.inputAssetCode;
        }

        public final String component16() {
            return this.outputAssetCode;
        }

        public final String component17() {
            return this.inputAssetShortName;
        }

        public final String component18() {
            return this.outputAssetShortName;
        }

        public final String component2() {
            return getTransactionId();
        }

        public final String component3() {
            return getPayerUserId();
        }

        public final String component4() {
            return getInitiatorUserId();
        }

        public final double component5() {
            return getAmount();
        }

        public final String component6() {
            return getAsset();
        }

        public final String component7() {
            return getAssetName();
        }

        public final String component8() {
            return getAssetLogo();
        }

        public final BinanceTransactionDirection component9() {
            return getDirection();
        }

        public final Convert copy(String orderId, String transactionId, String payerUserId, String initiatorUserId, double d, String asset, String assetName, String assetLogo, BinanceTransactionDirection direction, BinanceTransactionType type, BinanceTransactionStatus status, String createdAt, double d2, double d3, String inputAssetCode, String outputAssetCode, String inputAssetShortName, String outputAssetShortName) {
            Intrinsics.checkNotNullParameter(orderId, "orderId");
            Intrinsics.checkNotNullParameter(transactionId, "transactionId");
            Intrinsics.checkNotNullParameter(payerUserId, "payerUserId");
            Intrinsics.checkNotNullParameter(initiatorUserId, "initiatorUserId");
            Intrinsics.checkNotNullParameter(asset, "asset");
            Intrinsics.checkNotNullParameter(assetName, "assetName");
            Intrinsics.checkNotNullParameter(assetLogo, "assetLogo");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(inputAssetCode, "inputAssetCode");
            Intrinsics.checkNotNullParameter(outputAssetCode, "outputAssetCode");
            Intrinsics.checkNotNullParameter(inputAssetShortName, "inputAssetShortName");
            Intrinsics.checkNotNullParameter(outputAssetShortName, "outputAssetShortName");
            return new Convert(orderId, transactionId, payerUserId, initiatorUserId, d, asset, assetName, assetLogo, direction, type, status, createdAt, d2, d3, inputAssetCode, outputAssetCode, inputAssetShortName, outputAssetShortName);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Convert) {
                Convert convert = (Convert) obj;
                return Intrinsics.areEqual(getOrderId(), convert.getOrderId()) && Intrinsics.areEqual(getTransactionId(), convert.getTransactionId()) && Intrinsics.areEqual(getPayerUserId(), convert.getPayerUserId()) && Intrinsics.areEqual(getInitiatorUserId(), convert.getInitiatorUserId()) && Double.compare(getAmount(), convert.getAmount()) == 0 && Intrinsics.areEqual(getAsset(), convert.getAsset()) && Intrinsics.areEqual(getAssetName(), convert.getAssetName()) && Intrinsics.areEqual(getAssetLogo(), convert.getAssetLogo()) && getDirection() == convert.getDirection() && getType() == convert.getType() && getStatus() == convert.getStatus() && Intrinsics.areEqual(getCreatedAt(), convert.getCreatedAt()) && Double.compare(this.inputAmount, convert.inputAmount) == 0 && Double.compare(this.outputAmount, convert.outputAmount) == 0 && Intrinsics.areEqual(this.inputAssetCode, convert.inputAssetCode) && Intrinsics.areEqual(this.outputAssetCode, convert.outputAssetCode) && Intrinsics.areEqual(this.inputAssetShortName, convert.inputAssetShortName) && Intrinsics.areEqual(this.outputAssetShortName, convert.outputAssetShortName);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((((((((((((((((((getOrderId().hashCode() * 31) + getTransactionId().hashCode()) * 31) + getPayerUserId().hashCode()) * 31) + getInitiatorUserId().hashCode()) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m718m(getAmount())) * 31) + getAsset().hashCode()) * 31) + getAssetName().hashCode()) * 31) + getAssetLogo().hashCode()) * 31) + getDirection().hashCode()) * 31) + getType().hashCode()) * 31) + getStatus().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m718m(this.inputAmount)) * 31) + StakingDetailedMetadataResponse$$ExternalSyntheticBackport0.m718m(this.outputAmount)) * 31) + this.inputAssetCode.hashCode()) * 31) + this.outputAssetCode.hashCode()) * 31) + this.inputAssetShortName.hashCode()) * 31) + this.outputAssetShortName.hashCode();
        }

        public String toString() {
            return "Convert(orderId=" + getOrderId() + ", transactionId=" + getTransactionId() + ", payerUserId=" + getPayerUserId() + ", initiatorUserId=" + getInitiatorUserId() + ", amount=" + getAmount() + ", asset=" + getAsset() + ", assetName=" + getAssetName() + ", assetLogo=" + getAssetLogo() + ", direction=" + getDirection() + ", type=" + getType() + ", status=" + getStatus() + ", createdAt=" + getCreatedAt() + ", inputAmount=" + this.inputAmount + ", outputAmount=" + this.outputAmount + ", inputAssetCode=" + this.inputAssetCode + ", outputAssetCode=" + this.outputAssetCode + ", inputAssetShortName=" + this.inputAssetShortName + ", outputAssetShortName=" + this.outputAssetShortName + ')';
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public String getOrderId() {
            return this.orderId;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public String getTransactionId() {
            return this.transactionId;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public String getPayerUserId() {
            return this.payerUserId;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public String getInitiatorUserId() {
            return this.initiatorUserId;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public double getAmount() {
            return this.amount;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public String getAsset() {
            return this.asset;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public String getAssetName() {
            return this.assetName;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public String getAssetLogo() {
            return this.assetLogo;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public BinanceTransactionDirection getDirection() {
            return this.direction;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public BinanceTransactionType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public BinanceTransactionStatus getStatus() {
            return this.status;
        }

        @Override // com.iMe.storage.domain.model.binancepay.BinanceTransaction
        public String getCreatedAt() {
            return this.createdAt;
        }

        public final double getInputAmount() {
            return this.inputAmount;
        }

        public final double getOutputAmount() {
            return this.outputAmount;
        }

        public final String getInputAssetCode() {
            return this.inputAssetCode;
        }

        public final String getOutputAssetCode() {
            return this.outputAssetCode;
        }

        public final String getInputAssetShortName() {
            return this.inputAssetShortName;
        }

        public final String getOutputAssetShortName() {
            return this.outputAssetShortName;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Convert(String orderId, String transactionId, String payerUserId, String initiatorUserId, double d, String asset, String assetName, String assetLogo, BinanceTransactionDirection direction, BinanceTransactionType type, BinanceTransactionStatus status, String createdAt, double d2, double d3, String inputAssetCode, String outputAssetCode, String inputAssetShortName, String outputAssetShortName) {
            super(orderId, transactionId, payerUserId, initiatorUserId, d, asset, assetName, assetLogo, direction, type, status, createdAt, null);
            Intrinsics.checkNotNullParameter(orderId, "orderId");
            Intrinsics.checkNotNullParameter(transactionId, "transactionId");
            Intrinsics.checkNotNullParameter(payerUserId, "payerUserId");
            Intrinsics.checkNotNullParameter(initiatorUserId, "initiatorUserId");
            Intrinsics.checkNotNullParameter(asset, "asset");
            Intrinsics.checkNotNullParameter(assetName, "assetName");
            Intrinsics.checkNotNullParameter(assetLogo, "assetLogo");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(inputAssetCode, "inputAssetCode");
            Intrinsics.checkNotNullParameter(outputAssetCode, "outputAssetCode");
            Intrinsics.checkNotNullParameter(inputAssetShortName, "inputAssetShortName");
            Intrinsics.checkNotNullParameter(outputAssetShortName, "outputAssetShortName");
            this.orderId = orderId;
            this.transactionId = transactionId;
            this.payerUserId = payerUserId;
            this.initiatorUserId = initiatorUserId;
            this.amount = d;
            this.asset = asset;
            this.assetName = assetName;
            this.assetLogo = assetLogo;
            this.direction = direction;
            this.type = type;
            this.status = status;
            this.createdAt = createdAt;
            this.inputAmount = d2;
            this.outputAmount = d3;
            this.inputAssetCode = inputAssetCode;
            this.outputAssetCode = outputAssetCode;
            this.inputAssetShortName = inputAssetShortName;
            this.outputAssetShortName = outputAssetShortName;
        }
    }
}
