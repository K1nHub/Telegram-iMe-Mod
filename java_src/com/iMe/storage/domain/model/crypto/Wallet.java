package com.iMe.storage.domain.model.crypto;

import drinkless.org.ton.TonApi;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import wallet.core.jni.HDWallet;
/* compiled from: Wallet.kt */
/* loaded from: classes3.dex */
public abstract class Wallet {
    private final BlockchainType blockchainType;
    private final String guid;
    private final String mnemonic;

    public /* synthetic */ Wallet(String str, String str2, BlockchainType blockchainType, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, blockchainType);
    }

    public abstract String getAddress();

    public abstract byte[] getPrivateKeyBytes();

    private Wallet(String str, String str2, BlockchainType blockchainType) {
        this.guid = str;
        this.mnemonic = str2;
        this.blockchainType = blockchainType;
    }

    public String getGuid() {
        return this.guid;
    }

    public String getMnemonic() {
        return this.mnemonic;
    }

    public final BlockchainType getBlockchainType() {
        return this.blockchainType;
    }

    /* compiled from: Wallet.kt */
    /* loaded from: classes3.dex */
    public static final class EVM extends Wallet {
        private final String address;
        private final String guid;
        private final HDWallet hdWallet;
        private final byte[] privateKeyBytes;

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
        public EVM(java.lang.String r4, wallet.core.jni.HDWallet r5) {
            /*
                r3 = this;
                java.lang.String r0 = "guid"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
                java.lang.String r0 = "hdWallet"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                java.lang.String r0 = r5.mnemonic()
                java.lang.String r1 = "hdWallet.mnemonic()"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                com.iMe.storage.domain.model.crypto.BlockchainType r1 = com.iMe.storage.domain.model.crypto.BlockchainType.EVM
                r2 = 0
                r3.<init>(r4, r0, r1, r2)
                r3.guid = r4
                r3.hdWallet = r5
                wallet.core.jni.CoinType r4 = wallet.core.jni.CoinType.ETHEREUM
                java.lang.String r0 = r5.getAddressForCoin(r4)
                java.lang.String r1 = "hdWallet.getAddressForCoin(CoinType.ETHEREUM)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                r3.address = r0
                byte[] r4 = com.iMe.storage.domain.utils.extentions.CryptoExtKt.getPrivateKeyBytes(r5, r4)
                r3.privateKeyBytes = r4
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.crypto.Wallet.EVM.<init>(java.lang.String, wallet.core.jni.HDWallet):void");
        }

        @Override // com.iMe.storage.domain.model.crypto.Wallet
        public String getAddress() {
            return this.address;
        }

        @Override // com.iMe.storage.domain.model.crypto.Wallet
        public byte[] getPrivateKeyBytes() {
            return this.privateKeyBytes;
        }
    }

    /* compiled from: Wallet.kt */
    /* loaded from: classes3.dex */
    public static final class TRON extends Wallet {
        private final String address;
        private final String guid;
        private final HDWallet hdWallet;
        private final byte[] privateKeyBytes;

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
        public TRON(java.lang.String r4, wallet.core.jni.HDWallet r5) {
            /*
                r3 = this;
                java.lang.String r0 = "guid"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
                java.lang.String r0 = "hdWallet"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                java.lang.String r0 = r5.mnemonic()
                java.lang.String r1 = "hdWallet.mnemonic()"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                com.iMe.storage.domain.model.crypto.BlockchainType r1 = com.iMe.storage.domain.model.crypto.BlockchainType.TRON
                r2 = 0
                r3.<init>(r4, r0, r1, r2)
                r3.guid = r4
                r3.hdWallet = r5
                wallet.core.jni.CoinType r4 = wallet.core.jni.CoinType.TRON
                java.lang.String r0 = r5.getAddressForCoin(r4)
                java.lang.String r1 = "hdWallet.getAddressForCoin(CoinType.TRON)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                r3.address = r0
                byte[] r4 = com.iMe.storage.domain.utils.extentions.CryptoExtKt.getPrivateKeyBytes(r5, r4)
                r3.privateKeyBytes = r4
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.crypto.Wallet.TRON.<init>(java.lang.String, wallet.core.jni.HDWallet):void");
        }

        @Override // com.iMe.storage.domain.model.crypto.Wallet
        public String getAddress() {
            return this.address;
        }

        @Override // com.iMe.storage.domain.model.crypto.Wallet
        public byte[] getPrivateKeyBytes() {
            return this.privateKeyBytes;
        }
    }

    /* compiled from: Wallet.kt */
    /* loaded from: classes3.dex */
    public static final class TON extends Wallet {
        private final String address;
        private final String guid;
        private final TonApi.InputKeyRegular inputKey;
        private final String mnemonic;
        private final byte[] privateKeyBytes;

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
            super(guid, mnemonic, BlockchainType.TON, null);
            Intrinsics.checkNotNullParameter(guid, "guid");
            Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
            Intrinsics.checkNotNullParameter(address, "address");
            Intrinsics.checkNotNullParameter(inputKey, "inputKey");
            this.guid = guid;
            this.mnemonic = mnemonic;
            this.address = address;
            this.inputKey = inputKey;
            this.privateKeyBytes = new byte[0];
        }

        @Override // com.iMe.storage.domain.model.crypto.Wallet
        public byte[] getPrivateKeyBytes() {
            return this.privateKeyBytes;
        }
    }

    /* compiled from: Wallet.kt */
    /* loaded from: classes3.dex */
    public static final class BTC extends Wallet {
        private final String address;
        private final String guid;
        private final HDWallet hdWallet;
        private final byte[] privateKeyBytes;

        public static /* synthetic */ BTC copy$default(BTC btc, String str, HDWallet hDWallet, int i, Object obj) {
            if ((i & 1) != 0) {
                str = btc.getGuid();
            }
            if ((i & 2) != 0) {
                hDWallet = btc.hdWallet;
            }
            return btc.copy(str, hDWallet);
        }

        public final String component1() {
            return getGuid();
        }

        public final HDWallet component2() {
            return this.hdWallet;
        }

        public final BTC copy(String guid, HDWallet hdWallet) {
            Intrinsics.checkNotNullParameter(guid, "guid");
            Intrinsics.checkNotNullParameter(hdWallet, "hdWallet");
            return new BTC(guid, hdWallet);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof BTC) {
                BTC btc = (BTC) obj;
                return Intrinsics.areEqual(getGuid(), btc.getGuid()) && Intrinsics.areEqual(this.hdWallet, btc.hdWallet);
            }
            return false;
        }

        public int hashCode() {
            return (getGuid().hashCode() * 31) + this.hdWallet.hashCode();
        }

        public String toString() {
            return "BTC(guid=" + getGuid() + ", hdWallet=" + this.hdWallet + ')';
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
        public BTC(java.lang.String r4, wallet.core.jni.HDWallet r5) {
            /*
                r3 = this;
                java.lang.String r0 = "guid"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
                java.lang.String r0 = "hdWallet"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                java.lang.String r0 = r5.mnemonic()
                java.lang.String r1 = "hdWallet.mnemonic()"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                com.iMe.storage.domain.model.crypto.BlockchainType r1 = com.iMe.storage.domain.model.crypto.BlockchainType.BITCOIN
                r2 = 0
                r3.<init>(r4, r0, r1, r2)
                r3.guid = r4
                r3.hdWallet = r5
                com.iMe.storage.data.manager.common.EnvironmentManager r4 = com.iMe.storage.data.manager.common.EnvironmentManager.INSTANCE
                boolean r0 = r4.isProductionActive()
                if (r0 == 0) goto L2c
                wallet.core.jni.CoinType r0 = wallet.core.jni.CoinType.BITCOIN
                java.lang.String r0 = r5.getAddressForCoin(r0)
                goto L34
            L2c:
                wallet.core.jni.CoinType r0 = wallet.core.jni.CoinType.BITCOIN
                wallet.core.jni.Derivation r1 = wallet.core.jni.Derivation.BITCOINTESTNET
                java.lang.String r0 = r5.getAddressDerivation(r0, r1)
            L34:
                java.lang.String r1 = "with(hdWallet) {\n       …)\n            }\n        }"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                r3.address = r0
                boolean r4 = r4.isProductionActive()
                if (r4 == 0) goto L48
                wallet.core.jni.CoinType r4 = wallet.core.jni.CoinType.BITCOIN
                wallet.core.jni.PrivateKey r4 = com.iMe.storage.domain.utils.extentions.CryptoExtKt.getPrivateKey(r5, r4)
                goto L50
            L48:
                wallet.core.jni.CoinType r4 = wallet.core.jni.CoinType.BITCOIN
                wallet.core.jni.Derivation r0 = wallet.core.jni.Derivation.BITCOINTESTNET
                wallet.core.jni.PrivateKey r4 = r5.getKeyDerivation(r4, r0)
            L50:
                byte[] r4 = r4.data()
                java.lang.String r5 = "with(hdWallet) {\n       …       }.data()\n        }"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)
                r3.privateKeyBytes = r4
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.crypto.Wallet.BTC.<init>(java.lang.String, wallet.core.jni.HDWallet):void");
        }

        @Override // com.iMe.storage.domain.model.crypto.Wallet
        public String getAddress() {
            return this.address;
        }

        @Override // com.iMe.storage.domain.model.crypto.Wallet
        public byte[] getPrivateKeyBytes() {
            return this.privateKeyBytes;
        }
    }
}
