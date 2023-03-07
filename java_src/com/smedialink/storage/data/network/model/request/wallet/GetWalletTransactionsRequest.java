package com.smedialink.storage.data.network.model.request.wallet;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetWalletTransactionsRequest.kt */
/* loaded from: classes3.dex */
public final class GetWalletTransactionsRequest {
    @SerializedName("filter")
    private final String filterByToken;
    private final String lastItemId;
    private final int limit;
    private final String networkType;

    public static /* synthetic */ GetWalletTransactionsRequest copy$default(GetWalletTransactionsRequest getWalletTransactionsRequest, String str, int i, String str2, String str3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = getWalletTransactionsRequest.lastItemId;
        }
        if ((i2 & 2) != 0) {
            i = getWalletTransactionsRequest.limit;
        }
        if ((i2 & 4) != 0) {
            str2 = getWalletTransactionsRequest.networkType;
        }
        if ((i2 & 8) != 0) {
            str3 = getWalletTransactionsRequest.filterByToken;
        }
        return getWalletTransactionsRequest.copy(str, i, str2, str3);
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
        return this.filterByToken;
    }

    public final GetWalletTransactionsRequest copy(String str, int i, String networkType, String str2) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new GetWalletTransactionsRequest(str, i, networkType, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetWalletTransactionsRequest) {
            GetWalletTransactionsRequest getWalletTransactionsRequest = (GetWalletTransactionsRequest) obj;
            return Intrinsics.areEqual(this.lastItemId, getWalletTransactionsRequest.lastItemId) && this.limit == getWalletTransactionsRequest.limit && Intrinsics.areEqual(this.networkType, getWalletTransactionsRequest.networkType) && Intrinsics.areEqual(this.filterByToken, getWalletTransactionsRequest.filterByToken);
        }
        return false;
    }

    public int hashCode() {
        String str = this.lastItemId;
        int hashCode = (((((str == null ? 0 : str.hashCode()) * 31) + this.limit) * 31) + this.networkType.hashCode()) * 31;
        String str2 = this.filterByToken;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "GetWalletTransactionsRequest(lastItemId=" + ((Object) this.lastItemId) + ", limit=" + this.limit + ", networkType=" + this.networkType + ", filterByToken=" + ((Object) this.filterByToken) + ')';
    }

    public GetWalletTransactionsRequest(String str, int i, String networkType, String str2) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.lastItemId = str;
        this.limit = i;
        this.networkType = networkType;
        this.filterByToken = str2;
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

    public final String getFilterByToken() {
        return this.filterByToken;
    }
}
