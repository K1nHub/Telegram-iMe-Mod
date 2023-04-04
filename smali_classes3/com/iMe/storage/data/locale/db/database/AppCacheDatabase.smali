.class public abstract Lcom/iMe/storage/data/locale/db/database/AppCacheDatabase;
.super Landroidx/room/RoomDatabase;
.source "AppCacheDatabase.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract catalogCategoryDao()Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;
.end method

.method public abstract catalogLanguageDao()Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;
.end method

.method public abstract cloudAlbumDao()Lcom/iMe/storage/data/locale/db/dao/minor/cloud/AlbumsDao;
.end method

.method public abstract walletTokenBalanceDao()Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;
.end method
