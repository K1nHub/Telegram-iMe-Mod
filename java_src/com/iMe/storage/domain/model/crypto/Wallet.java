package com.iMe.storage.domain.model.crypto;

import com.iMe.storage.data.manager.common.EnvironmentManager;
import com.iMe.storage.domain.utils.extentions.CryptoExtKt;
import drinkless.org.ton.TonApi;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import wallet.core.jni.CoinType;
import wallet.core.jni.Derivation;
import wallet.core.jni.HDWallet;
import wallet.core.jni.PrivateKey;
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

    public abstract String getPublicKey();

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

    public BlockchainType getBlockchainType() {
        return this.blockchainType;
    }

    /* compiled from: Wallet.kt */
    /* loaded from: classes3.dex */
    public static abstract class MultiCoinWallet extends Wallet {
        private final String address;
        private final BlockchainType blockchainType;
        private final CoinType coinType;
        private final String guid;
        private final byte[] privateKeyBytes;

        public /* synthetic */ MultiCoinWallet(HDWallet hDWallet, String str, BlockchainType blockchainType, CoinType coinType, DefaultConstructorMarker defaultConstructorMarker) {
            this(hDWallet, str, blockchainType, coinType);
        }

        @Override // com.iMe.storage.domain.model.crypto.Wallet
        public String getGuid() {
            return this.guid;
        }

        @Override // com.iMe.storage.domain.model.crypto.Wallet
        public BlockchainType getBlockchainType() {
            return this.blockchainType;
        }

        protected final CoinType getCoinType() {
            return this.coinType;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private MultiCoinWallet(wallet.core.jni.HDWallet r4, java.lang.String r5, com.iMe.storage.domain.model.crypto.BlockchainType r6, wallet.core.jni.CoinType r7) {
            /*
                r3 = this;
                java.lang.String r0 = r4.mnemonic()
                java.lang.String r1 = "hdWallet.mnemonic()"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                com.iMe.storage.domain.model.crypto.BlockchainType r1 = com.iMe.storage.domain.model.crypto.BlockchainType.EVM
                r2 = 0
                r3.<init>(r5, r0, r1, r2)
                r3.guid = r5
                r3.blockchainType = r6
                r3.coinType = r7
                java.lang.String r5 = r4.getAddressForCoin(r7)
                java.lang.String r6 = "hdWallet.getAddressForCoin(coinType)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
                r3.address = r5
                byte[] r4 = com.iMe.storage.domain.utils.extentions.CryptoExtKt.getPrivateKeyBytes(r4, r7)
                r3.privateKeyBytes = r4
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.crypto.Wallet.MultiCoinWallet.<init>(wallet.core.jni.HDWallet, java.lang.String, com.iMe.storage.domain.model.crypto.BlockchainType, wallet.core.jni.CoinType):void");
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
    public static final class EVM extends MultiCoinWallet {
        private final String guid;
        private final HDWallet hdWallet;
        private final String publicKey;

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

        @Override // com.iMe.storage.domain.model.crypto.Wallet.MultiCoinWallet, com.iMe.storage.domain.model.crypto.Wallet
        public String getGuid() {
            return this.guid;
        }

        public final HDWallet getHdWallet() {
            return this.hdWallet;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EVM(String guid, HDWallet hdWallet) {
            super(hdWallet, guid, BlockchainType.EVM, CoinType.ETHEREUM, null);
            Intrinsics.checkNotNullParameter(guid, "guid");
            Intrinsics.checkNotNullParameter(hdWallet, "hdWallet");
            this.guid = guid;
            this.hdWallet = hdWallet;
            byte[] data = hdWallet.getKeyForCoin(getCoinType()).getPublicKeySecp256k1(true).data();
            Intrinsics.checkNotNullExpressionValue(data, "hdWallet\n               …                  .data()");
            this.publicKey = CryptoExtKt.toHexString$default(data, false, 1, null);
        }

        @Override // com.iMe.storage.domain.model.crypto.Wallet
        public String getPublicKey() {
            return this.publicKey;
        }
    }

    /* compiled from: Wallet.kt */
    /* loaded from: classes3.dex */
    public static final class TRON extends MultiCoinWallet {
        private final String guid;
        private final HDWallet hdWallet;
        private final String publicKey;

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

        @Override // com.iMe.storage.domain.model.crypto.Wallet.MultiCoinWallet, com.iMe.storage.domain.model.crypto.Wallet
        public String getGuid() {
            return this.guid;
        }

        public final HDWallet getHdWallet() {
            return this.hdWallet;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TRON(String guid, HDWallet hdWallet) {
            super(hdWallet, guid, BlockchainType.TRON, CoinType.TRON, null);
            Intrinsics.checkNotNullParameter(guid, "guid");
            Intrinsics.checkNotNullParameter(hdWallet, "hdWallet");
            this.guid = guid;
            this.hdWallet = hdWallet;
            byte[] data = hdWallet.getKeyForCoin(getCoinType()).getPublicKeySecp256k1(false).data();
            Intrinsics.checkNotNullExpressionValue(data, "hdWallet\n               …                  .data()");
            this.publicKey = CryptoExtKt.toHexString(data, false);
        }

        @Override // com.iMe.storage.domain.model.crypto.Wallet
        public String getPublicKey() {
            return this.publicKey;
        }
    }

    /* compiled from: Wallet.kt */
    /* loaded from: classes3.dex */
    public static final class BTC extends MultiCoinWallet {
        private final String address;
        private final String guid;
        private final HDWallet hdWallet;
        private final byte[] privateKeyBytes;
        private final String publicKey;

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

        @Override // com.iMe.storage.domain.model.crypto.Wallet.MultiCoinWallet, com.iMe.storage.domain.model.crypto.Wallet
        public String getGuid() {
            return this.guid;
        }

        public final HDWallet getHdWallet() {
            return this.hdWallet;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BTC(String guid, HDWallet hdWallet) {
            super(hdWallet, guid, BlockchainType.BITCOIN, CoinType.BITCOIN, null);
            String addressDerivation;
            PrivateKey keyDerivation;
            PrivateKey keyDerivation2;
            Intrinsics.checkNotNullParameter(guid, "guid");
            Intrinsics.checkNotNullParameter(hdWallet, "hdWallet");
            this.guid = guid;
            this.hdWallet = hdWallet;
            EnvironmentManager environmentManager = EnvironmentManager.INSTANCE;
            if (environmentManager.isProductionActive()) {
                addressDerivation = hdWallet.getAddressForCoin(getCoinType());
            } else {
                addressDerivation = hdWallet.getAddressDerivation(getCoinType(), Derivation.BITCOINTESTNET);
            }
            Intrinsics.checkNotNullExpressionValue(addressDerivation, "with(hdWallet) {\n       …)\n            }\n        }");
            this.address = addressDerivation;
            if (environmentManager.isProductionActive()) {
                keyDerivation = hdWallet.getKeyForCoin(getCoinType());
            } else {
                keyDerivation = hdWallet.getKeyDerivation(getCoinType(), Derivation.BITCOINTESTNET);
            }
            byte[] data = keyDerivation.getPublicKeySecp256k1(true).data();
            Intrinsics.checkNotNullExpressionValue(data, "hdWallet\n               …                  .data()");
            this.publicKey = CryptoExtKt.toHexString(data, false);
            if (environmentManager.isProductionActive()) {
                keyDerivation2 = CryptoExtKt.getPrivateKey(hdWallet, getCoinType());
            } else {
                keyDerivation2 = hdWallet.getKeyDerivation(getCoinType(), Derivation.BITCOINTESTNET);
            }
            byte[] data2 = keyDerivation2.data();
            Intrinsics.checkNotNullExpressionValue(data2, "with(hdWallet) {\n       …       }.data()\n        }");
            this.privateKeyBytes = data2;
        }

        @Override // com.iMe.storage.domain.model.crypto.Wallet.MultiCoinWallet, com.iMe.storage.domain.model.crypto.Wallet
        public String getAddress() {
            return this.address;
        }

        @Override // com.iMe.storage.domain.model.crypto.Wallet
        public String getPublicKey() {
            return this.publicKey;
        }

        @Override // com.iMe.storage.domain.model.crypto.Wallet.MultiCoinWallet, com.iMe.storage.domain.model.crypto.Wallet
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
        private final String publicKey;

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
            this.publicKey = CryptoExtKt.getUnarmoredPublicKey(this);
            this.privateKeyBytes = new byte[0];
        }

        @Override // com.iMe.storage.domain.model.crypto.Wallet
        public String getPublicKey() {
            return this.publicKey;
        }

        @Override // com.iMe.storage.domain.model.crypto.Wallet
        public byte[] getPrivateKeyBytes() {
            return this.privateKeyBytes;
        }
    }
}
