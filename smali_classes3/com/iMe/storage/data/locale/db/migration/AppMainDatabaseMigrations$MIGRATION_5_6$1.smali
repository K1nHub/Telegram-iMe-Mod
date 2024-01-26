.class public final Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_5_6$1;
.super Landroidx/room/migration/Migration;
.source "AppMainDatabaseMigrations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x6

    .line 51
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE FilterSettingsDb (filterId INTEGER NOT NULL, fabs TEXT NOT NULL, icon TEXT, userId INTEGER NOT NULL, PRIMARY KEY(filterId, userId))"

    .line 53
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO FilterSettingsDb (filterId, fabs, icon, userId) SELECT filterId, (\'[\' || fabTypeId || \']\'), iconTypeId, userId FROM FiltersDb WHERE fabTypeId != \"fab_multi\""

    .line 54
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO FilterSettingsDb (filterId, fabs, icon, userId) SELECT filterId, multiFabTypeIds, iconTypeId, userId FROM FiltersDb WHERE fabTypeId == \"fab_multi\""

    .line 55
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE FiltersDb"

    .line 56
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE TopicDbModel RENAME TO TopicDb"

    .line 57
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE DialogSettingsDb (isInTextTranslateEnabled INTEGER NOT NULL, inTextTranslateTargetLangCode TEXT, isOutTextTranslateEnabled INTEGER NOT NULL, outTextTranslateTargetLangCode TEXT NOT NULL, isVoiceTranslateEnabled INTEGER NOT NULL, voiceTranslateLangCode TEXT, dialogId INTEGER NOT NULL, userId INTEGER NOT NULL, PRIMARY KEY(dialogId, userId))"

    .line 58
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO DialogSettingsDb (isInTextTranslateEnabled, inTextTranslateTargetLangCode, isOutTextTranslateEnabled, outTextTranslateTargetLangCode, isVoiceTranslateEnabled, dialogId, userId) SELECT isEnabled, incomingTargetLanguageCode, isEnabled, outgoingTargetLanguageCode, 0, dialogId, userId FROM AutoTranslationSettingsDb"

    .line 59
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE AutoTranslationSettingsDb"

    .line 60
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
