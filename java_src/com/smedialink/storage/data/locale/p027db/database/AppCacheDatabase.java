package com.smedialink.storage.data.locale.p027db.database;

import androidx.room.RoomDatabase;
import com.smedialink.storage.data.locale.p027db.dao.minor.catalog.CatalogCategoryDao;
import com.smedialink.storage.data.locale.p027db.dao.minor.catalog.CatalogLanguageDao;
import com.smedialink.storage.data.locale.p027db.dao.minor.cloud.AlbumsDao;
import com.smedialink.storage.data.locale.p027db.dao.minor.wallet.WalletTokenBalanceDao;
/* compiled from: AppCacheDatabase.kt */
/* renamed from: com.smedialink.storage.data.locale.db.database.AppCacheDatabase */
/* loaded from: classes3.dex */
public abstract class AppCacheDatabase extends RoomDatabase {
    public abstract CatalogCategoryDao catalogCategoryDao();

    public abstract CatalogLanguageDao catalogLanguageDao();

    public abstract AlbumsDao cloudAlbumDao();

    public abstract WalletTokenBalanceDao walletTokenBalanceDao();
}
