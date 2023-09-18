package com.iMe.storage.domain.model.crypto;

import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoWalletsInfo.kt */
/* loaded from: classes4.dex */
public final class CryptoWalletsInfo {
    private final List<Long> allowedUsers;
    private final boolean isVisible;
    private final Map<BlockchainType, String> walletsAddresses;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CryptoWalletsInfo copy$default(CryptoWalletsInfo cryptoWalletsInfo, Map map, boolean z, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            map = cryptoWalletsInfo.walletsAddresses;
        }
        if ((i & 2) != 0) {
            z = cryptoWalletsInfo.isVisible;
        }
        if ((i & 4) != 0) {
            list = cryptoWalletsInfo.allowedUsers;
        }
        return cryptoWalletsInfo.copy(map, z, list);
    }

    public final Map<BlockchainType, String> component1() {
        return this.walletsAddresses;
    }

    public final boolean component2() {
        return this.isVisible;
    }

    public final List<Long> component3() {
        return this.allowedUsers;
    }

    public final CryptoWalletsInfo copy(Map<BlockchainType, String> walletsAddresses, boolean z, List<Long> allowedUsers) {
        Intrinsics.checkNotNullParameter(walletsAddresses, "walletsAddresses");
        Intrinsics.checkNotNullParameter(allowedUsers, "allowedUsers");
        return new CryptoWalletsInfo(walletsAddresses, z, allowedUsers);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoWalletsInfo) {
            CryptoWalletsInfo cryptoWalletsInfo = (CryptoWalletsInfo) obj;
            return Intrinsics.areEqual(this.walletsAddresses, cryptoWalletsInfo.walletsAddresses) && this.isVisible == cryptoWalletsInfo.isVisible && Intrinsics.areEqual(this.allowedUsers, cryptoWalletsInfo.allowedUsers);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.walletsAddresses.hashCode() * 31;
        boolean z = this.isVisible;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((hashCode + i) * 31) + this.allowedUsers.hashCode();
    }

    public String toString() {
        return "CryptoWalletsInfo(walletsAddresses=" + this.walletsAddresses + ", isVisible=" + this.isVisible + ", allowedUsers=" + this.allowedUsers + ')';
    }

    public CryptoWalletsInfo(Map<BlockchainType, String> walletsAddresses, boolean z, List<Long> allowedUsers) {
        Intrinsics.checkNotNullParameter(walletsAddresses, "walletsAddresses");
        Intrinsics.checkNotNullParameter(allowedUsers, "allowedUsers");
        this.walletsAddresses = walletsAddresses;
        this.isVisible = z;
        this.allowedUsers = allowedUsers;
    }

    public final Map<BlockchainType, String> getWalletsAddresses() {
        return this.walletsAddresses;
    }

    public final boolean isVisible() {
        return this.isVisible;
    }

    public final List<Long> getAllowedUsers() {
        return this.allowedUsers;
    }

    public final String getAddressByBlockchain(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        String str = this.walletsAddresses.get(blockchainType);
        return str == null ? "" : str;
    }
}
