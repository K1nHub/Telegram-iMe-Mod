.class public final Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "StakingProgrammesPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingProgrammesPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingProgrammesPresenter.kt\ncom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 RxEventBus.kt\ncom/smedialink/storage/domain/utils/rx/RxEventBus\n*L\n1#1,185:1\n39#2,6:186\n39#2,6:193\n39#2,6:202\n1#3:192\n16#4,3:199\n*S KotlinDebug\n*F\n+ 1 StakingProgrammesPresenter.kt\ncom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter\n*L\n66#1:186,6\n157#1:193,6\n179#1:202,6\n178#1:199,3\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private accountLevel:Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;

.field private final accountLevelInteractor:Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;

.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation
.end field

.field private lastItemId:Ljava/lang/Long;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

.field private final stakingProgrammes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/staking/StakingMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final stakingTabType:Lcom/smedialink/storage/domain/model/staking/StakingTabType;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/model/staking/StakingTabType;Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/i_staking/StakingInteractor;)V
    .locals 1

    const-string v0, "stakingTabType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountLevelInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingInteractor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingTabType:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    .line 30
    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->accountLevelInteractor:Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 31
    iput-object p3, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 32
    iput-object p4, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 33
    iput-object p5, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 34
    iput-object p6, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 35
    iput-object p7, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammes:Ljava/util/List;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getItems$p(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getRxEventBus$p(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;)Lcom/smedialink/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    return-object p0
.end method

.method public static final synthetic access$getStakingProgrammes$p(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammes:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getStakingTabType$p(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;)Lcom/smedialink/storage/domain/model/staking/StakingTabType;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingTabType:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    return-object p0
.end method

.method public static final synthetic access$openStakingCheckingAccountLevel(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;Lcom/smedialink/model/staking/StakingDetailsItem;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->openStakingCheckingAccountLevel(Lcom/smedialink/model/staking/StakingDetailsItem;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V

    return-void
.end method

.method public static final synthetic access$renderGlobalStateItemsList(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;Lcom/smedialink/model/state/GlobalState;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->renderGlobalStateItemsList(Lcom/smedialink/model/state/GlobalState;)V

    return-void
.end method

.method public static final synthetic access$setLastItemId$p(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;Ljava/lang/Long;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->lastItemId:Ljava/lang/Long;

    return-void
.end method

.method private final listenEvents()V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 16
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingProgrammesRefresh;

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
    new-instance v1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;)V

    new-instance v2, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 180
    invoke-static {p0, v0, v3, v1, v3}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadAccountLevelAndOpenStaking(Lcom/smedialink/model/staking/StakingDetailsItem;)V
    .locals 5

    .line 154
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->accountLevelInteractor:Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 155
    invoke-static {v0, v1, v2, v3, v4}, Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;->getAccountLevelRemote$default(Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;JILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "accountLevelInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;Lcom/smedialink/model/staking/StakingDetailsItem;)V

    new-instance p1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p1, v1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v2, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-static {p0, p1, v4, v3, v4}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic loadStakingProgrammes$default(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 53
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->loadStakingProgrammes(ZZ)V

    return-void
.end method

.method private final openStakingCheckingAccountLevel(Lcom/smedialink/model/staking/StakingDetailsItem;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 1

    .line 168
    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getMinimalRank()Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;->isReached(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 169
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    invoke-interface {p2, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;->openDepositScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getMinimalRank()Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;->showLevelRequiredDialog(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V

    :goto_0
    return-void
.end method

.method private final renderGlobalStateItemsList(Lcom/smedialink/model/state/GlobalState;)V
    .locals 5

    .line 142
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 144
    new-instance v2, Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;

    .line 145
    iget-object v3, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->staking_list_header:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 146
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_ic_sort_28:I

    .line 144
    invoke-direct {v2, v3, v4}, Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 148
    new-instance v2, Lcom/smedialink/model/common/GlobalStateItem;

    invoke-direct {v2, p1}, Lcom/smedialink/model/common/GlobalStateItem;-><init>(Lcom/smedialink/model/state/GlobalState;)V

    const/4 p1, 0x1

    aput-object v2, v1, p1

    .line 143
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 142
    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;->renderItems(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final loadStakingProgrammes(ZZ)V
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 55
    iget-object v2, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->lastItemId:Ljava/lang/Long;

    if-nez v2, :cond_1

    .line 56
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    return-void

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 61
    iget-object v3, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingTabType:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/staking/StakingTabType;->isParticipated()Ljava/lang/Boolean;

    move-result-object v3

    .line 62
    iget-object v4, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v4}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getStakingProgrammesOrderType()Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    move-result-object v4

    .line 63
    iget-object v5, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->lastItemId:Ljava/lang/Long;

    .line 60
    invoke-virtual {v2, v3, v4, v5}, Lcom/iMe/i_staking/StakingInteractor;->getStakingProgrammesList(Ljava/lang/Boolean;Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;Ljava/lang/Long;)Lio/reactivex/Observable;

    move-result-object v2

    .line 65
    iget-object v3, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v3}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    const-string v3, "stakingInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v3, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p2, p0, v1, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;-><init>(ZLcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;ZZ)V

    new-instance p1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$2;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v2, v3, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-static {p0, p1, p2, v0, p2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 133
    invoke-static {p0, v0, v1, v2, v3}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->loadStakingProgrammes$default(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;ZZILjava/lang/Object;)V

    .line 134
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->listenEvents()V

    return-void
.end method

.method public final onStakingOrderTypeSelected(Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setStakingProgrammesOrderType(Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;)V

    .line 125
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    sget-object v0, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingProgrammesRefresh;->INSTANCE:Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingProgrammesRefresh;

    invoke-virtual {p1, v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    return-void
.end method

.method public final onStakingProgrammeClick(Lcom/smedialink/model/staking/StakingProgrammeItem;)V
    .locals 8

    const-string v0, "stakingProgrammeItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammes:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getId()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    check-cast v1, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lcom/smedialink/mapper/staking/StakingDetailedMetadataUiMappingKt;->mapToUi(Lcom/smedialink/storage/domain/model/staking/StakingMetadata;)Lcom/smedialink/model/staking/StakingDetailsItem;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_4

    return-void

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->accountLevel:Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;

    .line 112
    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingProgrammeItem;->isParticipated()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    invoke-interface {p1, v2}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;->openStakingDetailsScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    goto :goto_3

    :cond_5
    if-nez v0, :cond_6

    .line 113
    invoke-direct {p0, v2}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->loadAccountLevelAndOpenStaking(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    goto :goto_3

    .line 114
    :cond_6
    invoke-direct {p0, v2, v0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->openStakingCheckingAccountLevel(Lcom/smedialink/model/staking/StakingDetailsItem;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V

    :goto_3
    return-void
.end method

.method public final reload()V
    .locals 3

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->lastItemId:Ljava/lang/Long;

    .line 48
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 49
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 50
    invoke-static {p0, v1, v2, v2, v0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->loadStakingProgrammes$default(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;ZZILjava/lang/Object;)V

    return-void
.end method

.method public final showSelectStakingOrderTypeDialog()V
    .locals 2

    .line 120
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getStakingProgrammesOrderType()Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;->showSelectStakingOrderTypeDialog(Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;)V

    return-void
.end method
