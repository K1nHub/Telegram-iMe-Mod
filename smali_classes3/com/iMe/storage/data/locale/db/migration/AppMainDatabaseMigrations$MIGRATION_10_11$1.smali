.class public final Lcom/iMe/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_10_11$1;
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

    const/16 v0, 0xa

    const/16 v1, 0xb

    .line 118
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE DialogTranslationSettingsDb (isInTextTranslateEnabled INTEGER NOT NULL, inTextTranslateTargetLangCode TEXT, isOutTextTranslateEnabled INTEGER NOT NULL, outTextTranslateTargetLangCode TEXT NOT NULL, isVoiceTranslateEnabled INTEGER NOT NULL, voiceTranslateLangCode TEXT, dialogId INTEGER NOT NULL, userId INTEGER NOT NULL, PRIMARY KEY(dialogId, userId))"

    .line 120
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE BookmarksDb (messageIds TEXT NOT NULL, dialogId INTEGER NOT NULL, userId INTEGER NOT NULL, PRIMARY KEY(dialogId, userId))"

    .line 121
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO DialogTranslationSettingsDb (isInTextTranslateEnabled, inTextTranslateTargetLangCode, isOutTextTranslateEnabled, outTextTranslateTargetLangCode, isVoiceTranslateEnabled, voiceTranslateLangCode, dialogId, userId) SELECT isInTextTranslateEnabled, inTextTranslateTargetLangCode, isOutTextTranslateEnabled, outTextTranslateTargetLangCode, isVoiceTranslateEnabled, voiceTranslateLangCode, dialogId, userId FROM DialogSettingsDb"

    .line 122
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO BookmarksDb (messageIds, dialogId, userId) SELECT bookmarks, dialogId, userId FROM DialogSettingsDb WHERE bookmarks != \"[]\""

    .line 123
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE DialogSettingsDb"

    .line 124
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
