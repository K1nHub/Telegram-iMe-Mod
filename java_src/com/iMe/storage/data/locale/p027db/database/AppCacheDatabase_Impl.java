package com.iMe.storage.data.locale.p027db.database;

import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomOpenHelper;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.p011db.SupportSQLiteDatabase;
import androidx.sqlite.p011db.SupportSQLiteOpenHelper;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.iMe.storage.data.locale.p027db.dao.minor.catalog.CatalogCategoryDao;
import com.iMe.storage.data.locale.p027db.dao.minor.catalog.CatalogCategoryDao_Impl;
import com.iMe.storage.data.locale.p027db.dao.minor.catalog.CatalogLanguageDao;
import com.iMe.storage.data.locale.p027db.dao.minor.catalog.CatalogLanguageDao_Impl;
import com.iMe.storage.data.locale.p027db.dao.minor.cloud.AlbumsDao;
import com.iMe.storage.data.locale.p027db.dao.minor.cloud.AlbumsDao_Impl;
import com.iMe.storage.data.locale.p027db.dao.minor.social.SocialNetworkDao;
import com.iMe.storage.data.locale.p027db.dao.minor.social.SocialNetworkDao_Impl;
import com.iMe.storage.data.locale.p027db.dao.minor.wallet.WalletTokensBalancesDao;
import com.iMe.storage.data.locale.p027db.dao.minor.wallet.WalletTokensBalancesDao_Impl;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.iMe.storage.data.locale.db.database.AppCacheDatabase_Impl */
/* loaded from: classes4.dex */
public final class AppCacheDatabase_Impl extends AppCacheDatabase {
    private volatile AlbumsDao _albumsDao;
    private volatile CatalogCategoryDao _catalogCategoryDao;
    private volatile CatalogLanguageDao _catalogLanguageDao;
    private volatile SocialNetworkDao _socialNetworkDao;
    private volatile WalletTokensBalancesDao _walletTokensBalancesDao;

    @Override // androidx.room.RoomDatabase
    protected SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration configuration) {
        return configuration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(configuration.context).name(configuration.name).callback(new RoomOpenHelper(configuration, new RoomOpenHelper.Delegate(11) { // from class: com.iMe.storage.data.locale.db.database.AppCacheDatabase_Impl.1
            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPostMigrate(SupportSQLiteDatabase _db) {
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void createAllTables(SupportSQLiteDatabase _db) {
                _db.execSQL("CREATE TABLE IF NOT EXISTS `CatalogCategoryDb` (`id` INTEGER NOT NULL, `title` TEXT NOT NULL, `total` INTEGER NOT NULL, PRIMARY KEY(`id`))");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `CatalogLanguageDb` (`id` INTEGER NOT NULL, `nativeTitle` TEXT NOT NULL, `title` TEXT NOT NULL, PRIMARY KEY(`id`))");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `CloudAlbumDb` (`userId` INTEGER NOT NULL, `albumId` INTEGER NOT NULL, PRIMARY KEY(`userId`, `albumId`))");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `WalletTokenBalanceDb` (`tgUserId` INTEGER NOT NULL, `total` REAL NOT NULL, `totalInFiatValue` REAL NOT NULL, `totalInFiatSymbol` TEXT NOT NULL, `totalInFiatTicker` TEXT NOT NULL, `rateToFiatValue` REAL NOT NULL, `rateToFiatSymbol` TEXT NOT NULL, `rateToFiatTicker` TEXT NOT NULL, `ratePercentageChange24h` REAL NOT NULL, `address` TEXT NOT NULL, `networkId` TEXT NOT NULL, `avatarUrl` TEXT NOT NULL, `decimals` INTEGER NOT NULL, `ticker` TEXT NOT NULL, `isCoin` INTEGER NOT NULL, `name` TEXT NOT NULL, `website` TEXT NOT NULL, PRIMARY KEY(`tgUserId`, `ticker`, `networkId`))");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `social` (`profileId` INTEGER NOT NULL, `social` TEXT NOT NULL, `iconUrl` TEXT NOT NULL, `socialPosition` INTEGER NOT NULL, `socialElementId` TEXT NOT NULL, `socialElementAvatarUrl` TEXT NOT NULL, `socialUserName` TEXT NOT NULL, `socialWebUrl` TEXT NOT NULL, `isActive` INTEGER NOT NULL, `beforeConnectMessage` TEXT NOT NULL, PRIMARY KEY(`profileId`, `social`))");
                _db.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                _db.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '9018970c7b9d213d33ac9bd2b79bcb38')");
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void dropAllTables(SupportSQLiteDatabase _db) {
                _db.execSQL("DROP TABLE IF EXISTS `CatalogCategoryDb`");
                _db.execSQL("DROP TABLE IF EXISTS `CatalogLanguageDb`");
                _db.execSQL("DROP TABLE IF EXISTS `CloudAlbumDb`");
                _db.execSQL("DROP TABLE IF EXISTS `WalletTokenBalanceDb`");
                _db.execSQL("DROP TABLE IF EXISTS `social`");
                if (((RoomDatabase) AppCacheDatabase_Impl.this).mCallbacks != null) {
                    int size = ((RoomDatabase) AppCacheDatabase_Impl.this).mCallbacks.size();
                    for (int i = 0; i < size; i++) {
                        ((RoomDatabase.Callback) ((RoomDatabase) AppCacheDatabase_Impl.this).mCallbacks.get(i)).onDestructiveMigration(_db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            protected void onCreate(SupportSQLiteDatabase _db) {
                if (((RoomDatabase) AppCacheDatabase_Impl.this).mCallbacks != null) {
                    int size = ((RoomDatabase) AppCacheDatabase_Impl.this).mCallbacks.size();
                    for (int i = 0; i < size; i++) {
                        ((RoomDatabase.Callback) ((RoomDatabase) AppCacheDatabase_Impl.this).mCallbacks.get(i)).onCreate(_db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onOpen(SupportSQLiteDatabase _db) {
                ((RoomDatabase) AppCacheDatabase_Impl.this).mDatabase = _db;
                AppCacheDatabase_Impl.this.internalInitInvalidationTracker(_db);
                if (((RoomDatabase) AppCacheDatabase_Impl.this).mCallbacks != null) {
                    int size = ((RoomDatabase) AppCacheDatabase_Impl.this).mCallbacks.size();
                    for (int i = 0; i < size; i++) {
                        ((RoomDatabase.Callback) ((RoomDatabase) AppCacheDatabase_Impl.this).mCallbacks.get(i)).onOpen(_db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPreMigrate(SupportSQLiteDatabase _db) {
                DBUtil.dropFtsSyncTriggers(_db);
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            protected RoomOpenHelper.ValidationResult onValidateSchema(SupportSQLiteDatabase _db) {
                HashMap hashMap = new HashMap(3);
                hashMap.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
                hashMap.put("title", new TableInfo.Column("title", "TEXT", true, 0, null, 1));
                hashMap.put("total", new TableInfo.Column("total", "INTEGER", true, 0, null, 1));
                TableInfo tableInfo = new TableInfo("CatalogCategoryDb", hashMap, new HashSet(0), new HashSet(0));
                TableInfo read = TableInfo.read(_db, "CatalogCategoryDb");
                if (!tableInfo.equals(read)) {
                    return new RoomOpenHelper.ValidationResult(false, "CatalogCategoryDb(com.iMe.storage.data.locale.db.model.catalog.CatalogCategoryDb).\n Expected:\n" + tableInfo + "\n Found:\n" + read);
                }
                HashMap hashMap2 = new HashMap(3);
                hashMap2.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "INTEGER", true, 1, null, 1));
                hashMap2.put("nativeTitle", new TableInfo.Column("nativeTitle", "TEXT", true, 0, null, 1));
                hashMap2.put("title", new TableInfo.Column("title", "TEXT", true, 0, null, 1));
                TableInfo tableInfo2 = new TableInfo("CatalogLanguageDb", hashMap2, new HashSet(0), new HashSet(0));
                TableInfo read2 = TableInfo.read(_db, "CatalogLanguageDb");
                if (!tableInfo2.equals(read2)) {
                    return new RoomOpenHelper.ValidationResult(false, "CatalogLanguageDb(com.iMe.storage.data.locale.db.model.catalog.CatalogLanguageDb).\n Expected:\n" + tableInfo2 + "\n Found:\n" + read2);
                }
                HashMap hashMap3 = new HashMap(2);
                hashMap3.put("userId", new TableInfo.Column("userId", "INTEGER", true, 1, null, 1));
                hashMap3.put("albumId", new TableInfo.Column("albumId", "INTEGER", true, 2, null, 1));
                TableInfo tableInfo3 = new TableInfo("CloudAlbumDb", hashMap3, new HashSet(0), new HashSet(0));
                TableInfo read3 = TableInfo.read(_db, "CloudAlbumDb");
                if (!tableInfo3.equals(read3)) {
                    return new RoomOpenHelper.ValidationResult(false, "CloudAlbumDb(com.iMe.storage.data.locale.db.model.cloud.CloudAlbumDb).\n Expected:\n" + tableInfo3 + "\n Found:\n" + read3);
                }
                HashMap hashMap4 = new HashMap(17);
                hashMap4.put("tgUserId", new TableInfo.Column("tgUserId", "INTEGER", true, 1, null, 1));
                hashMap4.put("total", new TableInfo.Column("total", "REAL", true, 0, null, 1));
                hashMap4.put("totalInFiatValue", new TableInfo.Column("totalInFiatValue", "REAL", true, 0, null, 1));
                hashMap4.put("totalInFiatSymbol", new TableInfo.Column("totalInFiatSymbol", "TEXT", true, 0, null, 1));
                hashMap4.put("totalInFiatTicker", new TableInfo.Column("totalInFiatTicker", "TEXT", true, 0, null, 1));
                hashMap4.put("rateToFiatValue", new TableInfo.Column("rateToFiatValue", "REAL", true, 0, null, 1));
                hashMap4.put("rateToFiatSymbol", new TableInfo.Column("rateToFiatSymbol", "TEXT", true, 0, null, 1));
                hashMap4.put("rateToFiatTicker", new TableInfo.Column("rateToFiatTicker", "TEXT", true, 0, null, 1));
                hashMap4.put("ratePercentageChange24h", new TableInfo.Column("ratePercentageChange24h", "REAL", true, 0, null, 1));
                hashMap4.put("address", new TableInfo.Column("address", "TEXT", true, 0, null, 1));
                hashMap4.put("networkId", new TableInfo.Column("networkId", "TEXT", true, 3, null, 1));
                hashMap4.put("avatarUrl", new TableInfo.Column("avatarUrl", "TEXT", true, 0, null, 1));
                hashMap4.put("decimals", new TableInfo.Column("decimals", "INTEGER", true, 0, null, 1));
                hashMap4.put("ticker", new TableInfo.Column("ticker", "TEXT", true, 2, null, 1));
                hashMap4.put("isCoin", new TableInfo.Column("isCoin", "INTEGER", true, 0, null, 1));
                hashMap4.put(AppMeasurementSdk.ConditionalUserProperty.NAME, new TableInfo.Column(AppMeasurementSdk.ConditionalUserProperty.NAME, "TEXT", true, 0, null, 1));
                hashMap4.put("website", new TableInfo.Column("website", "TEXT", true, 0, null, 1));
                TableInfo tableInfo4 = new TableInfo("WalletTokenBalanceDb", hashMap4, new HashSet(0), new HashSet(0));
                TableInfo read4 = TableInfo.read(_db, "WalletTokenBalanceDb");
                if (!tableInfo4.equals(read4)) {
                    return new RoomOpenHelper.ValidationResult(false, "WalletTokenBalanceDb(com.iMe.storage.data.locale.db.model.wallet.WalletTokenBalanceDb).\n Expected:\n" + tableInfo4 + "\n Found:\n" + read4);
                }
                HashMap hashMap5 = new HashMap(10);
                hashMap5.put("profileId", new TableInfo.Column("profileId", "INTEGER", true, 1, null, 1));
                hashMap5.put("social", new TableInfo.Column("social", "TEXT", true, 2, null, 1));
                hashMap5.put("iconUrl", new TableInfo.Column("iconUrl", "TEXT", true, 0, null, 1));
                hashMap5.put("socialPosition", new TableInfo.Column("socialPosition", "INTEGER", true, 0, null, 1));
                hashMap5.put("socialElementId", new TableInfo.Column("socialElementId", "TEXT", true, 0, null, 1));
                hashMap5.put("socialElementAvatarUrl", new TableInfo.Column("socialElementAvatarUrl", "TEXT", true, 0, null, 1));
                hashMap5.put("socialUserName", new TableInfo.Column("socialUserName", "TEXT", true, 0, null, 1));
                hashMap5.put("socialWebUrl", new TableInfo.Column("socialWebUrl", "TEXT", true, 0, null, 1));
                hashMap5.put("isActive", new TableInfo.Column("isActive", "INTEGER", true, 0, null, 1));
                hashMap5.put("beforeConnectMessage", new TableInfo.Column("beforeConnectMessage", "TEXT", true, 0, null, 1));
                TableInfo tableInfo5 = new TableInfo("social", hashMap5, new HashSet(0), new HashSet(0));
                TableInfo read5 = TableInfo.read(_db, "social");
                if (!tableInfo5.equals(read5)) {
                    return new RoomOpenHelper.ValidationResult(false, "social(com.iMe.storage.data.locale.db.model.social.SocialNetworkDb).\n Expected:\n" + tableInfo5 + "\n Found:\n" + read5);
                }
                return new RoomOpenHelper.ValidationResult(true, null);
            }
        }, "9018970c7b9d213d33ac9bd2b79bcb38", "9186c31626db3f30a0e53d77316cf238")).build());
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "CatalogCategoryDb", "CatalogLanguageDb", "CloudAlbumDb", "WalletTokenBalanceDb", "social");
    }

    @Override // androidx.room.RoomDatabase
    protected Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        HashMap hashMap = new HashMap();
        hashMap.put(CatalogCategoryDao.class, CatalogCategoryDao_Impl.getRequiredConverters());
        hashMap.put(CatalogLanguageDao.class, CatalogLanguageDao_Impl.getRequiredConverters());
        hashMap.put(WalletTokensBalancesDao.class, WalletTokensBalancesDao_Impl.getRequiredConverters());
        hashMap.put(AlbumsDao.class, AlbumsDao_Impl.getRequiredConverters());
        hashMap.put(SocialNetworkDao.class, SocialNetworkDao_Impl.getRequiredConverters());
        return hashMap;
    }

    @Override // androidx.room.RoomDatabase
    public Set<Class<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecs() {
        return new HashSet();
    }

    @Override // androidx.room.RoomDatabase
    public List<Migration> getAutoMigrations(Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> autoMigrationSpecsMap) {
        return Arrays.asList(new Migration[0]);
    }

    @Override // com.iMe.storage.data.locale.p027db.database.AppCacheDatabase
    public CatalogCategoryDao catalogCategoryDao() {
        CatalogCategoryDao catalogCategoryDao;
        if (this._catalogCategoryDao != null) {
            return this._catalogCategoryDao;
        }
        synchronized (this) {
            if (this._catalogCategoryDao == null) {
                this._catalogCategoryDao = new CatalogCategoryDao_Impl(this);
            }
            catalogCategoryDao = this._catalogCategoryDao;
        }
        return catalogCategoryDao;
    }

    @Override // com.iMe.storage.data.locale.p027db.database.AppCacheDatabase
    public CatalogLanguageDao catalogLanguageDao() {
        CatalogLanguageDao catalogLanguageDao;
        if (this._catalogLanguageDao != null) {
            return this._catalogLanguageDao;
        }
        synchronized (this) {
            if (this._catalogLanguageDao == null) {
                this._catalogLanguageDao = new CatalogLanguageDao_Impl(this);
            }
            catalogLanguageDao = this._catalogLanguageDao;
        }
        return catalogLanguageDao;
    }

    @Override // com.iMe.storage.data.locale.p027db.database.AppCacheDatabase
    public WalletTokensBalancesDao walletTokenBalanceDao() {
        WalletTokensBalancesDao walletTokensBalancesDao;
        if (this._walletTokensBalancesDao != null) {
            return this._walletTokensBalancesDao;
        }
        synchronized (this) {
            if (this._walletTokensBalancesDao == null) {
                this._walletTokensBalancesDao = new WalletTokensBalancesDao_Impl(this);
            }
            walletTokensBalancesDao = this._walletTokensBalancesDao;
        }
        return walletTokensBalancesDao;
    }

    @Override // com.iMe.storage.data.locale.p027db.database.AppCacheDatabase
    public AlbumsDao cloudAlbumDao() {
        AlbumsDao albumsDao;
        if (this._albumsDao != null) {
            return this._albumsDao;
        }
        synchronized (this) {
            if (this._albumsDao == null) {
                this._albumsDao = new AlbumsDao_Impl(this);
            }
            albumsDao = this._albumsDao;
        }
        return albumsDao;
    }

    @Override // com.iMe.storage.data.locale.p027db.database.AppCacheDatabase
    public SocialNetworkDao socialNetworkDao() {
        SocialNetworkDao socialNetworkDao;
        if (this._socialNetworkDao != null) {
            return this._socialNetworkDao;
        }
        synchronized (this) {
            if (this._socialNetworkDao == null) {
                this._socialNetworkDao = new SocialNetworkDao_Impl(this);
            }
            socialNetworkDao = this._socialNetworkDao;
        }
        return socialNetworkDao;
    }
}
