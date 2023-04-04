package com.iMe.storage.data.datasource.cancel;

import com.iMe.storage.data.datasource.base.DataSourceFactory;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletCancelDataSourceFactory.kt */
/* loaded from: classes3.dex */
public final class WalletCancelDataSourceFactory implements DataSourceFactory<TokenCode, WalletCancelDataSource> {
    private final WalletCancelDataSource ethCancelDataSource;

    public WalletCancelDataSourceFactory(WalletCancelDataSource ethCancelDataSource) {
        Intrinsics.checkNotNullParameter(ethCancelDataSource, "ethCancelDataSource");
        this.ethCancelDataSource = ethCancelDataSource;
    }

    public WalletCancelDataSource getDataSource(TokenCode arg) {
        Intrinsics.checkNotNullParameter(arg, "arg");
        if (arg.isCryptoTokens()) {
            return this.ethCancelDataSource;
        }
        throw new IllegalStateException(DataSourceFactory.Companion.unsupportedDataSource(arg.name()).toString());
    }
}
