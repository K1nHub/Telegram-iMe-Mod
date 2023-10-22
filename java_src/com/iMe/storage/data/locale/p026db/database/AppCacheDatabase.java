package com.iMe.storage.data.locale.p026db.database;

import androidx.room.RoomDatabase;
import com.iMe.storage.data.locale.p026db.dao.minor.catalog.CatalogCategoryDao;
import com.iMe.storage.data.locale.p026db.dao.minor.catalog.CatalogLanguageDao;
import com.iMe.storage.data.locale.p026db.dao.minor.cloud.CloudAlbumsDao;
import com.iMe.storage.data.locale.p026db.dao.minor.social.SocialNetworkDao;
import com.iMe.storage.data.locale.p026db.dao.minor.wallet.WalletTokensBalancesDao;
/* compiled from: AppCacheDatabase.kt */
/* renamed from: com.iMe.storage.data.locale.db.database.AppCacheDatabase */
/* loaded from: classes3.dex */
public abstract class AppCacheDatabase extends RoomDatabase {
    public abstract CatalogCategoryDao catalogCategoryDao();

    public abstract CatalogLanguageDao catalogLanguageDao();

    public abstract CloudAlbumsDao cloudAlbumDao();

    public abstract SocialNetworkDao socialNetworkDao();

    public abstract WalletTokensBalancesDao walletTokenBalanceDao();
}
