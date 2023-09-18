package com.iMe.storage.data.network.model.request.crypto.donations;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetDonationTransactionsRequest.kt */
/* loaded from: classes4.dex */
public final class GetDonationTransactionsRequest {
    private final String chatId;
    private final String lastItemId;
    private final int limit;
    private final String networkType;

    public static /* synthetic */ GetDonationTransactionsRequest copy$default(GetDonationTransactionsRequest getDonationTransactionsRequest, String str, int i, String str2, String str3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = getDonationTransactionsRequest.lastItemId;
        }
        if ((i2 & 2) != 0) {
            i = getDonationTransactionsRequest.limit;
        }
        if ((i2 & 4) != 0) {
            str2 = getDonationTransactionsRequest.networkType;
        }
        if ((i2 & 8) != 0) {
            str3 = getDonationTransactionsRequest.chatId;
        }
        return getDonationTransactionsRequest.copy(str, i, str2, str3);
    }

    public final String component1() {
        return this.lastItemId;
    }

    public final int component2() {
        return this.limit;
    }

    public final String component3() {
        return this.networkType;
    }

    public final String component4() {
        return this.chatId;
    }

    public final GetDonationTransactionsRequest copy(String str, int i, String networkType, String chatId) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        return new GetDonationTransactionsRequest(str, i, networkType, chatId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetDonationTransactionsRequest) {
            GetDonationTransactionsRequest getDonationTransactionsRequest = (GetDonationTransactionsRequest) obj;
            return Intrinsics.areEqual(this.lastItemId, getDonationTransactionsRequest.lastItemId) && this.limit == getDonationTransactionsRequest.limit && Intrinsics.areEqual(this.networkType, getDonationTransactionsRequest.networkType) && Intrinsics.areEqual(this.chatId, getDonationTransactionsRequest.chatId);
        }
        return false;
    }

    public int hashCode() {
        String str = this.lastItemId;
        return ((((((str == null ? 0 : str.hashCode()) * 31) + this.limit) * 31) + this.networkType.hashCode()) * 31) + this.chatId.hashCode();
    }

    public String toString() {
        return "GetDonationTransactionsRequest(lastItemId=" + this.lastItemId + ", limit=" + this.limit + ", networkType=" + this.networkType + ", chatId=" + this.chatId + ')';
    }

    public GetDonationTransactionsRequest(String str, int i, String networkType, String chatId) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        this.lastItemId = str;
        this.limit = i;
        this.networkType = networkType;
        this.chatId = chatId;
    }

    public final String getLastItemId() {
        return this.lastItemId;
    }

    public final int getLimit() {
        return this.limit;
    }

    public final String getNetworkType() {
        return this.networkType;
    }

    public final String getChatId() {
        return this.chatId;
    }
}
