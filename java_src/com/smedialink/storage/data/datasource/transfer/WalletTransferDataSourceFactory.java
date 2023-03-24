package com.smedialink.storage.data.datasource.transfer;

import com.smedialink.storage.data.datasource.base.DataSourceFactory;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletTransferDataSourceFactory.kt */
/* loaded from: classes3.dex */
public final class WalletTransferDataSourceFactory implements DataSourceFactory<Pair<? extends TokenCode, ? extends BlockchainType>, WalletTransferDataSource> {
    private final WalletTransferDataSource evmWalletTransferDataSource;
    private final WalletTransferDataSource tonWalletTransferDataSource;
    private final WalletTransferDataSource tronWalletTransferDataSource;

    /* compiled from: WalletTransferDataSourceFactory.kt */
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
                iArr[BlockchainType.TON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BlockchainType.TRON.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public WalletTransferDataSourceFactory(WalletTransferDataSource evmWalletTransferDataSource, WalletTransferDataSource tonWalletTransferDataSource, WalletTransferDataSource tronWalletTransferDataSource) {
        Intrinsics.checkNotNullParameter(evmWalletTransferDataSource, "evmWalletTransferDataSource");
        Intrinsics.checkNotNullParameter(tonWalletTransferDataSource, "tonWalletTransferDataSource");
        Intrinsics.checkNotNullParameter(tronWalletTransferDataSource, "tronWalletTransferDataSource");
        this.evmWalletTransferDataSource = evmWalletTransferDataSource;
        this.tonWalletTransferDataSource = tonWalletTransferDataSource;
        this.tronWalletTransferDataSource = tronWalletTransferDataSource;
    }

    public WalletTransferDataSource getDataSource(Pair<? extends TokenCode, ? extends BlockchainType> arg) {
        Intrinsics.checkNotNullParameter(arg, "arg");
        TokenCode first = arg.getFirst();
        if (first.isCryptoTokens()) {
            int i = WhenMappings.$EnumSwitchMapping$0[arg.getSecond().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        return this.tronWalletTransferDataSource;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return this.tonWalletTransferDataSource;
            }
            return this.evmWalletTransferDataSource;
        }
        throw new IllegalStateException(DataSourceFactory.Companion.unsupportedDataSource(first.name()).toString());
    }
}
