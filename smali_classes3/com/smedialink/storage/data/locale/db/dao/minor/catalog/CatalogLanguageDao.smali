.class public abstract Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;
.super Ljava/lang/Object;
.source "CatalogLanguageDao.kt"

# interfaces
.implements Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao<",
        "Lcom/smedialink/storage/data/locale/db/model/catalog/CatalogLanguageDb;",
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
.method public abstract getLanguages()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/locale/db/model/catalog/CatalogLanguageDb;",
            ">;>;"
        }
    .end annotation
.end method
