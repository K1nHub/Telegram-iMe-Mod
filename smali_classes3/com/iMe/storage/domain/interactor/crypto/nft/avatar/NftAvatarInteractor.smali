.class public final Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftAvatarInteractor;
.super Ljava/lang/Object;
.source "NftAvatarInteractor.kt"


# instance fields
.field private final nftAvatarRepository:Lcom/iMe/storage/domain/repository/crypto/nft/avatar/NftAvatarRepository;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/repository/crypto/nft/avatar/NftAvatarRepository;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "nftAvatarRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftAvatarInteractor;->nftAvatarRepository:Lcom/iMe/storage/domain/repository/crypto/nft/avatar/NftAvatarRepository;

    .line 11
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftAvatarInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method


# virtual methods
.method public final getNftAvatars(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "networkId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftAvatarInteractor;->nftAvatarRepository:Lcom/iMe/storage/domain/repository/crypto/nft/avatar/NftAvatarRepository;

    .line 18
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/nft/avatar/NftAvatarRepository;->getNftAvatars(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftAvatarInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "nftAvatarRepository\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
