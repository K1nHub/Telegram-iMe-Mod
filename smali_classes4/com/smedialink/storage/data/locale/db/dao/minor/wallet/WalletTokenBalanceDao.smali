.class public abstract Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;
.super Ljava/lang/Object;
.source "WalletTokenBalanceDao.kt"

# interfaces
.implements Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao<",
        "Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAllWalletBalances(JLjava/lang/String;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getTokensBalances(JLjava/lang/String;Ljava/util/List;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract rxDeleteAllWalletBalances(JLjava/lang/String;)Lio/reactivex/Completable;
.end method

.method public abstract rxDeleteByCodes(JLjava/util/List;)Lio/reactivex/Completable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Completable;"
        }
    .end annotation
.end method
