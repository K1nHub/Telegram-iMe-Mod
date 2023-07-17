package com.iMe.storage.data.network.model.request.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: DisplayedTokensRequest.kt */
/* loaded from: classes3.dex */
public final class DisplayedTokensRequest {
    private final String networkType;

    public static /* synthetic */ DisplayedTokensRequest copy$default(DisplayedTokensRequest displayedTokensRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = displayedTokensRequest.networkType;
        }
        return displayedTokensRequest.copy(str);
    }

    public final String component1() {
        return this.networkType;
    }

    public final DisplayedTokensRequest copy(String networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new DisplayedTokensRequest(networkType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DisplayedTokensRequest) && Intrinsics.areEqual(this.networkType, ((DisplayedTokensRequest) obj).networkType);
    }

    public int hashCode() {
        return this.networkType.hashCode();
    }

    public String toString() {
        return "DisplayedTokensRequest(networkType=" + this.networkType + ')';
    }

    public DisplayedTokensRequest(String networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.networkType = networkType;
    }

    public final String getNetworkType() {
        return this.networkType;
    }
}
