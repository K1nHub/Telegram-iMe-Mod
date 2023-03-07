.class Lcom/smedialink/bots/data/database/BotsDatabase_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "BotsDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/data/database/BotsDatabase_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/bots/data/database/BotsDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/smedialink/bots/data/database/BotsDatabase_Impl;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "version"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/smedialink/bots/data/database/BotsDatabase_Impl$1;->this$0:Lcom/smedialink/bots/data/database/BotsDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_db"
        }
    .end annotation

    const-string v0, "CREATE TABLE IF NOT EXISTS `BotsCategoryDbModel` (`id` TEXT NOT NULL, `title` TEXT NOT NULL, `priority` INTEGER NOT NULL, `tags` TEXT NOT NULL, `locales` TEXT NOT NULL, PRIMARY KEY(`id`))"

    .line 48
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `BotsDbModel` (`id` TEXT NOT NULL, `sku` TEXT, `lang` TEXT NOT NULL, `avatarOriginal` TEXT NOT NULL, `avatarRounded` TEXT NOT NULL, `titleLocales` TEXT NOT NULL, `descriptionLocales` TEXT NOT NULL, `title` TEXT NOT NULL, `description` TEXT NOT NULL, `installs` INTEGER NOT NULL, `priority` INTEGER NOT NULL, `reviews` INTEGER NOT NULL, `rating` REAL NOT NULL, `ownRating` INTEGER NOT NULL, `installLogged` INTEGER NOT NULL, `useAssets` INTEGER NOT NULL, `botUpdated` INTEGER NOT NULL, `tags` TEXT NOT NULL, `file` TEXT NOT NULL, `hash` TEXT NOT NULL, `phrases` INTEGER NOT NULL, `themes` INTEGER NOT NULL, `created` INTEGER NOT NULL, `updated` INTEGER NOT NULL, `price` TEXT, `type` TEXT NOT NULL, `status` TEXT NOT NULL, PRIMARY KEY(`id`))"

    .line 49
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `TagDbModel` (`id` TEXT NOT NULL, `title` TEXT NOT NULL, `hidden` INTEGER NOT NULL, `locales` TEXT NOT NULL, PRIMARY KEY(`id`))"

    .line 50
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `HolidaysDbModel` (`userId` INTEGER NOT NULL, `tags` TEXT NOT NULL, PRIMARY KEY(`userId`))"

    .line 51
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `RecentDbModel` (`botId` TEXT NOT NULL, `tag` TEXT NOT NULL, `position` INTEGER NOT NULL, `counter` INTEGER NOT NULL, PRIMARY KEY(`botId`, `tag`, `position`))"

    .line 52
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 53
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'620aca70e872a7da93742daff650b394\')"

    .line 54
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_db"
        }
    .end annotation

    const-string v0, "DROP TABLE IF EXISTS `BotsCategoryDbModel`"

    .line 59
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `BotsDbModel`"

    .line 60
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `TagDbModel`"

    .line 61
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `HolidaysDbModel`"

    .line 62
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `RecentDbModel`"

    .line 63
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/smedialink/bots/data/database/BotsDatabase_Impl$1;->this$0:Lcom/smedialink/bots/data/database/BotsDatabase_Impl;

    invoke-static {v0}, Lcom/smedialink/bots/data/database/BotsDatabase_Impl;->access$000(Lcom/smedialink/bots/data/database/BotsDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Lcom/smedialink/bots/data/database/BotsDatabase_Impl$1;->this$0:Lcom/smedialink/bots/data/database/BotsDatabase_Impl;

    invoke-static {v1}, Lcom/smedialink/bots/data/database/BotsDatabase_Impl;->access$100(Lcom/smedialink/bots/data/database/BotsDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 66
    iget-object v2, p0, Lcom/smedialink/bots/data/database/BotsDatabase_Impl$1;->this$0:Lcom/smedialink/bots/data/database/BotsDatabase_Impl;

    invoke-static {v2}, Lcom/smedialink/bots/data/database/BotsDatabase_Impl;->access$200(Lcom/smedialink/bots/data/database/BotsDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onDestructiveMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_db"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/smedialink/bots/data/database/BotsDatabase_Impl$1;->this$0:Lcom/smedialink/bots/data/database/BotsDatabase_Impl;

    invoke-static {v0}, Lcom/smedialink/bots/data/database/BotsDatabase_Impl;->access$300(Lcom/smedialink/bots/data/database/BotsDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lcom/smedialink/bots/data/database/BotsDatabase_Impl$1;->this$0:Lcom/smedialink/bots/data/database/BotsDatabase_Impl;

    invoke-static {v1}, Lcom/smedialink/bots/data/database/BotsDatabase_Impl;->access$400(Lcom/smedialink/bots/data/database/BotsDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 75
    iget-object v2, p0, Lcom/smedialink/bots/data/database/BotsDatabase_Impl$1;->this$0:Lcom/smedialink/bots/data/database/BotsDatabase_Impl;

    invoke-static {v2}, Lcom/smedialink/bots/data/database/BotsDatabase_Impl;->access$500(Lcom/smedialink/bots/data/database/BotsDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_db"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/smedialink/bots/data/database/BotsDatabase_Impl$1;->this$0:Lcom/smedialink/bots/data/database/BotsDatabase_Impl;

    invoke-static {v0, p1}, Lcom/smedialink/bots/data/database/BotsDatabase_Impl;->access$602(Lcom/smedialink/bots/data/database/BotsDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 83
    iget-object v0, p0, Lcom/smedialink/bots/data/database/BotsDatabase_Impl$1;->this$0:Lcom/smedialink/bots/data/database/BotsDatabase_Impl;

    invoke-static {v0, p1}, Lcom/smedialink/bots/data/database/BotsDatabase_Impl;->access$700(Lcom/smedialink/bots/data/database/BotsDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 84
    iget-object v0, p0, Lcom/smedialink/bots/data/database/BotsDatabase_Impl$1;->this$0:Lcom/smedialink/bots/data/database/BotsDatabase_Impl;

    invoke-static {v0}, Lcom/smedialink/bots/data/database/BotsDatabase_Impl;->access$800(Lcom/smedialink/bots/data/database/BotsDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lcom/smedialink/bots/data/database/BotsDatabase_Impl$1;->this$0:Lcom/smedialink/bots/data/database/BotsDatabase_Impl;

    invoke-static {v1}, Lcom/smedialink/bots/data/database/BotsDatabase_Impl;->access$900(Lcom/smedialink/bots/data/database/BotsDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 86
    iget-object v2, p0, Lcom/smedialink/bots/data/database/BotsDatabase_Impl$1;->this$0:Lcom/smedialink/bots/data/database/BotsDatabase_Impl;

    invoke-static {v2}, Lcom/smedialink/bots/data/database/BotsDatabase_Impl;->access$1000(Lcom/smedialink/bots/data/database/BotsDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_db"
        }
    .end annotation

    return-void
.end method

.method public onPreMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_db"
        }
    .end annotation

    .line 93
    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method protected onValidateSchema(Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_db"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 102
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 103
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v4, "id"

    const-string v5, "TEXT"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v5, "title"

    const-string v6, "TEXT"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "title"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v6, "priority"

    const-string v7, "INTEGER"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "priority"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v7, "tags"

    const-string v8, "TEXT"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "tags"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v8, "locales"

    const-string v9, "TEXT"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "locales"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v2, Ljava/util/HashSet;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 109
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 110
    new-instance v10, Landroidx/room/util/TableInfo;

    const-string v11, "BotsCategoryDbModel"

    invoke-direct {v10, v11, v1, v2, v9}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 111
    invoke-static {v0, v11}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v1

    .line 112
    invoke-virtual {v10, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v9, "\n Found:\n"

    if-nez v2, :cond_0

    .line 113
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BotsCategoryDbModel(com.smedialink.bots.data.model.database.BotsCategoryDbModel).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 117
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 118
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-string v11, "id"

    const-string v12, "TEXT"

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const-string v18, "sku"

    const-string v19, "TEXT"

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "sku"

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v12, "lang"

    const-string v13, "TEXT"

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "lang"

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v12, "avatarOriginal"

    const-string v13, "TEXT"

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "avatarOriginal"

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v12, "avatarRounded"

    const-string v13, "TEXT"

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "avatarRounded"

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v12, "titleLocales"

    const-string v13, "TEXT"

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "titleLocales"

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v12, "descriptionLocales"

    const-string v13, "TEXT"

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "descriptionLocales"

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v12, "title"

    const-string v13, "TEXT"

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const-string v19, "description"

    const-string v20, "TEXT"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "description"

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v12, "installs"

    const-string v13, "INTEGER"

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "installs"

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v12, "priority"

    const-string v13, "INTEGER"

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v19, "reviews"

    const-string v20, "INTEGER"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "reviews"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-string v11, "rating"

    const-string v12, "REAL"

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "rating"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v11, "ownRating"

    const-string v12, "INTEGER"

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "ownRating"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v11, "installLogged"

    const-string v12, "INTEGER"

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "installLogged"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v11, "useAssets"

    const-string v12, "INTEGER"

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "useAssets"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v11, "botUpdated"

    const-string v12, "INTEGER"

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "botUpdated"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v11, "tags"

    const-string v12, "TEXT"

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const-string v18, "file"

    const-string v19, "TEXT"

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "file"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v11, "hash"

    const-string v12, "TEXT"

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "hash"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v11, "phrases"

    const-string v12, "INTEGER"

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "phrases"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v11, "themes"

    const-string v12, "INTEGER"

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "themes"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v11, "created"

    const-string v12, "INTEGER"

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "created"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v11, "updated"

    const-string v12, "INTEGER"

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "updated"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const/4 v13, 0x0

    const-string v11, "price"

    const-string v12, "TEXT"

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "price"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const/4 v13, 0x1

    const-string v11, "type"

    const-string v12, "TEXT"

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "type"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v11, "status"

    const-string v12, "TEXT"

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "status"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 146
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 147
    new-instance v10, Landroidx/room/util/TableInfo;

    const-string v11, "BotsDbModel"

    invoke-direct {v10, v11, v1, v2, v5}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 148
    invoke-static {v0, v11}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v1

    .line 149
    invoke-virtual {v10, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BotsDbModel(com.smedialink.bots.data.model.database.BotsDbModel).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 154
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 155
    new-instance v5, Landroidx/room/util/TableInfo$Column;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-string v11, "id"

    const-string v12, "TEXT"

    move-object v10, v5

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const-string v18, "title"

    const-string v19, "TEXT"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const/4 v14, 0x0

    const-string v11, "hidden"

    const-string v12, "INTEGER"

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "hidden"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v11, "locales"

    const-string v12, "TEXT"

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 160
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 161
    new-instance v5, Landroidx/room/util/TableInfo;

    const-string v7, "TagDbModel"

    invoke-direct {v5, v7, v1, v3, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 162
    invoke-static {v0, v7}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v1

    .line 163
    invoke-virtual {v5, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 164
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TagDbModel(com.smedialink.bots.data.model.database.TagDbModel).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 168
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 169
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-string v11, "userId"

    const-string v12, "INTEGER"

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "userId"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const/4 v14, 0x0

    const-string v11, "tags"

    const-string v12, "TEXT"

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 172
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 173
    new-instance v5, Landroidx/room/util/TableInfo;

    const-string v6, "HolidaysDbModel"

    invoke-direct {v5, v6, v1, v3, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 174
    invoke-static {v0, v6}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v1

    .line 175
    invoke-virtual {v5, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 176
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HolidaysDbModel(com.smedialink.bots.data.model.database.HolidaysDbModel).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 180
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 181
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-string v11, "botId"

    const-string v12, "TEXT"

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "botId"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const/4 v14, 0x2

    const-string v11, "tag"

    const-string v12, "TEXT"

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "tag"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const/4 v14, 0x3

    const-string v11, "position"

    const-string v12, "INTEGER"

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "position"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const/4 v14, 0x0

    const-string v11, "counter"

    const-string v12, "INTEGER"

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "counter"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 186
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 187
    new-instance v4, Landroidx/room/util/TableInfo;

    const-string v5, "RecentDbModel"

    invoke-direct {v4, v5, v1, v2, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 188
    invoke-static {v0, v5}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v0

    .line 189
    invoke-virtual {v4, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 190
    new-instance v1, Landroidx/room/RoomOpenHelper$ValidationResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecentDbModel(com.smedialink.bots.data.model.database.RecentDbModel).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v1

    .line 194
    :cond_4
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
