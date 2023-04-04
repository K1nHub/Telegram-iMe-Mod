package com.iMe.storage.data.datasource.swap;

import com.iMe.storage.data.datasource.base.DataSourceFactory;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletSwapDataSourceFactory.kt */
/* loaded from: classes3.dex */
public final class WalletSwapDataSourceFactory implements DataSourceFactory<SwapProtocol, WalletSwapDataSource> {
    private final WalletSwapDataSource dexSwapDataSource;

    /* compiled from: WalletSwapDataSourceFactory.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SwapProtocol.values().length];
            try {
                iArr[SwapProtocol.UNISWAP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SwapProtocol.UNISWAP_V3.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SwapProtocol.PANCAKESWAP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SwapProtocol.ONEINCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[SwapProtocol.SYMBIOSIS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public WalletSwapDataSourceFactory(WalletSwapDataSource dexSwapDataSource) {
        Intrinsics.checkNotNullParameter(dexSwapDataSource, "dexSwapDataSource");
        this.dexSwapDataSource = dexSwapDataSource;
    }

    public WalletSwapDataSource getDataSource(SwapProtocol arg) {
        Intrinsics.checkNotNullParameter(arg, "arg");
        int i = WhenMappings.$EnumSwitchMapping$0[arg.ordinal()];
        if (i == 1 || i == 2 || i == 3 || i == 4 || i == 5) {
            return this.dexSwapDataSource;
        }
        throw new IllegalStateException(DataSourceFactory.Companion.unsupportedDataSource(arg.name()).toString());
    }
}
