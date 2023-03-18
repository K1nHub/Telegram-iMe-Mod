package com.smedialink.bots.data.database;

import androidx.room.migration.Migration;
import androidx.sqlite.p011db.SupportSQLiteDatabase;
import com.smedialink.bots.BotConstants;
import com.smedialink.bots.data.model.BotType;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt;
/* compiled from: Migrations.kt */
/* loaded from: classes3.dex */
public final class Migrations {
    public static final Migrations INSTANCE = new Migrations();
    private static final Migration FROM_6_TO_7 = new Migration() { // from class: com.smedialink.bots.data.database.Migrations$FROM_6_TO_7$1
        @Override // androidx.room.migration.Migration
        public void migrate(SupportSQLiteDatabase database) {
            String botInsertionQuery;
            Intrinsics.checkNotNullParameter(database, "database");
            database.execSQL("DROP TABLE ShopDbModel");
            database.execSQL("\n        CREATE TABLE BotsDbModel (\n        id TEXT NOT NULL,\n        sku TEXT NOT NULL,\n        avatarOriginal TEXT NOT NULL,\n        avatarRounded TEXT NOT NULL,\n        title TEXT NOT NULL,\n        description TEXT NOT NULL,\n        installs INTEGER NOT NULL,\n        priority INTEGER NOT NULL,\n        reviews INTEGER NOT NULL,\n        rating REAL NOT NULL,\n        ownRating INTEGER NOT NULL,\n        installLogged INTEGER NOT NULL,\n        useAssets INTEGER NOT NULL,\n        tags TEXT NOT NULL,\n        file TEXT NOT NULL,\n        hash TEXT NOT NULL,\n        phrases INTEGER NOT NULL,\n        themes INTEGER NOT NULL,\n        created INTEGER NOT NULL,\n        updated INTEGER NOT NULL,\n        price TEXT NOT NULL,\n        type TEXT NOT NULL,\n        status TEXT NOT NULL,\n        PRIMARY KEY(id))\n        ");
            database.execSQL("DROP TABLE RecentDbModel");
            database.execSQL("\n        CREATE TABLE RecentDbModel (\n        botId TEXT NOT NULL,\n        tag TEXT NOT NULL,\n        position INTEGER NOT NULL,\n        counter INTEGER NOT NULL,\n        PRIMARY KEY(botId, tag, position))\n        ");
            database.execSQL("\n        CREATE TABLE BotsCategoryDbModel (\n        id TEXT NOT NULL,\n        title TEXT NOT NULL,\n        priority INTEGER NOT NULL,\n        tags TEXT NOT NULL,\n        PRIMARY KEY(id))\n        ");
            database.execSQL("\n        CREATE TABLE BotsTagDbModel (\n        id TEXT NOT NULL,\n        title TEXT NOT NULL,\n        hidden INTEGER NOT NULL,\n        PRIMARY KEY(id))\n        ");
            for (String str : BotConstants.INSTANCE.getPredefinedBots()) {
                botInsertionQuery = Migrations.INSTANCE.getBotInsertionQuery(str);
                database.execSQL(botInsertionQuery);
            }
        }
    };

    private Migrations() {
    }

    public final Migration getFROM_6_TO_7() {
        return FROM_6_TO_7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getBotInsertionQuery(String str) {
        String trimIndent;
        trimIndent = StringsKt__IndentKt.trimIndent("\n            INSERT INTO BotsDbModel (\n                id, sku, avatarOriginal, avatarRounded, title, description, installs, priority, reviews, rating, ownRating,\n                installLogged, useAssets, tags, file, hash, phrases, themes, created, updated, price, type, status\n            )\n            VALUES (\n                '" + str + "', '', '', '', '', '', '0', '0', '0', '0.0', '0', '1', '1', '', '', '', '0', '0', '0', '0', '',\n                '" + BotType.Companion.resolveByName(str).name() + "', 'ENABLED'\n            );\n        ");
        return trimIndent;
    }
}
