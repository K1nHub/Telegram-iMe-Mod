.class public abstract Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;
.super Ljava/lang/Object;
.source "WalletConnectSessionsDao.kt"

# interfaces
.implements Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao<",
        "Lcom/smedialink/storage/data/locale/db/model/wallet/WalletConnectSessionDb;",
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
.method public abstract getAllSessions(J)Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/locale/db/model/wallet/WalletConnectSessionDb;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract rxDeleteAllSession(J)Lio/reactivex/Completable;
.end method

.method public abstract rxDeleteBySessionKey(JLjava/lang/String;)Lio/reactivex/Completable;
.end method
