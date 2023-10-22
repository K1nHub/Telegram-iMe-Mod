.class public final Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftInteractor;
.super Ljava/lang/Object;
.source "NftInteractor.kt"


# instance fields
.field private final nftRepository:Lcom/iMe/storage/domain/repository/crypto/nft/avatar/NftRepository;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/repository/crypto/nft/avatar/NftRepository;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "nftRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftInteractor;->nftRepository:Lcom/iMe/storage/domain/repository/crypto/nft/avatar/NftRepository;

    .line 12
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static synthetic getOwnNftItems$default(Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftInteractor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 24
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftInteractor;->getOwnNftItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getOwnNftItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/nft/NftToken;",
            ">;>;>;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftInteractor;->nftRepository:Lcom/iMe/storage/domain/repository/crypto/nft/avatar/NftRepository;

    .line 30
    invoke-interface {v0, p1, p2, p3}, Lcom/iMe/storage/domain/repository/crypto/nft/avatar/NftRepository;->getOwnNftItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "nftRepository\n          \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
