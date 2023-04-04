package com.iMe.storage.data.network.model.request.wallet;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetTokensBalanceRequest.kt */
/* loaded from: classes3.dex */
public final class GetTokensBalanceRequest {
    private final List<String> coinCodes;
    private final String networkType;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GetTokensBalanceRequest copy$default(GetTokensBalanceRequest getTokensBalanceRequest, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = getTokensBalanceRequest.coinCodes;
        }
        if ((i & 2) != 0) {
            str = getTokensBalanceRequest.networkType;
        }
        return getTokensBalanceRequest.copy(list, str);
    }

    public final List<String> component1() {
        return this.coinCodes;
    }

    public final String component2() {
        return this.networkType;
    }

    public final GetTokensBalanceRequest copy(List<String> list, String networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new GetTokensBalanceRequest(list, networkType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetTokensBalanceRequest) {
            GetTokensBalanceRequest getTokensBalanceRequest = (GetTokensBalanceRequest) obj;
            return Intrinsics.areEqual(this.coinCodes, getTokensBalanceRequest.coinCodes) && Intrinsics.areEqual(this.networkType, getTokensBalanceRequest.networkType);
        }
        return false;
    }

    public int hashCode() {
        List<String> list = this.coinCodes;
        return ((list == null ? 0 : list.hashCode()) * 31) + this.networkType.hashCode();
    }

    public String toString() {
        return "GetTokensBalanceRequest(coinCodes=" + this.coinCodes + ", networkType=" + this.networkType + ')';
    }

    public GetTokensBalanceRequest(List<String> list, String networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.coinCodes = list;
        this.networkType = networkType;
    }

    public /* synthetic */ GetTokensBalanceRequest(List list, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : list, str);
    }

    public final List<String> getCoinCodes() {
        return this.coinCodes;
    }

    public final String getNetworkType() {
        return this.networkType;
    }
}
