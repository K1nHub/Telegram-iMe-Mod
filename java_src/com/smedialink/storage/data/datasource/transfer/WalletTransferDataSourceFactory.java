package com.smedialink.storage.data.datasource.transfer;

import com.smedialink.storage.data.datasource.base.DataSourceFactory;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletTransferDataSourceFactory.kt */
/* loaded from: classes3.dex */
public final class WalletTransferDataSourceFactory implements DataSourceFactory<TokenCode, WalletTransferDataSource> {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final WalletTransferDataSource evmWalletTransferDataSource;
    private final WalletTransferDataSource tonWalletTransferDataSource;

    /* compiled from: WalletTransferDataSourceFactory.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BlockchainType.values().length];
            iArr[BlockchainType.EVM.ordinal()] = 1;
            iArr[BlockchainType.TON.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public WalletTransferDataSourceFactory(WalletTransferDataSource evmWalletTransferDataSource, WalletTransferDataSource tonWalletTransferDataSource, CryptoPreferenceHelper cryptoPreferenceHelper) {
        Intrinsics.checkNotNullParameter(evmWalletTransferDataSource, "evmWalletTransferDataSource");
        Intrinsics.checkNotNullParameter(tonWalletTransferDataSource, "tonWalletTransferDataSource");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        this.evmWalletTransferDataSource = evmWalletTransferDataSource;
        this.tonWalletTransferDataSource = tonWalletTransferDataSource;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
    }

    public WalletTransferDataSource getDataSource(TokenCode arg) {
        Intrinsics.checkNotNullParameter(arg, "arg");
        if (arg.isCryptoTokens()) {
            int i = WhenMappings.$EnumSwitchMapping$0[this.cryptoPreferenceHelper.getCurrentBlockchainType().ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return this.tonWalletTransferDataSource;
                }
                throw new NoWhenBranchMatchedException();
            }
            return this.evmWalletTransferDataSource;
        }
        throw new IllegalStateException(DataSourceFactory.Companion.unsupportedDataSource(arg.name()).toString());
    }
}
