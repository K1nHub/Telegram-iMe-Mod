.class public final Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "StakingCalculatorProgrammesPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingCalculatorProgrammesPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingCalculatorProgrammesPresenter.kt\ncom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,109:1\n39#2,8:110\n1#3:118\n*S KotlinDebug\n*F\n+ 1 StakingCalculatorProgrammesPresenter.kt\ncom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter\n*L\n49#1:110,8\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
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


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/i_staking/StakingInteractor;)V
    .locals 1

    const-string v0, "schedulersProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 20
    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->stakingProgrammes:Ljava/util/List;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->items:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getItems$p(Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->items:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getStakingProgrammes$p(Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->stakingProgrammes:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$renderGlobalStateItemsList(Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;Lcom/smedialink/model/state/GlobalState;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->renderGlobalStateItemsList(Lcom/smedialink/model/state/GlobalState;)V

    return-void
.end method

.method public static final synthetic access$setLastItemId$p(Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;Ljava/lang/Long;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->lastItemId:Ljava/lang/Long;

    return-void
.end method

.method public static synthetic loadStakingProgrammes$default(Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 37
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->loadStakingProgrammes(ZZ)V

    return-void
.end method

.method private final renderGlobalStateItemsList(Lcom/smedialink/model/state/GlobalState;)V
    .locals 3

    .line 104
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    new-instance v2, Lcom/smedialink/model/common/GlobalStateItem;

    invoke-direct {v2, p1}, Lcom/smedialink/model/common/GlobalStateItem;-><init>(Lcom/smedialink/model/state/GlobalState;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;->renderItems(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final loadStakingProgrammes(ZZ)V
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 39
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->lastItemId:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 40
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;

    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    return-void

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 45
    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;->DEFAULT:Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    .line 46
    iget-object v3, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->lastItemId:Ljava/lang/Long;

    .line 44
    invoke-virtual {v1, v2, v3}, Lcom/iMe/i_staking/StakingInteractor;->getStakingProgrammesList(Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;Ljava/lang/Long;)Lio/reactivex/Observable;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "stakingInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;ZZ)V

    new-instance p1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v2, 0x0

    invoke-direct {p2, v2}, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v3, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, p2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v1, p1, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {p0, p1, v2, v0, v2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 96
    invoke-static {p0, v0, v1, v2, v3}, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->loadStakingProgrammes$default(Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;ZZILjava/lang/Object;)V

    return-void
.end method

.method public final onStakingInfoClick(Lcom/smedialink/model/staking/StakingProgrammeItem;)V
    .locals 6

    const-string v0, "stakingProgrammeItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->stakingProgrammes:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/smedialink/mapper/staking/StakingDetailedMetadataUiMappingKt;->mapToUi(Lcom/smedialink/storage/domain/model/staking/StakingMetadata;)Lcom/smedialink/model/staking/StakingDetailsItem;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 88
    :cond_3
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;->showStakingConditionsDialog(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final onStakingProgrammeClick(Lcom/smedialink/model/staking/StakingProgrammeItem;)V
    .locals 6

    const-string v0, "stakingProgrammeItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->stakingProgrammes:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/smedialink/mapper/staking/StakingDetailedMetadataUiMappingKt;->mapToUi(Lcom/smedialink/storage/domain/model/staking/StakingMetadata;)Lcom/smedialink/model/staking/StakingDetailsItem;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 82
    :cond_3
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;->onStakingSelected(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    :cond_4
    :goto_2
    return-void
.end method
