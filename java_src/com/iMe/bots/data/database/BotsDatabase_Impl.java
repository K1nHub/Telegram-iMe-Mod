package com.iMe.bots.data.database;

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
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes4.dex */
public final class BotsDatabase_Impl extends BotsDatabase {
    private volatile BotsCategoryDao _botsCategoryDao;
    private volatile BotsDao _botsDao;
    private volatile BotsTagDao _botsTagDao;
    private volatile HolidaysDao _holidaysDao;
    private volatile RecentDao _recentDao;

    @Override // androidx.room.RoomDatabase
    protected SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration configuration) {
        return configuration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(configuration.context).name(configuration.name).callback(new RoomOpenHelper(configuration, new RoomOpenHelper.Delegate(13) { // from class: com.iMe.bots.data.database.BotsDatabase_Impl.1
            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPostMigrate(SupportSQLiteDatabase _db) {
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void createAllTables(SupportSQLiteDatabase _db) {
                _db.execSQL("CREATE TABLE IF NOT EXISTS `BotsCategoryDbModel` (`id` TEXT NOT NULL, `title` TEXT NOT NULL, `priority` INTEGER NOT NULL, `tags` TEXT NOT NULL, `locales` TEXT NOT NULL, PRIMARY KEY(`id`))");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `BotsDbModel` (`id` TEXT NOT NULL, `sku` TEXT, `lang` TEXT NOT NULL, `avatarOriginal` TEXT NOT NULL, `avatarRounded` TEXT NOT NULL, `titleLocales` TEXT NOT NULL, `descriptionLocales` TEXT NOT NULL, `title` TEXT NOT NULL, `description` TEXT NOT NULL, `installs` INTEGER NOT NULL, `priority` INTEGER NOT NULL, `reviews` INTEGER NOT NULL, `rating` REAL NOT NULL, `ownRating` INTEGER NOT NULL, `installLogged` INTEGER NOT NULL, `useAssets` INTEGER NOT NULL, `botUpdated` INTEGER NOT NULL, `tags` TEXT NOT NULL, `file` TEXT NOT NULL, `hash` TEXT NOT NULL, `phrases` INTEGER NOT NULL, `themes` INTEGER NOT NULL, `created` INTEGER NOT NULL, `updated` INTEGER NOT NULL, `price` TEXT, `type` TEXT NOT NULL, `status` TEXT NOT NULL, PRIMARY KEY(`id`))");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `TagDbModel` (`id` TEXT NOT NULL, `title` TEXT NOT NULL, `hidden` INTEGER NOT NULL, `locales` TEXT NOT NULL, PRIMARY KEY(`id`))");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `HolidaysDbModel` (`userId` INTEGER NOT NULL, `tags` TEXT NOT NULL, PRIMARY KEY(`userId`))");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `RecentDbModel` (`botId` TEXT NOT NULL, `tag` TEXT NOT NULL, `position` INTEGER NOT NULL, `counter` INTEGER NOT NULL, PRIMARY KEY(`botId`, `tag`, `position`))");
                _db.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                _db.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '620aca70e872a7da93742daff650b394')");
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void dropAllTables(SupportSQLiteDatabase _db) {
                _db.execSQL("DROP TABLE IF EXISTS `BotsCategoryDbModel`");
                _db.execSQL("DROP TABLE IF EXISTS `BotsDbModel`");
                _db.execSQL("DROP TABLE IF EXISTS `TagDbModel`");
                _db.execSQL("DROP TABLE IF EXISTS `HolidaysDbModel`");
                _db.execSQL("DROP TABLE IF EXISTS `RecentDbModel`");
                if (((RoomDatabase) BotsDatabase_Impl.this).mCallbacks != null) {
                    int size = ((RoomDatabase) BotsDatabase_Impl.this).mCallbacks.size();
                    for (int i = 0; i < size; i++) {
                        ((RoomDatabase.Callback) ((RoomDatabase) BotsDatabase_Impl.this).mCallbacks.get(i)).onDestructiveMigration(_db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            protected void onCreate(SupportSQLiteDatabase _db) {
                if (((RoomDatabase) BotsDatabase_Impl.this).mCallbacks != null) {
                    int size = ((RoomDatabase) BotsDatabase_Impl.this).mCallbacks.size();
                    for (int i = 0; i < size; i++) {
                        ((RoomDatabase.Callback) ((RoomDatabase) BotsDatabase_Impl.this).mCallbacks.get(i)).onCreate(_db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onOpen(SupportSQLiteDatabase _db) {
                ((RoomDatabase) BotsDatabase_Impl.this).mDatabase = _db;
                BotsDatabase_Impl.this.internalInitInvalidationTracker(_db);
                if (((RoomDatabase) BotsDatabase_Impl.this).mCallbacks != null) {
                    int size = ((RoomDatabase) BotsDatabase_Impl.this).mCallbacks.size();
                    for (int i = 0; i < size; i++) {
                        ((RoomDatabase.Callback) ((RoomDatabase) BotsDatabase_Impl.this).mCallbacks.get(i)).onOpen(_db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPreMigrate(SupportSQLiteDatabase _db) {
                DBUtil.dropFtsSyncTriggers(_db);
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            protected RoomOpenHelper.ValidationResult onValidateSchema(SupportSQLiteDatabase _db) {
                HashMap hashMap = new HashMap(5);
                hashMap.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "TEXT", true, 1, null, 1));
                hashMap.put("title", new TableInfo.Column("title", "TEXT", true, 0, null, 1));
                hashMap.put("priority", new TableInfo.Column("priority", "INTEGER", true, 0, null, 1));
                hashMap.put("tags", new TableInfo.Column("tags", "TEXT", true, 0, null, 1));
                hashMap.put("locales", new TableInfo.Column("locales", "TEXT", true, 0, null, 1));
                TableInfo tableInfo = new TableInfo("BotsCategoryDbModel", hashMap, new HashSet(0), new HashSet(0));
                TableInfo read = TableInfo.read(_db, "BotsCategoryDbModel");
                if (!tableInfo.equals(read)) {
                    return new RoomOpenHelper.ValidationResult(false, "BotsCategoryDbModel(com.iMe.bots.data.model.database.BotsCategoryDbModel).\n Expected:\n" + tableInfo + "\n Found:\n" + read);
                }
                HashMap hashMap2 = new HashMap(27);
                hashMap2.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "TEXT", true, 1, null, 1));
                hashMap2.put("sku", new TableInfo.Column("sku", "TEXT", false, 0, null, 1));
                hashMap2.put("lang", new TableInfo.Column("lang", "TEXT", true, 0, null, 1));
                hashMap2.put("avatarOriginal", new TableInfo.Column("avatarOriginal", "TEXT", true, 0, null, 1));
                hashMap2.put("avatarRounded", new TableInfo.Column("avatarRounded", "TEXT", true, 0, null, 1));
                hashMap2.put("titleLocales", new TableInfo.Column("titleLocales", "TEXT", true, 0, null, 1));
                hashMap2.put("descriptionLocales", new TableInfo.Column("descriptionLocales", "TEXT", true, 0, null, 1));
                hashMap2.put("title", new TableInfo.Column("title", "TEXT", true, 0, null, 1));
                hashMap2.put("description", new TableInfo.Column("description", "TEXT", true, 0, null, 1));
                hashMap2.put("installs", new TableInfo.Column("installs", "INTEGER", true, 0, null, 1));
                hashMap2.put("priority", new TableInfo.Column("priority", "INTEGER", true, 0, null, 1));
                hashMap2.put("reviews", new TableInfo.Column("reviews", "INTEGER", true, 0, null, 1));
                hashMap2.put("rating", new TableInfo.Column("rating", "REAL", true, 0, null, 1));
                hashMap2.put("ownRating", new TableInfo.Column("ownRating", "INTEGER", true, 0, null, 1));
                hashMap2.put("installLogged", new TableInfo.Column("installLogged", "INTEGER", true, 0, null, 1));
                hashMap2.put("useAssets", new TableInfo.Column("useAssets", "INTEGER", true, 0, null, 1));
                hashMap2.put("botUpdated", new TableInfo.Column("botUpdated", "INTEGER", true, 0, null, 1));
                hashMap2.put("tags", new TableInfo.Column("tags", "TEXT", true, 0, null, 1));
                hashMap2.put("file", new TableInfo.Column("file", "TEXT", true, 0, null, 1));
                hashMap2.put("hash", new TableInfo.Column("hash", "TEXT", true, 0, null, 1));
                hashMap2.put("phrases", new TableInfo.Column("phrases", "INTEGER", true, 0, null, 1));
                hashMap2.put("themes", new TableInfo.Column("themes", "INTEGER", true, 0, null, 1));
                hashMap2.put("created", new TableInfo.Column("created", "INTEGER", true, 0, null, 1));
                hashMap2.put("updated", new TableInfo.Column("updated", "INTEGER", true, 0, null, 1));
                hashMap2.put("price", new TableInfo.Column("price", "TEXT", false, 0, null, 1));
                hashMap2.put(SessionDescription.ATTR_TYPE, new TableInfo.Column(SessionDescription.ATTR_TYPE, "TEXT", true, 0, null, 1));
                hashMap2.put("status", new TableInfo.Column("status", "TEXT", true, 0, null, 1));
                TableInfo tableInfo2 = new TableInfo("BotsDbModel", hashMap2, new HashSet(0), new HashSet(0));
                TableInfo read2 = TableInfo.read(_db, "BotsDbModel");
                if (!tableInfo2.equals(read2)) {
                    return new RoomOpenHelper.ValidationResult(false, "BotsDbModel(com.iMe.bots.data.model.database.BotsDbModel).\n Expected:\n" + tableInfo2 + "\n Found:\n" + read2);
                }
                HashMap hashMap3 = new HashMap(4);
                hashMap3.put(TtmlNode.ATTR_ID, new TableInfo.Column(TtmlNode.ATTR_ID, "TEXT", true, 1, null, 1));
                hashMap3.put("title", new TableInfo.Column("title", "TEXT", true, 0, null, 1));
                hashMap3.put("hidden", new TableInfo.Column("hidden", "INTEGER", true, 0, null, 1));
                hashMap3.put("locales", new TableInfo.Column("locales", "TEXT", true, 0, null, 1));
                TableInfo tableInfo3 = new TableInfo("TagDbModel", hashMap3, new HashSet(0), new HashSet(0));
                TableInfo read3 = TableInfo.read(_db, "TagDbModel");
                if (!tableInfo3.equals(read3)) {
                    return new RoomOpenHelper.ValidationResult(false, "TagDbModel(com.iMe.bots.data.model.database.TagDbModel).\n Expected:\n" + tableInfo3 + "\n Found:\n" + read3);
                }
                HashMap hashMap4 = new HashMap(2);
                hashMap4.put("userId", new TableInfo.Column("userId", "INTEGER", true, 1, null, 1));
                hashMap4.put("tags", new TableInfo.Column("tags", "TEXT", true, 0, null, 1));
                TableInfo tableInfo4 = new TableInfo("HolidaysDbModel", hashMap4, new HashSet(0), new HashSet(0));
                TableInfo read4 = TableInfo.read(_db, "HolidaysDbModel");
                if (!tableInfo4.equals(read4)) {
                    return new RoomOpenHelper.ValidationResult(false, "HolidaysDbModel(com.iMe.bots.data.model.database.HolidaysDbModel).\n Expected:\n" + tableInfo4 + "\n Found:\n" + read4);
                }
                HashMap hashMap5 = new HashMap(4);
                hashMap5.put("botId", new TableInfo.Column("botId", "TEXT", true, 1, null, 1));
                hashMap5.put("tag", new TableInfo.Column("tag", "TEXT", true, 2, null, 1));
                hashMap5.put("position", new TableInfo.Column("position", "INTEGER", true, 3, null, 1));
                hashMap5.put("counter", new TableInfo.Column("counter", "INTEGER", true, 0, null, 1));
                TableInfo tableInfo5 = new TableInfo("RecentDbModel", hashMap5, new HashSet(0), new HashSet(0));
                TableInfo read5 = TableInfo.read(_db, "RecentDbModel");
                if (!tableInfo5.equals(read5)) {
                    return new RoomOpenHelper.ValidationResult(false, "RecentDbModel(com.iMe.bots.data.model.database.RecentDbModel).\n Expected:\n" + tableInfo5 + "\n Found:\n" + read5);
                }
                return new RoomOpenHelper.ValidationResult(true, null);
            }
        }, "620aca70e872a7da93742daff650b394", "5c4e08f1d02a6fa79242327c1eb910d9")).build());
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "BotsCategoryDbModel", "BotsDbModel", "TagDbModel", "HolidaysDbModel", "RecentDbModel");
    }

    @Override // androidx.room.RoomDatabase
    protected Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        HashMap hashMap = new HashMap();
        hashMap.put(BotsDao.class, BotsDao_Impl.getRequiredConverters());
        hashMap.put(BotsCategoryDao.class, BotsCategoryDao_Impl.getRequiredConverters());
        hashMap.put(BotsTagDao.class, BotsTagDao_Impl.getRequiredConverters());
        hashMap.put(HolidaysDao.class, HolidaysDao_Impl.getRequiredConverters());
        hashMap.put(RecentDao.class, RecentDao_Impl.getRequiredConverters());
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

    @Override // com.iMe.bots.data.database.BotsDatabase
    public BotsDao botsDao() {
        BotsDao botsDao;
        if (this._botsDao != null) {
            return this._botsDao;
        }
        synchronized (this) {
            if (this._botsDao == null) {
                this._botsDao = new BotsDao_Impl(this);
            }
            botsDao = this._botsDao;
        }
        return botsDao;
    }

    @Override // com.iMe.bots.data.database.BotsDatabase
    public BotsCategoryDao categoryDao() {
        BotsCategoryDao botsCategoryDao;
        if (this._botsCategoryDao != null) {
            return this._botsCategoryDao;
        }
        synchronized (this) {
            if (this._botsCategoryDao == null) {
                this._botsCategoryDao = new BotsCategoryDao_Impl(this);
            }
            botsCategoryDao = this._botsCategoryDao;
        }
        return botsCategoryDao;
    }

    @Override // com.iMe.bots.data.database.BotsDatabase
    public BotsTagDao tagsDao() {
        BotsTagDao botsTagDao;
        if (this._botsTagDao != null) {
            return this._botsTagDao;
        }
        synchronized (this) {
            if (this._botsTagDao == null) {
                this._botsTagDao = new BotsTagDao_Impl(this);
            }
            botsTagDao = this._botsTagDao;
        }
        return botsTagDao;
    }

    @Override // com.iMe.bots.data.database.BotsDatabase
    public HolidaysDao holidaysDao() {
        HolidaysDao holidaysDao;
        if (this._holidaysDao != null) {
            return this._holidaysDao;
        }
        synchronized (this) {
            if (this._holidaysDao == null) {
                this._holidaysDao = new HolidaysDao_Impl(this);
            }
            holidaysDao = this._holidaysDao;
        }
        return holidaysDao;
    }

    @Override // com.iMe.bots.data.database.BotsDatabase
    public RecentDao recentDao() {
        RecentDao recentDao;
        if (this._recentDao != null) {
            return this._recentDao;
        }
        synchronized (this) {
            if (this._recentDao == null) {
                this._recentDao = new RecentDao_Impl(this);
            }
            recentDao = this._recentDao;
        }
        return recentDao;
    }
}
