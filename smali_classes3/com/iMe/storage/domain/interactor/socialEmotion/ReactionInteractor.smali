.class public final Lcom/iMe/storage/domain/interactor/socialEmotion/ReactionInteractor;
.super Ljava/lang/Object;
.source "ReactionInteractor.kt"


# instance fields
.field private final repository:Lcom/iMe/storage/domain/repository/socialEmotion/ReactionRepository;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/repository/socialEmotion/ReactionRepository;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/socialEmotion/ReactionInteractor;->repository:Lcom/iMe/storage/domain/repository/socialEmotion/ReactionRepository;

    .line 12
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/socialEmotion/ReactionInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method


# virtual methods
.method public final prepareLikeMessage(Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageResult;",
            ">;>;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/socialEmotion/ReactionInteractor;->repository:Lcom/iMe/storage/domain/repository/socialEmotion/ReactionRepository;

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/socialEmotion/ReactionRepository;->prepareLikeMessage(Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;)Lio/reactivex/Observable;

    move-result-object p1

    .line 17
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/socialEmotion/ReactionInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "repository.prepareLikeMe\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
