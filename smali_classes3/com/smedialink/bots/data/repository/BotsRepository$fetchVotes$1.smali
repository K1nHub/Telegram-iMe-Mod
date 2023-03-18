.class final Lcom/smedialink/bots/data/repository/BotsRepository$fetchVotes$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BotsRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/data/repository/BotsRepository;->fetchVotes(J)Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/bots/data/model/network/Response<",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/bots/data/model/network/BotVoteInfo;",
        ">;>;",
        "Lio/reactivex/CompletableSource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/bots/data/repository/BotsRepository;


# direct methods
.method constructor <init>(Lcom/smedialink/bots/data/repository/BotsRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/bots/data/repository/BotsRepository$fetchVotes$1;->this$0:Lcom/smedialink/bots/data/repository/BotsRepository;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/smedialink/bots/data/model/network/Response;)Lio/reactivex/CompletableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/bots/data/model/network/Response<",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/data/model/network/BotVoteInfo;",
            ">;>;)",
            "Lio/reactivex/CompletableSource;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/smedialink/bots/data/repository/BotsRepository$fetchVotes$1;->this$0:Lcom/smedialink/bots/data/repository/BotsRepository;

    invoke-static {v0}, Lcom/smedialink/bots/data/repository/BotsRepository;->access$getBotsDao$p(Lcom/smedialink/bots/data/repository/BotsRepository;)Lcom/smedialink/bots/data/database/BotsDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smedialink/bots/data/database/BotsDao;->saveRatings(Lcom/smedialink/bots/data/model/network/Response;)V

    .line 148
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 146
    check-cast p1, Lcom/smedialink/bots/data/model/network/Response;

    invoke-virtual {p0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository$fetchVotes$1;->invoke(Lcom/smedialink/bots/data/model/network/Response;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
