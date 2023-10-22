package com.iMe.storage.data.network.model.response.crypto.wallet;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AccountInfoResponse.kt */
/* loaded from: classes3.dex */
public final class AccountInfoResponse {
    private final boolean hasAccess;
    private final List<AccountWalletAddressResponse> wallets;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AccountInfoResponse copy$default(AccountInfoResponse accountInfoResponse, List list, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            list = accountInfoResponse.wallets;
        }
        if ((i & 2) != 0) {
            z = accountInfoResponse.hasAccess;
        }
        return accountInfoResponse.copy(list, z);
    }

    public final List<AccountWalletAddressResponse> component1() {
        return this.wallets;
    }

    public final boolean component2() {
        return this.hasAccess;
    }

    public final AccountInfoResponse copy(List<AccountWalletAddressResponse> wallets, boolean z) {
        Intrinsics.checkNotNullParameter(wallets, "wallets");
        return new AccountInfoResponse(wallets, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountInfoResponse) {
            AccountInfoResponse accountInfoResponse = (AccountInfoResponse) obj;
            return Intrinsics.areEqual(this.wallets, accountInfoResponse.wallets) && this.hasAccess == accountInfoResponse.hasAccess;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.wallets.hashCode() * 31;
        boolean z = this.hasAccess;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "AccountInfoResponse(wallets=" + this.wallets + ", hasAccess=" + this.hasAccess + ')';
    }

    public AccountInfoResponse(List<AccountWalletAddressResponse> wallets, boolean z) {
        Intrinsics.checkNotNullParameter(wallets, "wallets");
        this.wallets = wallets;
        this.hasAccess = z;
    }

    public final List<AccountWalletAddressResponse> getWallets() {
        return this.wallets;
    }

    public final boolean getHasAccess() {
        return this.hasAccess;
    }
}
