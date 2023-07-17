package com.iMe.storage.data.network.model.response.wallet;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletTransactionResponse.kt */
/* loaded from: classes3.dex */
public final class WalletTransactionsResponse {
    private final List<WalletTransactionResponse> transactionsData;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ WalletTransactionsResponse copy$default(WalletTransactionsResponse walletTransactionsResponse, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = walletTransactionsResponse.transactionsData;
        }
        return walletTransactionsResponse.copy(list);
    }

    public final List<WalletTransactionResponse> component1() {
        return this.transactionsData;
    }

    public final WalletTransactionsResponse copy(List<WalletTransactionResponse> transactionsData) {
        Intrinsics.checkNotNullParameter(transactionsData, "transactionsData");
        return new WalletTransactionsResponse(transactionsData);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof WalletTransactionsResponse) && Intrinsics.areEqual(this.transactionsData, ((WalletTransactionsResponse) obj).transactionsData);
    }

    public int hashCode() {
        return this.transactionsData.hashCode();
    }

    public String toString() {
        return "WalletTransactionsResponse(transactionsData=" + this.transactionsData + ')';
    }

    public WalletTransactionsResponse(List<WalletTransactionResponse> transactionsData) {
        Intrinsics.checkNotNullParameter(transactionsData, "transactionsData");
        this.transactionsData = transactionsData;
    }

    public final List<WalletTransactionResponse> getTransactionsData() {
        return this.transactionsData;
    }

    /* compiled from: WalletTransactionResponse.kt */
    /* loaded from: classes3.dex */
    public static final class WalletTransactionResponse {
        private final String amount;
        private final String amountToSpent;
        private final String createdAt;
        private final String direction;
        private final String feeAmount;
        private final TokenDetailedResponse feeToken;

        /* renamed from: id */
        private final String f392id;
        private final String inputAmount;
        private final TokenDetailedResponse inputToken;
        private final Boolean isDonation;
        private final String logicalTime;
        private final String networkType;
        private final String outputAmount;
        private final TokenDetailedResponse outputToken;
        private final String payloadMessage;
        private final String processing;
        private final String receiverAccountId;
        private final String senderAccountId;
        private final String simplexOrderId;
        private final String spentCurrency;
        private final String status;
        private final TokenDetailedResponse token;
        private final String tradeType;
        private final String txFromCryptoAddress;
        private final String txHash;
        private final String txToCryptoAddress;
        private final String type;
        private final String updatedAt;
        private final String userAccountId;

        public final String component1() {
            return this.f392id;
        }

        public final TokenDetailedResponse component10() {
            return this.feeToken;
        }

        public final String component11() {
            return this.processing;
        }

        public final String component12() {
            return this.userAccountId;
        }

        public final Boolean component13() {
            return this.isDonation;
        }

        public final String component14() {
            return this.senderAccountId;
        }

        public final String component15() {
            return this.receiverAccountId;
        }

        public final String component16() {
            return this.txFromCryptoAddress;
        }

        public final String component17() {
            return this.txHash;
        }

        public final String component18() {
            return this.networkType;
        }

        public final String component19() {
            return this.txToCryptoAddress;
        }

        public final String component2() {
            return this.amount;
        }

        public final String component20() {
            return this.simplexOrderId;
        }

        public final String component21() {
            return this.spentCurrency;
        }

        public final String component22() {
            return this.amountToSpent;
        }

        public final String component23() {
            return this.tradeType;
        }

        public final TokenDetailedResponse component24() {
            return this.inputToken;
        }

        public final TokenDetailedResponse component25() {
            return this.outputToken;
        }

        public final String component26() {
            return this.outputAmount;
        }

        public final String component27() {
            return this.inputAmount;
        }

        public final String component28() {
            return this.logicalTime;
        }

        public final String component29() {
            return this.payloadMessage;
        }

        public final String component3() {
            return this.type;
        }

        public final String component4() {
            return this.direction;
        }

        public final String component5() {
            return this.updatedAt;
        }

        public final String component6() {
            return this.createdAt;
        }

        public final TokenDetailedResponse component7() {
            return this.token;
        }

        public final String component8() {
            return this.status;
        }

        public final String component9() {
            return this.feeAmount;
        }

        public final WalletTransactionResponse copy(String id, String amount, String type, String direction, String updatedAt, String createdAt, TokenDetailedResponse token, String status, String feeAmount, TokenDetailedResponse feeToken, String processing, String str, Boolean bool, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, TokenDetailedResponse tokenDetailedResponse, TokenDetailedResponse tokenDetailedResponse2, String str12, String str13, String str14, String str15) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(updatedAt, "updatedAt");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            Intrinsics.checkNotNullParameter(processing, "processing");
            return new WalletTransactionResponse(id, amount, type, direction, updatedAt, createdAt, token, status, feeAmount, feeToken, processing, str, bool, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, tokenDetailedResponse, tokenDetailedResponse2, str12, str13, str14, str15);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof WalletTransactionResponse) {
                WalletTransactionResponse walletTransactionResponse = (WalletTransactionResponse) obj;
                return Intrinsics.areEqual(this.f392id, walletTransactionResponse.f392id) && Intrinsics.areEqual(this.amount, walletTransactionResponse.amount) && Intrinsics.areEqual(this.type, walletTransactionResponse.type) && Intrinsics.areEqual(this.direction, walletTransactionResponse.direction) && Intrinsics.areEqual(this.updatedAt, walletTransactionResponse.updatedAt) && Intrinsics.areEqual(this.createdAt, walletTransactionResponse.createdAt) && Intrinsics.areEqual(this.token, walletTransactionResponse.token) && Intrinsics.areEqual(this.status, walletTransactionResponse.status) && Intrinsics.areEqual(this.feeAmount, walletTransactionResponse.feeAmount) && Intrinsics.areEqual(this.feeToken, walletTransactionResponse.feeToken) && Intrinsics.areEqual(this.processing, walletTransactionResponse.processing) && Intrinsics.areEqual(this.userAccountId, walletTransactionResponse.userAccountId) && Intrinsics.areEqual(this.isDonation, walletTransactionResponse.isDonation) && Intrinsics.areEqual(this.senderAccountId, walletTransactionResponse.senderAccountId) && Intrinsics.areEqual(this.receiverAccountId, walletTransactionResponse.receiverAccountId) && Intrinsics.areEqual(this.txFromCryptoAddress, walletTransactionResponse.txFromCryptoAddress) && Intrinsics.areEqual(this.txHash, walletTransactionResponse.txHash) && Intrinsics.areEqual(this.networkType, walletTransactionResponse.networkType) && Intrinsics.areEqual(this.txToCryptoAddress, walletTransactionResponse.txToCryptoAddress) && Intrinsics.areEqual(this.simplexOrderId, walletTransactionResponse.simplexOrderId) && Intrinsics.areEqual(this.spentCurrency, walletTransactionResponse.spentCurrency) && Intrinsics.areEqual(this.amountToSpent, walletTransactionResponse.amountToSpent) && Intrinsics.areEqual(this.tradeType, walletTransactionResponse.tradeType) && Intrinsics.areEqual(this.inputToken, walletTransactionResponse.inputToken) && Intrinsics.areEqual(this.outputToken, walletTransactionResponse.outputToken) && Intrinsics.areEqual(this.outputAmount, walletTransactionResponse.outputAmount) && Intrinsics.areEqual(this.inputAmount, walletTransactionResponse.inputAmount) && Intrinsics.areEqual(this.logicalTime, walletTransactionResponse.logicalTime) && Intrinsics.areEqual(this.payloadMessage, walletTransactionResponse.payloadMessage);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = ((((((((((((((((((((this.f392id.hashCode() * 31) + this.amount.hashCode()) * 31) + this.type.hashCode()) * 31) + this.direction.hashCode()) * 31) + this.updatedAt.hashCode()) * 31) + this.createdAt.hashCode()) * 31) + this.token.hashCode()) * 31) + this.status.hashCode()) * 31) + this.feeAmount.hashCode()) * 31) + this.feeToken.hashCode()) * 31) + this.processing.hashCode()) * 31;
            String str = this.userAccountId;
            int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
            Boolean bool = this.isDonation;
            int hashCode3 = (hashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
            String str2 = this.senderAccountId;
            int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.receiverAccountId;
            int hashCode5 = (hashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.txFromCryptoAddress;
            int hashCode6 = (hashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.txHash;
            int hashCode7 = (hashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.networkType;
            int hashCode8 = (hashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
            String str7 = this.txToCryptoAddress;
            int hashCode9 = (hashCode8 + (str7 == null ? 0 : str7.hashCode())) * 31;
            String str8 = this.simplexOrderId;
            int hashCode10 = (hashCode9 + (str8 == null ? 0 : str8.hashCode())) * 31;
            String str9 = this.spentCurrency;
            int hashCode11 = (hashCode10 + (str9 == null ? 0 : str9.hashCode())) * 31;
            String str10 = this.amountToSpent;
            int hashCode12 = (hashCode11 + (str10 == null ? 0 : str10.hashCode())) * 31;
            String str11 = this.tradeType;
            int hashCode13 = (hashCode12 + (str11 == null ? 0 : str11.hashCode())) * 31;
            TokenDetailedResponse tokenDetailedResponse = this.inputToken;
            int hashCode14 = (hashCode13 + (tokenDetailedResponse == null ? 0 : tokenDetailedResponse.hashCode())) * 31;
            TokenDetailedResponse tokenDetailedResponse2 = this.outputToken;
            int hashCode15 = (hashCode14 + (tokenDetailedResponse2 == null ? 0 : tokenDetailedResponse2.hashCode())) * 31;
            String str12 = this.outputAmount;
            int hashCode16 = (hashCode15 + (str12 == null ? 0 : str12.hashCode())) * 31;
            String str13 = this.inputAmount;
            int hashCode17 = (hashCode16 + (str13 == null ? 0 : str13.hashCode())) * 31;
            String str14 = this.logicalTime;
            int hashCode18 = (hashCode17 + (str14 == null ? 0 : str14.hashCode())) * 31;
            String str15 = this.payloadMessage;
            return hashCode18 + (str15 != null ? str15.hashCode() : 0);
        }

        public String toString() {
            return "WalletTransactionResponse(id=" + this.f392id + ", amount=" + this.amount + ", type=" + this.type + ", direction=" + this.direction + ", updatedAt=" + this.updatedAt + ", createdAt=" + this.createdAt + ", token=" + this.token + ", status=" + this.status + ", feeAmount=" + this.feeAmount + ", feeToken=" + this.feeToken + ", processing=" + this.processing + ", userAccountId=" + this.userAccountId + ", isDonation=" + this.isDonation + ", senderAccountId=" + this.senderAccountId + ", receiverAccountId=" + this.receiverAccountId + ", txFromCryptoAddress=" + this.txFromCryptoAddress + ", txHash=" + this.txHash + ", networkType=" + this.networkType + ", txToCryptoAddress=" + this.txToCryptoAddress + ", simplexOrderId=" + this.simplexOrderId + ", spentCurrency=" + this.spentCurrency + ", amountToSpent=" + this.amountToSpent + ", tradeType=" + this.tradeType + ", inputToken=" + this.inputToken + ", outputToken=" + this.outputToken + ", outputAmount=" + this.outputAmount + ", inputAmount=" + this.inputAmount + ", logicalTime=" + this.logicalTime + ", payloadMessage=" + this.payloadMessage + ')';
        }

        public WalletTransactionResponse(String id, String amount, String type, String direction, String updatedAt, String createdAt, TokenDetailedResponse token, String status, String feeAmount, TokenDetailedResponse feeToken, String processing, String str, Boolean bool, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, TokenDetailedResponse tokenDetailedResponse, TokenDetailedResponse tokenDetailedResponse2, String str12, String str13, String str14, String str15) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(updatedAt, "updatedAt");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            Intrinsics.checkNotNullParameter(processing, "processing");
            this.f392id = id;
            this.amount = amount;
            this.type = type;
            this.direction = direction;
            this.updatedAt = updatedAt;
            this.createdAt = createdAt;
            this.token = token;
            this.status = status;
            this.feeAmount = feeAmount;
            this.feeToken = feeToken;
            this.processing = processing;
            this.userAccountId = str;
            this.isDonation = bool;
            this.senderAccountId = str2;
            this.receiverAccountId = str3;
            this.txFromCryptoAddress = str4;
            this.txHash = str5;
            this.networkType = str6;
            this.txToCryptoAddress = str7;
            this.simplexOrderId = str8;
            this.spentCurrency = str9;
            this.amountToSpent = str10;
            this.tradeType = str11;
            this.inputToken = tokenDetailedResponse;
            this.outputToken = tokenDetailedResponse2;
            this.outputAmount = str12;
            this.inputAmount = str13;
            this.logicalTime = str14;
            this.payloadMessage = str15;
        }

        public final String getId() {
            return this.f392id;
        }

        public final String getAmount() {
            return this.amount;
        }

        public final String getType() {
            return this.type;
        }

        public final String getDirection() {
            return this.direction;
        }

        public final String getUpdatedAt() {
            return this.updatedAt;
        }

        public final String getCreatedAt() {
            return this.createdAt;
        }

        public final TokenDetailedResponse getToken() {
            return this.token;
        }

        public final String getStatus() {
            return this.status;
        }

        public final String getFeeAmount() {
            return this.feeAmount;
        }

        public final TokenDetailedResponse getFeeToken() {
            return this.feeToken;
        }

        public final String getProcessing() {
            return this.processing;
        }

        public final String getUserAccountId() {
            return this.userAccountId;
        }

        public final Boolean isDonation() {
            return this.isDonation;
        }

        public final String getSenderAccountId() {
            return this.senderAccountId;
        }

        public final String getReceiverAccountId() {
            return this.receiverAccountId;
        }

        public final String getTxFromCryptoAddress() {
            return this.txFromCryptoAddress;
        }

        public final String getTxHash() {
            return this.txHash;
        }

        public final String getNetworkType() {
            return this.networkType;
        }

        public final String getTxToCryptoAddress() {
            return this.txToCryptoAddress;
        }

        public final String getSimplexOrderId() {
            return this.simplexOrderId;
        }

        public final String getSpentCurrency() {
            return this.spentCurrency;
        }

        public final String getAmountToSpent() {
            return this.amountToSpent;
        }

        public final String getTradeType() {
            return this.tradeType;
        }

        public final TokenDetailedResponse getInputToken() {
            return this.inputToken;
        }

        public final TokenDetailedResponse getOutputToken() {
            return this.outputToken;
        }

        public final String getOutputAmount() {
            return this.outputAmount;
        }

        public final String getInputAmount() {
            return this.inputAmount;
        }

        public final String getLogicalTime() {
            return this.logicalTime;
        }

        public final String getPayloadMessage() {
            return this.payloadMessage;
        }
    }
}
