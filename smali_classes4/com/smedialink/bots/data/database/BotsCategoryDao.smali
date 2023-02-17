.class public abstract Lcom/smedialink/bots/data/database/BotsCategoryDao;
.super Ljava/lang/Object;
.source "BotsCategoryDao.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAll()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/data/model/database/BotsCategoryDbModel;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract insertOrReplace(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/data/model/database/BotsCategoryDbModel;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method
