.class public interface abstract Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao;
.super Ljava/lang/Object;
.source "SocialNetworkDao.kt"


# virtual methods
.method public abstract clearAndInsertAll(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearByUserId(J)Lio/reactivex/Completable;
.end method

.method public abstract getAllByProfileId(J)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract insertAll(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;",
            ">;)V"
        }
    .end annotation
.end method
