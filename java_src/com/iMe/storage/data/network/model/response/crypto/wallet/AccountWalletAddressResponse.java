package com.iMe.storage.data.network.model.response.crypto.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: AccountWalletAddressResponse.kt */
/* loaded from: classes3.dex */
public final class AccountWalletAddressResponse {
    private final boolean hasAccess;
    private final boolean isSet;
    private final String value;

    public static /* synthetic */ AccountWalletAddressResponse copy$default(AccountWalletAddressResponse accountWalletAddressResponse, String str, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = accountWalletAddressResponse.value;
        }
        if ((i & 2) != 0) {
            z = accountWalletAddressResponse.isSet;
        }
        if ((i & 4) != 0) {
            z2 = accountWalletAddressResponse.hasAccess;
        }
        return accountWalletAddressResponse.copy(str, z, z2);
    }

    public final String component1() {
        return this.value;
    }

    public final boolean component2() {
        return this.isSet;
    }

    public final boolean component3() {
        return this.hasAccess;
    }

    public final AccountWalletAddressResponse copy(String str, boolean z, boolean z2) {
        return new AccountWalletAddressResponse(str, z, z2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountWalletAddressResponse) {
            AccountWalletAddressResponse accountWalletAddressResponse = (AccountWalletAddressResponse) obj;
            return Intrinsics.areEqual(this.value, accountWalletAddressResponse.value) && this.isSet == accountWalletAddressResponse.isSet && this.hasAccess == accountWalletAddressResponse.hasAccess;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        String str = this.value;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        boolean z = this.isSet;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.hasAccess;
        return i2 + (z2 ? 1 : z2 ? 1 : 0);
    }

    public String toString() {
        return "AccountWalletAddressResponse(value=" + this.value + ", isSet=" + this.isSet + ", hasAccess=" + this.hasAccess + ')';
    }

    public AccountWalletAddressResponse(String str, boolean z, boolean z2) {
        this.value = str;
        this.isSet = z;
        this.hasAccess = z2;
    }

    public final String getValue() {
        return this.value;
    }

    public final boolean isSet() {
        return this.isSet;
    }

    public final boolean getHasAccess() {
        return this.hasAccess;
    }
}
