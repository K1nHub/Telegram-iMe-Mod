package com.iMe.storage.data.network.model.response.crypto.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: AccountInfoResponse.kt */
/* loaded from: classes3.dex */
public final class AccountInfoResponse {
    private final AccountWalletAddressResponse bitcoinWalletAddress;
    private final AccountWalletAddressResponse etherWalletAddress;
    private final AccountWalletAddressResponse tonWalletAddress;
    private final AccountWalletAddressResponse tronWalletAddress;

    public static /* synthetic */ AccountInfoResponse copy$default(AccountInfoResponse accountInfoResponse, AccountWalletAddressResponse accountWalletAddressResponse, AccountWalletAddressResponse accountWalletAddressResponse2, AccountWalletAddressResponse accountWalletAddressResponse3, AccountWalletAddressResponse accountWalletAddressResponse4, int i, Object obj) {
        if ((i & 1) != 0) {
            accountWalletAddressResponse = accountInfoResponse.etherWalletAddress;
        }
        if ((i & 2) != 0) {
            accountWalletAddressResponse2 = accountInfoResponse.tonWalletAddress;
        }
        if ((i & 4) != 0) {
            accountWalletAddressResponse3 = accountInfoResponse.tronWalletAddress;
        }
        if ((i & 8) != 0) {
            accountWalletAddressResponse4 = accountInfoResponse.bitcoinWalletAddress;
        }
        return accountInfoResponse.copy(accountWalletAddressResponse, accountWalletAddressResponse2, accountWalletAddressResponse3, accountWalletAddressResponse4);
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

    public final AccountWalletAddressResponse component4() {
        return this.bitcoinWalletAddress;
    }

    public final AccountInfoResponse copy(AccountWalletAddressResponse etherWalletAddress, AccountWalletAddressResponse tonWalletAddress, AccountWalletAddressResponse tronWalletAddress, AccountWalletAddressResponse bitcoinWalletAddress) {
        Intrinsics.checkNotNullParameter(etherWalletAddress, "etherWalletAddress");
        Intrinsics.checkNotNullParameter(tonWalletAddress, "tonWalletAddress");
        Intrinsics.checkNotNullParameter(tronWalletAddress, "tronWalletAddress");
        Intrinsics.checkNotNullParameter(bitcoinWalletAddress, "bitcoinWalletAddress");
        return new AccountInfoResponse(etherWalletAddress, tonWalletAddress, tronWalletAddress, bitcoinWalletAddress);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountInfoResponse) {
            AccountInfoResponse accountInfoResponse = (AccountInfoResponse) obj;
            return Intrinsics.areEqual(this.etherWalletAddress, accountInfoResponse.etherWalletAddress) && Intrinsics.areEqual(this.tonWalletAddress, accountInfoResponse.tonWalletAddress) && Intrinsics.areEqual(this.tronWalletAddress, accountInfoResponse.tronWalletAddress) && Intrinsics.areEqual(this.bitcoinWalletAddress, accountInfoResponse.bitcoinWalletAddress);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.etherWalletAddress.hashCode() * 31) + this.tonWalletAddress.hashCode()) * 31) + this.tronWalletAddress.hashCode()) * 31) + this.bitcoinWalletAddress.hashCode();
    }

    public String toString() {
        return "AccountInfoResponse(etherWalletAddress=" + this.etherWalletAddress + ", tonWalletAddress=" + this.tonWalletAddress + ", tronWalletAddress=" + this.tronWalletAddress + ", bitcoinWalletAddress=" + this.bitcoinWalletAddress + ')';
    }

    public AccountInfoResponse(AccountWalletAddressResponse etherWalletAddress, AccountWalletAddressResponse tonWalletAddress, AccountWalletAddressResponse tronWalletAddress, AccountWalletAddressResponse bitcoinWalletAddress) {
        Intrinsics.checkNotNullParameter(etherWalletAddress, "etherWalletAddress");
        Intrinsics.checkNotNullParameter(tonWalletAddress, "tonWalletAddress");
        Intrinsics.checkNotNullParameter(tronWalletAddress, "tronWalletAddress");
        Intrinsics.checkNotNullParameter(bitcoinWalletAddress, "bitcoinWalletAddress");
        this.etherWalletAddress = etherWalletAddress;
        this.tonWalletAddress = tonWalletAddress;
        this.tronWalletAddress = tronWalletAddress;
        this.bitcoinWalletAddress = bitcoinWalletAddress;
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

    public final AccountWalletAddressResponse getBitcoinWalletAddress() {
        return this.bitcoinWalletAddress;
    }
}
