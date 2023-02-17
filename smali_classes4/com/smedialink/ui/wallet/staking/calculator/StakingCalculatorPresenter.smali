.class public final Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "StakingCalculatorPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingCalculatorPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingCalculatorPresenter.kt\ncom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter\n+ 2 CommonExt.kt\ncom/smedialink/storage/data/utils/extentions/CommonExtKt\n+ 3 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,256:1\n6#2,6:257\n39#3,6:263\n39#3,6:269\n1547#4:275\n1618#4,3:276\n*S KotlinDebug\n*F\n+ 1 StakingCalculatorPresenter.kt\ncom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter\n*L\n116#1:257,6\n153#1:263,6\n179#1:269,6\n227#1:275\n227#1:276,3\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private accountLevel:Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;

.field private final accountLevelInteractor:Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;

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

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private selectedAmount:D

.field private selectedStakingProgramme:Lcom/smedialink/model/staking/StakingDetailsItem;

.field private shouldResetAmount:Z

.field private tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

.field private tokenProfitText:Ljava/lang/String;

.field private final walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public static synthetic $r8$lambda$WxhMUz_roqlT-e5Ntryeqo5-Q54(Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;Ljava/lang/Double;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->setupAmountListener$lambda-12(Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;Ljava/lang/Double;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hoh3C2SF9Nk2iK4uUkLr_bdDgvU(Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->setupAmountListener$lambda-13(Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/model/staking/StakingDetailsItem;Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;)V
    .locals 1

    const-string v0, "accountLevelInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletInteractor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->accountLevelInteractor:Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 42
    iput-object p3, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 43
    iput-object p4, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 44
    iput-object p5, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    const-string p2, ""

    .line 80
    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->tokenProfitText:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/smedialink/model/staking/StakingDetailsItem;

    .line 92
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    const-string p2, "create<Double>()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->amountSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-void
.end method

.method public static final synthetic access$openStakingCheckingAccountLevel(Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;Lcom/smedialink/model/staking/StakingDetailsItem;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->openStakingCheckingAccountLevel(Lcom/smedialink/model/staking/StakingDetailsItem;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V

    return-void
.end method

.method public static final synthetic access$setTokenBalance$p(Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method

.method public static final synthetic access$showCommonErrorToast(Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;Lcom/smedialink/storage/data/network/model/error/ErrorModel;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->showCommonErrorToast(Lcom/smedialink/storage/data/network/model/error/ErrorModel;)V

    return-void
.end method

.method private final loadAccountLevelAndOpenStaking(Lcom/smedialink/model/staking/StakingDetailsItem;)V
    .locals 5

    .line 150
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->accountLevelInteractor:Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 151
    invoke-static {v0, v1, v2, v3, v4}, Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;->getAccountLevelRemote$default(Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;JILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "accountLevelInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;Lcom/smedialink/model/staking/StakingDetailsItem;)V

    new-instance p1, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p1, v1}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v2, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-static {p0, p1, v4, v3, v4}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadBalance()V
    .locals 7

    .line 173
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    .line 175
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    .line 176
    iget-object v2, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/smedialink/model/staking/StakingDetailsItem;

    const/4 v6, 0x0

    if-nez v2, :cond_0

    move-object v3, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/smedialink/model/staking/StakingDetailsItem;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v2

    move-object v3, v2

    :goto_0
    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 174
    invoke-static/range {v0 .. v5}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->getTokenBalance$default(Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;ZLcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;)V

    new-instance v3, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v1}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 188
    invoke-static {p0, v0, v6, v1, v6}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final mapProfitPrognosis()Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 26

    move-object/from16 v0, p0

    .line 219
    iget-object v1, v0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/smedialink/model/staking/StakingDetailsItem;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 221
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getSelectedAmount()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getImpact()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 222
    invoke-virtual {v1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    cmpl-double v8, v2, v4

    if-ltz v8, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 223
    :goto_0
    invoke-virtual {v1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getStartsAtISO()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/smedialink/utils/extentions/common/StringExtKt;->parseISODate(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 224
    invoke-virtual {v1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getIncomePercent()D

    move-result-wide v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    .line 225
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getIncomePeriod()J

    move-result-wide v14

    invoke-virtual {v5, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    .line 226
    new-instance v5, Lkotlin/ranges/LongRange;

    invoke-virtual {v1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getEndsAtISO()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/StringExtKt;->parseISODate(Ljava/lang/String;)J

    move-result-wide v12

    invoke-direct {v5, v8, v9, v12, v13}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x1

    invoke-virtual {v1, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    invoke-static {v5, v12, v13}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/LongProgression;J)Lkotlin/ranges/LongProgression;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 1547
    new-instance v5, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v1, v12}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 1619
    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v18

    sub-long v20, v18, v8

    .line 228
    div-long v6, v20, v14

    long-to-int v7, v6

    .line 229
    rem-long v20, v8, v14

    rem-long v18, v18, v14

    cmp-long v6, v20, v18

    if-lez v6, :cond_2

    add-int/lit8 v7, v7, 0x1

    :cond_2
    if-eqz v4, :cond_3

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v14

    add-double v13, v10, v18

    int-to-double v6, v7

    .line 231
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    move-wide/from16 v18, v8

    const/4 v13, 0x1

    int-to-double v8, v13

    sub-double/2addr v6, v8

    mul-double v6, v6, v2

    goto :goto_2

    :cond_3
    move-wide/from16 v18, v8

    move-wide/from16 v20, v14

    const/4 v13, 0x1

    mul-double v8, v2, v10

    int-to-double v6, v7

    mul-double v6, v6, v8

    :goto_2
    const/16 v8, 0x64

    int-to-double v8, v8

    mul-double v6, v6, v8

    double-to-int v6, v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    .line 235
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-wide/from16 v8, v18

    move-wide/from16 v14, v20

    goto :goto_1

    .line 237
    :cond_4
    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance$Companion;->createEmptyBalanceFor(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;)Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v16

    const/16 v17, 0x0

    .line 238
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3d

    const/16 v25, 0x0

    invoke-static/range {v16 .. v25}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->copy$default(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;DFLcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/wallet/PriceRate;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v2

    .line 239
    iget-object v3, v0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-static {v2, v3}, Lcom/smedialink/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalanceShortText(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    .line 237
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->tokenProfitText:Ljava/lang/String;

    .line 240
    new-instance v2, Lorg/telegram/ui/StatisticActivity$ChartViewData;

    iget-object v3, v0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->staking_details_profit:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6}, Lorg/telegram/ui/StatisticActivity$ChartViewData;-><init>(Ljava/lang/String;I)V

    .line 242
    new-instance v3, Lorg/telegram/ui/Charts/data/ChartData;

    .line 243
    sget-object v6, Lcom/smedialink/model/common/TelegramStatisticsChartData;->Companion:Lcom/smedialink/model/common/TelegramStatisticsChartData$Companion;

    .line 244
    iget-object v7, v0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-interface {v7, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-virtual {v6, v4, v1, v5}, Lcom/smedialink/model/common/TelegramStatisticsChartData$Companion;->generateJSONObject(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v1

    .line 242
    invoke-direct {v3, v1}, Lorg/telegram/ui/Charts/data/ChartData;-><init>(Lorg/json/JSONObject;)V

    .line 241
    invoke-virtual {v2, v3}, Lorg/telegram/ui/StatisticActivity$ChartViewData;->setup(Lorg/telegram/ui/Charts/data/ChartData;)V

    return-object v2
.end method

.method private final openStakingCheckingAccountLevel(Lcom/smedialink/model/staking/StakingDetailsItem;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 2

    .line 164
    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getMinimalRank()Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;->isReached(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 165
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView;

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getSelectedStakingProgramme()Lcom/smedialink/model/staking/StakingDetailsItem;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getSelectedAmount()D

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView;->openDepositScreen(Lcom/smedialink/model/staking/StakingDetailsItem;D)V

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView;

    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getMinimalRank()Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView;->showLevelRequiredDialog(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V

    :goto_0
    return-void
.end method

.method private final setupAmountListener()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->amountSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 204
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 205
    new-instance v1, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 211
    new-instance v1, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "amountSubject\n          \u2026Views()\n                }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 215
    invoke-static {p0, v0, v1, v2, v1}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final setupAmountListener$lambda-12(Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;Ljava/lang/Double;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedAmount:D

    .line 207
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->mapProfitPrognosis()Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p0

    return-object p0
.end method

.method private static final setupAmountListener$lambda-13(Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->chartViewData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    .line 213
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView;

    invoke-interface {p0}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView;->updateStakingCalculatorViews()V

    return-void
.end method

.method private final showCommonErrorToast(Lcom/smedialink/storage/data/network/model/error/ErrorModel;)V
    .locals 2

    .line 193
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView;

    .line 194
    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->isNoConnectionStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->common_error_no_internet:I

    invoke-interface {p1, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

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

    .line 196
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->common_error_unexpected:I

    invoke-interface {p1, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 193
    :cond_2
    :goto_1
    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final checkAmountReset()Z
    .locals 2

    .line 102
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->shouldResetAmount:Z

    const/4 v1, 0x0

    .line 103
    iput-boolean v1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->shouldResetAmount:Z

    return v0
.end method

.method public final getChartViewData()Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->chartViewData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object v0
.end method

.method public final getCompoundThresholdProgress()F
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/smedialink/model/staking/StakingDetailsItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getImpact()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getSelectedAmount()D

    move-result-wide v2

    new-instance v4, Ljava/math/BigDecimal;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    const-string v2, "this.add(other)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

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

    .line 100
    :goto_0
    invoke-static {v0}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Float;)F

    move-result v0

    return v0
.end method

.method public final getDatesText()Ljava/lang/String;
    .locals 7

    .line 57
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/smedialink/model/staking/StakingDetailsItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getStartsAtISO()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/smedialink/utils/extentions/common/StringExtKt;->parseISODate(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/smedialink/utils/formatter/DateFormatter$DateType;->ONLY_DATE:Lcom/smedialink/utils/formatter/DateFormatter$DateType;

    const/4 v5, 0x4

    invoke-static {v4, v2, v1, v5, v1}, Lcom/smedialink/utils/formatter/DateFormatter;->format$default(Lcom/smedialink/utils/formatter/DateFormatter$DateType;Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getEndsAt()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    return-object v1
.end method

.method public final getModeText()Ljava/lang/String;
    .locals 6

    .line 73
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/smedialink/model/staking/StakingDetailsItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 75
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getSelectedAmount()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->staking_details_apy:I

    goto :goto_0

    .line 76
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->staking_details_apr:I

    .line 74
    :goto_0
    invoke-interface {v1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public final getPercentageText()Ljava/lang/String;
    .locals 6

    .line 66
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/smedialink/model/staking/StakingDetailsItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getSelectedAmount()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getImpact()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_1

    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getFormattedAPY()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getFormattedAPR()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "% "

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method public final getSelectedAmount()D
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedAmount:D

    return-wide v0
.end method

.method public final getSelectedStakingProgramme()Lcom/smedialink/model/staking/StakingDetailsItem;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/smedialink/model/staking/StakingDetailsItem;

    return-object v0
.end method

.method public final getStakingAnnualPercentageData()Lcom/smedialink/model/staking/StakingAnnualPercentageData;
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/smedialink/model/staking/StakingDetailsItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :cond_0
    new-instance v1, Lcom/smedialink/model/staking/StakingAnnualPercentageData;

    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getFormattedAPR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getFormattedAPY()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "compoundAccrualThreshold.toString()"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v0}, Lcom/smedialink/model/staking/StakingAnnualPercentageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final getTokenBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    return-object v0
.end method

.method public final getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 2

    .line 53
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/smedialink/model/staking/StakingDetailsItem;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getTokenTicker()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    return-object v0
.end method

.method public final getTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;
    .locals 2

    .line 55
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getTokenProfitText()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->tokenProfitText:Ljava/lang/String;

    return-object v0
.end method

.method public final onAmountChanged(Ljava/lang/String;)V
    .locals 2

    const-string v0, "amountText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
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

    .line 118
    :cond_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 119
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 120
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->amountSubject:Lio/reactivex/subjects/BehaviorSubject;

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

    .line 126
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->accountLevel:Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;

    .line 127
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/smedialink/model/staking/StakingDetailsItem;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 129
    invoke-direct {p0, v1, v0}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->openStakingCheckingAccountLevel(Lcom/smedialink/model/staking/StakingDetailsItem;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V

    goto :goto_0

    .line 131
    :cond_1
    invoke-direct {p0, v1}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->loadAccountLevelAndOpenStaking(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    :goto_0
    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 0

    .line 140
    invoke-super {p0}, Lmoxy/MvpPresenter;->onFirstViewAttach()V

    .line 141
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->loadBalance()V

    .line 142
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->setupAmountListener()V

    return-void
.end method

.method public final onStakingSelected(Lcom/smedialink/model/staking/StakingDetailsItem;)V
    .locals 2

    const-string v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedStakingProgramme:Lcom/smedialink/model/staking/StakingDetailsItem;

    const-wide/16 v0, 0x0

    .line 108
    iput-wide v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->selectedAmount:D

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->chartViewData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->shouldResetAmount:Z

    .line 111
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView;->updateStakingCalculatorViews()V

    .line 112
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorPresenter;->loadBalance()V

    return-void
.end method
