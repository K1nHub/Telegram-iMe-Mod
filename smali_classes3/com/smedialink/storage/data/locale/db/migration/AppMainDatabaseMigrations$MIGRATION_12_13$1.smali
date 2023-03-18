.class public final Lcom/smedialink/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_12_13$1;
.super Landroidx/room/migration/Migration;
.source "AppMainDatabaseMigrations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/data/locale/db/migration/AppMainDatabaseMigrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v0, 0xc

    const/16 v1, 0xd

    .line 134
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE DialogTranslationSettingsDb_copy (isInTextTranslateEnabled INTEGER NOT NULL, inTextTranslateTargetLangCode TEXT, isOutTextTranslateEnabled INTEGER NOT NULL, outTextTranslateTargetLangCode TEXT NOT NULL, dialogId INTEGER NOT NULL, userId INTEGER NOT NULL, PRIMARY KEY(dialogId, userId))"

    .line 136
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO DialogTranslationSettingsDb_copy (isInTextTranslateEnabled, inTextTranslateTargetLangCode, isOutTextTranslateEnabled, outTextTranslateTargetLangCode, dialogId, userId) SELECT isInTextTranslateEnabled, inTextTranslateTargetLangCode, isOutTextTranslateEnabled, outTextTranslateTargetLangCode, dialogId, userId FROM DialogTranslationSettingsDb"

    .line 137
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE DialogTranslationSettingsDb"

    .line 138
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE DialogTranslationSettingsDb_copy RENAME TO DialogTranslationSettingsDb"

    .line 139
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
