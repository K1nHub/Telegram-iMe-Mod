.class public final Lcom/iMe/i_staking/StakingInteractor;
.super Ljava/lang/Object;
.source "StakingInteractor.kt"


# instance fields
.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/i_staking/repository/StakingRepository;)V
    .locals 1

    const-string v0, "schedulersProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 13
    iput-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    return-void
.end method

.method public static synthetic getStakingOperations$default(Lcom/iMe/i_staking/StakingInteractor;Ljava/lang/Long;Lcom/iMe/storage/domain/model/staking/StakingOperationType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    move-object p3, v0

    .line 42
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/i_staking/StakingInteractor;->getStakingOperations(Ljava/lang/Long;Lcom/iMe/storage/domain/model/staking/StakingOperationType;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getApprovalInfo(J)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingApprovalInfo;",
            ">;>;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 55
    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/repository/StakingRepository;->getApprovalInfo(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 56
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 57
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "stakingRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getStakingDetails(J)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;",
            ">;>;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 38
    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/repository/StakingRepository;->getStakingDetails(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 39
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 40
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "stakingRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getStakingOperations(Ljava/lang/Long;Lcom/iMe/storage/domain/model/staking/StakingOperationType;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/iMe/storage/domain/model/staking/StakingOperationType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperationsPaged;",
            ">;>;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 49
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iMe/i_staking/repository/StakingRepository;->getStakingOperations(Ljava/lang/Long;Lcom/iMe/storage/domain/model/staking/StakingOperationType;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 50
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-static {p2, p3, p4, p3}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 51
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "stakingRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getStakingOwnProgrammesList(Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;Ljava/lang/Long;Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;",
            "Ljava/lang/Long;",
            "Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingProgrammes;",
            ">;>;"
        }
    .end annotation

    const-string v0, "orderType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 32
    invoke-interface {v0, p1, p2, p3}, Lcom/iMe/i_staking/repository/StakingRepository;->getStakingOwnProgrammesList(Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;Ljava/lang/Long;Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 33
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-static {p2, p3, v0, p3}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "stakingRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getStakingProgrammesList(Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;Ljava/lang/Long;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;",
            "Ljava/lang/Long;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingProgrammes;",
            ">;>;"
        }
    .end annotation

    const-string v0, "orderType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 26
    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/repository/StakingRepository;->getStakingProgrammesList(Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;Ljava/lang/Long;)Lio/reactivex/Observable;

    move-result-object p1

    .line 27
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 28
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "stakingRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getStakingTotalStats()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingTotalStats;",
            ">;>;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 20
    invoke-interface {v0}, Lcom/iMe/i_staking/repository/StakingRepository;->getStakingTotalStats()Lio/reactivex/Observable;

    move-result-object v0

    .line 21
    sget-object v1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "stakingRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final sendApprovalExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 67
    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/repository/StakingRepository;->sendApprovalExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 68
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 69
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "stakingRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendApprovalPrepare(JLcom/iMe/storage/domain/model/staking/StakingApprovalTokenType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/iMe/storage/domain/model/staking/StakingApprovalTokenType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "tokenType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 61
    invoke-interface {v0, p1, p2, p3}, Lcom/iMe/i_staking/repository/StakingRepository;->sendApprovalPrepare(JLcom/iMe/storage/domain/model/staking/StakingApprovalTokenType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 62
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-static {p2, p3, v0, p3}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 63
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "stakingRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendClaimExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 91
    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/repository/StakingRepository;->sendClaimExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 92
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 93
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "stakingRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendClaimPrepare(J)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;",
            ">;>;>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 85
    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/repository/StakingRepository;->sendClaimPrepare(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 86
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "stakingRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendDepositExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 79
    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/repository/StakingRepository;->sendDepositExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 80
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 81
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "stakingRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendDepositPrepare(JLjava/math/BigDecimal;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/math/BigDecimal;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 73
    invoke-interface {v0, p1, p2, p3}, Lcom/iMe/i_staking/repository/StakingRepository;->sendDepositPrepare(JLjava/math/BigDecimal;)Lio/reactivex/Observable;

    move-result-object p1

    .line 74
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-static {p2, p3, v0, p3}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 75
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "stakingRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendWithdrawExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 103
    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/repository/StakingRepository;->sendWithdrawExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 104
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 105
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "stakingRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendWithdrawPrepare(JLjava/math/BigDecimal;Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/math/BigDecimal;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 97
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iMe/i_staking/repository/StakingRepository;->sendWithdrawPrepare(JLjava/math/BigDecimal;Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 98
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-static {p2, p3, p4, p3}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 99
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "stakingRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
