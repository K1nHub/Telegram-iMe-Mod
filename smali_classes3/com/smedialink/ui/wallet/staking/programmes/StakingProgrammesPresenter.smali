.class public final Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "StakingProgrammesPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingProgrammesPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingProgrammesPresenter.kt\ncom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 RxEventBus.kt\ncom/smedialink/storage/domain/utils/rx/RxEventBus\n*L\n1#1,285:1\n39#2,6:286\n39#2,6:304\n39#2,6:313\n1#3:292\n348#4,7:293\n11328#5:300\n11663#5,3:301\n16#6,3:310\n*S KotlinDebug\n*F\n+ 1 StakingProgrammesPresenter.kt\ncom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter\n*L\n88#1:286,6\n257#1:304,6\n279#1:313,6\n157#1:293,7\n229#1:300\n229#1:301,3\n278#1:310,3\n*E\n"
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

.field private final itemsCountByFilterType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastItemId:Ljava/lang/Long;

.field private final lastItemIdByFilterType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private selectedFilterType:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

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

.field private final stakingProgrammesByFilterType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/staking/StakingMetadata;",
            ">;>;"
        }
    .end annotation
.end field

.field private stakingProgrammesLoadingDisposable:Lio/reactivex/disposables/Disposable;

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

    .line 45
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingTabType:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    .line 39
    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->accountLevelInteractor:Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 40
    iput-object p3, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 41
    iput-object p4, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 42
    iput-object p5, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 43
    iput-object p6, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 44
    iput-object p7, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammes:Ljava/util/List;

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    .line 51
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammesByFilterType:Ljava/util/Map;

    .line 52
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->lastItemIdByFilterType:Ljava/util/Map;

    .line 53
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->itemsCountByFilterType:Ljava/util/Map;

    .line 55
    sget-object p1, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;->RUNNING:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->selectedFilterType:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    .line 56
    invoke-static {}, Lio/reactivex/disposables/Disposables;->disposed()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "disposed()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammesLoadingDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getRxEventBus$p(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;)Lcom/smedialink/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    return-object p0
.end method

.method public static final synthetic access$getStakingTabType$p(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;)Lcom/smedialink/storage/domain/model/staking/StakingTabType;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingTabType:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    return-object p0
.end method

.method public static final synthetic access$onProgrammesDataObtained(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;Ljava/util/List;IZ)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->onProgrammesDataObtained(Ljava/util/List;IZ)V

    return-void
.end method

.method public static final synthetic access$openStakingCheckingAccountLevel(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;Lcom/smedialink/model/staking/StakingDetailsItem;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->openStakingCheckingAccountLevel(Lcom/smedialink/model/staking/StakingDetailsItem;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V

    return-void
.end method

.method public static final synthetic access$renderGlobalStateItemsList(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;Lcom/smedialink/model/state/GlobalState;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->renderGlobalStateItemsList(Lcom/smedialink/model/state/GlobalState;)V

    return-void
.end method

.method private final getFiltersListItem()Lcom/smedialink/model/common/FiltersListItem;
    .locals 11

    .line 227
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingTabType:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    sget-object v1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 229
    invoke-static {}, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;->values()[Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    move-result-object v0

    .line 11328
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11663
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 230
    new-instance v6, Lcom/smedialink/model/common/FilterItem;

    .line 231
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    int-to-long v7, v7

    .line 232
    iget-object v9, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;->getTitleResId()I

    move-result v10

    invoke-interface {v9, v10}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 233
    iget-object v10, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->selectedFilterType:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    if-ne v10, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 230
    :goto_1
    invoke-direct {v6, v7, v8, v9, v5}, Lcom/smedialink/model/common/FilterItem;-><init>(JLjava/lang/String;Z)V

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 235
    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 228
    new-instance v1, Lcom/smedialink/model/common/FiltersListItem;

    invoke-direct {v1, v0}, Lcom/smedialink/model/common/FiltersListItem;-><init>(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return-object v1
.end method

.method private final getProgrammesObservable(Ljava/lang/Long;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingProgrammes;",
            ">;>;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingTabType:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    sget-object v1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 182
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getStakingProgrammesOrderType()Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    move-result-object v1

    .line 184
    iget-object v2, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->selectedFilterType:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    .line 181
    invoke-virtual {v0, v1, p1, v2}, Lcom/iMe/i_staking/StakingInteractor;->getStakingOwnProgrammesList(Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;Ljava/lang/Long;Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 178
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getStakingProgrammesOrderType()Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1, p1}, Lcom/iMe/i_staking/StakingInteractor;->getStakingProgrammesList(Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;Ljava/lang/Long;)Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final listenEvents()V
    .locals 4

    .line 277
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

    .line 280
    invoke-static {p0, v0, v3, v1, v3}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadAccountLevelAndOpenStaking(Lcom/smedialink/model/staking/StakingDetailsItem;)V
    .locals 5

    .line 254
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->accountLevelInteractor:Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 255
    invoke-static {v0, v1, v2, v3, v4}, Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;->getAccountLevelRemote$default(Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;JILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "accountLevelInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
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

    .line 263
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

    .line 75
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->loadStakingProgrammes(ZZ)V

    return-void
.end method

.method private final onProgrammesDataObtained(Ljava/util/List;IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/staking/StakingMetadata;",
            ">;IZ)V"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingTabType:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingTabType;->PARTICIPATED:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 194
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->lastItemIdByFilterType:Ljava/util/Map;

    iget-object v3, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->selectedFilterType:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_0
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->itemsCountByFilterType:Ljava/util/Map;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->selectedFilterType:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 197
    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->lastItemId:Ljava/lang/Long;

    .line 199
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p3, :cond_3

    .line 201
    sget-object p1, Lcom/smedialink/model/state/GlobalState$Empty$Staking;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Empty$Staking;

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->renderGlobalStateItemsList(Lcom/smedialink/model/state/GlobalState;)V

    .line 203
    :cond_3
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    goto :goto_3

    .line 205
    :cond_4
    iget-object p3, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 206
    iget-object p3, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smedialink/model/common/NoChildNode;

    .line 208
    new-instance v2, Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;

    .line 209
    iget-object v3, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->staking_programmes_count:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-interface {v3, v4, v6}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 210
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_sort_28:I

    .line 208
    invoke-direct {v2, p2, v3}, Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v7

    .line 212
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->getFiltersListItem()Lcom/smedialink/model/common/FiltersListItem;

    move-result-object p2

    aput-object p2, v0, v5

    .line 207
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 206
    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 216
    :cond_5
    iget-object p2, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammes:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    iget-object p2, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingTabType:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    if-ne p2, v1, :cond_6

    .line 218
    iget-object p2, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammesByFilterType:Ljava/util/Map;

    iget-object p3, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->selectedFilterType:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_6
    iget-object p2, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    invoke-static {p1}, Lcom/smedialink/mapper/staking/StakingMetadataUiMappingKt;->mapToUi(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    iget-object p2, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;->renderItems(Ljava/util/List;)V

    :goto_3
    return-void
.end method

.method static synthetic onProgrammesDataObtained$default(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;Ljava/util/List;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 188
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->onProgrammesDataObtained(Ljava/util/List;IZ)V

    return-void
.end method

.method private final openStakingCheckingAccountLevel(Lcom/smedialink/model/staking/StakingDetailsItem;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 1

    .line 268
    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getMinimalRank()Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;->isReached(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 269
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    invoke-interface {p2, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;->openDepositScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    goto :goto_0

    .line 271
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

.method public static synthetic reload$default(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->reload(Z)V

    return-void
.end method

.method private final renderGlobalStateItemsList(Lcom/smedialink/model/state/GlobalState;)V
    .locals 5

    .line 241
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/smedialink/model/common/NoChildNode;

    .line 243
    new-instance v2, Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;

    .line 244
    iget-object v3, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->staking_list_header:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 245
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_ic_sort_28:I

    .line 243
    invoke-direct {v2, v3, v4}, Lcom/smedialink/model/wallet/home/HeaderItemWithRightButton;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 247
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->getFiltersListItem()Lcom/smedialink/model/common/FiltersListItem;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 248
    new-instance v2, Lcom/smedialink/model/common/GlobalStateItem;

    invoke-direct {v2, p1}, Lcom/smedialink/model/common/GlobalStateItem;-><init>(Lcom/smedialink/model/state/GlobalState;)V

    const/4 p1, 0x2

    aput-object v2, v1, p1

    .line 242
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 249
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 241
    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;->renderItems(Ljava/util/List;)V

    return-void
.end method

.method private final renderItemsOnFilterChanged()V
    .locals 7

    .line 163
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammesByFilterType:Ljava/util/Map;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->selectedFilterType:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 165
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 167
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammesLoadingDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 168
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->itemsCountByFilterType:Ljava/util/Map;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->selectedFilterType:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->onProgrammesDataObtained$default(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;Ljava/util/List;IZILjava/lang/Object;)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;->renderItems(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 171
    invoke-virtual {p0, v0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->reload(Z)V

    :goto_0
    return-void
.end method

.method private final updateFiltersItem()V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    .line 349
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 350
    check-cast v2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 157
    instance-of v2, v2, Lcom/smedialink/model/common/FiltersListItem;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-ne v1, v3, :cond_2

    return-void

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->getFiltersListItem()Lcom/smedialink/model/common/FiltersListItem;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final loadStakingProgrammes(ZZ)V
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 77
    :goto_0
    iget-object v2, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingTabType:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    sget-object v3, Lcom/smedialink/storage/domain/model/staking/StakingTabType;->PARTICIPATED:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    if-ne v2, v3, :cond_1

    .line 78
    iget-object v2, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->lastItemIdByFilterType:Ljava/util/Map;

    iget-object v3, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->selectedFilterType:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    goto :goto_1

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->lastItemId:Ljava/lang/Long;

    :goto_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 83
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    return-void

    .line 86
    :cond_2
    invoke-direct {p0, v2}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->getProgrammesObservable(Ljava/lang/Long;)Lio/reactivex/Observable;

    move-result-object v2

    .line 87
    iget-object v3, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v3}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    const-string v3, "getProgrammesObservable(\u2026(schedulersProvider.ui())"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v3, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p2, p0, p1, v1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;-><init>(ZLcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;ZZ)V

    new-instance p1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$2;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v2, v3, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammesLoadingDisposable:Lio/reactivex/disposables/Disposable;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 110
    invoke-static {p0, p1, p2, v0, p2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onFilterSelected(J)V
    .locals 1

    .line 135
    sget-object v0, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;->Companion:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType$Companion;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType$Companion;->mapByOrdinal(I)Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    move-result-object p1

    .line 136
    iget-object p2, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->selectedFilterType:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    if-eq p2, p1, :cond_0

    .line 137
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->selectedFilterType:Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;

    .line 138
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->updateFiltersItem()V

    .line 139
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->renderItemsOnFilterChanged()V

    :cond_0
    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 148
    invoke-static {p0, v0, v1, v2, v3}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->loadStakingProgrammes$default(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;ZZILjava/lang/Object;)V

    .line 149
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->listenEvents()V

    return-void
.end method

.method public final onStakingOrderTypeSelected(Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setStakingProgrammesOrderType(Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;)V

    .line 131
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    sget-object v0, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingProgrammesRefresh;->INSTANCE:Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingProgrammesRefresh;

    invoke-virtual {p1, v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    return-void
.end method

.method public final onStakingProgrammeClick(Lcom/smedialink/model/staking/StakingProgrammeItem;)V
    .locals 8

    const-string v0, "stakingProgrammeItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
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

    .line 116
    :cond_4
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->accountLevel:Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;

    .line 118
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

    .line 119
    invoke-direct {p0, v2}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->loadAccountLevelAndOpenStaking(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    goto :goto_3

    .line 120
    :cond_6
    invoke-direct {p0, v2, v0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->openStakingCheckingAccountLevel(Lcom/smedialink/model/staking/StakingDetailsItem;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V

    :goto_3
    return-void
.end method

.method public final reload(Z)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammesLoadingDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->lastItemId:Ljava/lang/Long;

    .line 63
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 64
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingTabType:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    sget-object v1, Lcom/smedialink/storage/domain/model/staking/StakingTabType;->PARTICIPATED:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammesByFilterType:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 68
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->lastItemIdByFilterType:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 69
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->itemsCountByFilterType:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->loadStakingProgrammes(ZZ)V

    return-void
.end method

.method public final showSelectStakingOrderTypeDialog()V
    .locals 2

    .line 126
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getStakingProgrammesOrderType()Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;->showSelectStakingOrderTypeDialog(Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;)V

    return-void
.end method
