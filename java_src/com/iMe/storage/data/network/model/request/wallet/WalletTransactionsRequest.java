package com.iMe.storage.data.network.model.request.wallet;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletTransactionsRequest.kt */
/* loaded from: classes3.dex */
public final class WalletTransactionsRequest {
    @SerializedName("filter")
    private final List<TokenRequest> filterByTokens;
    private final String lastItemId;
    private final int limit;
    private final String networkType;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ WalletTransactionsRequest copy$default(WalletTransactionsRequest walletTransactionsRequest, String str, int i, String str2, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = walletTransactionsRequest.lastItemId;
        }
        if ((i2 & 2) != 0) {
            i = walletTransactionsRequest.limit;
        }
        if ((i2 & 4) != 0) {
            str2 = walletTransactionsRequest.networkType;
        }
        if ((i2 & 8) != 0) {
            list = walletTransactionsRequest.filterByTokens;
        }
        return walletTransactionsRequest.copy(str, i, str2, list);
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

    public final List<TokenRequest> component4() {
        return this.filterByTokens;
    }

    public final WalletTransactionsRequest copy(String str, int i, String networkType, List<TokenRequest> list) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new WalletTransactionsRequest(str, i, networkType, list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WalletTransactionsRequest) {
            WalletTransactionsRequest walletTransactionsRequest = (WalletTransactionsRequest) obj;
            return Intrinsics.areEqual(this.lastItemId, walletTransactionsRequest.lastItemId) && this.limit == walletTransactionsRequest.limit && Intrinsics.areEqual(this.networkType, walletTransactionsRequest.networkType) && Intrinsics.areEqual(this.filterByTokens, walletTransactionsRequest.filterByTokens);
        }
        return false;
    }

    public int hashCode() {
        String str = this.lastItemId;
        int hashCode = (((((str == null ? 0 : str.hashCode()) * 31) + this.limit) * 31) + this.networkType.hashCode()) * 31;
        List<TokenRequest> list = this.filterByTokens;
        return hashCode + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "WalletTransactionsRequest(lastItemId=" + this.lastItemId + ", limit=" + this.limit + ", networkType=" + this.networkType + ", filterByTokens=" + this.filterByTokens + ')';
    }

    public WalletTransactionsRequest(String str, int i, String networkType, List<TokenRequest> list) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.lastItemId = str;
        this.limit = i;
        this.networkType = networkType;
        this.filterByTokens = list;
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

    public final List<TokenRequest> getFilterByTokens() {
        return this.filterByTokens;
    }
}
