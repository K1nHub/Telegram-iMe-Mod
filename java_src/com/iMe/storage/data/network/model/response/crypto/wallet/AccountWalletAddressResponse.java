package com.iMe.storage.data.network.model.response.crypto.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: AccountWalletAddressResponse.kt */
/* loaded from: classes4.dex */
public final class AccountWalletAddressResponse {
    private final boolean isSet;
    private final String platform;
    private final String value;

    public static /* synthetic */ AccountWalletAddressResponse copy$default(AccountWalletAddressResponse accountWalletAddressResponse, String str, boolean z, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = accountWalletAddressResponse.value;
        }
        if ((i & 2) != 0) {
            z = accountWalletAddressResponse.isSet;
        }
        if ((i & 4) != 0) {
            str2 = accountWalletAddressResponse.platform;
        }
        return accountWalletAddressResponse.copy(str, z, str2);
    }

    public final String component1() {
        return this.value;
    }

    public final boolean component2() {
        return this.isSet;
    }

    public final String component3() {
        return this.platform;
    }

    public final AccountWalletAddressResponse copy(String str, boolean z, String platform) {
        Intrinsics.checkNotNullParameter(platform, "platform");
        return new AccountWalletAddressResponse(str, z, platform);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountWalletAddressResponse) {
            AccountWalletAddressResponse accountWalletAddressResponse = (AccountWalletAddressResponse) obj;
            return Intrinsics.areEqual(this.value, accountWalletAddressResponse.value) && this.isSet == accountWalletAddressResponse.isSet && Intrinsics.areEqual(this.platform, accountWalletAddressResponse.platform);
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
        return ((hashCode + i) * 31) + this.platform.hashCode();
    }

    public String toString() {
        return "AccountWalletAddressResponse(value=" + this.value + ", isSet=" + this.isSet + ", platform=" + this.platform + ')';
    }

    public AccountWalletAddressResponse(String str, boolean z, String platform) {
        Intrinsics.checkNotNullParameter(platform, "platform");
        this.value = str;
        this.isSet = z;
        this.platform = platform;
    }

    public final String getValue() {
        return this.value;
    }

    public final boolean isSet() {
        return this.isSet;
    }

    public final String getPlatform() {
        return this.platform;
    }
}
