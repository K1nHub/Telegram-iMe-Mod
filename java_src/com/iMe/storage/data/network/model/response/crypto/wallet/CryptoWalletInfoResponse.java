package com.iMe.storage.data.network.model.response.crypto.wallet;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoWalletInfoResponse.kt */
/* loaded from: classes3.dex */
public final class CryptoWalletInfoResponse {
    private final boolean isEtherWalletAddressOpened;
    private final String myEtherWalletAddress;
    private final String tonWalletAddress;
    private final String tronWalletAddress;
    private final List<String> usersWithAccessToEtherWalletAddress;

    public static /* synthetic */ CryptoWalletInfoResponse copy$default(CryptoWalletInfoResponse cryptoWalletInfoResponse, String str, String str2, String str3, boolean z, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cryptoWalletInfoResponse.myEtherWalletAddress;
        }
        if ((i & 2) != 0) {
            str2 = cryptoWalletInfoResponse.tonWalletAddress;
        }
        String str4 = str2;
        if ((i & 4) != 0) {
            str3 = cryptoWalletInfoResponse.tronWalletAddress;
        }
        String str5 = str3;
        if ((i & 8) != 0) {
            z = cryptoWalletInfoResponse.isEtherWalletAddressOpened;
        }
        boolean z2 = z;
        List<String> list2 = list;
        if ((i & 16) != 0) {
            list2 = cryptoWalletInfoResponse.usersWithAccessToEtherWalletAddress;
        }
        return cryptoWalletInfoResponse.copy(str, str4, str5, z2, list2);
    }

    public final String component1() {
        return this.myEtherWalletAddress;
    }

    public final String component2() {
        return this.tonWalletAddress;
    }

    public final String component3() {
        return this.tronWalletAddress;
    }

    public final boolean component4() {
        return this.isEtherWalletAddressOpened;
    }

    public final List<String> component5() {
        return this.usersWithAccessToEtherWalletAddress;
    }

    public final CryptoWalletInfoResponse copy(String str, String str2, String str3, boolean z, List<String> usersWithAccessToEtherWalletAddress) {
        Intrinsics.checkNotNullParameter(usersWithAccessToEtherWalletAddress, "usersWithAccessToEtherWalletAddress");
        return new CryptoWalletInfoResponse(str, str2, str3, z, usersWithAccessToEtherWalletAddress);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoWalletInfoResponse) {
            CryptoWalletInfoResponse cryptoWalletInfoResponse = (CryptoWalletInfoResponse) obj;
            return Intrinsics.areEqual(this.myEtherWalletAddress, cryptoWalletInfoResponse.myEtherWalletAddress) && Intrinsics.areEqual(this.tonWalletAddress, cryptoWalletInfoResponse.tonWalletAddress) && Intrinsics.areEqual(this.tronWalletAddress, cryptoWalletInfoResponse.tronWalletAddress) && this.isEtherWalletAddressOpened == cryptoWalletInfoResponse.isEtherWalletAddressOpened && Intrinsics.areEqual(this.usersWithAccessToEtherWalletAddress, cryptoWalletInfoResponse.usersWithAccessToEtherWalletAddress);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        String str = this.myEtherWalletAddress;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.tonWalletAddress;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.tronWalletAddress;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        boolean z = this.isEtherWalletAddressOpened;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((hashCode3 + i) * 31) + this.usersWithAccessToEtherWalletAddress.hashCode();
    }

    public String toString() {
        return "CryptoWalletInfoResponse(myEtherWalletAddress=" + this.myEtherWalletAddress + ", tonWalletAddress=" + this.tonWalletAddress + ", tronWalletAddress=" + this.tronWalletAddress + ", isEtherWalletAddressOpened=" + this.isEtherWalletAddressOpened + ", usersWithAccessToEtherWalletAddress=" + this.usersWithAccessToEtherWalletAddress + ')';
    }

    public CryptoWalletInfoResponse(String str, String str2, String str3, boolean z, List<String> usersWithAccessToEtherWalletAddress) {
        Intrinsics.checkNotNullParameter(usersWithAccessToEtherWalletAddress, "usersWithAccessToEtherWalletAddress");
        this.myEtherWalletAddress = str;
        this.tonWalletAddress = str2;
        this.tronWalletAddress = str3;
        this.isEtherWalletAddressOpened = z;
        this.usersWithAccessToEtherWalletAddress = usersWithAccessToEtherWalletAddress;
    }

    public final String getMyEtherWalletAddress() {
        return this.myEtherWalletAddress;
    }

    public final String getTonWalletAddress() {
        return this.tonWalletAddress;
    }

    public final String getTronWalletAddress() {
        return this.tronWalletAddress;
    }

    public final boolean isEtherWalletAddressOpened() {
        return this.isEtherWalletAddressOpened;
    }

    public final List<String> getUsersWithAccessToEtherWalletAddress() {
        return this.usersWithAccessToEtherWalletAddress;
    }
}
