package com.smedialink.storage.domain.model.crypto;

import drinkless.org.ton.TonApi;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.web3j.crypto.Credentials;
/* compiled from: Wallet.kt */
/* loaded from: classes3.dex */
public abstract class Wallet {
    private final String address;
    private final BlockchainType blockchainType;
    private final String guid;
    private final String mnemonic;

    public /* synthetic */ Wallet(String str, String str2, String str3, BlockchainType blockchainType, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, blockchainType);
    }

    private Wallet(String str, String str2, String str3, BlockchainType blockchainType) {
        this.guid = str;
        this.mnemonic = str2;
        this.address = str3;
        this.blockchainType = blockchainType;
    }

    public String getGuid() {
        return this.guid;
    }

    public String getMnemonic() {
        return this.mnemonic;
    }

    public String getAddress() {
        return this.address;
    }

    public final BlockchainType getBlockchainType() {
        return this.blockchainType;
    }

    /* compiled from: Wallet.kt */
    /* loaded from: classes3.dex */
    public static final class EVM extends Wallet {
        private final Credentials credentials;
        private final String guid;
        private final String mnemonic;

        public static /* synthetic */ EVM copy$default(EVM evm, String str, String str2, Credentials credentials, int i, Object obj) {
            if ((i & 1) != 0) {
                str = evm.getGuid();
            }
            if ((i & 2) != 0) {
                str2 = evm.getMnemonic();
            }
            if ((i & 4) != 0) {
                credentials = evm.credentials;
            }
            return evm.copy(str, str2, credentials);
        }

        public final String component1() {
            return getGuid();
        }

        public final String component2() {
            return getMnemonic();
        }

        public final Credentials component3() {
            return this.credentials;
        }

        public final EVM copy(String guid, String mnemonic, Credentials credentials) {
            Intrinsics.checkNotNullParameter(guid, "guid");
            Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
            Intrinsics.checkNotNullParameter(credentials, "credentials");
            return new EVM(guid, mnemonic, credentials);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof EVM) {
                EVM evm = (EVM) obj;
                return Intrinsics.areEqual(getGuid(), evm.getGuid()) && Intrinsics.areEqual(getMnemonic(), evm.getMnemonic()) && Intrinsics.areEqual(this.credentials, evm.credentials);
            }
            return false;
        }

        public int hashCode() {
            return (((getGuid().hashCode() * 31) + getMnemonic().hashCode()) * 31) + this.credentials.hashCode();
        }

        public String toString() {
            return "EVM(guid=" + getGuid() + ", mnemonic=" + getMnemonic() + ", credentials=" + this.credentials + ')';
        }

        @Override // com.smedialink.storage.domain.model.crypto.Wallet
        public String getGuid() {
            return this.guid;
        }

        @Override // com.smedialink.storage.domain.model.crypto.Wallet
        public String getMnemonic() {
            return this.mnemonic;
        }

        public final Credentials getCredentials() {
            return this.credentials;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public EVM(java.lang.String r8, java.lang.String r9, org.web3j.crypto.Credentials r10) {
            /*
                r7 = this;
                java.lang.String r0 = "guid"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
                java.lang.String r0 = "mnemonic"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
                java.lang.String r0 = "credentials"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
                java.lang.String r0 = r10.getAddress()
                java.lang.String r4 = org.web3j.crypto.Keys.toChecksumAddress(r0)
                java.lang.String r0 = "toChecksumAddress(credentials.address)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r0)
                com.smedialink.storage.domain.model.crypto.BlockchainType r5 = com.smedialink.storage.domain.model.crypto.BlockchainType.EVM
                r6 = 0
                r1 = r7
                r2 = r8
                r3 = r9
                r1.<init>(r2, r3, r4, r5, r6)
                r7.guid = r8
                r7.mnemonic = r9
                r7.credentials = r10
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.smedialink.storage.domain.model.crypto.Wallet.EVM.<init>(java.lang.String, java.lang.String, org.web3j.crypto.Credentials):void");
        }
    }

    /* compiled from: Wallet.kt */
    /* loaded from: classes3.dex */
    public static final class TON extends Wallet {
        private final String address;
        private final String guid;
        private final TonApi.InputKeyRegular inputKey;
        private final String mnemonic;

        public static /* synthetic */ TON copy$default(TON ton, String str, String str2, String str3, TonApi.InputKeyRegular inputKeyRegular, int i, Object obj) {
            if ((i & 1) != 0) {
                str = ton.getGuid();
            }
            if ((i & 2) != 0) {
                str2 = ton.getMnemonic();
            }
            if ((i & 4) != 0) {
                str3 = ton.getAddress();
            }
            if ((i & 8) != 0) {
                inputKeyRegular = ton.inputKey;
            }
            return ton.copy(str, str2, str3, inputKeyRegular);
        }

        public final String component1() {
            return getGuid();
        }

        public final String component2() {
            return getMnemonic();
        }

        public final String component3() {
            return getAddress();
        }

        public final TonApi.InputKeyRegular component4() {
            return this.inputKey;
        }

        public final TON copy(String guid, String mnemonic, String address, TonApi.InputKeyRegular inputKey) {
            Intrinsics.checkNotNullParameter(guid, "guid");
            Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
            Intrinsics.checkNotNullParameter(address, "address");
            Intrinsics.checkNotNullParameter(inputKey, "inputKey");
            return new TON(guid, mnemonic, address, inputKey);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof TON) {
                TON ton = (TON) obj;
                return Intrinsics.areEqual(getGuid(), ton.getGuid()) && Intrinsics.areEqual(getMnemonic(), ton.getMnemonic()) && Intrinsics.areEqual(getAddress(), ton.getAddress()) && Intrinsics.areEqual(this.inputKey, ton.inputKey);
            }
            return false;
        }

        public int hashCode() {
            return (((((getGuid().hashCode() * 31) + getMnemonic().hashCode()) * 31) + getAddress().hashCode()) * 31) + this.inputKey.hashCode();
        }

        public String toString() {
            return "TON(guid=" + getGuid() + ", mnemonic=" + getMnemonic() + ", address=" + getAddress() + ", inputKey=" + this.inputKey + ')';
        }

        @Override // com.smedialink.storage.domain.model.crypto.Wallet
        public String getGuid() {
            return this.guid;
        }

        @Override // com.smedialink.storage.domain.model.crypto.Wallet
        public String getMnemonic() {
            return this.mnemonic;
        }

        @Override // com.smedialink.storage.domain.model.crypto.Wallet
        public String getAddress() {
            return this.address;
        }

        public final TonApi.InputKeyRegular getInputKey() {
            return this.inputKey;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TON(String guid, String mnemonic, String address, TonApi.InputKeyRegular inputKey) {
            super(guid, mnemonic, address, BlockchainType.TON, null);
            Intrinsics.checkNotNullParameter(guid, "guid");
            Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
            Intrinsics.checkNotNullParameter(address, "address");
            Intrinsics.checkNotNullParameter(inputKey, "inputKey");
            this.guid = guid;
            this.mnemonic = mnemonic;
            this.address = address;
            this.inputKey = inputKey;
        }
    }
}
