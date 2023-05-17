.class public final Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "StakingProgrammesPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingProgrammesPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingProgrammesPresenter.kt\ncom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n*L\n1#1,288:1\n39#2,8:289\n39#2,8:309\n39#2,8:320\n1#3:297\n350#4,7:298\n11335#5:305\n11670#5,3:306\n16#6,3:317\n*S KotlinDebug\n*F\n+ 1 StakingProgrammesPresenter.kt\ncom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter\n*L\n89#1:289,8\n259#1:309,8\n282#1:320,8\n159#1:298,7\n231#1:305\n231#1:306,3\n281#1:317,3\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private accountLevel:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

.field private final accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

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
            "Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;",
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
            "Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private selectedFilterType:Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;

.field private final stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

.field private final stakingProgrammes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/staking/StakingMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final stakingProgrammesByFilterType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/staking/StakingMetadata;",
            ">;>;"
        }
    .end annotation
.end field

.field private stakingProgrammesLoadingDisposable:Lio/reactivex/disposables/Disposable;

.field private final stakingTabType:Lcom/iMe/storage/domain/model/staking/StakingTabType;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/staking/StakingTabType;Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/i_staking/StakingInteractor;)V
    .locals 1

    const-string/jumbo v0, "stakingTabType"

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

    const-string/jumbo v0, "stakingInteractor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingTabType:Lcom/iMe/storage/domain/model/staking/StakingTabType;

    .line 40
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 41
    iput-object p3, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 42
    iput-object p4, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 43
    iput-object p5, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 44
    iput-object p6, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 45
    iput-object p7, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammes:Ljava/util/List;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    .line 52
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammesByFilterType:Ljava/util/Map;

    .line 53
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->lastItemIdByFilterType:Ljava/util/Map;

    .line 54
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->itemsCountByFilterType:Ljava/util/Map;

    .line 56
    sget-object p1, Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;->RUNNING:Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->selectedFilterType:Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;

    .line 57
    invoke-static {}, Lio/reactivex/disposables/Disposables;->disposed()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "disposed()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammesLoadingDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getRxEventBus$p(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    return-object p0
.end method

.method public static final synthetic access$getStakingTabType$p(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;)Lcom/iMe/storage/domain/model/staking/StakingTabType;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingTabType:Lcom/iMe/storage/domain/model/staking/StakingTabType;

    return-object p0
.end method

.method public static final synthetic access$onProgrammesDataObtained(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;Ljava/util/List;IZ)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->onProgrammesDataObtained(Ljava/util/List;IZ)V

    return-void
.end method

.method public static final synthetic access$openStakingCheckingAccountLevel(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->openStakingCheckingAccountLevel(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V

    return-void
.end method

.method public static final synthetic access$renderGlobalStateItemsList(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;Lcom/iMe/model/state/GlobalState;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->renderGlobalStateItemsList(Lcom/iMe/model/state/GlobalState;)V

    return-void
.end method

.method private final getFiltersListItem()Lcom/iMe/model/common/FiltersListItem;
    .locals 11

    .line 229
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingTabType:Lcom/iMe/storage/domain/model/staking/StakingTabType;

    sget-object v1, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 231
    invoke-static {}, Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;->values()[Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;

    move-result-object v0

    .line 11335
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 232
    new-instance v6, Lcom/iMe/model/common/FilterItem;

    .line 233
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    int-to-long v7, v7

    .line 234
    iget-object v9, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;->getTitleResId()I

    move-result v10

    invoke-interface {v9, v10}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 235
    iget-object v10, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->selectedFilterType:Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;

    if-ne v10, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v3

    .line 232
    :goto_1
    invoke-direct {v6, v7, v8, v9, v5}, Lcom/iMe/model/common/FilterItem;-><init>(JLjava/lang/String;Z)V

    .line 11671
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 237
    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 230
    new-instance v1, Lcom/iMe/model/common/FiltersListItem;

    invoke-direct {v1, v0}, Lcom/iMe/model/common/FiltersListItem;-><init>(Ljava/util/List;)V

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
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingProgrammes;",
            ">;>;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingTabType:Lcom/iMe/storage/domain/model/staking/StakingTabType;

    sget-object v1, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 184
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getStakingProgrammesOrderType()Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->selectedFilterType:Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;

    .line 183
    invoke-virtual {v0, v1, p1, v2}, Lcom/iMe/i_staking/StakingInteractor;->getStakingOwnProgrammesList(Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;Ljava/lang/Long;Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 180
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getStakingProgrammesOrderType()Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;

    move-result-object v1

    .line 179
    invoke-virtual {v0, v1, p1}, Lcom/iMe/i_staking/StakingInteractor;->getStakingProgrammesList(Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;Ljava/lang/Long;)Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final listenEvents()V
    .locals 5

    .line 280
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 16
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$StakingProgrammesRefresh;

    .line 17
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->ofType(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "publisher\n              \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 283
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadAccountLevelAndOpenStaking(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 5

    .line 256
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 257
    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->getAccountLevelRemote$default(Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;JILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 258
    invoke-static {v0}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 259
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;Lcom/iMe/model/staking/StakingDetailsItem;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    invoke-static {p0, p1, v4, v3, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic loadStakingProgrammes$default(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 76
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->loadStakingProgrammes(ZZ)V

    return-void
.end method

.method private final onProgrammesDataObtained(Ljava/util/List;IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/staking/StakingMetadata;",
            ">;IZ)V"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingTabType:Lcom/iMe/storage/domain/model/staking/StakingTabType;

    sget-object v1, Lcom/iMe/storage/domain/model/staking/StakingTabType;->PARTICIPATED:Lcom/iMe/storage/domain/model/staking/StakingTabType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 196
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->lastItemIdByFilterType:Ljava/util/Map;

    iget-object v3, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->selectedFilterType:Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/storage/domain/model/staking/StakingMetadata;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_0
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 197
    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->itemsCountByFilterType:Ljava/util/Map;

    iget-object v3, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->selectedFilterType:Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 199
    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_2
    iput-object v2, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->lastItemId:Ljava/lang/Long;

    .line 201
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p3, :cond_3

    .line 203
    sget-object p1, Lcom/iMe/model/state/GlobalState$Empty$Staking;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Staking;

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->renderGlobalStateItemsList(Lcom/iMe/model/state/GlobalState;)V

    .line 205
    :cond_3
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    goto :goto_1

    .line 207
    :cond_4
    iget-object p3, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 208
    iget-object p3, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/model/common/NoChildNode;

    .line 210
    new-instance v2, Lcom/iMe/model/wallet/home/HeaderItemWithRightButton;

    .line 211
    iget-object v3, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->staking_programmes_count:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-interface {v3, v4, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 212
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_sort_28:I

    .line 210
    invoke-direct {v2, p2, v3}, Lcom/iMe/model/wallet/home/HeaderItemWithRightButton;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v7

    .line 214
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->getFiltersListItem()Lcom/iMe/model/common/FiltersListItem;

    move-result-object p2

    aput-object p2, v0, v5

    .line 209
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 208
    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    :cond_5
    iget-object p2, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammes:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 219
    iget-object p2, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingTabType:Lcom/iMe/storage/domain/model/staking/StakingTabType;

    if-ne p2, v1, :cond_6

    .line 220
    iget-object p2, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammesByFilterType:Ljava/util/Map;

    iget-object p3, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->selectedFilterType:Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_6
    iget-object p2, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    invoke-static {p1}, Lcom/iMe/mapper/staking/StakingMetadataUiMappingKt;->mapToUi(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;

    iget-object p2, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;->renderItems(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method static synthetic onProgrammesDataObtained$default(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;Ljava/util/List;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 190
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->onProgrammesDataObtained(Ljava/util/List;IZ)V

    return-void
.end method

.method private final openStakingCheckingAccountLevel(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 1

    .line 271
    invoke-virtual {p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getMinimalRank()Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->isReached(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 272
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;

    invoke-interface {p2, p1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;->openDepositScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;

    invoke-virtual {p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getMinimalRank()Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;->showLevelRequiredDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V

    :goto_0
    return-void
.end method

.method public static synthetic reload$default(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->reload(Z)V

    return-void
.end method

.method private final renderGlobalStateItemsList(Lcom/iMe/model/state/GlobalState;)V
    .locals 5

    .line 243
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/iMe/model/common/NoChildNode;

    .line 245
    new-instance v2, Lcom/iMe/model/wallet/home/HeaderItemWithRightButton;

    .line 246
    iget-object v3, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->staking_list_header:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 247
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_ic_sort_28:I

    .line 245
    invoke-direct {v2, v3, v4}, Lcom/iMe/model/wallet/home/HeaderItemWithRightButton;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 249
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->getFiltersListItem()Lcom/iMe/model/common/FiltersListItem;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 250
    new-instance v2, Lcom/iMe/model/common/GlobalStateItem;

    invoke-direct {v2, p1}, Lcom/iMe/model/common/GlobalStateItem;-><init>(Lcom/iMe/model/state/GlobalState;)V

    const/4 p1, 0x2

    aput-object v2, v1, p1

    .line 244
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 251
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 243
    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;->renderItems(Ljava/util/List;)V

    return-void
.end method

.method private final renderItemsOnFilterChanged()V
    .locals 7

    .line 165
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammesByFilterType:Ljava/util/Map;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->selectedFilterType:Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 167
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 168
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammesLoadingDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 170
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->itemsCountByFilterType:Ljava/util/Map;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->selectedFilterType:Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->onProgrammesDataObtained$default(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;Ljava/util/List;IZILjava/lang/Object;)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;->renderItems(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->reload(Z)V

    :goto_0
    return-void
.end method

.method private final updateFiltersItem()V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    .line 351
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

    .line 352
    check-cast v2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 159
    instance-of v2, v2, Lcom/iMe/model/common/FiltersListItem;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    if-ne v1, v3, :cond_2

    return-void

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->getFiltersListItem()Lcom/iMe/model/common/FiltersListItem;

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

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 78
    :goto_0
    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingTabType:Lcom/iMe/storage/domain/model/staking/StakingTabType;

    sget-object v3, Lcom/iMe/storage/domain/model/staking/StakingTabType;->PARTICIPATED:Lcom/iMe/storage/domain/model/staking/StakingTabType;

    if-ne v2, v3, :cond_1

    .line 79
    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->lastItemIdByFilterType:Ljava/util/Map;

    iget-object v3, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->selectedFilterType:Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    goto :goto_1

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->lastItemId:Ljava/lang/Long;

    :goto_1
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 84
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    return-void

    .line 87
    :cond_2
    invoke-direct {p0, v2}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->getProgrammesObservable(Ljava/lang/Long;)Lio/reactivex/Observable;

    move-result-object v2

    .line 88
    iget-object v3, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v3}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    const-string v3, "getProgrammesObservable(\u2026(schedulersProvider.ui())"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v3, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p2, p0, p1, v1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;-><init>(ZLcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;ZZ)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v2, p1, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammesLoadingDisposable:Lio/reactivex/disposables/Disposable;

    .line 112
    invoke-static {p0, p1, v1, v0, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onFilterSelected(J)V
    .locals 1

    .line 137
    sget-object v0, Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;->Companion:Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType$Companion;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType$Companion;->mapByOrdinal(I)Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;

    move-result-object p1

    .line 138
    iget-object p2, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->selectedFilterType:Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;

    if-eq p2, p1, :cond_0

    .line 139
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->selectedFilterType:Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;

    .line 140
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->updateFiltersItem()V

    .line 141
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->renderItemsOnFilterChanged()V

    :cond_0
    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 150
    invoke-static {p0, v0, v1, v2, v3}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->loadStakingProgrammes$default(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;ZZILjava/lang/Object;)V

    .line 151
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->listenEvents()V

    return-void
.end method

.method public final onStakingOrderTypeSelected(Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;)V
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setStakingProgrammesOrderType(Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;)V

    .line 133
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$StakingProgrammesRefresh;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$StakingProgrammesRefresh;

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    return-void
.end method

.method public final onStakingProgrammeClick(Lcom/iMe/model/staking/StakingProgrammeItem;)V
    .locals 6

    const-string/jumbo v0, "stakingProgrammeItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammes:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/iMe/storage/domain/model/staking/StakingMetadata;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/iMe/model/staking/StakingProgrammeItem;->getId()J

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
    check-cast v1, Lcom/iMe/storage/domain/model/staking/StakingMetadata;

    if-eqz v1, :cond_6

    invoke-static {v1}, Lcom/iMe/mapper/staking/StakingDetailedMetadataUiMappingKt;->mapToUi(Lcom/iMe/storage/domain/model/staking/StakingMetadata;)Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 118
    :cond_3
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->accountLevel:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    .line 120
    invoke-virtual {p1}, Lcom/iMe/model/staking/StakingProgrammeItem;->isParticipated()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;->openStakingDetailsScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    .line 121
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->loadAccountLevelAndOpenStaking(Lcom/iMe/model/staking/StakingDetailsItem;)V

    goto :goto_2

    .line 122
    :cond_5
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->openStakingCheckingAccountLevel(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final reload(Z)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammesLoadingDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->lastItemId:Ljava/lang/Long;

    .line 64
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingTabType:Lcom/iMe/storage/domain/model/staking/StakingTabType;

    sget-object v1, Lcom/iMe/storage/domain/model/staking/StakingTabType;->PARTICIPATED:Lcom/iMe/storage/domain/model/staking/StakingTabType;

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->stakingProgrammesByFilterType:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 69
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->lastItemIdByFilterType:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 70
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->itemsCountByFilterType:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->loadStakingProgrammes(ZZ)V

    return-void
.end method

.method public final showSelectStakingOrderTypeDialog()V
    .locals 2

    .line 128
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getStakingProgrammesOrderType()Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;->showSelectStakingOrderTypeDialog(Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;)V

    return-void
.end method
