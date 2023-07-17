package com.iMe.storage.domain.model.crypto;

import com.iMe.storage.R$drawable;
import com.iMe.storage.R$string;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import wallet.core.jni.CoinType;
/* compiled from: BlockchainType.kt */
/* loaded from: classes3.dex */
public enum BlockchainType {
    EVM("ETHEREUM_VM", R$drawable.fork_ic_evm_logo, R$string.wallet_crypto_blockchains_evm_title, R$string.wallet_crypto_blockchains_evm_subtitle, CoinType.ETHEREUM),
    TRON("TRON_VM", R$drawable.fork_ic_tron_logo, R$string.wallet_crypto_blockchains_tron_title, R$string.wallet_crypto_blockchains_tron_subtitle, CoinType.TRON),
    TON("TON_VM", R$drawable.fork_ic_ton_logo, R$string.wallet_crypto_blockchains_ton_title, R$string.wallet_crypto_blockchains_ton_subtitle, CoinType.TON),
    BITCOIN(NetworkType.BTC, R$drawable.fork_ic_bitcoin_logo, R$string.wallet_crypto_blockchains_bitcoin_title, R$string.wallet_crypto_blockchains_bitcoin_subtitle, CoinType.BITCOIN);
    
    public static final Companion Companion = new Companion(null);
    private final String backendName;
    private final CoinType coinType;
    private final int iconResId;
    private final int subtitleResId;
    private final int titleResId;

    public static final BlockchainType map(String str) {
        return Companion.map(str);
    }

    BlockchainType(String str, int i, int i2, int i3, CoinType coinType) {
        this.backendName = str;
        this.iconResId = i;
        this.titleResId = i2;
        this.subtitleResId = i3;
        this.coinType = coinType;
    }

    public final String getBackendName() {
        return this.backendName;
    }

    public final int getIconResId() {
        return this.iconResId;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    public final int getSubtitleResId() {
        return this.subtitleResId;
    }

    public final CoinType getCoinType() {
        return this.coinType;
    }

    public final boolean isBip39PhraseBased() {
        return Companion.getBip39PhraseBasedBlockchains().contains(this);
    }

    /* compiled from: BlockchainType.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BlockchainType map(String name) {
            BlockchainType blockchainType;
            Intrinsics.checkNotNullParameter(name, "name");
            BlockchainType[] values = BlockchainType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    blockchainType = null;
                    break;
                }
                blockchainType = values[i];
                if (Intrinsics.areEqual(blockchainType.name(), name)) {
                    break;
                }
                i++;
            }
            return blockchainType == null ? BlockchainType.EVM : blockchainType;
        }

        public final BlockchainType mapByBackendName(String name) {
            BlockchainType blockchainType;
            Intrinsics.checkNotNullParameter(name, "name");
            BlockchainType[] values = BlockchainType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    blockchainType = null;
                    break;
                }
                blockchainType = values[i];
                if (Intrinsics.areEqual(blockchainType.getBackendName(), name)) {
                    break;
                }
                i++;
            }
            return blockchainType == null ? BlockchainType.EVM : blockchainType;
        }

        public final List<BlockchainType> getBip39PhraseBasedBlockchains() {
            return CollectionsKt.listOf((Object[]) new BlockchainType[]{BlockchainType.EVM, BlockchainType.TRON, BlockchainType.BITCOIN});
        }
    }
}
