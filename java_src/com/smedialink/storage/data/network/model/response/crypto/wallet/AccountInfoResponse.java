package com.smedialink.storage.data.network.model.response.crypto.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: AccountInfoResponse.kt */
/* loaded from: classes3.dex */
public final class AccountInfoResponse {
    private final AccountWalletAddressResponse etherWalletAddress;
    private final AccountWalletAddressResponse tonWalletAddress;

    public static /* synthetic */ AccountInfoResponse copy$default(AccountInfoResponse accountInfoResponse, AccountWalletAddressResponse accountWalletAddressResponse, AccountWalletAddressResponse accountWalletAddressResponse2, int i, Object obj) {
        if ((i & 1) != 0) {
            accountWalletAddressResponse = accountInfoResponse.etherWalletAddress;
        }
        if ((i & 2) != 0) {
            accountWalletAddressResponse2 = accountInfoResponse.tonWalletAddress;
        }
        return accountInfoResponse.copy(accountWalletAddressResponse, accountWalletAddressResponse2);
    }

    public final AccountWalletAddressResponse component1() {
        return this.etherWalletAddress;
    }

    public final AccountWalletAddressResponse component2() {
        return this.tonWalletAddress;
    }

    public final AccountInfoResponse copy(AccountWalletAddressResponse etherWalletAddress, AccountWalletAddressResponse tonWalletAddress) {
        Intrinsics.checkNotNullParameter(etherWalletAddress, "etherWalletAddress");
        Intrinsics.checkNotNullParameter(tonWalletAddress, "tonWalletAddress");
        return new AccountInfoResponse(etherWalletAddress, tonWalletAddress);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountInfoResponse) {
            AccountInfoResponse accountInfoResponse = (AccountInfoResponse) obj;
            return Intrinsics.areEqual(this.etherWalletAddress, accountInfoResponse.etherWalletAddress) && Intrinsics.areEqual(this.tonWalletAddress, accountInfoResponse.tonWalletAddress);
        }
        return false;
    }

    public int hashCode() {
        return (this.etherWalletAddress.hashCode() * 31) + this.tonWalletAddress.hashCode();
    }

    public String toString() {
        return "AccountInfoResponse(etherWalletAddress=" + this.etherWalletAddress + ", tonWalletAddress=" + this.tonWalletAddress + ')';
    }

    public AccountInfoResponse(AccountWalletAddressResponse etherWalletAddress, AccountWalletAddressResponse tonWalletAddress) {
        Intrinsics.checkNotNullParameter(etherWalletAddress, "etherWalletAddress");
        Intrinsics.checkNotNullParameter(tonWalletAddress, "tonWalletAddress");
        this.etherWalletAddress = etherWalletAddress;
        this.tonWalletAddress = tonWalletAddress;
    }

    public final AccountWalletAddressResponse getEtherWalletAddress() {
        return this.etherWalletAddress;
    }

    public final AccountWalletAddressResponse getTonWalletAddress() {
        return this.tonWalletAddress;
    }
}
