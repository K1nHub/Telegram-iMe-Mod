.class public final Lcom/smedialink/ui/wallet/staking/StakingPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "StakingPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/staking/StakingPresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/staking/StakingView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingPresenter.kt\ncom/smedialink/ui/wallet/staking/StakingPresenter\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 3 RxEventBus.kt\ncom/smedialink/storage/domain/utils/rx/RxEventBus\n*L\n1#1,113:1\n39#2,6:114\n39#2,6:123\n16#3,3:120\n*S KotlinDebug\n*F\n+ 1 StakingPresenter.kt\ncom/smedialink/ui/wallet/staking/StakingPresenter\n*L\n80#1:114,6\n101#1:123,6\n100#1:120,3\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final hintsPreferenceHelper:Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;

.field private isAllTabRefreshing:Z

.field private isDashboardRefreshing:Z

.field private isParticipatedTabRefreshing:Z

.field private isTotalRefreshing:Z

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/i_staking/StakingInteractor;)V
    .locals 1

    const-string v0, "hintsPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingInteractor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->hintsPreferenceHelper:Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;

    .line 20
    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 21
    iput-object p3, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 22
    iput-object p4, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 23
    iput-object p5, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/wallet/staking/StakingPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$setAllTabRefreshing$p(Lcom/smedialink/ui/wallet/staking/StakingPresenter;Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->isAllTabRefreshing:Z

    return-void
.end method

.method public static final synthetic access$setDashboardRefreshing$p(Lcom/smedialink/ui/wallet/staking/StakingPresenter;Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->isDashboardRefreshing:Z

    return-void
.end method

.method public static final synthetic access$setParticipatedTabRefreshing$p(Lcom/smedialink/ui/wallet/staking/StakingPresenter;Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->isParticipatedTabRefreshing:Z

    return-void
.end method

.method public static final synthetic access$updateRefreshState(Lcom/smedialink/ui/wallet/staking/StakingPresenter;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->updateRefreshState()V

    return-void
.end method

.method private final listenEvents()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 16
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingTabRefreshStateChanged;

    .line 17
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->ofType(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->getSchedulersProvider()Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "publisher\n              \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/smedialink/ui/wallet/staking/StakingPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/staking/StakingPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/staking/StakingPresenter;)V

    new-instance v2, Lcom/smedialink/ui/wallet/staking/StakingPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/smedialink/ui/wallet/staking/StakingPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 108
    invoke-static {p0, v0, v3, v1, v3}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadStakingTotalStats(Z)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 78
    invoke-virtual {v0}, Lcom/iMe/i_staking/StakingInteractor;->getStakingTotalStats()Lio/reactivex/Observable;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "stakingInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/smedialink/ui/wallet/staking/StakingPresenter$loadStakingTotalStats$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1}, Lcom/smedialink/ui/wallet/staking/StakingPresenter$loadStakingTotalStats$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/staking/StakingPresenter;Z)V

    new-instance p1, Lcom/smedialink/ui/wallet/staking/StakingPresenter$loadStakingTotalStats$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lcom/smedialink/ui/wallet/staking/StakingPresenter$loadStakingTotalStats$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 95
    invoke-static {p0, p1, v2, v0, v2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic loadStakingTotalStats$default(Lcom/smedialink/ui/wallet/staking/StakingPresenter;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 76
    :cond_0
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->loadStakingTotalStats(Z)V

    return-void
.end method

.method private final updateRefreshState()V
    .locals 2

    .line 69
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->isDashboardRefreshing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->isAllTabRefreshing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->isParticipatedTabRefreshing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 70
    :goto_1
    iget-boolean v1, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->isTotalRefreshing:Z

    if-eq v1, v0, :cond_2

    .line 71
    iput-boolean v0, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->isTotalRefreshing:Z

    .line 72
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/StakingView;

    iget-boolean v1, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->isTotalRefreshing:Z

    invoke-interface {v0, v1}, Lcom/smedialink/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 1

    .line 59
    invoke-super {p0}, Lmoxy/MvpPresenter;->onFirstViewAttach()V

    .line 60
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->listenEvents()V

    const/4 v0, 0x1

    .line 61
    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->loadStakingTotalStats(Z)V

    return-void
.end method

.method public final reload()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-static {p0, v0, v1, v2}, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->loadStakingTotalStats$default(Lcom/smedialink/ui/wallet/staking/StakingPresenter;ZILjava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    sget-object v1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingProgrammesRefresh;->INSTANCE:Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingProgrammesRefresh;

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    return-void
.end method

.method public final selectTab(I)V
    .locals 1

    .line 39
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/StakingView;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/staking/StakingView;->onTabSelected(I)V

    return-void
.end method

.method public final setupNavigationRouter()V
    .locals 1

    .line 35
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/StakingView;

    invoke-interface {v0}, Lcom/smedialink/ui/wallet/staking/StakingView;->onSetupNavigationRouter()V

    return-void
.end method

.method public final showStakingInfoHint()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->hintsPreferenceHelper:Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/Hint$StakingInfo;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/Hint$StakingInfo;

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;->shouldShowHint(Lcom/smedialink/storage/domain/model/wallet/Hint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/StakingView;

    invoke-interface {v0}, Lcom/smedialink/ui/wallet/staking/StakingView;->showStakingInfoHint()V

    .line 50
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->hintsPreferenceHelper:Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;->onHintShowed(Lcom/smedialink/storage/domain/model/wallet/Hint;)V

    :cond_0
    return-void
.end method
