.class public abstract Lcom/smedialink/bots/data/database/BotsDao;
.super Ljava/lang/Object;
.source "BotsDao.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBotsDao.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BotsDao.kt\ncom/smedialink/bots/data/database/BotsDao\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,125:1\n775#2:126\n786#2:127\n1858#2,2:128\n787#2,2:130\n1860#2:132\n789#2:133\n1849#2,2:134\n*S KotlinDebug\n*F\n+ 1 BotsDao.kt\ncom/smedialink/bots/data/database/BotsDao\n*L\n58#1:126\n58#1:127\n58#1:128,2\n58#1:130,2\n58#1:132\n58#1:133\n118#1:134,2\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic resetDownloads$default(Lcom/smedialink/bots/data/database/BotsDao;Lcom/smedialink/bots/data/model/BotStatus;Lcom/smedialink/bots/data/model/BotStatus;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 83
    sget-object p2, Lcom/smedialink/bots/data/model/BotStatus;->DOWNLOADING:Lcom/smedialink/bots/data/model/BotStatus;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/bots/data/database/BotsDao;->resetDownloads(Lcom/smedialink/bots/data/model/BotStatus;Lcom/smedialink/bots/data/model/BotStatus;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resetDownloads"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract deleteByIgnored([Ljava/lang/String;)V
.end method

.method public abstract getAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/data/model/database/BotsDbModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBotBySku(Ljava/lang/String;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/smedialink/bots/data/model/database/BotsDbModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getById(Ljava/lang/String;)Lcom/smedialink/bots/data/model/database/BotsDbModel;
.end method

.method public abstract getBySku(Ljava/lang/String;)Lcom/smedialink/bots/data/model/database/BotsDbModel;
.end method

.method public abstract getOwnRating(Ljava/lang/String;)I
.end method

.method public abstract insertButIgnore(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/data/model/database/BotsDbModel;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertOrReplace(Lcom/smedialink/bots/data/model/database/BotsDbModel;)J
.end method

.method public abstract insertOrReplace(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/data/model/database/BotsDbModel;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract resetDownloads(Lcom/smedialink/bots/data/model/BotStatus;Lcom/smedialink/bots/data/model/BotStatus;)V
.end method

.method public abstract saveOwnRating(Ljava/lang/String;I)I
.end method

.method public saveRatings(Lcom/smedialink/bots/data/model/network/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/bots/data/model/network/Response<",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/data/model/network/BotVoteInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/network/Response;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ok"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/network/Response;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1849
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/bots/data/model/network/BotVoteInfo;

    .line 119
    invoke-virtual {v0}, Lcom/smedialink/bots/data/model/network/BotVoteInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/smedialink/bots/data/model/network/BotVoteInfo;->getRating()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/smedialink/bots/data/database/BotsDao;->saveOwnRating(Ljava/lang/String;I)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract streamAll()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/data/model/database/BotsDbModel;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract streamBot(Ljava/lang/String;)Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lcom/smedialink/bots/data/model/database/BotsDbModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update(Lcom/smedialink/bots/data/model/database/BotsDbModel;)V
.end method

.method public abstract updateBot(Ljava/lang/String;Ljava/lang/String;II)V
.end method
