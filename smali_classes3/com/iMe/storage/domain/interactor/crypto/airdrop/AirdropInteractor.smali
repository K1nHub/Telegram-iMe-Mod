.class public final Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;
.super Ljava/lang/Object;
.source "AirdropInteractor.kt"


# instance fields
.field private final airdropRepository:Lcom/iMe/storage/domain/repository/crypto/airdrop/AirdropRepository;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/repository/crypto/airdrop/AirdropRepository;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "airdropRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;->airdropRepository:Lcom/iMe/storage/domain/repository/crypto/airdrop/AirdropRepository;

    .line 12
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static synthetic checkAirdropStart$default(Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 22
    sget-object p2, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;->VERSION_1:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;->checkAirdropStart(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getTokensByAirdrop$default(Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 27
    sget-object p2, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;->VERSION_1:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;->getTokensByAirdrop(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic registerInAirdrop$default(Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 17
    sget-object p1, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;->VERSION_1:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;->registerInAirdrop(Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkAirdropStart(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;->airdropRepository:Lcom/iMe/storage/domain/repository/crypto/airdrop/AirdropRepository;

    .line 24
    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/repository/crypto/airdrop/AirdropRepository;->checkAirdropStart(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;)Lio/reactivex/Observable;

    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "airdropRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getTokensByAirdrop(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;->airdropRepository:Lcom/iMe/storage/domain/repository/crypto/airdrop/AirdropRepository;

    .line 29
    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/repository/crypto/airdrop/AirdropRepository;->getTokensByAirdrop(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;)Lio/reactivex/Observable;

    move-result-object p1

    .line 30
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "airdropRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final registerInAirdrop(Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;->airdropRepository:Lcom/iMe/storage/domain/repository/crypto/airdrop/AirdropRepository;

    .line 19
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/airdrop/AirdropRepository;->registerInAirdrop(Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;)Lio/reactivex/Observable;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "airdropRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
