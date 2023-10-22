.class public final Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;
.super Ljava/lang/Object;
.source "CryptoBoxInteractor.kt"


# instance fields
.field private final cryptoBoxRepository:Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "cryptoBoxRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->cryptoBoxRepository:Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;

    .line 20
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method


# virtual methods
.method public final getApprovalInfo(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalInfo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "networkId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->cryptoBoxRepository:Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;

    .line 52
    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;->getApprovalInfo(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 53
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "cryptoBoxRepository\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getApprovalPrepareData(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;",
            ">;>;"
        }
    .end annotation

    const-string v0, "networkId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->cryptoBoxRepository:Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;

    .line 60
    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;->getApprovalPrepareData(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 61
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "cryptoBoxRepository\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getCreationPrepareData(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/math/BigDecimal;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;",
            ">;>;"
        }
    .end annotation

    const-string v0, "networkId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->cryptoBoxRepository:Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;

    .line 35
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;->getCreationPrepareData(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;I)Lio/reactivex/Observable;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "cryptoBoxRepository\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getCreationRules(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;",
            ">;>;"
        }
    .end annotation

    const-string v0, "networkId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->cryptoBoxRepository:Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;

    .line 25
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;->getCreationRules(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoBoxRepository\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getCryptoBoxActions(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "boxId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->cryptoBoxRepository:Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;

    .line 84
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;->getCryptoBoxActions(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoBoxRepository\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getCryptoBoxInfo(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "boxId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->cryptoBoxRepository:Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;

    .line 79
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;->getCryptoBoxInfo(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoBoxRepository\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getCryptoBoxesList(Ljava/lang/Long;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "networkId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orderStrategy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->cryptoBoxRepository:Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;

    .line 74
    invoke-interface {v0, p1, p2, p3}, Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;->getCryptoBoxesList(Ljava/lang/Long;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 75
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "cryptoBoxRepository\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getParticipationData(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationData;",
            ">;>;"
        }
    .end annotation

    const-string v0, "boxId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->cryptoBoxRepository:Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;

    .line 104
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;->getParticipationData(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoBoxRepository\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getSuspensionPrepareData(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;",
            ">;>;"
        }
    .end annotation

    const-string v0, "boxId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->cryptoBoxRepository:Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;

    .line 89
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;->getSuspensionPrepareData(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoBoxRepository\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final participate(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;",
            ">;>;"
        }
    .end annotation

    const-string v0, "boxId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->cryptoBoxRepository:Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;

    .line 109
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;->participate(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoBoxRepository\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendApprovalExecute(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->cryptoBoxRepository:Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;

    .line 65
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;->sendApprovalExecute(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoBoxRepository\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendCreationExecute(JLjava/lang/String;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "description"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->cryptoBoxRepository:Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;

    .line 44
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;->sendCreationExecute(JLjava/lang/String;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 45
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "cryptoBoxRepository\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendMessageRefresh(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "boxId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->cryptoBoxRepository:Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;

    .line 99
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;->sendMessageRefresh(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoBoxRepository\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendSuspensionExecute(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->cryptoBoxRepository:Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;

    .line 94
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/cryptobox/CryptoBoxRepository;->sendSuspensionExecute(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 95
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoBoxRepository\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
