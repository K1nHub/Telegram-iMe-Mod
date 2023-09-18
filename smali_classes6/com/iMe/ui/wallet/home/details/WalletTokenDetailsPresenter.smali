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
    value = "SMAP\nWalletTokenDetailsPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletTokenDetailsPresenter.kt\ncom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,723:1\n63#2,12:724\n63#2,12:736\n63#2,12:748\n63#2,12:760\n63#2,12:775\n63#2,12:787\n68#2,7:799\n63#2,12:806\n16#3,3:772\n1#4:818\n*S KotlinDebug\n*F\n+ 1 WalletTokenDetailsPresenter.kt\ncom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter\n*L\n118#1:724,12\n227#1:736,12\n255#1:748,12\n297#1:760,12\n440#1:775,12\n567#1:787,12\n618#1:799,7\n655#1:806,12\n439#1:772,3\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private accountLevelInformation:Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;

.field private final accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

.field private final args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final horizontalActionButtonItems$delegate:Lkotlin/Lazy;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

.field private stakingMetadata:Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;

.field private final telegramApi:Lcom/iMe/manager/TelegramApi;

.field private final token$delegate:Lkotlin/Lazy;

.field private final walletBotId$delegate:Lkotlin/Lazy;

.field private final walletBotUsername$delegate:Lkotlin/Lazy;

.field private final walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;


# direct methods
.method public static synthetic $r8$lambda$AFbFG66X0OQai0GTbUn0swxMB_w(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startBinanceReplenishScreen$lambda$26(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EhasOURt3MpupBXh2yiNWWtn6zw(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->showCryptoBoxRefreshConfirmation$lambda$3(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Oi1LkVaudDo8Hc9XCdPIF0nCj1o(Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->loadAccountLevelInfo$lambda$6(Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QIvUx7EePtXghhMk59WICo34Evc(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;JLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->onWalletBotAdminRightsRequired$lambda$22(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T7VbcV3zC_AZMTgR83ERaHbR5kA(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->prepareCryptoBoxMessageRefresh$lambda$19(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$X-ZipI23EdE0PQ4Bdjxgm1LiPXE(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startAccountLevelDialog$lambda$0(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n0cH15FlY59JZK3MqUvgb4NbYl0(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->openStakingReplenishCheckingAccountLevel$lambda$25(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qhyrN3C8rFJIsDZfe5_rRRNG_2U(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->loadAccountLevelInfo$lambda$7(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/model/wallet/details/TokenDetailsArgs;Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/i_staking/StakingInteractor;Lcom/iMe/manager/TelegramApi;Lcom/iMe/manager/wallet/create/WalletCreateManager;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountLevelInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoBoxInteractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rxEventBus"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schedulersProvider"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stakingInteractor"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "telegramApi"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletCreateManager"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    .line 72
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 73
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 74
    iput-object p4, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

    .line 75
    iput-object p5, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 76
    iput-object p6, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 77
    iput-object p7, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 78
    iput-object p8, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 79
    iput-object p9, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 80
    iput-object p10, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    .line 81
    iput-object p11, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    .line 84
    new-instance p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$token$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$token$2;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->token$delegate:Lkotlin/Lazy;

    .line 85
    new-instance p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$horizontalActionButtonItems$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$horizontalActionButtonItems$2;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->horizontalActionButtonItems$delegate:Lkotlin/Lazy;

    .line 88
    sget-object p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$walletBotId$2;->INSTANCE:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$walletBotId$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->walletBotId$delegate:Lkotlin/Lazy;

    .line 89
    sget-object p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$walletBotUsername$2;->INSTANCE:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$walletBotUsername$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->walletBotUsername$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getArgs$p(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)Lcom/iMe/model/wallet/details/TokenDetailsArgs;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getRxEventBus$p(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    return-object p0
.end method

.method public static final synthetic access$getStakingMetadata$p(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->stakingMetadata:Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;

    return-object p0
.end method

.method public static final synthetic access$getTelegramApi$p(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)Lcom/iMe/manager/TelegramApi;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    return-object p0
.end method

.method public static final synthetic access$getWalletBotId(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)J
    .locals 2

    .line 69
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->getWalletBotId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getWalletBotUsername(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->getWalletBotUsername()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadStakingDetailedMetadata(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->loadStakingDetailedMetadata()V

    return-void
.end method

.method public static final synthetic access$onWalletBotAdminRightsRequired(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;JLjava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->onWalletBotAdminRightsRequired(JLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$openStakingReplenishCheckingAccountLevel(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->openStakingReplenishCheckingAccountLevel(Lcom/iMe/model/staking/StakingDetailsItem;)V

    return-void
.end method

.method public static final synthetic access$prepareCryptoBoxMessageRefresh(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Ljava/lang/String;J)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->prepareCryptoBoxMessageRefresh(Ljava/lang/String;J)V

    return-void
.end method

.method public static final synthetic access$prepareCryptoBoxSuspension(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->prepareCryptoBoxSuspension(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$reloadCryptoBoxInfo(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->reloadCryptoBoxInfo()V

    return-void
.end method

.method public static final synthetic access$resolveAvailableTokenActions(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Ljava/util/List;
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resolveAvailableTokenActions(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$resolveToken(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resolveToken(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setAccountLevelInformation$p(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->accountLevelInformation:Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;

    return-void
.end method

.method public static final synthetic access$setStakingMetadata$p(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->stakingMetadata:Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;

    return-void
.end method

.method public static final synthetic access$setupCryptoBoxDetailsScreen(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->setupCryptoBoxDetailsScreen(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;)V

    return-void
.end method

.method public static final synthetic access$setupHorizontalActionButtons(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->setupHorizontalActionButtons()V

    return-void
.end method

.method public static final synthetic access$setupRankBadge(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->setupRankBadge()V

    return-void
.end method

.method public static final synthetic access$setupStakingDetailsScreen(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->setupStakingDetailsScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V

    return-void
.end method

.method public static final synthetic access$startBinanceReceiveScreen(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startBinanceReceiveScreen(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V

    return-void
.end method

.method public static final synthetic access$startBinanceReplenishScreen(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startBinanceReplenishScreen(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V

    return-void
.end method

.method public static final synthetic access$startBinanceSwapScreen(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startBinanceSwapScreen(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V

    return-void
.end method

.method public static final synthetic access$startBuyScreen(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startBuyScreen(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$startReceiveScreen(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startReceiveScreen(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$startSendScreen(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startSendScreen(Ljava/lang/String;)V

    return-void
.end method

.method private final getCryptoBoxActions(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;"
        }
    .end annotation

    .line 548
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getStatus()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->ACTIVE:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    const/4 v1, 0x0

    .line 550
    new-instance v9, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 551
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_block:I

    .line 552
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->cryptobox_details_stop:I

    invoke-interface {v2, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 549
    new-instance v6, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$getCryptoBoxActions$1$1;

    invoke-direct {v6, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$getCryptoBoxActions$1$1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, v9

    .line 550
    invoke-direct/range {v2 .. v8}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v9, v0, v1

    const/4 v1, 0x1

    .line 554
    new-instance v9, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 555
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_wallet_restore:I

    .line 556
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->cryptobox_details_restore:I

    invoke-interface {v2, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 549
    new-instance v6, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$getCryptoBoxActions$1$2;

    invoke-direct {v6, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$getCryptoBoxActions$1$2;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;)V

    move-object v2, v9

    .line 554
    invoke-direct/range {v2 .. v8}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v9, v0, v1

    .line 549
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 559
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
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

    .line 85
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->horizontalActionButtonItems$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->token$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method private final getWalletBotId()J
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->walletBotId$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private final getWalletBotUsername()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->walletBotUsername$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final isBuyAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 316
    sget-object v0, Lcom/iMe/manager/common/FeatureAvailableManager$Token;->INSTANCE:Lcom/iMe/manager/common/FeatureAvailableManager$Token;

    invoke-virtual {v0, p1}, Lcom/iMe/manager/common/FeatureAvailableManager$Token;->isPurchaseAvailable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private final listenEvents()V
    .locals 5

    .line 438
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 16
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/iMe/storage/domain/utils/rx/event/RxEvent;

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

    const-string/jumbo v1, "publisher\n            .o\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 449
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

    .line 290
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 291
    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->getAccountLevelInformation$default(Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;JILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 292
    invoke-static {v0}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 293
    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$2;

    invoke-direct {v1, p1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$2;-><init>(ZLcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "private fun loadAccountL\u2026     .autoDispose()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/fork/utils/Callbacks$Callback1;Z)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p2, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
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

    .line 288
    sget-object p2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda2;->INSTANCE:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda2;

    .line 286
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->loadAccountLevelInfo(ZLcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method private static final loadAccountLevelInfo$lambda$6(Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 0

    return-void
.end method

.method private static final loadAccountLevelInfo$lambda$7(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final loadStakingDetailedMetadata()V
    .locals 5

    .line 223
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    if-nez v1, :cond_0

    return-void

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 225
    check-cast v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/iMe/i_staking/StakingInteractor;->getStakingDetails(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "stakingInteractor\n      \u2026(schedulersProvider.ui())"

    .line 225
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 247
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final onWalletBotAdminRightsRequired(JLjava/lang/String;)V
    .locals 7

    .line 638
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 639
    new-instance v1, Lcom/iMe/model/dialog/DialogModel;

    .line 640
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->cryptobox_create_wallet_bot_amin_rights_confirmation_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 641
    iget-object v3, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->cryptobox_create_wallet_bot_amin_rights_confirmation_description:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 642
    iget-object v4, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 643
    sget v5, Lorg/telegram/messenger/R$string;->Allow:I

    const-string v6, "Allow"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 639
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    new-instance v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;JLjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final onWalletBotAdminRightsRequired$lambda$22(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;JLjava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$boxId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->getWalletBotId()J

    move-result-wide v2

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openAddAdminScreen(JJLjava/lang/String;)V

    return-void
.end method

.method private final openStakingReplenishCheckingAccountLevel(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 1

    .line 672
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startAccountLevelInformationAction(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method private static final openStakingReplenishCheckingAccountLevel$lambda$25(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 1

    const-string v0, "$stakingDetailsItem"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Lcom/iMe/model/staking/StakingDetailsItem;->getMinimalRank()Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;->getLevel()Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->isReached(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 675
    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-interface {p1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openStakingReplenishScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V

    goto :goto_0

    .line 677
    :cond_0
    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 678
    invoke-virtual {p0}, Lcom/iMe/model/staking/StakingDetailsItem;->getMinimalRank()Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-result-object p2

    .line 679
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {p0}, Lcom/iMe/model/staking/StakingDetailsItem;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/TokenItem;->getNetworkId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getLIME(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p0

    .line 677
    invoke-interface {p1, p2, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showLevelRequiredDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    :goto_0
    return-void
.end method

.method private final prepareCryptoBoxMessageRefresh(Ljava/lang/String;J)V
    .locals 8

    .line 580
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string p2, "-100"

    const/4 p3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 581
    invoke-static {v0, p2, p3, v6, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    const-string v1, "-100"

    const-string v2, "-"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 583
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-static {v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 586
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    neg-long v3, v0

    .line 587
    invoke-interface {v2, v3, v4}, Lcom/iMe/manager/TelegramApi;->getChatInfoById(J)Lio/reactivex/Observable;

    move-result-object v2

    .line 588
    new-instance v3, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1;

    invoke-direct {v3, p0, p2, v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;ZJ)V

    new-instance p2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda7;

    invoke-direct {p2, v3}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    .line 616
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {p2, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    const-string/jumbo v2, "private fun prepareCrypt\u2026     .autoDispose()\n    }"

    .line 588
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    const-string/jumbo v3, "viewState"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/iMe/ui/base/mvp/base/BaseView;

    invoke-static {p2, v2, p3, v6, v7}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p2

    .line 619
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p3

    check-cast p3, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$$inlined$subscribeWithErrorHandle$1;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$$inlined$subscribeWithErrorHandle$1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Ljava/lang/String;J)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$$inlined$subscribeWithErrorHandle$2;

    invoke-direct {v0, p3, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxMessageRefresh$$inlined$subscribeWithErrorHandle$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    .line 70
    new-instance p3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p3, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p2, p1, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 634
    invoke-static {p0, p1, v7, p2, v7}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final prepareCryptoBoxMessageRefresh$lambda$19(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final prepareCryptoBoxSuspension(Ljava/lang/String;)V
    .locals 4

    .line 563
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

    .line 564
    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->getSuspensionPrepareData(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 565
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoBoxInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string/jumbo v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 567
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxSuspension$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxSuspension$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxSuspension$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$prepareCryptoBoxSuspension$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private final refreshCryptoBoxMessage(Ljava/lang/String;)V
    .locals 4

    .line 651
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

    .line 652
    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->sendMessageRefresh(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 653
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoBoxInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string/jumbo v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 655
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$refreshCryptoBoxMessage$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$refreshCryptoBoxMessage$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$refreshCryptoBoxMessage$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$refreshCryptoBoxMessage$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private final reloadCryptoBoxInfo()V
    .locals 5

    .line 251
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;

    if-nez v1, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

    .line 253
    check-cast v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;->getCryptoBoxInfo()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->getCryptoBoxInfo(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoBoxInteractor\n    \u2026(schedulersProvider.ui())"

    .line 253
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$reloadCryptoBoxInfo$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$reloadCryptoBoxInfo$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$reloadCryptoBoxInfo$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$reloadCryptoBoxInfo$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 274
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final resolveAvailableTokenActions(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Ljava/util/List;
    .locals 19
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 462
    instance-of v2, v1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v2

    .line 463
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 464
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getConvertible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 466
    new-instance v5, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 467
    sget v7, Lorg/telegram/messenger/R$drawable;->fork_ic_exchange_27:I

    .line 468
    iget-object v6, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v8, Lorg/telegram/messenger/R$string;->wallet_token_details_transactions_swap:I

    invoke-interface {v6, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 465
    new-instance v10, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$1$1$1;

    invoke-direct {v10, v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$1$1$1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v6, v5

    .line 466
    invoke-direct/range {v6 .. v12}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 465
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_0
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getReplenishNetworksIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v3, v5

    if-eqz v3, :cond_1

    .line 474
    new-instance v3, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 475
    sget v6, Lorg/telegram/messenger/R$drawable;->fork_ic_buy_28:I

    .line 476
    iget-object v5, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v7, Lorg/telegram/messenger/R$string;->wallet_token_details_action_buy:I

    invoke-interface {v5, v7}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 473
    new-instance v9, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$1$1$2;

    invoke-direct {v9, v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$1$1$2;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v5, v3

    .line 474
    invoke-direct/range {v5 .. v11}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 473
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_1
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getReceivable()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 482
    new-instance v2, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 483
    sget v6, Lorg/telegram/messenger/R$drawable;->fork_ic_ask_transfer:I

    .line 484
    iget-object v3, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_token_details_action_receive:I

    invoke-interface {v3, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 481
    new-instance v9, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$1$1$3;

    invoke-direct {v9, v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$1$1$3;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v5, v2

    .line 482
    invoke-direct/range {v5 .. v11}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 481
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 491
    :cond_2
    instance-of v2, v1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/iMe/model/wallet/home/AccountItem$Token;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    .line 492
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 494
    new-instance v2, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 495
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_send:I

    .line 496
    iget-object v3, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_token_details_details_action_send:I

    invoke-interface {v3, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 493
    new-instance v9, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$2$1$1;

    invoke-direct {v9, v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$2$1$1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v5, v2

    .line 494
    invoke-direct/range {v5 .. v11}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 493
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->isBuyAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 501
    new-instance v2, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 502
    sget v6, Lorg/telegram/messenger/R$drawable;->fork_ic_exchange_27:I

    .line 503
    iget-object v3, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_token_details_transactions_swap:I

    invoke-interface {v3, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 500
    new-instance v9, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$2$1$2;

    invoke-direct {v9, v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$2$1$2;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v5, v2

    .line 501
    invoke-direct/range {v5 .. v11}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 500
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_3
    new-instance v2, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 508
    sget v13, Lorg/telegram/messenger/R$drawable;->fork_ic_ask_transfer:I

    .line 509
    iget-object v3, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_token_details_action_receive:I

    invoke-interface {v3, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    .line 506
    new-instance v3, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$2$1$3;

    invoke-direct {v3, v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$2$1$3;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object v12, v2

    move-object/from16 v16, v3

    .line 507
    invoke-direct/range {v12 .. v18}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 506
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 515
    :cond_4
    instance-of v2, v1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v2, :cond_a

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 516
    new-instance v4, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 517
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_ic_buy_28:I

    .line 518
    iget-object v6, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v7, Lorg/telegram/messenger/R$string;->staking_details_replenish:I

    invoke-interface {v6, v7}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 519
    iget-object v7, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->stakingMetadata:Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getRules()Lcom/iMe/storage/domain/model/staking/StakingRules;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/staking/StakingRules;->getCanDeposit()Z

    move-result v7

    if-ne v7, v3, :cond_5

    move v7, v3

    goto :goto_0

    :cond_5
    move v7, v8

    .line 515
    :goto_0
    new-instance v9, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$3;

    invoke-direct {v9, v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$3;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    .line 516
    invoke-direct {v4, v5, v6, v7, v9}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    aput-object v4, v2, v8

    .line 521
    new-instance v4, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 522
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_ic_ask_transfer:I

    .line 523
    iget-object v6, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v7, Lorg/telegram/messenger/R$string;->staking_details_claim:I

    invoke-interface {v6, v7}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 524
    iget-object v7, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->stakingMetadata:Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getStats()Lcom/iMe/storage/domain/model/staking/StakingDetailedStats;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/staking/StakingDetailedStats;->isParticipated()Z

    move-result v7

    if-ne v7, v3, :cond_6

    move v7, v3

    goto :goto_1

    :cond_6
    move v7, v8

    .line 515
    :goto_1
    new-instance v9, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$4;

    invoke-direct {v9, v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$4;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    .line 521
    invoke-direct {v4, v5, v6, v7, v9}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    aput-object v4, v2, v3

    const/4 v4, 0x2

    .line 527
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_ic_withdraw:I

    .line 528
    iget-object v6, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v7, Lorg/telegram/messenger/R$string;->staking_details_withdraw:I

    invoke-interface {v6, v7}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 529
    iget-object v7, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->stakingMetadata:Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getRules()Lcom/iMe/storage/domain/model/staking/StakingRules;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 530
    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/staking/StakingRules;->getCanWithdrawSafely()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/staking/StakingRules;->getCanWithdrawImmediately()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    move v7, v3

    goto :goto_2

    :cond_8
    move v7, v8

    .line 515
    :goto_2
    new-instance v9, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$6;

    invoke-direct {v9, v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$6;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    .line 526
    new-instance v10, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    invoke-direct {v10, v5, v6, v7, v9}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    aput-object v10, v2, v4

    const/4 v4, 0x3

    .line 533
    new-instance v5, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 534
    sget v6, Lorg/telegram/messenger/R$drawable;->fork_wallet_staking_dashboard_calculator:I

    .line 535
    iget-object v7, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v9, Lorg/telegram/messenger/R$string;->staking_dashboard_calculator:I

    invoke-interface {v7, v9}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 536
    iget-object v9, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->stakingMetadata:Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getRules()Lcom/iMe/storage/domain/model/staking/StakingRules;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/staking/StakingRules;->getCanDeposit()Z

    move-result v9

    if-ne v9, v3, :cond_9

    goto :goto_3

    :cond_9
    move v3, v8

    .line 515
    :goto_3
    new-instance v8, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$7;

    invoke-direct {v8, v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$7;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    .line 533
    invoke-direct {v5, v6, v7, v3, v8}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    aput-object v5, v2, v4

    .line 515
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_4

    .line 543
    :cond_a
    instance-of v2, v1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;

    if-eqz v2, :cond_c

    check-cast v1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;->getCryptoBoxInfo()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->getCryptoBoxActions(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;)Ljava/util/List;

    move-result-object v4

    :cond_b
    :goto_4
    return-object v4

    :cond_c
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1
.end method

.method private final resolveNetworkIdForReplenish(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;
    .locals 4

    .line 719
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getReplenishNetworksIds()Ljava/util/List;

    move-result-object p1

    .line 720
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

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

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_2
    return-object v1
.end method

.method private final resolveToken(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 454
    instance-of v0, p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/storage/domain/utils/extentions/TokenExtKt;->toTokenDetailed(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    goto :goto_0

    .line 455
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

    .line 456
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

    goto :goto_0

    .line 457
    :cond_2
    instance-of v0, p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;->getCryptoBoxInfo()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getRewardToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final setupCryptoBoxDetailsScreen(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;)V
    .locals 12

    .line 352
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 353
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getExplorer()Lcom/iMe/storage/domain/model/crypto/Network$Explorer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network$Explorer;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getChat()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    .line 355
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getChat()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;->getId()J

    move-result-wide v4

    .line 356
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getChat()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;->getName()Ljava/lang/String;

    move-result-object v6

    .line 357
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getFullName()Ljava/lang/String;

    move-result-object v7

    .line 358
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getDescription()Ljava/lang/String;

    move-result-object v8

    .line 359
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getMembersText()Ljava/lang/String;

    move-result-object v9

    .line 360
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$setupCryptoBoxDetailsScreen$1$1;

    sget-object v10, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    invoke-direct {v0, v10}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$setupCryptoBoxDetailsScreen$1$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getBalanceText(Lkotlin/jvm/functions/Function2;)Ljava/lang/String;

    move-result-object v10

    .line 361
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getStatus()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    move-result-object v11

    .line 352
    invoke-interface/range {v1 .. v11}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->setupCryptoBoxDetailsScreen(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;)V

    return-void
.end method

.method private final setupHorizontalActionButtons()V
    .locals 3

    .line 203
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 204
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    .line 205
    instance-of v2, v1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 206
    :cond_0
    instance-of v2, v1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;

    :goto_0
    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resolveAvailableTokenActions(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->getHorizontalActionButtonItems()Ljava/util/List;

    move-result-object v1

    .line 203
    :goto_1
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->renderHorizontalActionButtons(Ljava/util/List;)V

    return-void
.end method

.method private final setupRankBadge()V
    .locals 3

    .line 214
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 215
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    instance-of v1, v1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    if-eqz v1, :cond_0

    .line 216
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

    .line 217
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isBalanceHidden()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 218
    :goto_0
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getAccountLevelMetadata()Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;->getLevel()Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v2

    .line 214
    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->setupRankBadge(ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V

    return-void
.end method

.method private final setupStakingDetailsScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 31

    move-object/from16 v0, p0

    .line 368
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

    .line 369
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

    .line 370
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getDebt()Ljava/math/BigDecimal;

    move-result-object v4

    .line 371
    :cond_3
    sget-object v5, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getFormattedAPY()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iMe/utils/formatter/BalanceFormatter;->parseFormattedString(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v6

    .line 372
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getFormattedAPR()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/iMe/utils/formatter/BalanceFormatter;->parseFormattedString(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v5

    .line 376
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

    .line 381
    :cond_4
    invoke-static {v5}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getAnnualPercentageMode()Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    move-result-object v5

    sget-object v6, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->APR:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    if-ne v5, v6, :cond_5

    goto :goto_2

    .line 387
    :cond_5
    iget-object v5, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 388
    sget v6, Lorg/telegram/messenger/R$string;->staking_details_apy_apr_values:I

    new-array v8, v7, [Ljava/lang/Object;

    .line 389
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getFormattedAPR()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    .line 390
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getFormattedAPY()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    .line 387
    invoke-interface {v5, v6, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 392
    iget-object v6, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v8, Lorg/telegram/messenger/R$string;->staking_details_apy_apr:I

    invoke-interface {v6, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 382
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

    .line 383
    iget-object v6, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v8, Lorg/telegram/messenger/R$string;->staking_details_apr:I

    invoke-interface {v6, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 377
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

    .line 378
    iget-object v6, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v8, Lorg/telegram/messenger/R$string;->staking_details_apy:I

    invoke-interface {v6, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_4
    move-object/from16 v17, v5

    move-object/from16 v16, v6

    if-eqz v1, :cond_8

    .line 396
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-static {v5}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v5

    if-nez v5, :cond_8

    move/from16 v19, v10

    goto :goto_5

    :cond_8
    move/from16 v19, v9

    :goto_5
    const-wide/16 v5, 0x0

    if-eqz v19, :cond_c

    .line 398
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;

    .line 399
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v11

    invoke-static {v11}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/TokenItem;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;->createEmptyBalanceFor(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v20

    if-eqz v1, :cond_9

    .line 401
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

    move-result-wide v21

    if-eqz v1, :cond_a

    .line 402
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingValues;->getAsFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v1

    if-nez v1, :cond_b

    :cond_a
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->Companion:Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;

    invoke-static {v1, v5, v6, v10, v2}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;->createUSDValue$default(Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;DILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v1

    :cond_b
    move-object/from16 v23, v1

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1c

    const/16 v29, 0x0

    .line 400
    invoke-static/range {v20 .. v29}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->copy$default(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;DLcom/iMe/storage/domain/model/wallet/token/FiatValue;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;DLcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    .line 404
    iget-object v8, v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 405
    sget v11, Lorg/telegram/messenger/R$string;->staking_details_profit_value:I

    new-array v7, v7, [Ljava/lang/Object;

    .line 406
    invoke-static {v1}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalanceShortText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v9

    .line 407
    invoke-static {v1}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getDollarsBalanceText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v10

    .line 404
    invoke-interface {v8, v11, v7}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_c
    const-string v1, "-"

    :goto_7
    move-object/from16 v18, v1

    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getHasEnoughFunds()Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Lcom/iMe/model/staking/StakingProgrammeStatus;->SHORT_OF_FUNDS:Lcom/iMe/model/staking/StakingProgrammeStatus;

    :goto_8
    move-object/from16 v20, v1

    goto :goto_9

    .line 415
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

    .line 416
    :cond_e
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v4, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-lez v1, :cond_f

    sget-object v1, Lcom/iMe/model/staking/StakingProgrammeStatus;->WITHDRAWAL_AVAILABLE:Lcom/iMe/model/staking/StakingProgrammeStatus;

    goto :goto_8

    .line 417
    :cond_f
    sget-object v1, Lcom/iMe/model/staking/StakingProgrammeStatus;->CLOSED:Lcom/iMe/model/staking/StakingProgrammeStatus;

    goto :goto_8

    .line 420
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 421
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/TokenItem;->getNetworkId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network;->getExplorer()Lcom/iMe/storage/domain/model/crypto/Network$Explorer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network$Explorer;->getLogoUrl()Ljava/lang/String;

    move-result-object v12

    .line 422
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/TokenItem;->getAvatarUrl()Ljava/lang/String;

    move-result-object v13

    .line 423
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/staking/StakingDetailsItem;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/TokenItem;->getName()Ljava/lang/String;

    move-result-object v14

    .line 424
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;->createEmptyBalanceFor(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v21

    .line 425
    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v22

    if-eqz v3, :cond_10

    .line 426
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/staking/StakingValues;->getAsFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v1

    if-nez v1, :cond_11

    :cond_10
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->Companion:Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;

    invoke-static {v1, v5, v6, v10, v2}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;->createUSDValue$default(Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;DILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v1

    :cond_11
    move-object/from16 v24, v1

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1c

    const/16 v30, 0x0

    .line 424
    invoke-static/range {v21 .. v30}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->copy$default(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;DLcom/iMe/storage/domain/model/wallet/token/FiatValue;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;DLcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    .line 427
    invoke-static {v1}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalanceShortText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v15

    .line 420
    invoke-interface/range {v11 .. v20}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->setupStakingDetailsScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/model/staking/StakingProgrammeStatus;)V

    return-void
.end method

.method private final setupWithTokenType(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V
    .locals 1

    .line 344
    instance-of v0, p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->setupStakingDetailsScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V

    goto :goto_0

    .line 345
    :cond_0
    instance-of v0, p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;->getCryptoBoxInfo()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->setupCryptoBoxDetailsScreen(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;)V

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->setupTransactionsScreen(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    :goto_0
    return-void
.end method

.method private static final showCryptoBoxRefreshConfirmation$lambda$3(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$boxId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->refreshCryptoBoxMessage(Ljava/lang/String;)V

    return-void
.end method

.method private static final startAccountLevelDialog$lambda$0(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
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

    .line 278
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->accountLevelInformation:Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;

    if-eqz v0, :cond_0

    .line 280
    invoke-interface {p1, v0}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 282
    invoke-direct {p0, v0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->loadAccountLevelInfo(ZLcom/iMe/fork/utils/Callbacks$Callback1;)V

    :goto_0
    return-void
.end method

.method private final startBinanceReceiveScreen(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 1

    .line 715
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

    .line 695
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showRequiredWalletCreatedDialog(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 701
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

    .line 702
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showRequiredVerifyDialog()V

    goto :goto_0

    .line 706
    :cond_2
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 707
    invoke-static {p1}, Lcom/iMe/storage/domain/utils/extentions/TokenExtKt;->toTokenDetailed(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v1

    .line 708
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resolveNetworkIdForReplenish(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object p1

    .line 706
    invoke-interface {v0, v1, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openBinanceReplenishScreen(Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final startBinanceReplenishScreen$lambda$26(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startChooseWalletOptionsFlow(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method

.method private final startBinanceSwapScreen(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 2

    .line 687
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

    .line 688
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

    .line 689
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
    .locals 4

    .line 329
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 330
    new-instance v1, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    .line 331
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    .line 332
    sget-object v3, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;

    invoke-virtual {v3, p1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;->resolveByNetworkId(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v3

    .line 330
    invoke-direct {v1, v2, v3, p1}, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;)V

    .line 329
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openBuyScreen(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    return-void
.end method

.method private final startReceiveScreen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 319
    invoke-static {p2}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object p2

    .line 320
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0, p2}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/domain/model/crypto/Wallet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    .line 321
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 323
    invoke-static {v0, p2}, Lcom/iMe/utils/helper/wallet/CryptoHelper;->formatAddressQR(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;

    move-result-object p2

    .line 321
    invoke-interface {v1, v0, p2, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openReceiveScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final startSendScreen(Ljava/lang/String;)V
    .locals 2

    .line 339
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

    .line 115
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 116
    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->changeLevelVisibility(Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 117
    invoke-static {p1}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 118
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 124
    invoke-static {p0, p1, v0, v1, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onCopyCryptoBoxNameClick()V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;

    if-eqz v1, :cond_0

    .line 161
    check-cast v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;->getCryptoBoxInfo()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->actionCopyToClipboard(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onCryptoBoxInfoClick()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    instance-of v0, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    check-cast v1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;->getCryptoBoxInfo()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showCryptoBoxConditionsDialog(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 198
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->onDestroy()V

    .line 199
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

    .line 187
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string/jumbo v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->attachViewState(Lcom/iMe/manager/wallet/create/WalletCreateManagerView;)V

    .line 188
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->setupWithTokenType(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    .line 189
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->setupHorizontalActionButtons()V

    .line 190
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->listenEvents()V

    .line 192
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    instance-of v0, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->loadStakingDetailedMetadata()V

    goto :goto_0

    .line 193
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

    .line 156
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

    .line 148
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    .line 149
    instance-of v1, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->loadStakingDetailedMetadata()V

    goto :goto_0

    .line 150
    :cond_0
    instance-of v0, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$CryptoBox;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->reloadCryptoBoxInfo()V

    goto :goto_0

    .line 151
    :cond_1
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

    .line 100
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->onTabSelected(I)V

    return-void
.end method

.method public final setupNavigationRouter()V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->onSetupNavigationRouter()V

    return-void
.end method

.method public final showCryptoBoxRefreshConfirmation(Ljava/lang/String;)V
    .locals 7

    const-string v0, "boxId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 169
    new-instance v1, Lcom/iMe/model/dialog/DialogModel;

    .line 170
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->cryptobox_refresh_message_confirmation_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    iget-object v3, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->cryptobox_refresh_message_confirmation_description:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 172
    iget-object v4, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 173
    iget-object v5, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->cryptobox_details_restore:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public final startAccountLevelDialog()V
    .locals 1

    .line 104
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

    .line 110
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    instance-of v0, v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    if-nez v0, :cond_0

    return-void

    .line 111
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

    .line 128
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 129
    new-instance v1, Lcom/iMe/model/statistic/StatisticDiagramModel;

    .line 130
    invoke-static {p1}, Lcom/iMe/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;->getTotalBalanceText(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/iMe/model/statistic/StatisticDiagramModel$DiagramItem;

    .line 132
    new-instance v4, Lcom/iMe/model/statistic/StatisticDiagramModel$DiagramItem;

    .line 133
    iget-object v5, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->binance_token_details_distribution_spot:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 134
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_blue:I

    .line 135
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getSpot()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getTotal()D

    move-result-wide v7

    .line 132
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/iMe/model/statistic/StatisticDiagramModel$DiagramItem;-><init>(Ljava/lang/String;ID)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 137
    new-instance v4, Lcom/iMe/model/statistic/StatisticDiagramModel$DiagramItem;

    .line 138
    iget-object v5, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->binance_token_details_distribution_margin:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 139
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_golden:I

    .line 140
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getMargin()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getTotal()D

    move-result-wide v7

    .line 137
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/iMe/model/statistic/StatisticDiagramModel$DiagramItem;-><init>(Ljava/lang/String;ID)V

    const/4 p1, 0x1

    aput-object v4, v3, p1

    .line 131
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 129
    invoke-direct {v1, v2, p1}, Lcom/iMe/model/statistic/StatisticDiagramModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 128
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showStatisticDialog(Lcom/iMe/model/statistic/StatisticDiagramModel;)V

    return-void
.end method
