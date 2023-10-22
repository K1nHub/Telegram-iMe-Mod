.class public abstract Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;
.super Ljava/lang/Object;
.source "CatalogCategoryDao.kt"

# interfaces
.implements Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iMe/storage/data/locale/db/dao/base/BaseDao<",
        "Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCategories()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract rxDeleteCategories()Lio/reactivex/Completable;
.end method
