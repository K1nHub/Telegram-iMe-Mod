package com.iMe.storage.data.network.model.request.wallet;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: MultiChainBalanceRequest.kt */
/* loaded from: classes3.dex */
public final class MultiChainBalanceRequest {
    private final List<String> networkTypes;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MultiChainBalanceRequest copy$default(MultiChainBalanceRequest multiChainBalanceRequest, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = multiChainBalanceRequest.networkTypes;
        }
        return multiChainBalanceRequest.copy(list);
    }

    public final List<String> component1() {
        return this.networkTypes;
    }

    public final MultiChainBalanceRequest copy(List<String> networkTypes) {
        Intrinsics.checkNotNullParameter(networkTypes, "networkTypes");
        return new MultiChainBalanceRequest(networkTypes);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MultiChainBalanceRequest) && Intrinsics.areEqual(this.networkTypes, ((MultiChainBalanceRequest) obj).networkTypes);
    }

    public int hashCode() {
        return this.networkTypes.hashCode();
    }

    public String toString() {
        return "MultiChainBalanceRequest(networkTypes=" + this.networkTypes + ')';
    }

    public MultiChainBalanceRequest(List<String> networkTypes) {
        Intrinsics.checkNotNullParameter(networkTypes, "networkTypes");
        this.networkTypes = networkTypes;
    }

    public final List<String> getNetworkTypes() {
        return this.networkTypes;
    }
}
