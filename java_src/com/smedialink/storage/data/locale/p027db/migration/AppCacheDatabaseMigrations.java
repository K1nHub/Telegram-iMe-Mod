package com.smedialink.storage.data.locale.p027db.migration;

import androidx.room.migration.Migration;
import androidx.sqlite.p011db.SupportSQLiteDatabase;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AppCacheDatabaseMigrations.kt */
/* renamed from: com.smedialink.storage.data.locale.db.migration.AppCacheDatabaseMigrations */
/* loaded from: classes3.dex */
public final class AppCacheDatabaseMigrations {
    public static final AppCacheDatabaseMigrations INSTANCE = new AppCacheDatabaseMigrations();
    private static final Migration MIGRATION_2_3;
    private static final Migration MIGRATION_3_4;
    private static final Migration MIGRATION_4_5;
    private static final Migration MIGRATION_5_6;
    private static final Migration MIGRATION_6_7;
    private static final Migration[] migrations;

    private AppCacheDatabaseMigrations() {
    }

    static {
        Migration migration = new Migration() { // from class: com.smedialink.storage.data.locale.db.migration.AppCacheDatabaseMigrations$MIGRATION_2_3$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("DROP TABLE WalletBalanceDb");
                database.execSQL("CREATE TABLE IF NOT EXISTS WalletTokenBalanceDb (tgUserId INTEGER NOT NULL, coinCode TEXT NOT NULL, total REAL NOT NULL, totalInDollars REAL NOT NULL, PRIMARY KEY(tgUserId, coinCode))");
            }
        };
        MIGRATION_2_3 = migration;
        Migration migration2 = new Migration() { // from class: com.smedialink.storage.data.locale.db.migration.AppCacheDatabaseMigrations$MIGRATION_3_4$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("DROP TABLE WalletTransactionDb");
            }
        };
        MIGRATION_3_4 = migration2;
        Migration migration3 = new Migration() { // from class: com.smedialink.storage.data.locale.db.migration.AppCacheDatabaseMigrations$MIGRATION_4_5$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("ALTER TABLE WalletTokenBalanceDb ADD COLUMN rateToDollars REAL DEFAULT 0 NOT NULL");
                database.execSQL("ALTER TABLE WalletTokenBalanceDb ADD COLUMN ratePercentageChange24h REAL DEFAULT 0 NOT NULL");
            }
        };
        MIGRATION_4_5 = migration3;
        Migration migration4 = new Migration() { // from class: com.smedialink.storage.data.locale.db.migration.AppCacheDatabaseMigrations$MIGRATION_5_6$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("DROP TABLE WalletTokenBalanceDb");
                database.execSQL("CREATE TABLE IF NOT EXISTS WalletTokenBalanceDb (tgUserId INTEGER NOT NULL, coinCode TEXT NOT NULL, total REAL NOT NULL, totalInDollars REAL NOT NULL, rateToDollars REAL NOT NULL, ratePercentageChange24h REAL NOT NULL, networkType TEXT NOT NULL, PRIMARY KEY(tgUserId, coinCode, networkType))");
            }
        };
        MIGRATION_5_6 = migration4;
        Migration migration5 = new Migration() { // from class: com.smedialink.storage.data.locale.db.migration.AppCacheDatabaseMigrations$MIGRATION_6_7$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("DROP TABLE ChannelCategoryDb");
                database.execSQL("DROP TABLE ChannelCountryDb");
                database.execSQL("CREATE TABLE IF NOT EXISTS CatalogCategoryDb (id INTEGER NOT NULL, title TEXT NOT NULL, total INTEGER NOT NULL, PRIMARY KEY(id))");
                database.execSQL("CREATE TABLE IF NOT EXISTS CatalogLanguageDb (id INTEGER NOT NULL, nativeTitle TEXT NOT NULL, title TEXT NOT NULL, PRIMARY KEY(id))");
            }
        };
        MIGRATION_6_7 = migration5;
        migrations = new Migration[]{migration, migration2, migration3, migration4, migration5};
    }

    public final Migration[] getMigrations() {
        return migrations;
    }
}
