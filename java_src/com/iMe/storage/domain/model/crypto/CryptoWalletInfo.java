package com.iMe.storage.domain.model.crypto;

import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoWalletInfo.kt */
/* loaded from: classes3.dex */
public final class CryptoWalletInfo {
    private final String ethAddress;
    private final boolean isEthAddressOpenedForEverybody;
    private final String tonAddress;
    private final String tronAddress;
    private final List<Long> usersWithAccessToEthAddress;

    /* compiled from: CryptoWalletInfo.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BlockchainType.values().length];
            try {
                iArr[BlockchainType.EVM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BlockchainType.TRON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BlockchainType.TON.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static /* synthetic */ CryptoWalletInfo copy$default(CryptoWalletInfo cryptoWalletInfo, String str, String str2, String str3, boolean z, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cryptoWalletInfo.ethAddress;
        }
        if ((i & 2) != 0) {
            str2 = cryptoWalletInfo.tonAddress;
        }
        String str4 = str2;
        if ((i & 4) != 0) {
            str3 = cryptoWalletInfo.tronAddress;
        }
        String str5 = str3;
        if ((i & 8) != 0) {
            z = cryptoWalletInfo.isEthAddressOpenedForEverybody;
        }
        boolean z2 = z;
        List<Long> list2 = list;
        if ((i & 16) != 0) {
            list2 = cryptoWalletInfo.usersWithAccessToEthAddress;
        }
        return cryptoWalletInfo.copy(str, str4, str5, z2, list2);
    }

    public final String component1() {
        return this.ethAddress;
    }

    public final String component2() {
        return this.tonAddress;
    }

    public final String component3() {
        return this.tronAddress;
    }

    public final boolean component4() {
        return this.isEthAddressOpenedForEverybody;
    }

    public final List<Long> component5() {
        return this.usersWithAccessToEthAddress;
    }

    public final CryptoWalletInfo copy(String ethAddress, String tonAddress, String tronAddress, boolean z, List<Long> usersWithAccessToEthAddress) {
        Intrinsics.checkNotNullParameter(ethAddress, "ethAddress");
        Intrinsics.checkNotNullParameter(tonAddress, "tonAddress");
        Intrinsics.checkNotNullParameter(tronAddress, "tronAddress");
        Intrinsics.checkNotNullParameter(usersWithAccessToEthAddress, "usersWithAccessToEthAddress");
        return new CryptoWalletInfo(ethAddress, tonAddress, tronAddress, z, usersWithAccessToEthAddress);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoWalletInfo) {
            CryptoWalletInfo cryptoWalletInfo = (CryptoWalletInfo) obj;
            return Intrinsics.areEqual(this.ethAddress, cryptoWalletInfo.ethAddress) && Intrinsics.areEqual(this.tonAddress, cryptoWalletInfo.tonAddress) && Intrinsics.areEqual(this.tronAddress, cryptoWalletInfo.tronAddress) && this.isEthAddressOpenedForEverybody == cryptoWalletInfo.isEthAddressOpenedForEverybody && Intrinsics.areEqual(this.usersWithAccessToEthAddress, cryptoWalletInfo.usersWithAccessToEthAddress);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((this.ethAddress.hashCode() * 31) + this.tonAddress.hashCode()) * 31) + this.tronAddress.hashCode()) * 31;
        boolean z = this.isEthAddressOpenedForEverybody;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((hashCode + i) * 31) + this.usersWithAccessToEthAddress.hashCode();
    }

    public String toString() {
        return "CryptoWalletInfo(ethAddress=" + this.ethAddress + ", tonAddress=" + this.tonAddress + ", tronAddress=" + this.tronAddress + ", isEthAddressOpenedForEverybody=" + this.isEthAddressOpenedForEverybody + ", usersWithAccessToEthAddress=" + this.usersWithAccessToEthAddress + ')';
    }

    public CryptoWalletInfo(String ethAddress, String tonAddress, String tronAddress, boolean z, List<Long> usersWithAccessToEthAddress) {
        Intrinsics.checkNotNullParameter(ethAddress, "ethAddress");
        Intrinsics.checkNotNullParameter(tonAddress, "tonAddress");
        Intrinsics.checkNotNullParameter(tronAddress, "tronAddress");
        Intrinsics.checkNotNullParameter(usersWithAccessToEthAddress, "usersWithAccessToEthAddress");
        this.ethAddress = ethAddress;
        this.tonAddress = tonAddress;
        this.tronAddress = tronAddress;
        this.isEthAddressOpenedForEverybody = z;
        this.usersWithAccessToEthAddress = usersWithAccessToEthAddress;
    }

    public final String getEthAddress() {
        return this.ethAddress;
    }

    public final String getTonAddress() {
        return this.tonAddress;
    }

    public final String getTronAddress() {
        return this.tronAddress;
    }

    public final boolean isEthAddressOpenedForEverybody() {
        return this.isEthAddressOpenedForEverybody;
    }

    public final List<Long> getUsersWithAccessToEthAddress() {
        return this.usersWithAccessToEthAddress;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CryptoWalletInfo(String ethAddress, boolean z, List<Long> usersWithAccessToEthAddress) {
        this(ethAddress, "", "", z, usersWithAccessToEthAddress);
        Intrinsics.checkNotNullParameter(ethAddress, "ethAddress");
        Intrinsics.checkNotNullParameter(usersWithAccessToEthAddress, "usersWithAccessToEthAddress");
    }

    public final String getAddressByBlockchain(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        int i = WhenMappings.$EnumSwitchMapping$0[blockchainType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return this.tonAddress;
                }
                throw new NoWhenBranchMatchedException();
            }
            return this.tronAddress;
        }
        return this.ethAddress;
    }
}