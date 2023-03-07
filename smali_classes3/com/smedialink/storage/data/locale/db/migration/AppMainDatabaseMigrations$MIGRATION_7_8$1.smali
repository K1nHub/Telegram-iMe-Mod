.class public final Lcom/smedialink/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_7_8$1;
.super Landroidx/room/migration/Migration;
.source "AppMainDatabaseMigrations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/locale/db/migration/AppMainDatabaseMigrations;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x7

    const/16 v1, 0x8

    .line 67
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE DialogSettingsDb_copy (isInTextTranslateEnabled INTEGER NOT NULL, inTextTranslateTargetLangCode TEXT, isOutTextTranslateEnabled INTEGER NOT NULL, outTextTranslateTargetLangCode TEXT NOT NULL, isVoiceTranslateEnabled INTEGER NOT NULL, voiceTranslateLangCode TEXT, bookmarks TEXT NOT NULL DEFAULT \"[]\", dialogId INTEGER NOT NULL, userId INTEGER NOT NULL, PRIMARY KEY(dialogId, userId))"

    .line 69
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO DialogSettingsDb_copy (isInTextTranslateEnabled, inTextTranslateTargetLangCode, isOutTextTranslateEnabled, outTextTranslateTargetLangCode, isVoiceTranslateEnabled, dialogId, userId) SELECT isInTextTranslateEnabled, inTextTranslateTargetLangCode, isOutTextTranslateEnabled, outTextTranslateTargetLangCode, isVoiceTranslateEnabled, dialogId, userId FROM DialogSettingsDb"

    .line 70
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE DialogSettingsDb"

    .line 71
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE DialogSettingsDb_copy RENAME TO DialogSettingsDb"

    .line 72
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
