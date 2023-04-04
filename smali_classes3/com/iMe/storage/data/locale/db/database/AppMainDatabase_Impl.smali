.class public final Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;
.super Lcom/iMe/storage/data/locale/db/database/AppMainDatabase;
.source "AppMainDatabase_Impl.java"


# instance fields
.field private volatile _bookmarksDao:Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao;

.field private volatile _dialogTranslationSettingsDao:Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;

.field private volatile _filtersDao:Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;

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
.method public bookmarksDao()Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_bookmarksDao:Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_bookmarksDao:Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao;

    return-object v0

    .line 401
    :cond_0
    monitor-enter p0

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_bookmarksDao:Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao;

    if-nez v0, :cond_1

    .line 403
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_bookmarksDao:Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao;

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_bookmarksDao:Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 406
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 11

    .line 271
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 272
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 273
    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "FilterSettingsDb"

    const-string v4, "DialogTranslationSettingsDb"

    const-string v5, "TopicDb"

    const-string v6, "WalletConnectSessionDb"

    const-string v7, "TemplatesDb"

    const-string v8, "BookmarksDb"

    const-string v9, "PlaylistsDb"

    const-string v10, "HistoryDialogDb"

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

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2}, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl$1;-><init>(Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;I)V

    const-string v2, "994e7f15e3505c9ef787432b912dde6a"

    const-string v3, "4536f47c68816406037587c0e0f33017"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 262
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 263
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 265
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public dialogTranslationSettingsDao()Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_dialogTranslationSettingsDao:Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_dialogTranslationSettingsDao:Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;

    return-object v0

    .line 345
    :cond_0
    monitor-enter p0

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_dialogTranslationSettingsDao:Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;

    if-nez v0, :cond_1

    .line 347
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_dialogTranslationSettingsDao:Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_dialogTranslationSettingsDao:Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 350
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public filtersDao()Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_filtersDao:Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_filtersDao:Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;

    return-object v0

    .line 331
    :cond_0
    monitor-enter p0

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_filtersDao:Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;

    if-nez v0, :cond_1

    .line 333
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_filtersDao:Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_filtersDao:Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 336
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

    .line 323
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

    .line 316
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

    .line 302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 303
    const-class v1, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;

    invoke-static {}, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-class v1, Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;

    invoke-static {}, Lcom/iMe/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-class v1, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;

    invoke-static {}, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-class v1, Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

    invoke-static {}, Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-class v1, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;

    invoke-static {}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-class v1, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao;

    invoke-static {}, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-class v1, Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;

    invoke-static {}, Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-class v1, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;

    invoke-static {}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public historyDialogDao()Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_historyDialogDao:Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_historyDialogDao:Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;

    return-object v0

    .line 429
    :cond_0
    monitor-enter p0

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_historyDialogDao:Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;

    if-nez v0, :cond_1

    .line 431
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_historyDialogDao:Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_historyDialogDao:Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 434
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public playlistsDao()Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_playlistsDao:Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_playlistsDao:Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;

    return-object v0

    .line 415
    :cond_0
    monitor-enter p0

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_playlistsDao:Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;

    if-nez v0, :cond_1

    .line 417
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_playlistsDao:Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_playlistsDao:Lcom/iMe/storage/data/locale/db/dao/main/PlaylistsDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 420
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public templatesDao()Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_templatesDao:Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_templatesDao:Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

    return-object v0

    .line 373
    :cond_0
    monitor-enter p0

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_templatesDao:Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

    if-nez v0, :cond_1

    .line 375
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_templatesDao:Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_templatesDao:Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 378
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public topicsDao()Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_topicsDao:Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_topicsDao:Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;

    return-object v0

    .line 359
    :cond_0
    monitor-enter p0

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_topicsDao:Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;

    if-nez v0, :cond_1

    .line 361
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_topicsDao:Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_topicsDao:Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 364
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public walletConnectSessionsDao()Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_walletConnectSessionsDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_walletConnectSessionsDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;

    return-object v0

    .line 387
    :cond_0
    monitor-enter p0

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_walletConnectSessionsDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;

    if-nez v0, :cond_1

    .line 389
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_walletConnectSessionsDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppMainDatabase_Impl;->_walletConnectSessionsDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 392
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
