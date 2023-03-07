package com.smedialink.storage.data.datasource.approve;

import com.smedialink.storage.data.datasource.base.DataSourceFactory;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletApproveDataSourceFactory.kt */
/* loaded from: classes3.dex */
public final class WalletApproveDataSourceFactory implements DataSourceFactory<TokenCode, WalletApproveDataSource> {
    private final WalletApproveDataSource ethApproveDataSource;

    public WalletApproveDataSourceFactory(WalletApproveDataSource ethApproveDataSource) {
        Intrinsics.checkNotNullParameter(ethApproveDataSource, "ethApproveDataSource");
        this.ethApproveDataSource = ethApproveDataSource;
    }

    public WalletApproveDataSource getDataSource(TokenCode arg) {
        Intrinsics.checkNotNullParameter(arg, "arg");
        if (arg.isCryptoTokens()) {
            return this.ethApproveDataSource;
        }
        throw new IllegalStateException(DataSourceFactory.Companion.unsupportedDataSource(arg.name()).toString());
    }
}
