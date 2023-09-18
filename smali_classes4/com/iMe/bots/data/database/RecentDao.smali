.class public abstract Lcom/iMe/bots/data/database/RecentDao;
.super Ljava/lang/Object;
.source "RecentDao.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCounter(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;
.end method

.method public abstract getSortedPositions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public increaseCounter(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/bots/data/database/RecentDao;->getCounter(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    new-instance v1, Lcom/iMe/bots/data/model/database/RecentDbModel;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/iMe/bots/data/model/database/RecentDbModel;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 33
    invoke-virtual {p0, v1}, Lcom/iMe/bots/data/database/RecentDao;->insertOrReplace(Lcom/iMe/bots/data/model/database/RecentDbModel;)J

    return-void
.end method

.method public abstract insertOrReplace(Lcom/iMe/bots/data/model/database/RecentDbModel;)J
.end method
