package com.iMe.storage.domain.model.crypto;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: AccountInfo.kt */
/* loaded from: classes3.dex */
public final class AccountInfo {
    private final Address ethAddress;
    private final Address tonAddress;
    private final Address tronAddress;

    public static /* synthetic */ AccountInfo copy$default(AccountInfo accountInfo, Address address, Address address2, Address address3, int i, Object obj) {
        if ((i & 1) != 0) {
            address = accountInfo.ethAddress;
        }
        if ((i & 2) != 0) {
            address2 = accountInfo.tonAddress;
        }
        if ((i & 4) != 0) {
            address3 = accountInfo.tronAddress;
        }
        return accountInfo.copy(address, address2, address3);
    }

    public final Address component1() {
        return this.ethAddress;
    }

    public final Address component2() {
        return this.tonAddress;
    }

    public final Address component3() {
        return this.tronAddress;
    }

    public final AccountInfo copy(Address ethAddress, Address tonAddress, Address tronAddress) {
        Intrinsics.checkNotNullParameter(ethAddress, "ethAddress");
        Intrinsics.checkNotNullParameter(tonAddress, "tonAddress");
        Intrinsics.checkNotNullParameter(tronAddress, "tronAddress");
        return new AccountInfo(ethAddress, tonAddress, tronAddress);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountInfo) {
            AccountInfo accountInfo = (AccountInfo) obj;
            return Intrinsics.areEqual(this.ethAddress, accountInfo.ethAddress) && Intrinsics.areEqual(this.tonAddress, accountInfo.tonAddress) && Intrinsics.areEqual(this.tronAddress, accountInfo.tronAddress);
        }
        return false;
    }

    public int hashCode() {
        return (((this.ethAddress.hashCode() * 31) + this.tonAddress.hashCode()) * 31) + this.tronAddress.hashCode();
    }

    public String toString() {
        return "AccountInfo(ethAddress=" + this.ethAddress + ", tonAddress=" + this.tonAddress + ", tronAddress=" + this.tronAddress + ')';
    }

    public AccountInfo(Address ethAddress, Address tonAddress, Address tronAddress) {
        Intrinsics.checkNotNullParameter(ethAddress, "ethAddress");
        Intrinsics.checkNotNullParameter(tonAddress, "tonAddress");
        Intrinsics.checkNotNullParameter(tronAddress, "tronAddress");
        this.ethAddress = ethAddress;
        this.tonAddress = tonAddress;
        this.tronAddress = tronAddress;
    }

    public final Address getEthAddress() {
        return this.ethAddress;
    }

    public final Address getTonAddress() {
        return this.tonAddress;
    }

    public final Address getTronAddress() {
        return this.tronAddress;
    }

    /* compiled from: AccountInfo.kt */
    /* loaded from: classes3.dex */
    public static final class Address {
        private final String addressValue;
        private final boolean hasAccess;
        private final boolean isAddressSet;

        public static /* synthetic */ Address copy$default(Address address, String str, boolean z, boolean z2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = address.addressValue;
            }
            if ((i & 2) != 0) {
                z = address.isAddressSet;
            }
            if ((i & 4) != 0) {
                z2 = address.hasAccess;
            }
            return address.copy(str, z, z2);
        }

        public final String component1() {
            return this.addressValue;
        }

        public final boolean component2() {
            return this.isAddressSet;
        }

        public final boolean component3() {
            return this.hasAccess;
        }

        public final Address copy(String addressValue, boolean z, boolean z2) {
            Intrinsics.checkNotNullParameter(addressValue, "addressValue");
            return new Address(addressValue, z, z2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Address) {
                Address address = (Address) obj;
                return Intrinsics.areEqual(this.addressValue, address.addressValue) && this.isAddressSet == address.isAddressSet && this.hasAccess == address.hasAccess;
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
            int i2 = (hashCode + i) * 31;
            boolean z2 = this.hasAccess;
            return i2 + (z2 ? 1 : z2 ? 1 : 0);
        }

        public String toString() {
            return "Address(addressValue=" + this.addressValue + ", isAddressSet=" + this.isAddressSet + ", hasAccess=" + this.hasAccess + ')';
        }

        public Address(String addressValue, boolean z, boolean z2) {
            Intrinsics.checkNotNullParameter(addressValue, "addressValue");
            this.addressValue = addressValue;
            this.isAddressSet = z;
            this.hasAccess = z2;
        }

        public final String getAddressValue() {
            return this.addressValue;
        }

        public final boolean isAddressSet() {
            return this.isAddressSet;
        }

        public final boolean getHasAccess() {
            return this.hasAccess;
        }
    }
}
