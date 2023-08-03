package com.iMe.storage.data.network.model.response.notification;

import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NotificationResponse.kt */
/* loaded from: classes3.dex */
public final class NotificationResponse {
    private final BigDecimal amount;
    private final String amountToSpent;
    private final String assetCode;
    private final String assetName;
    private final String cryptoCode;
    private final String date;
    private final String debtAsToken;
    private final String debtAsUsd;
    private final String fromWalletAddress;

    /* renamed from: id */
    private final String f393id;
    private final String linkedObjectId;
    private final String linkedUserId;
    private final String networkType;
    private final String payerUserId;
    private final String profitAsToken;
    private final String profitAsUsd;
    private final boolean read;
    private final String shouldFinishAt;
    private final String spentCurrency;
    private final String stakingAPR;
    private final String stakingAPY;
    private final String stakingAuthor;
    private final String stakingEndsAt;
    private final String stakingId;
    private final String stakingName;
    private final String stakingToken;
    private final String stakingWebsite;
    private final String status;
    private final String toWalletAddress;
    private final String txHash;
    private final String type;
    private final String userId;

    public final String component1() {
        return this.f393id;
    }

    public final String component10() {
        return this.cryptoCode;
    }

    public final String component11() {
        return this.fromWalletAddress;
    }

    public final String component12() {
        return this.toWalletAddress;
    }

    public final String component13() {
        return this.txHash;
    }

    public final String component14() {
        return this.networkType;
    }

    public final String component15() {
        return this.spentCurrency;
    }

    public final String component16() {
        return this.amountToSpent;
    }

    public final String component17() {
        return this.assetCode;
    }

    public final String component18() {
        return this.assetName;
    }

    public final String component19() {
        return this.payerUserId;
    }

    public final String component2() {
        return this.userId;
    }

    public final String component20() {
        return this.stakingId;
    }

    public final String component21() {
        return this.stakingName;
    }

    public final String component22() {
        return this.stakingAuthor;
    }

    public final String component23() {
        return this.stakingWebsite;
    }

    public final String component24() {
        return this.stakingAPY;
    }

    public final String component25() {
        return this.stakingAPR;
    }

    public final String component26() {
        return this.stakingEndsAt;
    }

    public final String component27() {
        return this.stakingToken;
    }

    public final String component28() {
        return this.shouldFinishAt;
    }

    public final String component29() {
        return this.debtAsToken;
    }

    public final BigDecimal component3() {
        return this.amount;
    }

    public final String component30() {
        return this.debtAsUsd;
    }

    public final String component31() {
        return this.profitAsToken;
    }

    public final String component32() {
        return this.profitAsUsd;
    }

    public final boolean component4() {
        return this.read;
    }

    public final String component5() {
        return this.linkedUserId;
    }

    public final String component6() {
        return this.linkedObjectId;
    }

    public final String component7() {
        return this.type;
    }

    public final String component8() {
        return this.date;
    }

    public final String component9() {
        return this.status;
    }

    public final NotificationResponse copy(String id, String userId, BigDecimal amount, boolean z, String str, String str2, String type, String date, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String stakingId, String stakingName, String stakingAuthor, String stakingWebsite, String stakingAPY, String stakingAPR, String stakingEndsAt, String stakingToken, String str14, String debtAsToken, String debtAsUsd, String profitAsToken, String profitAsUsd) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(stakingId, "stakingId");
        Intrinsics.checkNotNullParameter(stakingName, "stakingName");
        Intrinsics.checkNotNullParameter(stakingAuthor, "stakingAuthor");
        Intrinsics.checkNotNullParameter(stakingWebsite, "stakingWebsite");
        Intrinsics.checkNotNullParameter(stakingAPY, "stakingAPY");
        Intrinsics.checkNotNullParameter(stakingAPR, "stakingAPR");
        Intrinsics.checkNotNullParameter(stakingEndsAt, "stakingEndsAt");
        Intrinsics.checkNotNullParameter(stakingToken, "stakingToken");
        Intrinsics.checkNotNullParameter(debtAsToken, "debtAsToken");
        Intrinsics.checkNotNullParameter(debtAsUsd, "debtAsUsd");
        Intrinsics.checkNotNullParameter(profitAsToken, "profitAsToken");
        Intrinsics.checkNotNullParameter(profitAsUsd, "profitAsUsd");
        return new NotificationResponse(id, userId, amount, z, str, str2, type, date, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, stakingId, stakingName, stakingAuthor, stakingWebsite, stakingAPY, stakingAPR, stakingEndsAt, stakingToken, str14, debtAsToken, debtAsUsd, profitAsToken, profitAsUsd);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NotificationResponse) {
            NotificationResponse notificationResponse = (NotificationResponse) obj;
            return Intrinsics.areEqual(this.f393id, notificationResponse.f393id) && Intrinsics.areEqual(this.userId, notificationResponse.userId) && Intrinsics.areEqual(this.amount, notificationResponse.amount) && this.read == notificationResponse.read && Intrinsics.areEqual(this.linkedUserId, notificationResponse.linkedUserId) && Intrinsics.areEqual(this.linkedObjectId, notificationResponse.linkedObjectId) && Intrinsics.areEqual(this.type, notificationResponse.type) && Intrinsics.areEqual(this.date, notificationResponse.date) && Intrinsics.areEqual(this.status, notificationResponse.status) && Intrinsics.areEqual(this.cryptoCode, notificationResponse.cryptoCode) && Intrinsics.areEqual(this.fromWalletAddress, notificationResponse.fromWalletAddress) && Intrinsics.areEqual(this.toWalletAddress, notificationResponse.toWalletAddress) && Intrinsics.areEqual(this.txHash, notificationResponse.txHash) && Intrinsics.areEqual(this.networkType, notificationResponse.networkType) && Intrinsics.areEqual(this.spentCurrency, notificationResponse.spentCurrency) && Intrinsics.areEqual(this.amountToSpent, notificationResponse.amountToSpent) && Intrinsics.areEqual(this.assetCode, notificationResponse.assetCode) && Intrinsics.areEqual(this.assetName, notificationResponse.assetName) && Intrinsics.areEqual(this.payerUserId, notificationResponse.payerUserId) && Intrinsics.areEqual(this.stakingId, notificationResponse.stakingId) && Intrinsics.areEqual(this.stakingName, notificationResponse.stakingName) && Intrinsics.areEqual(this.stakingAuthor, notificationResponse.stakingAuthor) && Intrinsics.areEqual(this.stakingWebsite, notificationResponse.stakingWebsite) && Intrinsics.areEqual(this.stakingAPY, notificationResponse.stakingAPY) && Intrinsics.areEqual(this.stakingAPR, notificationResponse.stakingAPR) && Intrinsics.areEqual(this.stakingEndsAt, notificationResponse.stakingEndsAt) && Intrinsics.areEqual(this.stakingToken, notificationResponse.stakingToken) && Intrinsics.areEqual(this.shouldFinishAt, notificationResponse.shouldFinishAt) && Intrinsics.areEqual(this.debtAsToken, notificationResponse.debtAsToken) && Intrinsics.areEqual(this.debtAsUsd, notificationResponse.debtAsUsd) && Intrinsics.areEqual(this.profitAsToken, notificationResponse.profitAsToken) && Intrinsics.areEqual(this.profitAsUsd, notificationResponse.profitAsUsd);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((this.f393id.hashCode() * 31) + this.userId.hashCode()) * 31) + this.amount.hashCode()) * 31;
        boolean z = this.read;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        String str = this.linkedUserId;
        int hashCode2 = (i2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.linkedObjectId;
        int hashCode3 = (((((hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.type.hashCode()) * 31) + this.date.hashCode()) * 31;
        String str3 = this.status;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.cryptoCode;
        int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.fromWalletAddress;
        int hashCode6 = (hashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.toWalletAddress;
        int hashCode7 = (hashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.txHash;
        int hashCode8 = (hashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.networkType;
        int hashCode9 = (hashCode8 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.spentCurrency;
        int hashCode10 = (hashCode9 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.amountToSpent;
        int hashCode11 = (hashCode10 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.assetCode;
        int hashCode12 = (hashCode11 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.assetName;
        int hashCode13 = (hashCode12 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.payerUserId;
        int hashCode14 = (((((((((((((((((hashCode13 + (str13 == null ? 0 : str13.hashCode())) * 31) + this.stakingId.hashCode()) * 31) + this.stakingName.hashCode()) * 31) + this.stakingAuthor.hashCode()) * 31) + this.stakingWebsite.hashCode()) * 31) + this.stakingAPY.hashCode()) * 31) + this.stakingAPR.hashCode()) * 31) + this.stakingEndsAt.hashCode()) * 31) + this.stakingToken.hashCode()) * 31;
        String str14 = this.shouldFinishAt;
        return ((((((((hashCode14 + (str14 != null ? str14.hashCode() : 0)) * 31) + this.debtAsToken.hashCode()) * 31) + this.debtAsUsd.hashCode()) * 31) + this.profitAsToken.hashCode()) * 31) + this.profitAsUsd.hashCode();
    }

    public String toString() {
        return "NotificationResponse(id=" + this.f393id + ", userId=" + this.userId + ", amount=" + this.amount + ", read=" + this.read + ", linkedUserId=" + this.linkedUserId + ", linkedObjectId=" + this.linkedObjectId + ", type=" + this.type + ", date=" + this.date + ", status=" + this.status + ", cryptoCode=" + this.cryptoCode + ", fromWalletAddress=" + this.fromWalletAddress + ", toWalletAddress=" + this.toWalletAddress + ", txHash=" + this.txHash + ", networkType=" + this.networkType + ", spentCurrency=" + this.spentCurrency + ", amountToSpent=" + this.amountToSpent + ", assetCode=" + this.assetCode + ", assetName=" + this.assetName + ", payerUserId=" + this.payerUserId + ", stakingId=" + this.stakingId + ", stakingName=" + this.stakingName + ", stakingAuthor=" + this.stakingAuthor + ", stakingWebsite=" + this.stakingWebsite + ", stakingAPY=" + this.stakingAPY + ", stakingAPR=" + this.stakingAPR + ", stakingEndsAt=" + this.stakingEndsAt + ", stakingToken=" + this.stakingToken + ", shouldFinishAt=" + this.shouldFinishAt + ", debtAsToken=" + this.debtAsToken + ", debtAsUsd=" + this.debtAsUsd + ", profitAsToken=" + this.profitAsToken + ", profitAsUsd=" + this.profitAsUsd + ')';
    }

    public NotificationResponse(String id, String userId, BigDecimal amount, boolean z, String str, String str2, String type, String date, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String stakingId, String stakingName, String stakingAuthor, String stakingWebsite, String stakingAPY, String stakingAPR, String stakingEndsAt, String stakingToken, String str14, String debtAsToken, String debtAsUsd, String profitAsToken, String profitAsUsd) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(stakingId, "stakingId");
        Intrinsics.checkNotNullParameter(stakingName, "stakingName");
        Intrinsics.checkNotNullParameter(stakingAuthor, "stakingAuthor");
        Intrinsics.checkNotNullParameter(stakingWebsite, "stakingWebsite");
        Intrinsics.checkNotNullParameter(stakingAPY, "stakingAPY");
        Intrinsics.checkNotNullParameter(stakingAPR, "stakingAPR");
        Intrinsics.checkNotNullParameter(stakingEndsAt, "stakingEndsAt");
        Intrinsics.checkNotNullParameter(stakingToken, "stakingToken");
        Intrinsics.checkNotNullParameter(debtAsToken, "debtAsToken");
        Intrinsics.checkNotNullParameter(debtAsUsd, "debtAsUsd");
        Intrinsics.checkNotNullParameter(profitAsToken, "profitAsToken");
        Intrinsics.checkNotNullParameter(profitAsUsd, "profitAsUsd");
        this.f393id = id;
        this.userId = userId;
        this.amount = amount;
        this.read = z;
        this.linkedUserId = str;
        this.linkedObjectId = str2;
        this.type = type;
        this.date = date;
        this.status = str3;
        this.cryptoCode = str4;
        this.fromWalletAddress = str5;
        this.toWalletAddress = str6;
        this.txHash = str7;
        this.networkType = str8;
        this.spentCurrency = str9;
        this.amountToSpent = str10;
        this.assetCode = str11;
        this.assetName = str12;
        this.payerUserId = str13;
        this.stakingId = stakingId;
        this.stakingName = stakingName;
        this.stakingAuthor = stakingAuthor;
        this.stakingWebsite = stakingWebsite;
        this.stakingAPY = stakingAPY;
        this.stakingAPR = stakingAPR;
        this.stakingEndsAt = stakingEndsAt;
        this.stakingToken = stakingToken;
        this.shouldFinishAt = str14;
        this.debtAsToken = debtAsToken;
        this.debtAsUsd = debtAsUsd;
        this.profitAsToken = profitAsToken;
        this.profitAsUsd = profitAsUsd;
    }

    public final String getId() {
        return this.f393id;
    }

    public final String getUserId() {
        return this.userId;
    }

    public final BigDecimal getAmount() {
        return this.amount;
    }

    public final boolean getRead() {
        return this.read;
    }

    public final String getLinkedUserId() {
        return this.linkedUserId;
    }

    public final String getLinkedObjectId() {
        return this.linkedObjectId;
    }

    public final String getType() {
        return this.type;
    }

    public final String getDate() {
        return this.date;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getCryptoCode() {
        return this.cryptoCode;
    }

    public final String getFromWalletAddress() {
        return this.fromWalletAddress;
    }

    public final String getToWalletAddress() {
        return this.toWalletAddress;
    }

    public final String getTxHash() {
        return this.txHash;
    }

    public final String getNetworkType() {
        return this.networkType;
    }

    public final String getSpentCurrency() {
        return this.spentCurrency;
    }

    public final String getAmountToSpent() {
        return this.amountToSpent;
    }

    public final String getAssetCode() {
        return this.assetCode;
    }

    public final String getAssetName() {
        return this.assetName;
    }

    public final String getPayerUserId() {
        return this.payerUserId;
    }

    public final String getStakingId() {
        return this.stakingId;
    }

    public final String getStakingName() {
        return this.stakingName;
    }

    public final String getStakingAuthor() {
        return this.stakingAuthor;
    }

    public final String getStakingWebsite() {
        return this.stakingWebsite;
    }

    public final String getStakingAPY() {
        return this.stakingAPY;
    }

    public final String getStakingAPR() {
        return this.stakingAPR;
    }

    public final String getStakingEndsAt() {
        return this.stakingEndsAt;
    }

    public final String getStakingToken() {
        return this.stakingToken;
    }

    public final String getShouldFinishAt() {
        return this.shouldFinishAt;
    }

    public final String getDebtAsToken() {
        return this.debtAsToken;
    }

    public final String getDebtAsUsd() {
        return this.debtAsUsd;
    }

    public final String getProfitAsToken() {
        return this.profitAsToken;
    }

    public final String getProfitAsUsd() {
        return this.profitAsUsd;
    }
}
