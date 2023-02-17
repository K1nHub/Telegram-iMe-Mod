.class public final Lcom/iMe/i_staking/StakingInteractor;
.super Ljava/lang/Object;
.source "StakingInteractor.kt"


# instance fields
.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/i_staking/repository/StakingRepository;)V
    .locals 1

    const-string v0, "schedulersProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 14
    iput-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    return-void
.end method

.method public static synthetic getStakingOperations$default(Lcom/iMe/i_staking/StakingInteractor;Ljava/lang/Long;Lcom/smedialink/storage/domain/model/staking/StakingOperationType;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;
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

    .line 37
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/i_staking/StakingInteractor;->getStakingOperations(Ljava/lang/Long;Lcom/smedialink/storage/domain/model/staking/StakingOperationType;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)Lio/reactivex/Observable;

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
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingApprovalInfo;",
            ">;>;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 50
    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/repository/StakingRepository;->getApprovalInfo(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 51
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 52
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

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
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;",
            ">;>;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 33
    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/repository/StakingRepository;->getStakingDetails(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 34
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 35
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "stakingRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getStakingOperations(Ljava/lang/Long;Lcom/smedialink/storage/domain/model/staking/StakingOperationType;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/smedialink/storage/domain/model/staking/StakingOperationType;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingOperationsPaged;",
            ">;>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 44
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iMe/i_staking/repository/StakingRepository;->getStakingOperations(Ljava/lang/Long;Lcom/smedialink/storage/domain/model/staking/StakingOperationType;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 45
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-static {p2, p3, p4, p3}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 46
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "stakingRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getStakingProgrammesList(Ljava/lang/Boolean;Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;Ljava/lang/Long;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;",
            "Ljava/lang/Long;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingProgrammes;",
            ">;>;"
        }
    .end annotation

    const-string v0, "orderType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 27
    invoke-interface {v0, p1, p2, p3}, Lcom/iMe/i_staking/repository/StakingRepository;->getStakingProgrammesList(Ljava/lang/Boolean;Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;Ljava/lang/Long;)Lio/reactivex/Observable;

    move-result-object p1

    .line 28
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-static {p2, p3, v0, p3}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

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
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;",
            ">;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 21
    invoke-interface {v0}, Lcom/iMe/i_staking/repository/StakingRepository;->getStakingTotalStats()Lio/reactivex/Observable;

    move-result-object v0

    .line 22
    sget-object v1, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "stakingRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final sendApprovalExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 62
    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/repository/StakingRepository;->sendApprovalExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 63
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 64
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "stakingRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendApprovalPrepare(JLcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/staking/StakingTransactionAction;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "tokenType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 56
    invoke-interface {v0, p1, p2, p3}, Lcom/iMe/i_staking/repository/StakingRepository;->sendApprovalPrepare(JLcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 57
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-static {p2, p3, v0, p3}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 58
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "stakingRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendClaimExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 86
    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/repository/StakingRepository;->sendClaimExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 87
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 88
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

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
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/staking/StakingTransactionAction;",
            ">;>;>;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 80
    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/repository/StakingRepository;->sendClaimPrepare(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 81
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 82
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "stakingRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendDepositExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 74
    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/repository/StakingRepository;->sendDepositExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 75
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 76
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

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
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/staking/StakingTransactionAction;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 68
    invoke-interface {v0, p1, p2, p3}, Lcom/iMe/i_staking/repository/StakingRepository;->sendDepositPrepare(JLjava/math/BigDecimal;)Lio/reactivex/Observable;

    move-result-object p1

    .line 69
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-static {p2, p3, v0, p3}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 70
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "stakingRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendWithdrawExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 98
    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/repository/StakingRepository;->sendWithdrawExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 99
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 100
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

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
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/staking/StakingTransactionAction;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/iMe/i_staking/StakingInteractor;->stakingRepository:Lcom/iMe/i_staking/repository/StakingRepository;

    .line 92
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iMe/i_staking/repository/StakingRepository;->sendWithdrawPrepare(JLjava/math/BigDecimal;Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 93
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-static {p2, p3, p4, p3}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 94
    iget-object p2, p0, Lcom/iMe/i_staking/StakingInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "stakingRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
