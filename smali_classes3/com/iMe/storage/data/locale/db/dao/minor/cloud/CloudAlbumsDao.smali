.class public abstract Lcom/iMe/storage/data/locale/db/dao/minor/cloud/CloudAlbumsDao;
.super Ljava/lang/Object;
.source "CloudAlbumsDao.kt"

# interfaces
.implements Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iMe/storage/data/locale/db/dao/base/BaseDao<",
        "Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAllData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;",
            ">;"
        }
    .end annotation
.end method
