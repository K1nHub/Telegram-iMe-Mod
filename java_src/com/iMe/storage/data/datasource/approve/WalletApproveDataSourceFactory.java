package com.iMe.storage.data.datasource.approve;

import com.iMe.storage.data.datasource.base.DataSourceFactory;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletApproveDataSourceFactory.kt */
/* loaded from: classes4.dex */
public final class WalletApproveDataSourceFactory implements DataSourceFactory<BlockchainType, WalletApproveDataSource> {
    private final WalletApproveDataSource ethApproveDataSource;

    /* compiled from: WalletApproveDataSourceFactory.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BlockchainType.values().length];
            try {
                iArr[BlockchainType.EVM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public WalletApproveDataSourceFactory(WalletApproveDataSource ethApproveDataSource) {
        Intrinsics.checkNotNullParameter(ethApproveDataSource, "ethApproveDataSource");
        this.ethApproveDataSource = ethApproveDataSource;
    }

    public WalletApproveDataSource getDataSource(BlockchainType arg) {
        Intrinsics.checkNotNullParameter(arg, "arg");
        if (WhenMappings.$EnumSwitchMapping$0[arg.ordinal()] == 1) {
            return this.ethApproveDataSource;
        }
        throw new IllegalStateException(DataSourceFactory.Companion.unsupportedDataSource(arg.name()).toString());
    }
}
