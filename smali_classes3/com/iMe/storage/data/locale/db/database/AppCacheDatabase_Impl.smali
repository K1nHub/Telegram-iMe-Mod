.class public final Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;
.super Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase;
.source "AppCacheDatabase_Impl.java"


# instance fields
.field private volatile _albumsDao:Lcom/iMe/storage/data/locale/db/dao/minor/cloud/AlbumsDao;

.field private volatile _catalogCategoryDao:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;

.field private volatile _catalogLanguageDao:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;

.field private volatile _socialNetworkDao:Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao;

.field private volatile _walletTokenBalanceDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 42
    iput-object p1, p0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$700(Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$800(Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public catalogCategoryDao()Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_catalogCategoryDao:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_catalogCategoryDao:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;

    return-object v0

    .line 254
    :cond_0
    monitor-enter p0

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_catalogCategoryDao:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;

    if-nez v0, :cond_1

    .line 256
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_catalogCategoryDao:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_catalogCategoryDao:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 259
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public catalogLanguageDao()Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_catalogLanguageDao:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_catalogLanguageDao:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;

    return-object v0

    .line 268
    :cond_0
    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_catalogLanguageDao:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;

    if-nez v0, :cond_1

    .line 270
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_catalogLanguageDao:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_catalogLanguageDao:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 273
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cloudAlbumDao()Lcom/iMe/storage/data/locale/db/dao/minor/cloud/AlbumsDao;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_albumsDao:Lcom/iMe/storage/data/locale/db/dao/minor/cloud/AlbumsDao;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_albumsDao:Lcom/iMe/storage/data/locale/db/dao/minor/cloud/AlbumsDao;

    return-object v0

    .line 296
    :cond_0
    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_albumsDao:Lcom/iMe/storage/data/locale/db/dao/minor/cloud/AlbumsDao;

    if-nez v0, :cond_1

    .line 298
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/cloud/AlbumsDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/minor/cloud/AlbumsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_albumsDao:Lcom/iMe/storage/data/locale/db/dao/minor/cloud/AlbumsDao;

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_albumsDao:Lcom/iMe/storage/data/locale/db/dao/minor/cloud/AlbumsDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 301
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 8

    .line 200
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 201
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 202
    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "CatalogCategoryDb"

    const-string v4, "CatalogLanguageDb"

    const-string v5, "CloudAlbumDb"

    const-string v6, "WalletTokenBalanceDb"

    const-string v7, "social"

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

    .line 55
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl$1;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl$1;-><init>(Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;I)V

    const-string v2, "ecaf2fd7b9ef0744a7de30d3137a52cb"

    const-string v3, "a73aafb8d789016f1e2bc3b953587493"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 191
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 192
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 194
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

    .line 246
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

    .line 239
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

    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 229
    const-class v1, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;

    invoke-static {}, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-class v1, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;

    invoke-static {}, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-class v1, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;

    invoke-static {}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-class v1, Lcom/iMe/storage/data/locale/db/dao/minor/cloud/AlbumsDao;

    invoke-static {}, Lcom/iMe/storage/data/locale/db/dao/minor/cloud/AlbumsDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-class v1, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao;

    invoke-static {}, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public socialNetworkDao()Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_socialNetworkDao:Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_socialNetworkDao:Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao;

    return-object v0

    .line 310
    :cond_0
    monitor-enter p0

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_socialNetworkDao:Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao;

    if-nez v0, :cond_1

    .line 312
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_socialNetworkDao:Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao;

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_socialNetworkDao:Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 315
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public walletTokenBalanceDao()Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_walletTokenBalanceDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_walletTokenBalanceDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;

    return-object v0

    .line 282
    :cond_0
    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_walletTokenBalanceDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;

    if-nez v0, :cond_1

    .line 284
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_walletTokenBalanceDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase_Impl;->_walletTokenBalanceDao:Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 287
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
