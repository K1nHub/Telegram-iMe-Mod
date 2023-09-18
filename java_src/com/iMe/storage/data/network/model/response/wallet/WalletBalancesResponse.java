package com.iMe.storage.data.network.model.response.wallet;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletBalancesResponse.kt */
/* loaded from: classes4.dex */
public final class WalletBalancesResponse {
    private final List<TokenBalanceResponse> balances;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ WalletBalancesResponse copy$default(WalletBalancesResponse walletBalancesResponse, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = walletBalancesResponse.balances;
        }
        return walletBalancesResponse.copy(list);
    }

    public final List<TokenBalanceResponse> component1() {
        return this.balances;
    }

    public final WalletBalancesResponse copy(List<TokenBalanceResponse> balances) {
        Intrinsics.checkNotNullParameter(balances, "balances");
        return new WalletBalancesResponse(balances);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof WalletBalancesResponse) && Intrinsics.areEqual(this.balances, ((WalletBalancesResponse) obj).balances);
    }

    public int hashCode() {
        return this.balances.hashCode();
    }

    public String toString() {
        return "WalletBalancesResponse(balances=" + this.balances + ')';
    }

    public WalletBalancesResponse(List<TokenBalanceResponse> balances) {
        Intrinsics.checkNotNullParameter(balances, "balances");
        this.balances = balances;
    }

    public final List<TokenBalanceResponse> getBalances() {
        return this.balances;
    }
}
