package com.iMe.storage.data.datasource.cancel;

import com.iMe.storage.data.datasource.base.DataSourceFactory;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletCancelDataSourceFactory.kt */
/* loaded from: classes4.dex */
public final class WalletCancelDataSourceFactory implements DataSourceFactory<String, WalletCancelDataSource> {
    private final WalletCancelDataSource ethCancelDataSource;

    public WalletCancelDataSourceFactory(WalletCancelDataSource ethCancelDataSource) {
        Intrinsics.checkNotNullParameter(ethCancelDataSource, "ethCancelDataSource");
        this.ethCancelDataSource = ethCancelDataSource;
    }

    public WalletCancelDataSource getDataSource(String arg) {
        Intrinsics.checkNotNullParameter(arg, "arg");
        if (NetworksHelper.INSTANCE.isEVM(arg)) {
            return this.ethCancelDataSource;
        }
        throw new IllegalStateException(DataSourceFactory.Companion.unsupportedDataSource(arg).toString());
    }
}
