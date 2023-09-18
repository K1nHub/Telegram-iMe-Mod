package com.iMe.storage.data.network.model.response.crypto.wallet;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NetworkResponse.kt */
/* loaded from: classes4.dex */
public final class NetworksListResponse {
    private final List<NetworkResponse> networks;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NetworksListResponse copy$default(NetworksListResponse networksListResponse, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = networksListResponse.networks;
        }
        return networksListResponse.copy(list);
    }

    public final List<NetworkResponse> component1() {
        return this.networks;
    }

    public final NetworksListResponse copy(List<NetworkResponse> networks) {
        Intrinsics.checkNotNullParameter(networks, "networks");
        return new NetworksListResponse(networks);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof NetworksListResponse) && Intrinsics.areEqual(this.networks, ((NetworksListResponse) obj).networks);
    }

    public int hashCode() {
        return this.networks.hashCode();
    }

    public String toString() {
        return "NetworksListResponse(networks=" + this.networks + ')';
    }

    public NetworksListResponse(List<NetworkResponse> networks) {
        Intrinsics.checkNotNullParameter(networks, "networks");
        this.networks = networks;
    }

    public final List<NetworkResponse> getNetworks() {
        return this.networks;
    }
}
