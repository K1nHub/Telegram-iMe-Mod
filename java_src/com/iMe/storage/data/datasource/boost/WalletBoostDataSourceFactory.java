package com.iMe.storage.data.datasource.boost;

import com.iMe.storage.data.datasource.approve.WalletApproveDataSource;
import com.iMe.storage.data.datasource.base.DataSourceFactory;
import com.iMe.storage.data.datasource.base.SignTransactionDatasource;
import com.iMe.storage.data.datasource.swap.WalletSwapDataSource;
import com.iMe.storage.data.datasource.transfer.WalletTransferDataSource;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.model.crypto.swap.ApproveArgs;
import com.iMe.storage.domain.model.crypto.swap.SwapArgs;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletBoostDataSourceFactory.kt */
/* loaded from: classes4.dex */
public final class WalletBoostDataSourceFactory implements DataSourceFactory<TransactionArgs, SignTransactionDatasource<TransactionArgs>> {
    private final WalletSwapDataSource dexWalletSwapDataSource;
    private final WalletApproveDataSource ethWalletApproveDataSource;
    private final WalletTransferDataSource ethWalletTransferDataSource;

    public WalletBoostDataSourceFactory(WalletTransferDataSource ethWalletTransferDataSource, WalletApproveDataSource ethWalletApproveDataSource, WalletSwapDataSource dexWalletSwapDataSource) {
        Intrinsics.checkNotNullParameter(ethWalletTransferDataSource, "ethWalletTransferDataSource");
        Intrinsics.checkNotNullParameter(ethWalletApproveDataSource, "ethWalletApproveDataSource");
        Intrinsics.checkNotNullParameter(dexWalletSwapDataSource, "dexWalletSwapDataSource");
        this.ethWalletTransferDataSource = ethWalletTransferDataSource;
        this.ethWalletApproveDataSource = ethWalletApproveDataSource;
        this.dexWalletSwapDataSource = dexWalletSwapDataSource;
    }

    public SignTransactionDatasource<TransactionArgs> getDataSource(TransactionArgs arg) {
        Intrinsics.checkNotNullParameter(arg, "arg");
        if (arg instanceof TransferArgs.EVM) {
            return this.ethWalletTransferDataSource;
        }
        if (arg instanceof SwapArgs.Dex) {
            return this.dexWalletSwapDataSource;
        }
        if (arg instanceof ApproveArgs.Dex) {
            return this.ethWalletApproveDataSource;
        }
        throw new IllegalStateException(DataSourceFactory.Companion.unsupportedDataSource("").toString());
    }
}
