package com.iMe.storage.domain.model.crypto;

import com.iMe.storage.domain.utils.extentions.CryptoExtKt;
import drinkless.org.ton.TonApi;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import wallet.core.jni.CoinType;
import wallet.core.jni.HDWallet;
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
        private final String guid;
        private final HDWallet hdWallet;

        public static /* synthetic */ EVM copy$default(EVM evm, String str, HDWallet hDWallet, int i, Object obj) {
            if ((i & 1) != 0) {
                str = evm.getGuid();
            }
            if ((i & 2) != 0) {
                hDWallet = evm.hdWallet;
            }
            return evm.copy(str, hDWallet);
        }

        public final String component1() {
            return getGuid();
        }

        public final HDWallet component2() {
            return this.hdWallet;
        }

        public final EVM copy(String guid, HDWallet hdWallet) {
            Intrinsics.checkNotNullParameter(guid, "guid");
            Intrinsics.checkNotNullParameter(hdWallet, "hdWallet");
            return new EVM(guid, hdWallet);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof EVM) {
                EVM evm = (EVM) obj;
                return Intrinsics.areEqual(getGuid(), evm.getGuid()) && Intrinsics.areEqual(this.hdWallet, evm.hdWallet);
            }
            return false;
        }

        public int hashCode() {
            return (getGuid().hashCode() * 31) + this.hdWallet.hashCode();
        }

        public String toString() {
            return "EVM(guid=" + getGuid() + ", hdWallet=" + this.hdWallet + ')';
        }

        @Override // com.iMe.storage.domain.model.crypto.Wallet
        public String getGuid() {
            return this.guid;
        }

        public final HDWallet getHdWallet() {
            return this.hdWallet;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public EVM(java.lang.String r8, wallet.core.jni.HDWallet r9) {
            /*
                r7 = this;
                java.lang.String r0 = "guid"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
                java.lang.String r0 = "hdWallet"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
                java.lang.String r3 = r9.mnemonic()
                java.lang.String r0 = "hdWallet.mnemonic()"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r0)
                wallet.core.jni.CoinType r0 = wallet.core.jni.CoinType.ETHEREUM
                java.lang.String r4 = r9.getAddressForCoin(r0)
                java.lang.String r0 = "hdWallet.getAddressForCoin(CoinType.ETHEREUM)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r0)
                com.iMe.storage.domain.model.crypto.BlockchainType r5 = com.iMe.storage.domain.model.crypto.BlockchainType.EVM
                r6 = 0
                r1 = r7
                r2 = r8
                r1.<init>(r2, r3, r4, r5, r6)
                r7.guid = r8
                r7.hdWallet = r9
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.crypto.Wallet.EVM.<init>(java.lang.String, wallet.core.jni.HDWallet):void");
        }

        public final byte[] getPrivateKeyBytes() {
            return CryptoExtKt.getPrivateKeyBytes(this.hdWallet, CoinType.ETHEREUM);
        }
    }

    /* compiled from: Wallet.kt */
    /* loaded from: classes3.dex */
    public static final class TRON extends Wallet {
        private final String guid;
        private final HDWallet hdWallet;

        public static /* synthetic */ TRON copy$default(TRON tron, String str, HDWallet hDWallet, int i, Object obj) {
            if ((i & 1) != 0) {
                str = tron.getGuid();
            }
            if ((i & 2) != 0) {
                hDWallet = tron.hdWallet;
            }
            return tron.copy(str, hDWallet);
        }

        public final String component1() {
            return getGuid();
        }

        public final HDWallet component2() {
            return this.hdWallet;
        }

        public final TRON copy(String guid, HDWallet hdWallet) {
            Intrinsics.checkNotNullParameter(guid, "guid");
            Intrinsics.checkNotNullParameter(hdWallet, "hdWallet");
            return new TRON(guid, hdWallet);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof TRON) {
                TRON tron = (TRON) obj;
                return Intrinsics.areEqual(getGuid(), tron.getGuid()) && Intrinsics.areEqual(this.hdWallet, tron.hdWallet);
            }
            return false;
        }

        public int hashCode() {
            return (getGuid().hashCode() * 31) + this.hdWallet.hashCode();
        }

        public String toString() {
            return "TRON(guid=" + getGuid() + ", hdWallet=" + this.hdWallet + ')';
        }

        @Override // com.iMe.storage.domain.model.crypto.Wallet
        public String getGuid() {
            return this.guid;
        }

        public final HDWallet getHdWallet() {
            return this.hdWallet;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public TRON(java.lang.String r8, wallet.core.jni.HDWallet r9) {
            /*
                r7 = this;
                java.lang.String r0 = "guid"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
                java.lang.String r0 = "hdWallet"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
                java.lang.String r3 = r9.mnemonic()
                java.lang.String r0 = "hdWallet.mnemonic()"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r0)
                wallet.core.jni.CoinType r0 = wallet.core.jni.CoinType.TRON
                java.lang.String r4 = r9.getAddressForCoin(r0)
                java.lang.String r0 = "hdWallet.getAddressForCoin(CoinType.TRON)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r0)
                com.iMe.storage.domain.model.crypto.BlockchainType r5 = com.iMe.storage.domain.model.crypto.BlockchainType.TRON
                r6 = 0
                r1 = r7
                r2 = r8
                r1.<init>(r2, r3, r4, r5, r6)
                r7.guid = r8
                r7.hdWallet = r9
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.crypto.Wallet.TRON.<init>(java.lang.String, wallet.core.jni.HDWallet):void");
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

        @Override // com.iMe.storage.domain.model.crypto.Wallet
        public String getGuid() {
            return this.guid;
        }

        @Override // com.iMe.storage.domain.model.crypto.Wallet
        public String getMnemonic() {
            return this.mnemonic;
        }

        @Override // com.iMe.storage.domain.model.crypto.Wallet
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
