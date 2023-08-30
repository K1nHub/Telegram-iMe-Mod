package com.iMe.storage.domain.model.crypto;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AccountInfo.kt */
/* loaded from: classes3.dex */
public final class AccountInfo {
    private final boolean hasAccess;
    private final List<Address> wallets;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AccountInfo copy$default(AccountInfo accountInfo, List list, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            list = accountInfo.wallets;
        }
        if ((i & 2) != 0) {
            z = accountInfo.hasAccess;
        }
        return accountInfo.copy(list, z);
    }

    public final List<Address> component1() {
        return this.wallets;
    }

    public final boolean component2() {
        return this.hasAccess;
    }

    public final AccountInfo copy(List<Address> wallets, boolean z) {
        Intrinsics.checkNotNullParameter(wallets, "wallets");
        return new AccountInfo(wallets, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountInfo) {
            AccountInfo accountInfo = (AccountInfo) obj;
            return Intrinsics.areEqual(this.wallets, accountInfo.wallets) && this.hasAccess == accountInfo.hasAccess;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.wallets.hashCode() * 31;
        boolean z = this.hasAccess;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "AccountInfo(wallets=" + this.wallets + ", hasAccess=" + this.hasAccess + ')';
    }

    public AccountInfo(List<Address> wallets, boolean z) {
        Intrinsics.checkNotNullParameter(wallets, "wallets");
        this.wallets = wallets;
        this.hasAccess = z;
    }

    public final List<Address> getWallets() {
        return this.wallets;
    }

    public final boolean getHasAccess() {
        return this.hasAccess;
    }

    /* compiled from: AccountInfo.kt */
    /* loaded from: classes3.dex */
    public static final class Address {
        private final String addressValue;
        private final BlockchainType blockchainType;
        private final boolean isAddressSet;

        public static /* synthetic */ Address copy$default(Address address, String str, boolean z, BlockchainType blockchainType, int i, Object obj) {
            if ((i & 1) != 0) {
                str = address.addressValue;
            }
            if ((i & 2) != 0) {
                z = address.isAddressSet;
            }
            if ((i & 4) != 0) {
                blockchainType = address.blockchainType;
            }
            return address.copy(str, z, blockchainType);
        }

        public final String component1() {
            return this.addressValue;
        }

        public final boolean component2() {
            return this.isAddressSet;
        }

        public final BlockchainType component3() {
            return this.blockchainType;
        }

        public final Address copy(String addressValue, boolean z, BlockchainType blockchainType) {
            Intrinsics.checkNotNullParameter(addressValue, "addressValue");
            Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
            return new Address(addressValue, z, blockchainType);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Address) {
                Address address = (Address) obj;
                return Intrinsics.areEqual(this.addressValue, address.addressValue) && this.isAddressSet == address.isAddressSet && this.blockchainType == address.blockchainType;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = this.addressValue.hashCode() * 31;
            boolean z = this.isAddressSet;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            return ((hashCode + i) * 31) + this.blockchainType.hashCode();
        }

        public String toString() {
            return "Address(addressValue=" + this.addressValue + ", isAddressSet=" + this.isAddressSet + ", blockchainType=" + this.blockchainType + ')';
        }

        public Address(String addressValue, boolean z, BlockchainType blockchainType) {
            Intrinsics.checkNotNullParameter(addressValue, "addressValue");
            Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
            this.addressValue = addressValue;
            this.isAddressSet = z;
            this.blockchainType = blockchainType;
        }

        public final String getAddressValue() {
            return this.addressValue;
        }

        public final boolean isAddressSet() {
            return this.isAddressSet;
        }

        public final BlockchainType getBlockchainType() {
            return this.blockchainType;
        }
    }
}
