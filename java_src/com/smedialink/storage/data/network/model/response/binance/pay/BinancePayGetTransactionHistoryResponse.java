package com.smedialink.storage.data.network.model.response.binance.pay;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinancePayGetTransactionHistoryResponse.kt */
/* loaded from: classes3.dex */
public final class BinancePayGetTransactionHistoryResponse {
    private final List<HistoryItem> transactionsData;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BinancePayGetTransactionHistoryResponse copy$default(BinancePayGetTransactionHistoryResponse binancePayGetTransactionHistoryResponse, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = binancePayGetTransactionHistoryResponse.transactionsData;
        }
        return binancePayGetTransactionHistoryResponse.copy(list);
    }

    public final List<HistoryItem> component1() {
        return this.transactionsData;
    }

    public final BinancePayGetTransactionHistoryResponse copy(List<HistoryItem> transactionsData) {
        Intrinsics.checkNotNullParameter(transactionsData, "transactionsData");
        return new BinancePayGetTransactionHistoryResponse(transactionsData);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BinancePayGetTransactionHistoryResponse) && Intrinsics.areEqual(this.transactionsData, ((BinancePayGetTransactionHistoryResponse) obj).transactionsData);
    }

    public int hashCode() {
        return this.transactionsData.hashCode();
    }

    public String toString() {
        return "BinancePayGetTransactionHistoryResponse(transactionsData=" + this.transactionsData + ')';
    }

    public BinancePayGetTransactionHistoryResponse(List<HistoryItem> transactionsData) {
        Intrinsics.checkNotNullParameter(transactionsData, "transactionsData");
        this.transactionsData = transactionsData;
    }

    public final List<HistoryItem> getTransactionsData() {
        return this.transactionsData;
    }

    /* compiled from: BinancePayGetTransactionHistoryResponse.kt */
    /* loaded from: classes3.dex */
    public static final class HistoryItem {
        private final String amount;
        private final String assetCode;
        private final String assetName;
        private final String clientTradeNo;
        private final String createdAt;
        private final String direction;
        private final String initiatorUserId;
        private final String inputAmount;
        private final String inputAssetCode;
        private final String inputAssetShortName;
        private final String logoUrl;
        private final String orderId;
        private final String outputAmount;
        private final String outputAssetCode;
        private final String outputAssetShortName;
        private final String payerUserId;
        private final String status;
        private final String transactionId;
        private final String type;
        private final String updatedAt;

        public final String component1() {
            return this.orderId;
        }

        public final String component10() {
            return this.type;
        }

        public final String component11() {
            return this.direction;
        }

        public final String component12() {
            return this.status;
        }

        public final String component13() {
            return this.updatedAt;
        }

        public final String component14() {
            return this.createdAt;
        }

        public final String component15() {
            return this.inputAmount;
        }

        public final String component16() {
            return this.outputAmount;
        }

        public final String component17() {
            return this.inputAssetCode;
        }

        public final String component18() {
            return this.outputAssetCode;
        }

        public final String component19() {
            return this.inputAssetShortName;
        }

        public final String component2() {
            return this.transactionId;
        }

        public final String component20() {
            return this.outputAssetShortName;
        }

        public final String component3() {
            return this.clientTradeNo;
        }

        public final String component4() {
            return this.payerUserId;
        }

        public final String component5() {
            return this.initiatorUserId;
        }

        public final String component6() {
            return this.amount;
        }

        public final String component7() {
            return this.assetCode;
        }

        public final String component8() {
            return this.assetName;
        }

        public final String component9() {
            return this.logoUrl;
        }

        public final HistoryItem copy(String orderId, String transactionId, String clientTradeNo, String payerUserId, String initiatorUserId, String amount, String assetCode, String assetName, String logoUrl, String type, String direction, String status, String updatedAt, String createdAt, String str, String str2, String str3, String str4, String str5, String str6) {
            Intrinsics.checkNotNullParameter(orderId, "orderId");
            Intrinsics.checkNotNullParameter(transactionId, "transactionId");
            Intrinsics.checkNotNullParameter(clientTradeNo, "clientTradeNo");
            Intrinsics.checkNotNullParameter(payerUserId, "payerUserId");
            Intrinsics.checkNotNullParameter(initiatorUserId, "initiatorUserId");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(assetCode, "assetCode");
            Intrinsics.checkNotNullParameter(assetName, "assetName");
            Intrinsics.checkNotNullParameter(logoUrl, "logoUrl");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(updatedAt, "updatedAt");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            return new HistoryItem(orderId, transactionId, clientTradeNo, payerUserId, initiatorUserId, amount, assetCode, assetName, logoUrl, type, direction, status, updatedAt, createdAt, str, str2, str3, str4, str5, str6);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof HistoryItem) {
                HistoryItem historyItem = (HistoryItem) obj;
                return Intrinsics.areEqual(this.orderId, historyItem.orderId) && Intrinsics.areEqual(this.transactionId, historyItem.transactionId) && Intrinsics.areEqual(this.clientTradeNo, historyItem.clientTradeNo) && Intrinsics.areEqual(this.payerUserId, historyItem.payerUserId) && Intrinsics.areEqual(this.initiatorUserId, historyItem.initiatorUserId) && Intrinsics.areEqual(this.amount, historyItem.amount) && Intrinsics.areEqual(this.assetCode, historyItem.assetCode) && Intrinsics.areEqual(this.assetName, historyItem.assetName) && Intrinsics.areEqual(this.logoUrl, historyItem.logoUrl) && Intrinsics.areEqual(this.type, historyItem.type) && Intrinsics.areEqual(this.direction, historyItem.direction) && Intrinsics.areEqual(this.status, historyItem.status) && Intrinsics.areEqual(this.updatedAt, historyItem.updatedAt) && Intrinsics.areEqual(this.createdAt, historyItem.createdAt) && Intrinsics.areEqual(this.inputAmount, historyItem.inputAmount) && Intrinsics.areEqual(this.outputAmount, historyItem.outputAmount) && Intrinsics.areEqual(this.inputAssetCode, historyItem.inputAssetCode) && Intrinsics.areEqual(this.outputAssetCode, historyItem.outputAssetCode) && Intrinsics.areEqual(this.inputAssetShortName, historyItem.inputAssetShortName) && Intrinsics.areEqual(this.outputAssetShortName, historyItem.outputAssetShortName);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = ((((((((((((((((((((((((((this.orderId.hashCode() * 31) + this.transactionId.hashCode()) * 31) + this.clientTradeNo.hashCode()) * 31) + this.payerUserId.hashCode()) * 31) + this.initiatorUserId.hashCode()) * 31) + this.amount.hashCode()) * 31) + this.assetCode.hashCode()) * 31) + this.assetName.hashCode()) * 31) + this.logoUrl.hashCode()) * 31) + this.type.hashCode()) * 31) + this.direction.hashCode()) * 31) + this.status.hashCode()) * 31) + this.updatedAt.hashCode()) * 31) + this.createdAt.hashCode()) * 31;
            String str = this.inputAmount;
            int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.outputAmount;
            int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.inputAssetCode;
            int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.outputAssetCode;
            int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.inputAssetShortName;
            int hashCode6 = (hashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.outputAssetShortName;
            return hashCode6 + (str6 != null ? str6.hashCode() : 0);
        }

        public String toString() {
            return "HistoryItem(orderId=" + this.orderId + ", transactionId=" + this.transactionId + ", clientTradeNo=" + this.clientTradeNo + ", payerUserId=" + this.payerUserId + ", initiatorUserId=" + this.initiatorUserId + ", amount=" + this.amount + ", assetCode=" + this.assetCode + ", assetName=" + this.assetName + ", logoUrl=" + this.logoUrl + ", type=" + this.type + ", direction=" + this.direction + ", status=" + this.status + ", updatedAt=" + this.updatedAt + ", createdAt=" + this.createdAt + ", inputAmount=" + ((Object) this.inputAmount) + ", outputAmount=" + ((Object) this.outputAmount) + ", inputAssetCode=" + ((Object) this.inputAssetCode) + ", outputAssetCode=" + ((Object) this.outputAssetCode) + ", inputAssetShortName=" + ((Object) this.inputAssetShortName) + ", outputAssetShortName=" + ((Object) this.outputAssetShortName) + ')';
        }

        public HistoryItem(String orderId, String transactionId, String clientTradeNo, String payerUserId, String initiatorUserId, String amount, String assetCode, String assetName, String logoUrl, String type, String direction, String status, String updatedAt, String createdAt, String str, String str2, String str3, String str4, String str5, String str6) {
            Intrinsics.checkNotNullParameter(orderId, "orderId");
            Intrinsics.checkNotNullParameter(transactionId, "transactionId");
            Intrinsics.checkNotNullParameter(clientTradeNo, "clientTradeNo");
            Intrinsics.checkNotNullParameter(payerUserId, "payerUserId");
            Intrinsics.checkNotNullParameter(initiatorUserId, "initiatorUserId");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(assetCode, "assetCode");
            Intrinsics.checkNotNullParameter(assetName, "assetName");
            Intrinsics.checkNotNullParameter(logoUrl, "logoUrl");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(updatedAt, "updatedAt");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            this.orderId = orderId;
            this.transactionId = transactionId;
            this.clientTradeNo = clientTradeNo;
            this.payerUserId = payerUserId;
            this.initiatorUserId = initiatorUserId;
            this.amount = amount;
            this.assetCode = assetCode;
            this.assetName = assetName;
            this.logoUrl = logoUrl;
            this.type = type;
            this.direction = direction;
            this.status = status;
            this.updatedAt = updatedAt;
            this.createdAt = createdAt;
            this.inputAmount = str;
            this.outputAmount = str2;
            this.inputAssetCode = str3;
            this.outputAssetCode = str4;
            this.inputAssetShortName = str5;
            this.outputAssetShortName = str6;
        }

        public final String getOrderId() {
            return this.orderId;
        }

        public final String getTransactionId() {
            return this.transactionId;
        }

        public final String getClientTradeNo() {
            return this.clientTradeNo;
        }

        public final String getPayerUserId() {
            return this.payerUserId;
        }

        public final String getInitiatorUserId() {
            return this.initiatorUserId;
        }

        public final String getAmount() {
            return this.amount;
        }

        public final String getAssetCode() {
            return this.assetCode;
        }

        public final String getAssetName() {
            return this.assetName;
        }

        public final String getLogoUrl() {
            return this.logoUrl;
        }

        public final String getType() {
            return this.type;
        }

        public final String getDirection() {
            return this.direction;
        }

        public final String getStatus() {
            return this.status;
        }

        public final String getUpdatedAt() {
            return this.updatedAt;
        }

        public final String getCreatedAt() {
            return this.createdAt;
        }

        public final String getInputAmount() {
            return this.inputAmount;
        }

        public final String getOutputAmount() {
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
    }
}
