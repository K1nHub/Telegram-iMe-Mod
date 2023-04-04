package com.iMe.storage.data.network.model.response.crypto.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: AccountInfoResponse.kt */
/* loaded from: classes3.dex */
public final class AccountInfoResponse {
    private final AccountWalletAddressResponse etherWalletAddress;
    private final AccountWalletAddressResponse tonWalletAddress;
    private final AccountWalletAddressResponse tronWalletAddress;

    public static /* synthetic */ AccountInfoResponse copy$default(AccountInfoResponse accountInfoResponse, AccountWalletAddressResponse accountWalletAddressResponse, AccountWalletAddressResponse accountWalletAddressResponse2, AccountWalletAddressResponse accountWalletAddressResponse3, int i, Object obj) {
        if ((i & 1) != 0) {
            accountWalletAddressResponse = accountInfoResponse.etherWalletAddress;
        }
        if ((i & 2) != 0) {
            accountWalletAddressResponse2 = accountInfoResponse.tonWalletAddress;
        }
        if ((i & 4) != 0) {
            accountWalletAddressResponse3 = accountInfoResponse.tronWalletAddress;
        }
        return accountInfoResponse.copy(accountWalletAddressResponse, accountWalletAddressResponse2, accountWalletAddressResponse3);
    }

    public final AccountWalletAddressResponse component1() {
        return this.etherWalletAddress;
    }

    public final AccountWalletAddressResponse component2() {
        return this.tonWalletAddress;
    }

    public final AccountWalletAddressResponse component3() {
        return this.tronWalletAddress;
    }

    public final AccountInfoResponse copy(AccountWalletAddressResponse etherWalletAddress, AccountWalletAddressResponse tonWalletAddress, AccountWalletAddressResponse tronWalletAddress) {
        Intrinsics.checkNotNullParameter(etherWalletAddress, "etherWalletAddress");
        Intrinsics.checkNotNullParameter(tonWalletAddress, "tonWalletAddress");
        Intrinsics.checkNotNullParameter(tronWalletAddress, "tronWalletAddress");
        return new AccountInfoResponse(etherWalletAddress, tonWalletAddress, tronWalletAddress);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountInfoResponse) {
            AccountInfoResponse accountInfoResponse = (AccountInfoResponse) obj;
            return Intrinsics.areEqual(this.etherWalletAddress, accountInfoResponse.etherWalletAddress) && Intrinsics.areEqual(this.tonWalletAddress, accountInfoResponse.tonWalletAddress) && Intrinsics.areEqual(this.tronWalletAddress, accountInfoResponse.tronWalletAddress);
        }
        return false;
    }

    public int hashCode() {
        return (((this.etherWalletAddress.hashCode() * 31) + this.tonWalletAddress.hashCode()) * 31) + this.tronWalletAddress.hashCode();
    }

    public String toString() {
        return "AccountInfoResponse(etherWalletAddress=" + this.etherWalletAddress + ", tonWalletAddress=" + this.tonWalletAddress + ", tronWalletAddress=" + this.tronWalletAddress + ')';
    }

    public AccountInfoResponse(AccountWalletAddressResponse etherWalletAddress, AccountWalletAddressResponse tonWalletAddress, AccountWalletAddressResponse tronWalletAddress) {
        Intrinsics.checkNotNullParameter(etherWalletAddress, "etherWalletAddress");
        Intrinsics.checkNotNullParameter(tonWalletAddress, "tonWalletAddress");
        Intrinsics.checkNotNullParameter(tronWalletAddress, "tronWalletAddress");
        this.etherWalletAddress = etherWalletAddress;
        this.tonWalletAddress = tonWalletAddress;
        this.tronWalletAddress = tronWalletAddress;
    }

    public final AccountWalletAddressResponse getEtherWalletAddress() {
        return this.etherWalletAddress;
    }

    public final AccountWalletAddressResponse getTonWalletAddress() {
        return this.tonWalletAddress;
    }

    public final AccountWalletAddressResponse getTronWalletAddress() {
        return this.tronWalletAddress;
    }
}
