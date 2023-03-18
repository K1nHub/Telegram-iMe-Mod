.class public final Lcom/smedialink/storage/data/locale/db/migration/AppMainDatabaseMigrations$MIGRATION_4_5$1;
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

    const/4 v0, 0x4

    const/4 v1, 0x5

    .line 39
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE TopicDbModel_copy (topicId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT, icon TEXT, `order` INTEGER NOT NULL, dialogs TEXT NOT NULL, userId INTEGER NOT NULL)"

    .line 41
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO TopicDbModel_copy (icon, `order`, dialogs, userId) SELECT topicId, `order`, dialogs, userId FROM TopicDbModel"

    .line 42
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE TopicDbModel"

    .line 43
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE TopicDbModel_copy RENAME TO TopicDbModel"

    .line 44
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
