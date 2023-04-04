.class public final Lcom/iMe/bots/data/database/Migrations$FROM_6_TO_7$1;
.super Landroidx/room/migration/Migration;
.source "Migrations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/bots/data/database/Migrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMigrations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Migrations.kt\ncom/iMe/bots/data/database/Migrations$FROM_6_TO_7$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1855#2,2:100\n*S KotlinDebug\n*F\n+ 1 Migrations.kt\ncom/iMe/bots/data/database/Migrations$FROM_6_TO_7$1\n*L\n19#1:100,2\n*E\n"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x7

    .line 10
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DROP TABLE ShopDbModel"

    .line 12
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n        CREATE TABLE BotsDbModel (\n        id TEXT NOT NULL,\n        sku TEXT NOT NULL,\n        avatarOriginal TEXT NOT NULL,\n        avatarRounded TEXT NOT NULL,\n        title TEXT NOT NULL,\n        description TEXT NOT NULL,\n        installs INTEGER NOT NULL,\n        priority INTEGER NOT NULL,\n        reviews INTEGER NOT NULL,\n        rating REAL NOT NULL,\n        ownRating INTEGER NOT NULL,\n        installLogged INTEGER NOT NULL,\n        useAssets INTEGER NOT NULL,\n        tags TEXT NOT NULL,\n        file TEXT NOT NULL,\n        hash TEXT NOT NULL,\n        phrases INTEGER NOT NULL,\n        themes INTEGER NOT NULL,\n        created INTEGER NOT NULL,\n        updated INTEGER NOT NULL,\n        price TEXT NOT NULL,\n        type TEXT NOT NULL,\n        status TEXT NOT NULL,\n        PRIMARY KEY(id))\n        "

    .line 13
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE RecentDbModel"

    .line 14
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n        CREATE TABLE RecentDbModel (\n        botId TEXT NOT NULL,\n        tag TEXT NOT NULL,\n        position INTEGER NOT NULL,\n        counter INTEGER NOT NULL,\n        PRIMARY KEY(botId, tag, position))\n        "

    .line 15
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n        CREATE TABLE BotsCategoryDbModel (\n        id TEXT NOT NULL,\n        title TEXT NOT NULL,\n        priority INTEGER NOT NULL,\n        tags TEXT NOT NULL,\n        PRIMARY KEY(id))\n        "

    .line 16
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n        CREATE TABLE BotsTagDbModel (\n        id TEXT NOT NULL,\n        title TEXT NOT NULL,\n        hidden INTEGER NOT NULL,\n        PRIMARY KEY(id))\n        "

    .line 17
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/iMe/bots/BotConstants;->INSTANCE:Lcom/iMe/bots/BotConstants;

    invoke-virtual {v0}, Lcom/iMe/bots/BotConstants;->getPredefinedBots()Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 20
    sget-object v2, Lcom/iMe/bots/data/database/Migrations;->INSTANCE:Lcom/iMe/bots/data/database/Migrations;

    invoke-static {v2, v1}, Lcom/iMe/bots/data/database/Migrations;->access$getBotInsertionQuery(Lcom/iMe/bots/data/database/Migrations;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
