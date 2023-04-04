.class public final Lcom/iMe/bots/data/database/BotsDatabase_Impl;
.super Lcom/iMe/bots/data/database/BotsDatabase;
.source "BotsDatabase_Impl.java"


# instance fields
.field private volatile _botsCategoryDao:Lcom/iMe/bots/data/database/BotsCategoryDao;

.field private volatile _botsDao:Lcom/iMe/bots/data/database/BotsDao;

.field private volatile _botsTagDao:Lcom/iMe/bots/data/database/BotsTagDao;

.field private volatile _holidaysDao:Lcom/iMe/bots/data/database/HolidaysDao;

.field private volatile _recentDao:Lcom/iMe/bots/data/database/RecentDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/iMe/bots/data/database/BotsDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/iMe/bots/data/database/BotsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/iMe/bots/data/database/BotsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/iMe/bots/data/database/BotsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/iMe/bots/data/database/BotsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/iMe/bots/data/database/BotsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/iMe/bots/data/database/BotsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/iMe/bots/data/database/BotsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/iMe/bots/data/database/BotsDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 32
    iput-object p1, p0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$700(Lcom/iMe/bots/data/database/BotsDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$800(Lcom/iMe/bots/data/database/BotsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/iMe/bots/data/database/BotsDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public botsDao()Lcom/iMe/bots/data/database/BotsDao;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_botsDao:Lcom/iMe/bots/data/database/BotsDao;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_botsDao:Lcom/iMe/bots/data/database/BotsDao;

    return-object v0

    .line 261
    :cond_0
    monitor-enter p0

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_botsDao:Lcom/iMe/bots/data/database/BotsDao;

    if-nez v0, :cond_1

    .line 263
    new-instance v0, Lcom/iMe/bots/data/database/BotsDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/bots/data/database/BotsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_botsDao:Lcom/iMe/bots/data/database/BotsDao;

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_botsDao:Lcom/iMe/bots/data/database/BotsDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 266
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public categoryDao()Lcom/iMe/bots/data/database/BotsCategoryDao;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_botsCategoryDao:Lcom/iMe/bots/data/database/BotsCategoryDao;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_botsCategoryDao:Lcom/iMe/bots/data/database/BotsCategoryDao;

    return-object v0

    .line 275
    :cond_0
    monitor-enter p0

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_botsCategoryDao:Lcom/iMe/bots/data/database/BotsCategoryDao;

    if-nez v0, :cond_1

    .line 277
    new-instance v0, Lcom/iMe/bots/data/database/BotsCategoryDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/bots/data/database/BotsCategoryDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_botsCategoryDao:Lcom/iMe/bots/data/database/BotsCategoryDao;

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_botsCategoryDao:Lcom/iMe/bots/data/database/BotsCategoryDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 280
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 8

    .line 207
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 208
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 209
    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "BotsCategoryDbModel"

    const-string v4, "BotsDbModel"

    const-string v5, "TagDbModel"

    const-string v6, "HolidaysDbModel"

    const-string v7, "RecentDbModel"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 45
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/iMe/bots/data/database/BotsDatabase_Impl$1;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lcom/iMe/bots/data/database/BotsDatabase_Impl$1;-><init>(Lcom/iMe/bots/data/database/BotsDatabase_Impl;I)V

    const-string v2, "620aca70e872a7da93742daff650b394"

    const-string v3, "5c4e08f1d02a6fa79242327c1eb910d9"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 198
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 199
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 201
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoMigrationSpecsMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Landroidx/room/migration/Migration;

    .line 253
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;>;"
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 236
    const-class v1, Lcom/iMe/bots/data/database/BotsDao;

    invoke-static {}, Lcom/iMe/bots/data/database/BotsDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-class v1, Lcom/iMe/bots/data/database/BotsCategoryDao;

    invoke-static {}, Lcom/iMe/bots/data/database/BotsCategoryDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-class v1, Lcom/iMe/bots/data/database/BotsTagDao;

    invoke-static {}, Lcom/iMe/bots/data/database/BotsTagDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-class v1, Lcom/iMe/bots/data/database/HolidaysDao;

    invoke-static {}, Lcom/iMe/bots/data/database/HolidaysDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-class v1, Lcom/iMe/bots/data/database/RecentDao;

    invoke-static {}, Lcom/iMe/bots/data/database/RecentDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public holidaysDao()Lcom/iMe/bots/data/database/HolidaysDao;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_holidaysDao:Lcom/iMe/bots/data/database/HolidaysDao;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_holidaysDao:Lcom/iMe/bots/data/database/HolidaysDao;

    return-object v0

    .line 303
    :cond_0
    monitor-enter p0

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_holidaysDao:Lcom/iMe/bots/data/database/HolidaysDao;

    if-nez v0, :cond_1

    .line 305
    new-instance v0, Lcom/iMe/bots/data/database/HolidaysDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/bots/data/database/HolidaysDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_holidaysDao:Lcom/iMe/bots/data/database/HolidaysDao;

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_holidaysDao:Lcom/iMe/bots/data/database/HolidaysDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 308
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recentDao()Lcom/iMe/bots/data/database/RecentDao;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_recentDao:Lcom/iMe/bots/data/database/RecentDao;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_recentDao:Lcom/iMe/bots/data/database/RecentDao;

    return-object v0

    .line 317
    :cond_0
    monitor-enter p0

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_recentDao:Lcom/iMe/bots/data/database/RecentDao;

    if-nez v0, :cond_1

    .line 319
    new-instance v0, Lcom/iMe/bots/data/database/RecentDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/bots/data/database/RecentDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_recentDao:Lcom/iMe/bots/data/database/RecentDao;

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_recentDao:Lcom/iMe/bots/data/database/RecentDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 322
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tagsDao()Lcom/iMe/bots/data/database/BotsTagDao;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_botsTagDao:Lcom/iMe/bots/data/database/BotsTagDao;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_botsTagDao:Lcom/iMe/bots/data/database/BotsTagDao;

    return-object v0

    .line 289
    :cond_0
    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_botsTagDao:Lcom/iMe/bots/data/database/BotsTagDao;

    if-nez v0, :cond_1

    .line 291
    new-instance v0, Lcom/iMe/bots/data/database/BotsTagDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/bots/data/database/BotsTagDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_botsTagDao:Lcom/iMe/bots/data/database/BotsTagDao;

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsDatabase_Impl;->_botsTagDao:Lcom/iMe/bots/data/database/BotsTagDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 294
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
