package com.iMe.storage.data.network.model.response.crypto.wallet;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoWalletsInfoResponse.kt */
/* loaded from: classes4.dex */
public final class CryptoWalletsInfoResponse {
    private final List<String> allowedUsers;
    private final boolean isVisible;
    private final List<RemoteWalletInfoResponse> wallets;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CryptoWalletsInfoResponse copy$default(CryptoWalletsInfoResponse cryptoWalletsInfoResponse, List list, boolean z, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = cryptoWalletsInfoResponse.wallets;
        }
        if ((i & 2) != 0) {
            z = cryptoWalletsInfoResponse.isVisible;
        }
        if ((i & 4) != 0) {
            list2 = cryptoWalletsInfoResponse.allowedUsers;
        }
        return cryptoWalletsInfoResponse.copy(list, z, list2);
    }

    public final List<RemoteWalletInfoResponse> component1() {
        return this.wallets;
    }

    public final boolean component2() {
        return this.isVisible;
    }

    public final List<String> component3() {
        return this.allowedUsers;
    }

    public final CryptoWalletsInfoResponse copy(List<RemoteWalletInfoResponse> wallets, boolean z, List<String> allowedUsers) {
        Intrinsics.checkNotNullParameter(wallets, "wallets");
        Intrinsics.checkNotNullParameter(allowedUsers, "allowedUsers");
        return new CryptoWalletsInfoResponse(wallets, z, allowedUsers);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoWalletsInfoResponse) {
            CryptoWalletsInfoResponse cryptoWalletsInfoResponse = (CryptoWalletsInfoResponse) obj;
            return Intrinsics.areEqual(this.wallets, cryptoWalletsInfoResponse.wallets) && this.isVisible == cryptoWalletsInfoResponse.isVisible && Intrinsics.areEqual(this.allowedUsers, cryptoWalletsInfoResponse.allowedUsers);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.wallets.hashCode() * 31;
        boolean z = this.isVisible;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((hashCode + i) * 31) + this.allowedUsers.hashCode();
    }

    public String toString() {
        return "CryptoWalletsInfoResponse(wallets=" + this.wallets + ", isVisible=" + this.isVisible + ", allowedUsers=" + this.allowedUsers + ')';
    }

    public CryptoWalletsInfoResponse(List<RemoteWalletInfoResponse> wallets, boolean z, List<String> allowedUsers) {
        Intrinsics.checkNotNullParameter(wallets, "wallets");
        Intrinsics.checkNotNullParameter(allowedUsers, "allowedUsers");
        this.wallets = wallets;
        this.isVisible = z;
        this.allowedUsers = allowedUsers;
    }

    public final List<RemoteWalletInfoResponse> getWallets() {
        return this.wallets;
    }

    public final boolean isVisible() {
        return this.isVisible;
    }

    public final List<String> getAllowedUsers() {
        return this.allowedUsers;
    }
}
