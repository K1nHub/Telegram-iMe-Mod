.class public final synthetic Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao$-CC;
.super Ljava/lang/Object;
.source "SocialNetworkDao.kt"


# direct methods
.method public static $default$clearAndInsertAll(Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao;JLjava/util/List;)V
    .locals 1
    .param p0, "_this"    # Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;",
            ">;)V"
        }
    .end annotation

    const-string v0, "socialNetworks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-interface {p0, p1, p2}, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao;->clearByUserId(J)Lio/reactivex/Completable;

    .line 26
    invoke-interface {p0, p3}, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao;->insertAll(Ljava/util/List;)V

    return-void
.end method
