.class public final Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletTokenDetailsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletTokenDetailsPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletTokenDetailsPresenter.kt\ncom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,475:1\n42#2,12:476\n42#2,12:488\n42#2,12:500\n42#2,12:515\n16#3,3:512\n1#4:527\n*S KotlinDebug\n*F\n+ 1 WalletTokenDetailsPresenter.kt\ncom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter\n*L\n100#1:476,12\n184#1:488,12\n227#1:500,12\n343#1:515,12\n342#1:512,3\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private accountLevelInformation:Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;

.field private final accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

.field private final args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final horizontalActionButtonItems$delegate:Lkotlin/Lazy;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

.field private stakingMetadata:Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;

.field private final token$delegate:Lkotlin/Lazy;

.field private final walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;


# direct methods
.method public static synthetic $r8$lambda$CtB1vhsnNRu6OpcwdKyYwSRsDr4(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->openStakingReplenishCheckingAccountLevel$lambda$11(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IMotQa_v_ssv8PpZXHNSbQocOb0(Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->loadAccountLevelInfo$lambda$3(Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q3IQ7JGXz9ay4UX9CcKURXDuwEk(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->loadAccountLevelInfo$lambda$4(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$X-ZipI23EdE0PQ4Bdjxgm1LiPXE(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startAccountLevelDialog$lambda$0(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rxd9PaTHI3qAa-Ykhwpf5OYLjjI(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startBinanceReplenishScreen$lambda$12(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/wallet/details/TokenDetailsArgs;Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/i_staking/StakingInteractor;Lcom/iMe/manager/wallet/create/WalletCreateManager;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountLevelInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rxEventBus"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schedulersProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stakingInteractor"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletCreateManager"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    .line 59
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 60
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 61
    iput-object p4, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 62
    iput-object p5, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 63
    iput-object p6, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 64
    iput-object p7, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 65
    iput-object p8, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 66
    iput-object p9, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    .line 70
    new-instance p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$token$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$token$2;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->token$delegate:Lkotlin/Lazy;

    .line 71
    new-instance p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$horizontalActionButtonItems$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$horizontalActionButtonItems$2;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->horizontalActionButtonItems$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getArgs$p(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)Lcom/iMe/model/wallet/details/TokenDetailsArgs;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getRxEventBus$p(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    return-object p0
.end method

.method public static final synthetic access$getStakingMetadata$p(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->stakingMetadata:Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;

    return-object p0
.end method

.method public static final synthetic access$loadStakingDetailedMetadata(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->loadStakingDetailedMetadata()V

    return-void
.end method

.method public static final synthetic access$openStakingReplenishCheckingAccountLevel(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->openStakingReplenishCheckingAccountLevel(Lcom/iMe/model/staking/StakingDetailsItem;)V

    return-void
.end method

.method public static final synthetic access$resolveAvailableTokenActions(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Ljava/util/List;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resolveAvailableTokenActions(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$resolveToken(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resolveToken(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setAccountLevelInformation$p(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->accountLevelInformation:Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;

    return-void
.end method

.method public static final synthetic access$setStakingMetadata$p(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->stakingMetadata:Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;

    return-void
.end method

.method public static final synthetic access$setupHorizontalActionButtons(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->setupHorizontalActionButtons()V

    return-void
.end method

.method public static final synthetic access$setupRankBadge(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->setupRankBadge()V

    return-void
.end method

.method public static final synthetic access$setupStakingDetailsScreen(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->setupStakingDetailsScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V

    return-void
.end method

.method public static final synthetic access$startBinanceReceiveScreen(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startBinanceReceiveScreen(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V

    return-void
.end method

.method public static final synthetic access$startBinanceReplenishScreen(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startBinanceReplenishScreen(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V

    return-void
.end method

.method public static final synthetic access$startBinanceSwapScreen(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startBinanceSwapScreen(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V

    return-void
.end method

.method public static final synthetic access$startBuyScreen(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startBuyScreen(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$startReceiveScreen(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startReceiveScreen(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$startSendScreen(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startSendScreen(Ljava/lang/String;)V

    return-void
.end method

.method private final getHorizontalActionButtonItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->horizontalActionButtonItems$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->token$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method private final isBuyAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 246
    sget-object v0, Lcom/iMe/manager/common/FeatureAvailableManager$Token;->INSTANCE:Lcom/iMe/manager/common/FeatureAvailableManager$Token;

    invoke-virtual {v0, p1}, Lcom/iMe/manager/common/FeatureAvailableManager$Token;->isPurchaseAvailable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private final listenEvents()V
    .locals 5

    .line 341
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 16
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents;

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

    const-string/jumbo v1, "publisher\n              \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 351
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadAccountLevelInfo(ZLcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;",
            ">;)V"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 221
    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->getAccountLevelInformation$default(Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;JILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 222
    invoke-static {v0}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 223
    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$2;

    invoke-direct {v1, p1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$2;-><init>(ZLcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "private fun loadAccountL\u2026     .autoDispose()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/fork/utils/Callbacks$Callback1;Z)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p2, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-static {p0, p1, v4, v3, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic loadAccountLevelInfo$default(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;ZLcom/iMe/fork/utils/Callbacks$Callback1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 218
    sget-object p2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda2;->INSTANCE:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda2;

    .line 216
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->loadAccountLevelInfo(ZLcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method private static final loadAccountLevelInfo$lambda$3(Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 0

    return-void
.end method

.method private static final loadAccountLevelInfo$lambda$4(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final loadStakingDetailedMetadata()V
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    if-nez v1, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 182
    check-cast v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/iMe/i_staking/StakingInteractor;->getStakingDetails(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "stakingInteractor\n      \u2026(schedulersProvider.ui())"

    .line 182
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 204
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final openStakingReplenishCheckingAccountLevel(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 1

    .line 433
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startAccountLevelInformationAction(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method private static final openStakingReplenishCheckingAccountLevel$lambda$11(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 1

    const-string v0, "$stakingDetailsItem"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Lcom/iMe/model/staking/StakingDetailsItem;->getMinimalRank()Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;->getLevel()Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->isReached(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 436
    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-interface {p1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openStakingReplenishScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 439
    invoke-virtual {p0}, Lcom/iMe/model/staking/StakingDetailsItem;->getMinimalRank()Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-result-object p2

    .line 440
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {p0}, Lcom/iMe/model/staking/StakingDetailsItem;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/TokenItem;->getNetworkId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getLIME(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p0

    .line 438
    invoke-interface {p1, p2, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showLevelRequiredDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    :goto_0
    return-void
.end method

.method private final resolveAvailableTokenActions(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/details/TokenDetailsArgs;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;"
        }
    .end annotation

    .line 363
    instance-of v0, p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    new-array v0, v2, [Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 364
    move-object v2, p1

    check-cast v2, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getConvertible()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 365
    new-instance v6, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 366
    sget v8, Lorg/telegram/messenger/R$drawable;->fork_ic_exchange_27:I

    .line 367
    iget-object v7, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v9, Lorg/telegram/messenger/R$string;->wallet_token_details_transactions_swap:I

    invoke-interface {v7, v9}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 363
    new-instance v11, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$1;

    invoke-direct {v11, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v7, v6

    .line 365
    invoke-direct/range {v7 .. v13}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    move-object v6, v3

    :goto_0
    aput-object v6, v0, v5

    .line 370
    invoke-virtual {v2}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getReplenishNetworksIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v4

    if-eqz v5, :cond_1

    .line 371
    new-instance v5, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 372
    sget v7, Lorg/telegram/messenger/R$drawable;->fork_ic_buy_28:I

    .line 373
    iget-object v6, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v8, Lorg/telegram/messenger/R$string;->wallet_token_details_action_buy:I

    invoke-interface {v6, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 363
    new-instance v10, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$2;

    invoke-direct {v10, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$2;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v6, v5

    .line 371
    invoke-direct/range {v6 .. v12}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_1
    aput-object v5, v0, v4

    .line 376
    invoke-virtual {v2}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getReceivable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 377
    new-instance v3, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 378
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_ic_ask_transfer:I

    .line 379
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_token_details_action_receive:I

    invoke-interface {v2, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 363
    new-instance v8, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$3;

    invoke-direct {v8, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$3;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v4, v3

    .line 377
    invoke-direct/range {v4 .. v10}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_2
    aput-object v3, v0, v1

    .line 363
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto/16 :goto_6

    .line 384
    :cond_3
    instance-of v0, p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/iMe/model/wallet/home/AccountItem$Token;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    new-array v0, v2, [Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 386
    new-instance v2, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 387
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_send:I

    .line 388
    iget-object v6, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v8, Lorg/telegram/messenger/R$string;->wallet_token_details_details_action_send:I

    invoke-interface {v6, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 385
    new-instance v10, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$4$1;

    invoke-direct {v10, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$4$1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v6, v2

    .line 386
    invoke-direct/range {v6 .. v12}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v2, v0, v5

    .line 390
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->isBuyAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 391
    new-instance v3, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 392
    sget v6, Lorg/telegram/messenger/R$drawable;->fork_ic_buy_28:I

    .line 393
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_token_details_action_buy:I

    invoke-interface {v2, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 385
    new-instance v9, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$4$2;

    invoke-direct {v9, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$4$2;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v5, v3

    .line 391
    invoke-direct/range {v5 .. v11}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_4
    aput-object v3, v0, v4

    .line 396
    new-instance v2, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 397
    sget v6, Lorg/telegram/messenger/R$drawable;->fork_ic_ask_transfer:I

    .line 398
    iget-object v3, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_token_details_action_receive:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 385
    new-instance v9, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$4$3;

    invoke-direct {v9, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$4$3;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v5, v2

    .line 396
    invoke-direct/range {v5 .. v11}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v2, v0, v1

    .line 385
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto/16 :goto_6

    .line 403
    :cond_5
    instance-of v0, p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 404
    new-instance v3, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 405
    sget v6, Lorg/telegram/messenger/R$drawable;->fork_ic_buy_28:I

    .line 406
    iget-object v7, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v8, Lorg/telegram/messenger/R$string;->staking_details_replenish:I

    invoke-interface {v7, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 407
    iget-object v8, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->stakingMetadata:Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getRules()Lcom/iMe/storage/domain/model/staking/StakingRules;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/staking/StakingRules;->getCanDeposit()Z

    move-result v8

    if-ne v8, v4, :cond_6

    move v8, v4

    goto :goto_2

    :cond_6
    move v8, v5

    .line 403
    :goto_2
    new-instance v9, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$5;

    invoke-direct {v9, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$5;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    .line 404
    invoke-direct {v3, v6, v7, v8, v9}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    aput-object v3, v0, v5

    .line 409
    new-instance v3, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 410
    sget v6, Lorg/telegram/messenger/R$drawable;->fork_ic_ask_transfer:I

    .line 411
    iget-object v7, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v8, Lorg/telegram/messenger/R$string;->staking_details_claim:I

    invoke-interface {v7, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 412
    iget-object v8, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->stakingMetadata:Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getStats()Lcom/iMe/storage/domain/model/staking/StakingDetailedStats;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/staking/StakingDetailedStats;->isParticipated()Z

    move-result v8

    if-ne v8, v4, :cond_7

    move v8, v4

    goto :goto_3

    :cond_7
    move v8, v5

    .line 403
    :goto_3
    new-instance v9, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$6;

    invoke-direct {v9, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$6;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    .line 409
    invoke-direct {v3, v6, v7, v8, v9}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    aput-object v3, v0, v4

    .line 415
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_withdraw:I

    .line 416
    iget-object v6, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v7, Lorg/telegram/messenger/R$string;->staking_details_withdraw:I

    invoke-interface {v6, v7}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 417
    iget-object v7, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->stakingMetadata:Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getRules()Lcom/iMe/storage/domain/model/staking/StakingRules;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 418
    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/staking/StakingRules;->getCanWithdrawSafely()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/staking/StakingRules;->getCanWithdrawImmediately()Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    move v7, v4

    goto :goto_4

    :cond_9
    move v7, v5

    .line 403
    :goto_4
    new-instance v8, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$8;

    invoke-direct {v8, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$8;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    .line 414
    new-instance v9, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    invoke-direct {v9, v3, v6, v7, v8}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    aput-object v9, v0, v1

    .line 421
    new-instance v1, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 422
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_wallet_staking_dashboard_calculator:I

    .line 423
    iget-object v6, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v7, Lorg/telegram/messenger/R$string;->staking_dashboard_calculator:I

    invoke-interface {v6, v7}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 424
    iget-object v7, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->stakingMetadata:Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getRules()Lcom/iMe/storage/domain/model/staking/StakingRules;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/staking/StakingRules;->getCanDeposit()Z

    move-result v7

    if-ne v7, v4, :cond_a

    goto :goto_5

    :cond_a
    move v4, v5

    .line 403
    :goto_5
    new-instance v5, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$9;

    invoke-direct {v5, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$9;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    .line 421
    invoke-direct {v1, v3, v6, v4, v5}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    aput-object v1, v0, v2

    .line 403
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_6
    return-object p1

    :cond_b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final resolveNetworkIdForReplenish(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;
    .locals 4

    .line 470
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getReplenishNetworksIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v3}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 471
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getReplenishNetworksIds()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_2
    return-object v1
.end method

.method private final resolveToken(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 356
    instance-of v0, p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/storage/domain/utils/extentions/TokenExtKt;->toTokenDetailed(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    goto :goto_0

    .line 357
    :cond_0
    instance-of v0, p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/iMe/model/wallet/home/AccountItem$Token;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    goto :goto_0

    .line 358
    :cond_1
    instance-of v0, p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/TokenItem;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final setupHorizontalActionButtons()V
    .locals 3

    .line 166
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 167
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    instance-of v2, v1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resolveAvailableTokenActions(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->getHorizontalActionButtonItems()Ljava/util/List;

    move-result-object v1

    .line 166
    :goto_0
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->setupHorizontalActionButtons(Ljava/util/List;)V

    return-void
.end method

.method private final setupRankBadge()V
    .locals 3

    .line 173
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 174
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    instance-of v1, v1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->LIME:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isBalanceHidden()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 175
    :goto_0
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getAccountLevelMetadata()Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;->getLevel()Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v2

    .line 173
    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->setupRankBadge(ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V

    return-void
.end method

.method private final setupStakingDetailsScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 30

    move-object/from16 v0, p0

    .line 278
    iget-object v1, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->stakingMetadata:Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getStats()Lcom/iMe/storage/domain/model/staking/StakingDetailedStats;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingDetailedStats;->getProfit()Lcom/iMe/storage/domain/model/staking/StakingValues;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 279
    :goto_0
    iget-object v3, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->stakingMetadata:Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getStats()Lcom/iMe/storage/domain/model/staking/StakingDetailedStats;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/staking/StakingDetailedStats;->getDebt()Lcom/iMe/storage/domain/model/staking/StakingValues;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    .line 280
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getDebt()Ljava/math/BigDecimal;

    move-result-object v4

    .line 281
    :cond_3
    sget-object v5, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getFormattedAPY()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iMe/utils/formatter/BalanceFormatter;->parseFormattedString(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v6

    .line 282
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getFormattedAPR()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/iMe/utils/formatter/BalanceFormatter;->parseFormattedString(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v5

    .line 286
    invoke-static {v6}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v6

    const/4 v7, 0x2

    const/16 v8, 0x25

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v6, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getAnnualPercentageMode()Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    move-result-object v6

    sget-object v11, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->APY:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    if-ne v6, v11, :cond_4

    goto :goto_3

    .line 291
    :cond_4
    invoke-static {v5}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getAnnualPercentageMode()Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    move-result-object v5

    sget-object v6, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->APR:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    if-ne v5, v6, :cond_5

    goto :goto_2

    .line 297
    :cond_5
    iget-object v5, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->staking_details_apy_apr_values:I

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getFormattedAPR()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getFormattedAPY()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-interface {v5, v6, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 298
    iget-object v6, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v8, Lorg/telegram/messenger/R$string;->staking_details_apy_apr:I

    invoke-interface {v6, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 292
    :cond_6
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getFormattedAPR()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 293
    iget-object v6, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v8, Lorg/telegram/messenger/R$string;->staking_details_apr:I

    invoke-interface {v6, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 287
    :cond_7
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getFormattedAPY()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 288
    iget-object v6, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v8, Lorg/telegram/messenger/R$string;->staking_details_apy:I

    invoke-interface {v6, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_4
    move-object/from16 v16, v5

    move-object v15, v6

    if-eqz v1, :cond_8

    .line 302
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-static {v5}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v5

    if-nez v5, :cond_8

    move/from16 v18, v10

    goto :goto_5

    :cond_8
    move/from16 v18, v9

    :goto_5
    const-wide/16 v5, 0x0

    if-eqz v18, :cond_c

    .line 304
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v11

    invoke-static {v11}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/TokenItem;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;->createEmptyBalanceFor(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v19

    if-eqz v1, :cond_9

    .line 305
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    goto :goto_6

    :cond_9
    move-object v8, v2

    :goto_6
    invoke-static {v8}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v20

    if-eqz v1, :cond_a

    .line 306
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingValues;->getAsFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v1

    if-nez v1, :cond_b

    :cond_a
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->Companion:Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;

    invoke-static {v1, v5, v6, v10, v2}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;->createUSDValue$default(Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;DILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v1

    :cond_b
    move-object/from16 v22, v1

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1c

    const/16 v28, 0x0

    .line 304
    invoke-static/range {v19 .. v28}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->copy$default(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;DLcom/iMe/storage/domain/model/wallet/token/FiatValue;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;DLcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    .line 308
    iget-object v8, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 309
    sget v11, Lorg/telegram/messenger/R$string;->staking_details_profit_value:I

    new-array v7, v7, [Ljava/lang/Object;

    .line 310
    invoke-static {v1}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalanceShortText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v9

    .line 311
    invoke-static {v1}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getDollarsBalanceText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v10

    .line 308
    invoke-interface {v8, v11, v7}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_c
    const-string v1, "-"

    :goto_7
    move-object/from16 v17, v1

    .line 318
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getHasEnoughFunds()Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Lcom/iMe/model/staking/StakingProgrammeStatus;->SHORT_OF_FUNDS:Lcom/iMe/model/staking/StakingProgrammeStatus;

    :goto_8
    move-object/from16 v19, v1

    goto :goto_9

    .line 319
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getEndsAtISO()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/StringExtKt;->parseISODate(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v11

    cmp-long v1, v7, v11

    if-lez v1, :cond_e

    sget-object v1, Lcom/iMe/model/staking/StakingProgrammeStatus;->ACTIVE:Lcom/iMe/model/staking/StakingProgrammeStatus;

    goto :goto_8

    .line 320
    :cond_e
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v4, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-lez v1, :cond_f

    sget-object v1, Lcom/iMe/model/staking/StakingProgrammeStatus;->WITHDRAWAL_AVAILABLE:Lcom/iMe/model/staking/StakingProgrammeStatus;

    goto :goto_8

    .line 321
    :cond_f
    sget-object v1, Lcom/iMe/model/staking/StakingProgrammeStatus;->CLOSED:Lcom/iMe/model/staking/StakingProgrammeStatus;

    goto :goto_8

    .line 324
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 325
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/TokenItem;->getAvatarUrl()Ljava/lang/String;

    move-result-object v12

    .line 326
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/TokenItem;->getName()Ljava/lang/String;

    move-result-object v13

    .line 327
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;->createEmptyBalanceFor(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v20

    .line 328
    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v21

    if-eqz v3, :cond_10

    .line 329
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/staking/StakingValues;->getAsFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v1

    if-nez v1, :cond_11

    :cond_10
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->Companion:Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;

    invoke-static {v1, v5, v6, v10, v2}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;->createUSDValue$default(Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;DILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v1

    :cond_11
    move-object/from16 v23, v1

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1c

    const/16 v29, 0x0

    .line 327
    invoke-static/range {v20 .. v29}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->copy$default(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;DLcom/iMe/storage/domain/model/wallet/token/FiatValue;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;DLcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    .line 330
    invoke-static {v1}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalanceShortText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v14

    .line 324
    invoke-interface/range {v11 .. v19}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->setupStakingDetailsScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/model/staking/StakingProgrammeStatus;)V

    return-void
.end method

.method private final setupWithTokenType(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V
    .locals 1

    .line 269
    instance-of v0, p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v0, :cond_0

    .line 270
    check-cast p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->setupStakingDetailsScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->setupTransactionsScreen(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    :goto_0
    return-void
.end method

.method private static final startAccountLevelDialog$lambda$0(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    const-string v0, "accountLevelInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showAccountLevelDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V

    return-void
.end method

.method private final startAccountLevelInformationAction(Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;",
            ">;)V"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->accountLevelInformation:Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;

    if-eqz v0, :cond_0

    .line 210
    invoke-interface {p1, v0}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 212
    invoke-direct {p0, v0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->loadAccountLevelInfo(ZLcom/iMe/fork/utils/Callbacks$Callback1;)V

    :goto_0
    return-void
.end method

.method private final startBinanceReceiveScreen(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 1

    .line 466
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-static {p1}, Lcom/iMe/mapper/wallet/select/SelectableMappingKt;->mapToDetailedToken(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openBinanceReceiveScreen(Lcom/iMe/model/wallet/crypto/TokenItem;)V

    return-void
.end method

.method private final startBinanceReplenishScreen(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showRequiredWalletCreatedDialog(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getBinanceUserInfo()Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;->getInfo()Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;->isVerified()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showRequiredVerifyDialog()V

    goto :goto_0

    .line 461
    :cond_2
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-static {p1}, Lcom/iMe/storage/domain/utils/extentions/TokenExtKt;->toTokenDetailed(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resolveNetworkIdForReplenish(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openBinanceReplenishScreen(Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final startBinanceReplenishScreen$lambda$12(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startChooseWalletOptionsFlow(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method

.method private final startBinanceSwapScreen(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getBinanceUserInfo()Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;->getInfo()Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;->isVerified()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 449
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showRequiredVerifyDialog()V

    goto :goto_1

    .line 450
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-static {p1}, Lcom/iMe/mapper/wallet/select/SelectableMappingKt;->mapToDetailedToken(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openBinanceSwapScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    :goto_1
    return-void
.end method

.method private final startBuyScreen(Ljava/lang/String;)V
    .locals 8

    .line 259
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 260
    new-instance v7, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;

    invoke-virtual {v1, p1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;->resolveByNetworkId(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 259
    invoke-interface {v0, v7}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openBuyScreen(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    return-void
.end method

.method private final startReceiveScreen(Ljava/lang/String;)V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v1, v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/domain/model/crypto/Wallet;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    .line 251
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 253
    invoke-static {v1, v0}, Lcom/iMe/utils/helper/wallet/CryptoHelper;->formatAddressQR(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-interface {v2, v1, v0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openReceiveScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final startSendScreen(Ljava/lang/String;)V
    .locals 2

    .line 265
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openSendScreen(Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public attachViewState(Lcom/iMe/manager/wallet/create/WalletCreateManagerView;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->attachViewState(Lcom/iMe/manager/wallet/create/WalletCreateManagerView;)V

    return-void
.end method

.method public final changeRankVisibility(Z)V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 98
    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->changeLevelVisibility(Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 99
    invoke-static {p1}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 100
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 106
    invoke-static {p0, p1, v0, v1, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 157
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->onDestroy()V

    .line 158
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->onDetachViewState()V

    return-void
.end method

.method public onDetachViewState()V
    .locals 1

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->onDetachViewState()V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 3

    .line 146
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string/jumbo v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->attachViewState(Lcom/iMe/manager/wallet/create/WalletCreateManagerView;)V

    .line 147
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->setupWithTokenType(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    .line 148
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->setupHorizontalActionButtons()V

    .line 149
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->listenEvents()V

    .line 151
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    instance-of v0, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->loadStakingDetailedMetadata()V

    goto :goto_0

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->LIME:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->loadAccountLevelInfo$default(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;ZLcom/iMe/fork/utils/Callbacks$Callback1;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final openTokenInformationScreen()V
    .locals 2

    .line 138
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openTokenInformationScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-void
.end method

.method public final reload()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    instance-of v0, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->loadStakingDetailedMetadata()V

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    :goto_0
    return-void
.end method

.method public final selectTab(I)V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->onTabSelected(I)V

    return-void
.end method

.method public final setupNavigationRouter()V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->onSetupNavigationRouter()V

    return-void
.end method

.method public final startAccountLevelDialog()V
    .locals 1

    .line 86
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startAccountLevelInformationAction(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public startChooseWalletOptionsFlow(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 1

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->startChooseWalletOptionsFlow(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method

.method public final startStakingConditionsDialog()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    instance-of v0, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    check-cast v1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showStakingConditionsDialog(Lcom/iMe/model/staking/StakingDetailsItem;)V

    return-void
.end method

.method public final startTokenDistributionDialog(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 9

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 111
    new-instance v1, Lcom/iMe/model/statistic/StatisticDiagramModel;

    .line 112
    invoke-static {p1}, Lcom/iMe/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;->getTotalBalanceText(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/iMe/model/statistic/StatisticDiagramModel$DiagramItem;

    .line 114
    new-instance v4, Lcom/iMe/model/statistic/StatisticDiagramModel$DiagramItem;

    .line 115
    iget-object v5, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->binance_token_details_distribution_spot:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 116
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_blue:I

    .line 117
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getSpot()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getTotal()D

    move-result-wide v7

    .line 114
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/iMe/model/statistic/StatisticDiagramModel$DiagramItem;-><init>(Ljava/lang/String;ID)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 119
    new-instance v4, Lcom/iMe/model/statistic/StatisticDiagramModel$DiagramItem;

    .line 120
    iget-object v5, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->binance_token_details_distribution_margin:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 121
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_golden:I

    .line 122
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getMargin()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getTotal()D

    move-result-wide v7

    .line 119
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/iMe/model/statistic/StatisticDiagramModel$DiagramItem;-><init>(Ljava/lang/String;ID)V

    const/4 p1, 0x1

    aput-object v4, v3, p1

    .line 113
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 111
    invoke-direct {v1, v2, p1}, Lcom/iMe/model/statistic/StatisticDiagramModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 110
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showStatisticDialog(Lcom/iMe/model/statistic/StatisticDiagramModel;)V

    return-void
.end method
