package com.iMe.storage.data.locale.p027db.database;

import androidx.room.RoomDatabase;
import com.iMe.storage.data.locale.p027db.dao.minor.catalog.CatalogCategoryDao;
import com.iMe.storage.data.locale.p027db.dao.minor.catalog.CatalogLanguageDao;
import com.iMe.storage.data.locale.p027db.dao.minor.cloud.AlbumsDao;
import com.iMe.storage.data.locale.p027db.dao.minor.social.SocialNetworkDao;
import com.iMe.storage.data.locale.p027db.dao.minor.wallet.WalletTokenBalanceDao;
/* compiled from: AppCacheDatabase.kt */
/* renamed from: com.iMe.storage.data.locale.db.database.AppCacheDatabase */
/* loaded from: classes3.dex */
public abstract class AppCacheDatabase extends RoomDatabase {
    public abstract CatalogCategoryDao catalogCategoryDao();

    public abstract CatalogLanguageDao catalogLanguageDao();

    public abstract AlbumsDao cloudAlbumDao();

    public abstract SocialNetworkDao socialNetworkDao();

    public abstract WalletTokenBalanceDao walletTokenBalanceDao();
}
