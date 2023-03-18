package com.smedialink.storage.data.network.model.response.crypto.wallet;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoWalletInfoResponse.kt */
/* loaded from: classes3.dex */
public final class CryptoWalletInfoResponse {
    private final boolean isEtherWalletAddressOpened;
    private final String myEtherWalletAddress;
    private final String tonWalletAddress;
    private final List<String> usersWithAccessToEtherWalletAddress;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CryptoWalletInfoResponse copy$default(CryptoWalletInfoResponse cryptoWalletInfoResponse, String str, String str2, boolean z, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cryptoWalletInfoResponse.myEtherWalletAddress;
        }
        if ((i & 2) != 0) {
            str2 = cryptoWalletInfoResponse.tonWalletAddress;
        }
        if ((i & 4) != 0) {
            z = cryptoWalletInfoResponse.isEtherWalletAddressOpened;
        }
        if ((i & 8) != 0) {
            list = cryptoWalletInfoResponse.usersWithAccessToEtherWalletAddress;
        }
        return cryptoWalletInfoResponse.copy(str, str2, z, list);
    }

    public final String component1() {
        return this.myEtherWalletAddress;
    }

    public final String component2() {
        return this.tonWalletAddress;
    }

    public final boolean component3() {
        return this.isEtherWalletAddressOpened;
    }

    public final List<String> component4() {
        return this.usersWithAccessToEtherWalletAddress;
    }

    public final CryptoWalletInfoResponse copy(String str, String str2, boolean z, List<String> usersWithAccessToEtherWalletAddress) {
        Intrinsics.checkNotNullParameter(usersWithAccessToEtherWalletAddress, "usersWithAccessToEtherWalletAddress");
        return new CryptoWalletInfoResponse(str, str2, z, usersWithAccessToEtherWalletAddress);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoWalletInfoResponse) {
            CryptoWalletInfoResponse cryptoWalletInfoResponse = (CryptoWalletInfoResponse) obj;
            return Intrinsics.areEqual(this.myEtherWalletAddress, cryptoWalletInfoResponse.myEtherWalletAddress) && Intrinsics.areEqual(this.tonWalletAddress, cryptoWalletInfoResponse.tonWalletAddress) && this.isEtherWalletAddressOpened == cryptoWalletInfoResponse.isEtherWalletAddressOpened && Intrinsics.areEqual(this.usersWithAccessToEtherWalletAddress, cryptoWalletInfoResponse.usersWithAccessToEtherWalletAddress);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        String str = this.myEtherWalletAddress;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.tonWalletAddress;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        boolean z = this.isEtherWalletAddressOpened;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((hashCode2 + i) * 31) + this.usersWithAccessToEtherWalletAddress.hashCode();
    }

    public String toString() {
        return "CryptoWalletInfoResponse(myEtherWalletAddress=" + this.myEtherWalletAddress + ", tonWalletAddress=" + this.tonWalletAddress + ", isEtherWalletAddressOpened=" + this.isEtherWalletAddressOpened + ", usersWithAccessToEtherWalletAddress=" + this.usersWithAccessToEtherWalletAddress + ')';
    }

    public CryptoWalletInfoResponse(String str, String str2, boolean z, List<String> usersWithAccessToEtherWalletAddress) {
        Intrinsics.checkNotNullParameter(usersWithAccessToEtherWalletAddress, "usersWithAccessToEtherWalletAddress");
        this.myEtherWalletAddress = str;
        this.tonWalletAddress = str2;
        this.isEtherWalletAddressOpened = z;
        this.usersWithAccessToEtherWalletAddress = usersWithAccessToEtherWalletAddress;
    }

    public final String getMyEtherWalletAddress() {
        return this.myEtherWalletAddress;
    }

    public final String getTonWalletAddress() {
        return this.tonWalletAddress;
    }

    public final boolean isEtherWalletAddressOpened() {
        return this.isEtherWalletAddressOpened;
    }

    public final List<String> getUsersWithAccessToEtherWalletAddress() {
        return this.usersWithAccessToEtherWalletAddress;
    }
}
