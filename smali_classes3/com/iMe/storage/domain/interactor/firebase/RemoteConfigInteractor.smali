.class public final Lcom/iMe/storage/domain/interactor/firebase/RemoteConfigInteractor;
.super Ljava/lang/Object;
.source "RemoteConfigInteractor.kt"


# instance fields
.field private final remoteConfigRepository:Lcom/iMe/storage/domain/repository/firebase/RemoteConfigRepository;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/repository/firebase/RemoteConfigRepository;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "remoteConfigRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/firebase/RemoteConfigInteractor;->remoteConfigRepository:Lcom/iMe/storage/domain/repository/firebase/RemoteConfigRepository;

    .line 10
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/firebase/RemoteConfigInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method


# virtual methods
.method public final getBoolean(Ljava/lang/String;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/firebase/RemoteConfigInteractor;->remoteConfigRepository:Lcom/iMe/storage/domain/repository/firebase/RemoteConfigRepository;

    .line 15
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/firebase/RemoteConfigRepository;->getBoolean(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/firebase/RemoteConfigInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "remoteConfigRepository\n \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
