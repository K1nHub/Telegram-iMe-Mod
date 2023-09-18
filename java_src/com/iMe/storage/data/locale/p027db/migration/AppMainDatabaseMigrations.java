package com.iMe.storage.data.locale.p027db.migration;

import android.database.Cursor;
import androidx.room.migration.Migration;
import androidx.sqlite.p011db.SupportSQLiteDatabase;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.iMe.storage.data.locale.p027db.database.converter.AppMainConverter;
import com.iMe.storage.data.repository.topics.Topic;
import com.iMe.storage.data.utils.extentions.StringExtKt;
import com.iMe.storage.domain.model.filters.FilterFab;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p034io.CloseableKt;
/* compiled from: AppMainDatabaseMigrations.kt */
/* renamed from: com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations */
/* loaded from: classes4.dex */
public final class AppMainDatabaseMigrations {
    public static final AppMainDatabaseMigrations INSTANCE = new AppMainDatabaseMigrations();
    private static final AppMainDatabaseMigrations$MIGRATION_10_11$1 MIGRATION_10_11;
    private static final AppMainDatabaseMigrations$MIGRATION_11_12$1 MIGRATION_11_12;
    private static final AppMainDatabaseMigrations$MIGRATION_12_13$1 MIGRATION_12_13;
    private static final AppMainDatabaseMigrations$MIGRATION_13_14$1 MIGRATION_13_14;
    private static final AppMainDatabaseMigrations$MIGRATION_14_15$1 MIGRATION_14_15;
    private static final AppMainDatabaseMigrations$MIGRATION_15_16$1 MIGRATION_15_16;
    private static final AppMainDatabaseMigrations$MIGRATION_16_17$1 MIGRATION_16_17;
    private static final AppMainDatabaseMigrations$MIGRATION_1_2$1 MIGRATION_1_2;
    private static final AppMainDatabaseMigrations$MIGRATION_2_3$1 MIGRATION_2_3;
    private static final AppMainDatabaseMigrations$MIGRATION_3_4$1 MIGRATION_3_4;
    private static final AppMainDatabaseMigrations$MIGRATION_4_5$1 MIGRATION_4_5;
    private static final AppMainDatabaseMigrations$MIGRATION_5_6$1 MIGRATION_5_6;
    private static final AppMainDatabaseMigrations$MIGRATION_6_7$1 MIGRATION_6_7;
    private static final AppMainDatabaseMigrations$MIGRATION_7_8$1 MIGRATION_7_8;
    private static final AppMainDatabaseMigrations$MIGRATION_8_9$1 MIGRATION_8_9;
    private static final AppMainDatabaseMigrations$MIGRATION_9_10$1 MIGRATION_9_10;
    private static final Migration[] migrations;

    private AppMainDatabaseMigrations() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_1_2$1] */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_11_12$1] */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_12_13$1] */
    /* JADX WARN: Type inference failed for: r12v0, types: [com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_13_14$1] */
    /* JADX WARN: Type inference failed for: r13v0, types: [com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_14_15$1] */
    /* JADX WARN: Type inference failed for: r14v0, types: [com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_15_16$1] */
    /* JADX WARN: Type inference failed for: r15v0, types: [com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_16_17$1] */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_2_3$1] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_3_4$1] */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_4_5$1] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_5_6$1] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_6_7$1] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_7_8$1] */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_8_9$1] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_9_10$1] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_10_11$1] */
    static {
        ?? r0 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_1_2$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("CREATE TABLE FilterFabTypeDb_copy (id TEXT NOT NULL, filterId INTEGER NOT NULL, fabTypeId TEXT NOT NULL, userId INTEGER NOT NULL, PRIMARY KEY(id))");
                database.execSQL("INSERT INTO FilterFabTypeDb_copy (id, filterId, fabTypeId, userId) SELECT (filterId || '/' || userId), filterId, fabTypeId, userId FROM FilterFabTypeDb");
                database.execSQL("DROP TABLE FilterFabTypeDb");
                database.execSQL("ALTER TABLE FilterFabTypeDb_copy RENAME TO FilterFabTypeDb");
            }
        };
        MIGRATION_1_2 = r0;
        ?? r1 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_2_3$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("CREATE TABLE AutoTranslationSettingsDb (isEnabled INTEGER NOT NULL, incomingTargetLanguageCode TEXT, outgoingTargetLanguageCode TEXT NOT NULL, dialogId INTEGER NOT NULL, userId INTEGER NOT NULL, PRIMARY KEY(dialogId, userId))");
            }
        };
        MIGRATION_2_3 = r1;
        ?? r2 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_3_4$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("CREATE TABLE TopicDbModel (topicId TEXT NOT NULL, `order` INTEGER NOT NULL, dialogs TEXT NOT NULL, userId INTEGER NOT NULL, PRIMARY KEY(topicId, userId))");
                database.execSQL("CREATE TABLE FiltersDb (filterId INTEGER NOT NULL, fabTypeId TEXT NOT NULL, multiFabTypeIds TEXT, iconTypeId TEXT, userId INTEGER NOT NULL, PRIMARY KEY(filterId, userId))");
                database.execSQL("INSERT INTO FiltersDb (filterId, fabTypeId, userId) SELECT filterId, fabTypeId, userId FROM FilterFabTypeDb WHERE fabTypeId != \"fab_multi\"");
                database.execSQL("DROP TABLE FilterFabTypeDb");
            }
        };
        MIGRATION_3_4 = r2;
        ?? r3 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_4_5$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("CREATE TABLE TopicDbModel_copy (topicId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT, icon TEXT, `order` INTEGER NOT NULL, dialogs TEXT NOT NULL, userId INTEGER NOT NULL)");
                database.execSQL("INSERT INTO TopicDbModel_copy (icon, `order`, dialogs, userId) SELECT topicId, `order`, dialogs, userId FROM TopicDbModel");
                database.execSQL("DROP TABLE TopicDbModel");
                database.execSQL("ALTER TABLE TopicDbModel_copy RENAME TO TopicDbModel");
            }
        };
        MIGRATION_4_5 = r3;
        ?? r4 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_5_6$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("CREATE TABLE FilterSettingsDb (filterId INTEGER NOT NULL, fabs TEXT NOT NULL, icon TEXT, userId INTEGER NOT NULL, PRIMARY KEY(filterId, userId))");
                database.execSQL("INSERT INTO FilterSettingsDb (filterId, fabs, icon, userId) SELECT filterId, ('[' || fabTypeId || ']'), iconTypeId, userId FROM FiltersDb WHERE fabTypeId != \"fab_multi\"");
                database.execSQL("INSERT INTO FilterSettingsDb (filterId, fabs, icon, userId) SELECT filterId, multiFabTypeIds, iconTypeId, userId FROM FiltersDb WHERE fabTypeId == \"fab_multi\"");
                database.execSQL("DROP TABLE FiltersDb");
                database.execSQL("ALTER TABLE TopicDbModel RENAME TO TopicDb");
                database.execSQL("CREATE TABLE DialogSettingsDb (isInTextTranslateEnabled INTEGER NOT NULL, inTextTranslateTargetLangCode TEXT, isOutTextTranslateEnabled INTEGER NOT NULL, outTextTranslateTargetLangCode TEXT NOT NULL, isVoiceTranslateEnabled INTEGER NOT NULL, voiceTranslateLangCode TEXT, dialogId INTEGER NOT NULL, userId INTEGER NOT NULL, PRIMARY KEY(dialogId, userId))");
                database.execSQL("INSERT INTO DialogSettingsDb (isInTextTranslateEnabled, inTextTranslateTargetLangCode, isOutTextTranslateEnabled, outTextTranslateTargetLangCode, isVoiceTranslateEnabled, dialogId, userId) SELECT isEnabled, incomingTargetLanguageCode, isEnabled, outgoingTargetLanguageCode, 0, dialogId, userId FROM AutoTranslationSettingsDb");
                database.execSQL("DROP TABLE AutoTranslationSettingsDb");
            }
        };
        MIGRATION_5_6 = r4;
        ?? r5 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_6_7$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("ALTER TABLE DialogSettingsDb ADD COLUMN bookmarks TEXT NOT NULL DEFAULT \"{}\"");
            }
        };
        MIGRATION_6_7 = r5;
        ?? r6 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_7_8$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("CREATE TABLE DialogSettingsDb_copy (isInTextTranslateEnabled INTEGER NOT NULL, inTextTranslateTargetLangCode TEXT, isOutTextTranslateEnabled INTEGER NOT NULL, outTextTranslateTargetLangCode TEXT NOT NULL, isVoiceTranslateEnabled INTEGER NOT NULL, voiceTranslateLangCode TEXT, bookmarks TEXT NOT NULL DEFAULT \"[]\", dialogId INTEGER NOT NULL, userId INTEGER NOT NULL, PRIMARY KEY(dialogId, userId))");
                database.execSQL("INSERT INTO DialogSettingsDb_copy (isInTextTranslateEnabled, inTextTranslateTargetLangCode, isOutTextTranslateEnabled, outTextTranslateTargetLangCode, isVoiceTranslateEnabled, dialogId, userId) SELECT isInTextTranslateEnabled, inTextTranslateTargetLangCode, isOutTextTranslateEnabled, outTextTranslateTargetLangCode, isVoiceTranslateEnabled, dialogId, userId FROM DialogSettingsDb");
                database.execSQL("DROP TABLE DialogSettingsDb");
                database.execSQL("ALTER TABLE DialogSettingsDb_copy RENAME TO DialogSettingsDb");
            }
        };
        MIGRATION_7_8 = r6;
        ?? r7 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_8_9$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("CREATE TABLE WalletConnectSessionDb (tgUserId INTEGER NOT NULL, sessionTopic TEXT NOT NULL, sessionVersion TEXT NOT NULL, sessionBridge TEXT NOT NULL, sessionKey TEXT NOT NULL, chainId INTEGER NOT NULL, peerId TEXT NOT NULL, remotePeerId TEXT NOT NULL, remotePeerMetaName TEXT NOT NULL, remotePeerMetaUrl TEXT NOT NULL, remotePeerMetaDescription TEXT, remotePeerMetaIcons TEXT NOT NULL, isAutoSign INTEGER NOT NULL, date INTEGER NOT NULL, PRIMARY KEY(tgUserId, sessionKey))");
                database.execSQL("CREATE TABLE TemplatesDb (userId INTEGER NOT NULL, messageId INTEGER NOT NULL, groupId INTEGER NOT NULL, templateName TEXT NOT NULL, creationDate INTEGER NOT NULL, usageRating INTEGER NOT NULL, sent INTEGER NOT NULL, PRIMARY KEY(userId, messageId))");
            }
        };
        MIGRATION_8_9 = r7;
        ?? r8 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_9_10$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                String str;
                String str2;
                String str3;
                List<Long> presets;
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("CREATE TABLE TopicDb_copy (topicId INTEGER NOT NULL, name TEXT, icon TEXT, `order` INTEGER NOT NULL, presets TEXT NOT NULL DEFAULT \"[]\", dialogs TEXT NOT NULL, userId INTEGER NOT NULL, PRIMARY KEY(userId, topicId))");
                Cursor query = database.query("SELECT * FROM TopicDb");
                if (query != null) {
                    while (query.moveToNext()) {
                        try {
                            String name = query.getString(query.getColumnIndexOrThrow(AppMeasurementSdk.ConditionalUserProperty.NAME));
                            String icon = query.getString(query.getColumnIndexOrThrow("icon"));
                            String dialogsString = query.getString(query.getColumnIndexOrThrow("dialogs"));
                            boolean z = false;
                            if (name == null) {
                                Topic.Companion companion = Topic.Companion;
                                Intrinsics.checkNotNullExpressionValue(icon, "icon");
                                Topic map = companion.map(icon);
                                if (map != null && (presets = map.getPresets()) != null) {
                                    AppMainConverter.Companion companion2 = AppMainConverter.Companion;
                                    Intrinsics.checkNotNullExpressionValue(dialogsString, "dialogsString");
                                    List<Long> convertStringToLongList = companion2.convertStringToLongList(dialogsString);
                                    ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(presets, 10));
                                    for (Number number : presets) {
                                        arrayList.add(Long.valueOf(-number.longValue()));
                                    }
                                    convertStringToLongList.removeAll(arrayList);
                                    if (convertStringToLongList.isEmpty()) {
                                        z = true;
                                    } else {
                                        dialogsString = AppMainConverter.Companion.convertLongListToString(convertStringToLongList);
                                    }
                                }
                            }
                            if (!z) {
                                long j = query.getLong(query.getColumnIndexOrThrow("topicId"));
                                int i = query.getInt(query.getColumnIndexOrThrow("order"));
                                long j2 = query.getLong(query.getColumnIndexOrThrow("userId"));
                                StringBuilder sb = new StringBuilder();
                                sb.append("INSERT INTO TopicDb_copy (topicId, name, icon, `order`, dialogs, userId) VALUES(");
                                sb.append(j);
                                sb.append(", ");
                                if (name != null) {
                                    Intrinsics.checkNotNullExpressionValue(name, "name");
                                    str = StringExtKt.wrapWithQuotes(name);
                                } else {
                                    str = null;
                                }
                                sb.append(str);
                                sb.append(", ");
                                if (icon != null) {
                                    Intrinsics.checkNotNullExpressionValue(icon, "icon");
                                    str2 = StringExtKt.wrapWithQuotes(icon);
                                } else {
                                    str2 = null;
                                }
                                sb.append(str2);
                                sb.append(", ");
                                sb.append(i);
                                sb.append(", ");
                                if (dialogsString != null) {
                                    Intrinsics.checkNotNullExpressionValue(dialogsString, "dialogsString");
                                    str3 = StringExtKt.wrapWithQuotes(dialogsString);
                                } else {
                                    str3 = null;
                                }
                                sb.append(str3);
                                sb.append(", ");
                                sb.append(j2);
                                sb.append(')');
                                database.execSQL(sb.toString());
                            }
                        } finally {
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(query, null);
                }
                database.execSQL("DROP TABLE TopicDb");
                database.execSQL("ALTER TABLE TopicDb_copy RENAME TO TopicDb");
            }
        };
        MIGRATION_9_10 = r8;
        ?? r9 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_10_11$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("CREATE TABLE DialogTranslationSettingsDb (isInTextTranslateEnabled INTEGER NOT NULL, inTextTranslateTargetLangCode TEXT, isOutTextTranslateEnabled INTEGER NOT NULL, outTextTranslateTargetLangCode TEXT NOT NULL, isVoiceTranslateEnabled INTEGER NOT NULL, voiceTranslateLangCode TEXT, dialogId INTEGER NOT NULL, userId INTEGER NOT NULL, PRIMARY KEY(dialogId, userId))");
                database.execSQL("CREATE TABLE BookmarksDb (messageIds TEXT NOT NULL, dialogId INTEGER NOT NULL, userId INTEGER NOT NULL, PRIMARY KEY(dialogId, userId))");
                database.execSQL("INSERT INTO DialogTranslationSettingsDb (isInTextTranslateEnabled, inTextTranslateTargetLangCode, isOutTextTranslateEnabled, outTextTranslateTargetLangCode, isVoiceTranslateEnabled, voiceTranslateLangCode, dialogId, userId) SELECT isInTextTranslateEnabled, inTextTranslateTargetLangCode, isOutTextTranslateEnabled, outTextTranslateTargetLangCode, isVoiceTranslateEnabled, voiceTranslateLangCode, dialogId, userId FROM DialogSettingsDb");
                database.execSQL("INSERT INTO BookmarksDb (messageIds, dialogId, userId) SELECT bookmarks, dialogId, userId FROM DialogSettingsDb WHERE bookmarks != \"[]\"");
                database.execSQL("DROP TABLE DialogSettingsDb");
            }
        };
        MIGRATION_10_11 = r9;
        ?? r10 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_11_12$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("CREATE TABLE PlaylistsDb (messageIds TEXT NOT NULL, dialogId INTEGER NOT NULL, userId INTEGER NOT NULL, PRIMARY KEY(dialogId, userId))");
            }
        };
        MIGRATION_11_12 = r10;
        ?? r11 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_12_13$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("CREATE TABLE DialogTranslationSettingsDb_copy (isInTextTranslateEnabled INTEGER NOT NULL, inTextTranslateTargetLangCode TEXT, isOutTextTranslateEnabled INTEGER NOT NULL, outTextTranslateTargetLangCode TEXT NOT NULL, dialogId INTEGER NOT NULL, userId INTEGER NOT NULL, PRIMARY KEY(dialogId, userId))");
                database.execSQL("INSERT INTO DialogTranslationSettingsDb_copy (isInTextTranslateEnabled, inTextTranslateTargetLangCode, isOutTextTranslateEnabled, outTextTranslateTargetLangCode, dialogId, userId) SELECT isInTextTranslateEnabled, inTextTranslateTargetLangCode, isOutTextTranslateEnabled, outTextTranslateTargetLangCode, dialogId, userId FROM DialogTranslationSettingsDb");
                database.execSQL("DROP TABLE DialogTranslationSettingsDb");
                database.execSQL("ALTER TABLE DialogTranslationSettingsDb_copy RENAME TO DialogTranslationSettingsDb");
            }
        };
        MIGRATION_12_13 = r11;
        ?? r12 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_13_14$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("CREATE TABLE FilterSettingsDb_copy (filterId INTEGER NOT NULL, fabs TEXT NOT NULL, icon TEXT, userId INTEGER NOT NULL, PRIMARY KEY(filterId, userId))");
                Cursor query = database.query("SELECT * FROM FilterSettingsDb");
                if (query != null) {
                    while (true) {
                        try {
                            String str = null;
                            if (!query.moveToNext()) {
                                break;
                            }
                            int i = query.getInt(query.getColumnIndexOrThrow("filterId"));
                            String string = query.getString(query.getColumnIndexOrThrow("fabs"));
                            String icon = query.getString(query.getColumnIndexOrThrow("icon"));
                            long j = query.getLong(query.getColumnIndexOrThrow("userId"));
                            FilterFab.Companion companion = FilterFab.Companion;
                            Set<String> mapEnumsToNames = companion.mapEnumsToNames(companion.mapOldPreferenceJsonToEnums(string));
                            StringBuilder sb = new StringBuilder();
                            sb.append("INSERT INTO FilterSettingsDb_copy (filterId, fabs, icon, userId) VALUES(");
                            sb.append(i);
                            sb.append(", ");
                            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(mapEnumsToNames, 10));
                            for (String str2 : mapEnumsToNames) {
                                arrayList.add(StringExtKt.wrapWithQuotes(StringExtKt.wrapWithQuotes(str2)));
                            }
                            sb.append(StringExtKt.wrapWithQuotes(arrayList.toString()));
                            sb.append(", ");
                            if (icon != null) {
                                Intrinsics.checkNotNullExpressionValue(icon, "icon");
                                str = StringExtKt.wrapWithQuotes(icon);
                            }
                            sb.append(str);
                            sb.append(", ");
                            sb.append(j);
                            sb.append(')');
                            database.execSQL(sb.toString());
                        } finally {
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(query, null);
                }
                database.execSQL("DROP TABLE FilterSettingsDb");
                database.execSQL("ALTER TABLE FilterSettingsDb_copy RENAME TO FilterSettingsDb");
            }
        };
        MIGRATION_13_14 = r12;
        ?? r13 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_14_15$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("CREATE TABLE HistoryDialogDb (userId INTEGER NOT NULL, dialogId INTEGER NOT NULL, creationDate INTEGER NOT NULL, isPinned INTEGER NOT NULL, PRIMARY KEY(userId, dialogId))");
            }
        };
        MIGRATION_14_15 = r13;
        ?? r14 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_15_16$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("CREATE TABLE HiddenChatsDb (userId INTEGER NOT NULL, dialogId INTEGER NOT NULL, PRIMARY KEY(userId, dialogId))");
            }
        };
        MIGRATION_15_16 = r14;
        ?? r15 = new Migration() { // from class: com.iMe.storage.data.locale.db.migration.AppMainDatabaseMigrations$MIGRATION_16_17$1
            @Override // androidx.room.migration.Migration
            public void migrate(SupportSQLiteDatabase database) {
                Intrinsics.checkNotNullParameter(database, "database");
                database.execSQL("DROP TABLE BookmarksDb");
            }
        };
        MIGRATION_16_17 = r15;
        migrations = new Migration[]{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15};
    }

    public final Migration[] getMigrations() {
        return migrations;
    }
}
