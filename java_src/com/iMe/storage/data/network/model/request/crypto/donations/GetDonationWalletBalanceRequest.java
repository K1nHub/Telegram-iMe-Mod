package com.iMe.storage.data.network.model.request.crypto.donations;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetDonationWalletBalanceRequest.kt */
/* loaded from: classes4.dex */
public final class GetDonationWalletBalanceRequest {
    private final String chatId;
    private final String networkType;

    public static /* synthetic */ GetDonationWalletBalanceRequest copy$default(GetDonationWalletBalanceRequest getDonationWalletBalanceRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = getDonationWalletBalanceRequest.chatId;
        }
        if ((i & 2) != 0) {
            str2 = getDonationWalletBalanceRequest.networkType;
        }
        return getDonationWalletBalanceRequest.copy(str, str2);
    }

    public final String component1() {
        return this.chatId;
    }

    public final String component2() {
        return this.networkType;
    }

    public final GetDonationWalletBalanceRequest copy(String chatId, String networkType) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new GetDonationWalletBalanceRequest(chatId, networkType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetDonationWalletBalanceRequest) {
            GetDonationWalletBalanceRequest getDonationWalletBalanceRequest = (GetDonationWalletBalanceRequest) obj;
            return Intrinsics.areEqual(this.chatId, getDonationWalletBalanceRequest.chatId) && Intrinsics.areEqual(this.networkType, getDonationWalletBalanceRequest.networkType);
        }
        return false;
    }

    public int hashCode() {
        return (this.chatId.hashCode() * 31) + this.networkType.hashCode();
    }

    public String toString() {
        return "GetDonationWalletBalanceRequest(chatId=" + this.chatId + ", networkType=" + this.networkType + ')';
    }

    public GetDonationWalletBalanceRequest(String chatId, String networkType) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.chatId = chatId;
        this.networkType = networkType;
    }

    public final String getChatId() {
        return this.chatId;
    }

    public final String getNetworkType() {
        return this.networkType;
    }
}
