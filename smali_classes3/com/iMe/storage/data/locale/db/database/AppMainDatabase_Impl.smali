.class public final Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;
.super Lcom/iMe/storage/data/locale/db/database/AppMainDatabase;
.source "AppMainDatabase_Impl.java"


# instance fields
.field private volatile _dialogTranslationSettingsDao:Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;

.field private volatile _filtersDao:Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;

.field private volatile _hiddenChatsDao:Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao;

.field private volatile _historyDialogDao:Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;

.field private volatile _playlistsDao:Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;

.field private volatile _templatesDao:Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

.field private volatile _topicsDao:Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;

.field private volatile _walletConnectSessionsDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 48
    iput-object p1, p0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$700(Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$800(Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 11

    .line 270
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 271
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 272
    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "FilterSettingsDb"

    const-string v4, "DialogTranslationSettingsDb"

    const-string v5, "TopicDb"

    const-string v6, "WalletConnectSessionDb"

    const-string v7, "TemplatesDb"

    const-string v8, "PlaylistsDb"

    const-string v9, "HistoryDialogDb"

    const-string v10, "HiddenChatsDb"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

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

    .line 67
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl$1;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl$1;-><init>(Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;I)V

    const-string v2, "d26c30a66c211afebfa310894b978450"

    const-string v3, "0a634f93cb59203e2d7d49f349826b7d"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 261
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 262
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 264
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public dialogTranslationSettingsDao()Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_dialogTranslationSettingsDao:Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_dialogTranslationSettingsDao:Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;

    return-object v0

    .line 344
    :cond_0
    monitor-enter p0

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_dialogTranslationSettingsDao:Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;

    if-nez v0, :cond_1

    .line 346
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_dialogTranslationSettingsDao:Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_dialogTranslationSettingsDao:Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 349
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public filtersDao()Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_filtersDao:Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_filtersDao:Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;

    return-object v0

    .line 330
    :cond_0
    monitor-enter p0

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_filtersDao:Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;

    if-nez v0, :cond_1

    .line 332
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_filtersDao:Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_filtersDao:Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 335
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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

    .line 322
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

    .line 315
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

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 302
    const-class v1, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;

    invoke-static {}, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-class v1, Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;

    invoke-static {}, Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-class v1, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;

    invoke-static {}, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-class v1, Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

    invoke-static {}, Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-class v1, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;

    invoke-static {}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-class v1, Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;

    invoke-static {}, Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-class v1, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;

    invoke-static {}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-class v1, Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao;

    invoke-static {}, Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public hiddenChatsDao()Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_hiddenChatsDao:Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_hiddenChatsDao:Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao;

    return-object v0

    .line 428
    :cond_0
    monitor-enter p0

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_hiddenChatsDao:Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao;

    if-nez v0, :cond_1

    .line 430
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_hiddenChatsDao:Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao;

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_hiddenChatsDao:Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 433
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public historyDialogDao()Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_historyDialogDao:Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_historyDialogDao:Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;

    return-object v0

    .line 414
    :cond_0
    monitor-enter p0

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_historyDialogDao:Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;

    if-nez v0, :cond_1

    .line 416
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_historyDialogDao:Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_historyDialogDao:Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 419
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public playlistsDao()Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_playlistsDao:Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_playlistsDao:Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;

    return-object v0

    .line 400
    :cond_0
    monitor-enter p0

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_playlistsDao:Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;

    if-nez v0, :cond_1

    .line 402
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_playlistsDao:Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_playlistsDao:Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 405
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public templatesDao()Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_templatesDao:Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_templatesDao:Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

    return-object v0

    .line 372
    :cond_0
    monitor-enter p0

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_templatesDao:Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

    if-nez v0, :cond_1

    .line 374
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_templatesDao:Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_templatesDao:Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 377
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public topicsDao()Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_topicsDao:Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_topicsDao:Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;

    return-object v0

    .line 358
    :cond_0
    monitor-enter p0

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_topicsDao:Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;

    if-nez v0, :cond_1

    .line 360
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_topicsDao:Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_topicsDao:Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 363
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public walletConnectSessionsDao()Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_walletConnectSessionsDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_walletConnectSessionsDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;

    return-object v0

    .line 386
    :cond_0
    monitor-enter p0

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_walletConnectSessionsDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;

    if-nez v0, :cond_1

    .line 388
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_walletConnectSessionsDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_walletConnectSessionsDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 391
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
