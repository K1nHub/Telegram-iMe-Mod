package com.iMe.storage.data.locale.p027db.migration;

import androidx.room.migration.Migration;
import androidx.sqlite.p011db.SupportSQLiteDatabase;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AppCacheDatabaseMigrations.kt */
/* renamed from: com.iMe.storage.data.locale.db.migration.AppCacheDatabaseMigrations */
/* loaded from: classes3.dex */
public final class AppCacheDatabaseMigrations {
    public static final AppCacheDatabaseMigrations INSTANCE = new AppCacheDatabaseMigrations();
    private static final AppCacheDatabaseMigrations$MIGRATION_10_11$1 MIGRATION_10_11;
    private static final AppCacheDatabaseMigrations$MIGRATION_2_3$1 MIGRATION_2_3;
    private static final AppCacheDatabaseMigrations$MIGRATION_3_4$1 MIGRATION_3_4;
    private static final AppCacheDatabaseMigrations$MIGRATION_4_5$1 MIGRATION_4_5;
    private static final AppCacheDatabaseMigrations$MIGRATION_5_6$1 MIGRATION_5_6;
    private static final AppCacheDatabaseMigrations$MIGRATION_6_7$1 MIGRATION_6_7;
    private static final AppCacheDatabaseMigrations$MIGRATION_7_9$1 MIGRATION_7_9;
    private static final AppCacheDatabaseMigrations$MIGRATION_9_10$1 MIGRATION_9_10;
    private static final Migration[] migrations;

    private AppCacheDatabaseMigrations() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.iMe.storage.data.locale.db.migration.AppCacheDatabaseMigrations$MIGRATION_2_3$1] */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.iMe.storage.data.locale.db.migration.AppCacheDatabaseMigrations$MIGRATION_3_4$1] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.iMe.storage.data.locale.db.migration.AppCacheDatabaseMigrations$MIGRATION_4_5$1] */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.iMe.storage.data.locale.db.migration.AppCacheDatabaseMigrations$MIGRATION_5_6$1] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.iMe.storage.data.locale.db.migration.AppCacheDatabaseMigrations$MIGRATION_6_7$1] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.iMe.storage.data.locale.db.migration.AppCacheDatabaseMigrations$MIGRATION_7_9$1] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.iMe.storage.data.locale.db.migration.AppCacheDatabaseMigrations$MIGRATION_9_10$1] */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.iMe.storage.data.locale.db.migration.AppCacheDatabaseMigrations$MIGRATION_10_11$1] */
    static {
        ?? r0 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppCacheDatabaseMigrations$MIGRATION_2_3$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("DROP TABLE WalletBalanceDb");
                database.execSQL("CREATE TABLE IF NOT EXISTS WalletTokenBalanceDb (tgUserId INTEGER NOT NULL, coinCode TEXT NOT NULL, total REAL NOT NULL, totalInDollars REAL NOT NULL, PRIMARY KEY(tgUserId, coinCode))");
            }
        };
        MIGRATION_2_3 = r0;
        ?? r1 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppCacheDatabaseMigrations$MIGRATION_3_4$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("DROP TABLE WalletTransactionDb");
            }
        };
        MIGRATION_3_4 = r1;
        ?? r2 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppCacheDatabaseMigrations$MIGRATION_4_5$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("ALTER TABLE WalletTokenBalanceDb ADD COLUMN rateToDollars REAL DEFAULT 0 NOT NULL");
                database.execSQL("ALTER TABLE WalletTokenBalanceDb ADD COLUMN ratePercentageChange24h REAL DEFAULT 0 NOT NULL");
            }
        };
        MIGRATION_4_5 = r2;
        ?? r3 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppCacheDatabaseMigrations$MIGRATION_5_6$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("DROP TABLE WalletTokenBalanceDb");
                database.execSQL("CREATE TABLE IF NOT EXISTS WalletTokenBalanceDb (tgUserId INTEGER NOT NULL, coinCode TEXT NOT NULL, total REAL NOT NULL, totalInDollars REAL NOT NULL, rateToDollars REAL NOT NULL, ratePercentageChange24h REAL NOT NULL, networkType TEXT NOT NULL, PRIMARY KEY(tgUserId, coinCode, networkType))");
            }
        };
        MIGRATION_5_6 = r3;
        ?? r4 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppCacheDatabaseMigrations$MIGRATION_6_7$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("DROP TABLE ChannelCategoryDb");
                database.execSQL("DROP TABLE ChannelCountryDb");
                database.execSQL("CREATE TABLE IF NOT EXISTS CatalogCategoryDb (id INTEGER NOT NULL, title TEXT NOT NULL, total INTEGER NOT NULL, PRIMARY KEY(id))");
                database.execSQL("CREATE TABLE IF NOT EXISTS CatalogLanguageDb (id INTEGER NOT NULL, nativeTitle TEXT NOT NULL, title TEXT NOT NULL, PRIMARY KEY(id))");
            }
        };
        MIGRATION_6_7 = r4;
        ?? r5 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppCacheDatabaseMigrations$MIGRATION_7_9$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("CREATE TABLE social (profileId INTEGER NOT NULL, social TEXT NOT NULL, iconUrl TEXT NOT NULL, socialPosition INTEGER NOT NULL, socialElementId TEXT NOT NULL, socialElementAvatarUrl TEXT NOT NULL, socialUserName TEXT NOT NULL, socialWebUrl TEXT NOT NULL, isActive INTEGER NOT NULL, beforeConnectMessage TEXT NOT NULL, PRIMARY KEY(profileId, social))");
            }
        };
        MIGRATION_7_9 = r5;
        ?? r6 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppCacheDatabaseMigrations$MIGRATION_9_10$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("CREATE TABLE CloudAlbumDb_copy (userId INTEGER NOT NULL, albumId INTEGER NOT NULL, PRIMARY KEY(userId, albumId))");
                database.execSQL("INSERT INTO CloudAlbumDb_copy (userId, albumId) SELECT userId, albumId FROM CloudAlbumDb");
                database.execSQL("DROP TABLE CloudAlbumDb");
                database.execSQL("ALTER TABLE CloudAlbumDb_copy RENAME TO CloudAlbumDb");
            }
        };
        MIGRATION_9_10 = r6;
        ?? r7 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppCacheDatabaseMigrations$MIGRATION_10_11$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("DROP TABLE WalletTokenBalanceDb");
                database.execSQL("CREATE TABLE IF NOT EXISTS WalletTokenBalanceDb (tgUserId INTEGER NOT NULL, total REAL NOT NULL, totalInFiatValue REAL NOT NULL, totalInFiatSymbol TEXT NOT NULL, totalInFiatTicker TEXT NOT NULL, rateToFiatValue REAL NOT NULL, rateToFiatSymbol TEXT NOT NULL, rateToFiatTicker TEXT NOT NULL, ratePercentageChange24h REAL NOT NULL, address TEXT NOT NULL, networkId TEXT NOT NULL, avatarUrl TEXT NOT NULL, decimals INTEGER NOT NULL, ticker TEXT NOT NULL, isCoin INTEGER NOT NULL, name TEXT NOT NULL, website TEXT NOT NULL, PRIMARY KEY(tgUserId, ticker, networkId))");
            }
        };
        MIGRATION_10_11 = r7;
        migrations = new Migration[]{r0, r1, r2, r3, r4, r5, r6, r7};
    }

    public final Migration[] getMigrations() {
        return migrations;
    }
}
