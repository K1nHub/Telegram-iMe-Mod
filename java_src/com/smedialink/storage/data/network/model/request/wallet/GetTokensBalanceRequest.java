package com.smedialink.storage.data.network.model.request.wallet;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetTokensBalanceRequest.kt */
/* loaded from: classes3.dex */
public final class GetTokensBalanceRequest {
    private final String blockchainPlatform;
    private final List<String> coinCodes;
    private final String networkType;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GetTokensBalanceRequest copy$default(GetTokensBalanceRequest getTokensBalanceRequest, List list, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = getTokensBalanceRequest.coinCodes;
        }
        if ((i & 2) != 0) {
            str = getTokensBalanceRequest.networkType;
        }
        if ((i & 4) != 0) {
            str2 = getTokensBalanceRequest.blockchainPlatform;
        }
        return getTokensBalanceRequest.copy(list, str, str2);
    }

    public final List<String> component1() {
        return this.coinCodes;
    }

    public final String component2() {
        return this.networkType;
    }

    public final String component3() {
        return this.blockchainPlatform;
    }

    public final GetTokensBalanceRequest copy(List<String> list, String networkType, String blockchainPlatform) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(blockchainPlatform, "blockchainPlatform");
        return new GetTokensBalanceRequest(list, networkType, blockchainPlatform);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetTokensBalanceRequest) {
            GetTokensBalanceRequest getTokensBalanceRequest = (GetTokensBalanceRequest) obj;
            return Intrinsics.areEqual(this.coinCodes, getTokensBalanceRequest.coinCodes) && Intrinsics.areEqual(this.networkType, getTokensBalanceRequest.networkType) && Intrinsics.areEqual(this.blockchainPlatform, getTokensBalanceRequest.blockchainPlatform);
        }
        return false;
    }

    public int hashCode() {
        List<String> list = this.coinCodes;
        return ((((list == null ? 0 : list.hashCode()) * 31) + this.networkType.hashCode()) * 31) + this.blockchainPlatform.hashCode();
    }

    public String toString() {
        return "GetTokensBalanceRequest(coinCodes=" + this.coinCodes + ", networkType=" + this.networkType + ", blockchainPlatform=" + this.blockchainPlatform + ')';
    }

    public GetTokensBalanceRequest(List<String> list, String networkType, String blockchainPlatform) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(blockchainPlatform, "blockchainPlatform");
        this.coinCodes = list;
        this.networkType = networkType;
        this.blockchainPlatform = blockchainPlatform;
    }

    public /* synthetic */ GetTokensBalanceRequest(List list, String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : list, str, str2);
    }

    public final List<String> getCoinCodes() {
        return this.coinCodes;
    }

    public final String getNetworkType() {
        return this.networkType;
    }

    public final String getBlockchainPlatform() {
        return this.blockchainPlatform;
    }
}
