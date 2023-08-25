.class public final Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "StakingCalculatorPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingCalculatorPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingCalculatorPresenter.kt\ncom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter\n+ 2 CommonExt.kt\ncom/iMe/storage/data/utils/extentions/CommonExtKt\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,264:1\n6#2,6:265\n42#3,12:271\n42#3,12:283\n1549#4:295\n1620#4,3:296\n*S KotlinDebug\n*F\n+ 1 StakingCalculatorPresenter.kt\ncom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter\n*L\n117#1:265,6\n155#1:271,12\n185#1:283,12\n235#1:295\n235#1:296,3\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private accountLevel:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

.field private final accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

.field private final amountSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private chartViewData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private selectedAmount:D

.field private selectedStakingProgramme:Lcom/iMe/model/staking/StakingDetailsItem;

.field private shouldResetAmount:Z

.field private tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

.field private tokenProfitText:Ljava/lang/String;

.field private final walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public static synthetic $r8$lambda$WK00axq-LTCJtWs-YLsdjMLIJFY(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->setupAmountListener$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_cVYbXPyDkQHRjW7Qp-ncZUzZTw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->setupAmountListener$lambda$13(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)V
    .locals 1

    const-string v0, "accountLevelInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schedulersProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletInteractor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 45
    iput-object p3, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 46
    iput-object p4, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 47
    iput-object p5, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    const-string p2, ""

    .line 81
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->tokenProfitText:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/iMe/model/staking/StakingDetailsItem;

    .line 93
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    const-string p2, "create<Double>()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->amountSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-void
.end method

.method public static final synthetic access$mapProfitPrognosis(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->mapProfitPrognosis()Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$openStakingCheckingAccountLevel(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->openStakingCheckingAccountLevel(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V

    return-void
.end method

.method public static final synthetic access$setChartViewData$p(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->chartViewData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-void
.end method

.method public static final synthetic access$setSelectedAmount$p(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;D)V
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedAmount:D

    return-void
.end method

.method public static final synthetic access$setTokenBalance$p(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method

.method public static final synthetic access$showCommonErrorToast(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;Lcom/iMe/storage/data/network/model/error/ErrorModel;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->showCommonErrorToast(Lcom/iMe/storage/data/network/model/error/ErrorModel;)V

    return-void
.end method

.method private final loadAccountLevelAndOpenStaking(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 6

    .line 151
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 152
    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->getAccountLevelRemote$default(Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;JILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 153
    invoke-static {v0}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string/jumbo v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v5, 0x2

    invoke-static {v0, v1, v2, v5, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;Lcom/iMe/model/staking/StakingDetailsItem;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026.invoke(error)\n        })"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-static {p0, p1, v4, v3, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadBalance()V
    .locals 6

    .line 179
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 181
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/iMe/storage/domain/utils/extentions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 180
    invoke-static/range {v0 .. v5}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getTokenBalance$default(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;Lcom/iMe/storage/domain/model/wallet/token/Token;ZLjava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026.invoke(error)\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 196
    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final mapProfitPrognosis()Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 26

    move-object/from16 v0, p0

    .line 227
    iget-object v1, v0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/iMe/model/staking/StakingDetailsItem;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 229
    :cond_0
    iget-wide v2, v0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedAmount:D

    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getImpact()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 230
    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 231
    :goto_0
    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getStartsAtISO()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/iMe/utils/extentions/common/StringExtKt;->parseISODate(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 232
    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getIncomePercent()D

    move-result-wide v9

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double/2addr v9, v11

    .line 233
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getIncomePeriod()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    .line 234
    new-instance v15, Lkotlin/ranges/LongRange;

    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getEndsAtISO()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/iMe/utils/extentions/common/StringExtKt;->parseISODate(Ljava/lang/String;)J

    move-result-wide v11

    invoke-direct {v15, v7, v8, v11, v12}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    sget-object v11, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {v11, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-static {v15, v5, v6}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/LongProgression;J)Lkotlin/ranges/LongProgression;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    .line 1549
    new-instance v6, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v5, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 1621
    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v19

    sub-long v21, v19, v7

    move-object/from16 v23, v11

    .line 236
    div-long v11, v21, v13

    long-to-int v11, v11

    .line 237
    rem-long v21, v7, v13

    rem-long v19, v19, v13

    cmp-long v12, v21, v19

    if-lez v12, :cond_2

    add-int/lit8 v11, v11, 0x1

    :cond_2
    if-eqz v4, :cond_3

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v21, v7

    add-double v7, v9, v19

    int-to-double v11, v11

    .line 239
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    move-wide/from16 v19, v13

    const/4 v12, 0x1

    int-to-double v13, v12

    sub-double/2addr v7, v13

    mul-double/2addr v7, v2

    goto :goto_2

    :cond_3
    move-wide/from16 v21, v7

    move-wide/from16 v19, v13

    const/4 v12, 0x1

    mul-double v7, v2, v9

    int-to-double v13, v11

    mul-double/2addr v7, v13

    :goto_2
    const/16 v11, 0x64

    int-to-double v13, v11

    mul-double/2addr v7, v13

    double-to-int v7, v7

    int-to-double v7, v7

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    div-double/2addr v7, v13

    .line 243
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 1621
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-wide/from16 v13, v19

    move-wide/from16 v7, v21

    move-object/from16 v11, v23

    goto :goto_1

    .line 245
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;

    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/TokenItem;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;->createEmptyBalanceFor(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v16

    .line 246
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1e

    const/16 v25, 0x0

    invoke-static/range {v16 .. v25}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->copy$default(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;DLcom/iMe/storage/domain/model/wallet/token/FiatValue;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;DLcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    .line 247
    invoke-static {v1}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalanceShortText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->tokenProfitText:Ljava/lang/String;

    .line 248
    new-instance v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v2, v0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->staking_details_profit:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lorg/telegram/ui/StatisticActivity$ChartViewData;-><init>(Ljava/lang/String;I)V

    .line 250
    new-instance v2, Lorg/telegram/ui/Charts/data/ChartData;

    .line 251
    sget-object v4, Lcom/iMe/model/common/TelegramStatisticsChartData;->Companion:Lcom/iMe/model/common/TelegramStatisticsChartData$Companion;

    .line 252
    iget-object v7, v0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {v7, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 251
    invoke-virtual {v4, v3, v5, v6}, Lcom/iMe/model/common/TelegramStatisticsChartData$Companion;->generateJSONObject(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v3

    .line 250
    invoke-direct {v2, v3}, Lorg/telegram/ui/Charts/data/ChartData;-><init>(Lorg/json/JSONObject;)V

    .line 249
    invoke-virtual {v1, v2}, Lorg/telegram/ui/StatisticActivity$ChartViewData;->setup(Lorg/telegram/ui/Charts/data/ChartData;)V

    return-object v1
.end method

.method private final openStakingCheckingAccountLevel(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 2

    .line 167
    invoke-virtual {p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getMinimalRank()Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->isReached(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 168
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;

    iget-object p2, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/iMe/model/staking/StakingDetailsItem;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedAmount:D

    invoke-interface {p1, p2, v0, v1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;->openDepositScreen(Lcom/iMe/model/staking/StakingDetailsItem;D)V

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;

    .line 171
    invoke-virtual {p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getMinimalRank()Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v0

    .line 172
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/TokenItem;->getNetworkId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getLIME(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    .line 170
    invoke-interface {p2, v0, p1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;->showLevelRequiredDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    :goto_0
    return-void
.end method

.method private final setupAmountListener()V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->amountSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 212
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 213
    new-instance v1, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$setupAmountListener$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$setupAmountListener$1;-><init>(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 219
    new-instance v1, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$setupAmountListener$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$setupAmountListener$2;-><init>(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "private fun setupAmountL\u2026     .autoDispose()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 223
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final setupAmountListener$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method private static final setupAmountListener$lambda$13(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final showCommonErrorToast(Lcom/iMe/storage/data/network/model/error/ErrorModel;)V
    .locals 2

    .line 201
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;

    .line 202
    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->isNoConnectionStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->common_error_no_internet:I

    invoke-interface {p1, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p1, v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 204
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->common_error_unexpected:I

    invoke-interface {p1, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 201
    :cond_2
    :goto_1
    invoke-interface {v0, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final checkAmountReset()Z
    .locals 2

    .line 103
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->shouldResetAmount:Z

    const/4 v1, 0x0

    .line 104
    iput-boolean v1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->shouldResetAmount:Z

    return v0
.end method

.method public final getChartViewData()Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->chartViewData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object v0
.end method

.method public final getCompoundThresholdProgress()F
    .locals 5

    .line 99
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/iMe/model/staking/StakingDetailsItem;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getImpact()Ljava/math/BigDecimal;

    move-result-object v1

    new-instance v2, Ljava/math/BigDecimal;

    iget-wide v3, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedAmount:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    const-string/jumbo v2, "this.add(other)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    new-instance v1, Ljava/math/BigDecimal;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/comparisons/ComparisonsKt;->minOf(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 101
    :goto_0
    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Float;)F

    move-result v0

    return v0
.end method

.method public final getDatesText()Ljava/lang/String;
    .locals 7

    .line 58
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/iMe/model/staking/StakingDetailsItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 59
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getStartsAtISO()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iMe/utils/extentions/common/StringExtKt;->parseISODate(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/iMe/utils/formatter/DateFormatter$DateType;->ONLY_DATE:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    const/4 v5, 0x4

    invoke-static {v4, v2, v1, v5, v1}, Lcom/iMe/utils/formatter/DateFormatter;->format$default(Lcom/iMe/utils/formatter/DateFormatter$DateType;Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getEndsAt()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    return-object v1
.end method

.method public final getModeText()Ljava/lang/String;
    .locals 6

    .line 74
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/iMe/model/staking/StakingDetailsItem;

    if-eqz v0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 76
    iget-wide v2, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedAmount:D

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->staking_details_apy:I

    goto :goto_0

    .line 77
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->staking_details_apr:I

    .line 75
    :goto_0
    invoke-interface {v1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public final getPercentageText()Ljava/lang/String;
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/iMe/model/staking/StakingDetailsItem;

    if-eqz v0, :cond_1

    .line 69
    iget-wide v1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedAmount:D

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getImpact()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getFormattedAPY()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getFormattedAPR()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "% "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public final getSelectedStakingProgramme()Lcom/iMe/model/staking/StakingDetailsItem;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/iMe/model/staking/StakingDetailsItem;

    return-object v0
.end method

.method public final getStakingAnnualPercentageData()Lcom/iMe/model/staking/StakingAnnualPercentageData;
    .locals 5

    .line 52
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/iMe/model/staking/StakingDetailsItem;

    if-eqz v0, :cond_0

    .line 53
    new-instance v1, Lcom/iMe/model/staking/StakingAnnualPercentageData;

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getFormattedAPR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getFormattedAPY()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "compoundAccrualThreshold.toString()"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v0}, Lcom/iMe/model/staking/StakingAnnualPercentageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/iMe/model/staking/StakingDetailsItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/TokenItem;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getTokenBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-object v0
.end method

.method public final getTokenProfitText()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->tokenProfitText:Ljava/lang/String;

    return-object v0
.end method

.method public final onAmountChanged(Ljava/lang/String;)V
    .locals 2

    const-string v0, "amountText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_1

    .line 119
    :cond_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 120
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 121
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->amountSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public final onDepositClick()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->accountLevel:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    .line 128
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/iMe/model/staking/StakingDetailsItem;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 130
    invoke-direct {p0, v1, v0}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->openStakingCheckingAccountLevel(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-direct {p0, v1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->loadAccountLevelAndOpenStaking(Lcom/iMe/model/staking/StakingDetailsItem;)V

    :goto_0
    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 0

    .line 141
    invoke-super {p0}, Lmoxy/MvpPresenter;->onFirstViewAttach()V

    .line 142
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->loadBalance()V

    .line 143
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->setupAmountListener()V

    return-void
.end method

.method public final onStakingSelected(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 2

    const-string/jumbo v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/iMe/model/staking/StakingDetailsItem;

    const-wide/16 v0, 0x0

    .line 109
    iput-wide v0, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedAmount:D

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->chartViewData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->shouldResetAmount:Z

    .line 112
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;->updateStakingCalculatorViews()V

    .line 113
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->loadBalance()V

    return-void
.end method
