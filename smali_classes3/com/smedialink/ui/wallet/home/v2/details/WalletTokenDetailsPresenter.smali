.class public final Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "WalletTokenDetailsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletTokenDetailsPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletTokenDetailsPresenter.kt\ncom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 3 RxEventBus.kt\ncom/smedialink/storage/domain/utils/rx/RxEventBus\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,461:1\n39#2,8:462\n39#2,8:470\n39#2,8:478\n39#2,8:489\n16#3,3:486\n1#4:497\n*S KotlinDebug\n*F\n+ 1 WalletTokenDetailsPresenter.kt\ncom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter\n*L\n95#1:462,8\n177#1:470,8\n218#1:478,8\n330#1:489,8\n329#1:486,3\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private accountLevelInformation:Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;

.field private final accountLevelInteractor:Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;

.field private final args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

.field private final cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final horizontalActionButtonItems$delegate:Lkotlin/Lazy;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

.field private stakingMetadata:Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;

.field private final tokenCode$delegate:Lkotlin/Lazy;

.field private final walletCreateManager:Lcom/smedialink/manager/wallet/create/WalletCreateManager;


# direct methods
.method public static synthetic $r8$lambda$2ufNgw-7FXZaYXmWjnccRRfYyOA(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->startAccountLevelDialog$lambda$0(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AbhWIOSkN3lW4qdGw1hXWZkVRxU(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->startBinanceReplenishScreen$lambda$11(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OuZ8KW5e6sQqqgyPjMild1t78jU(Lcom/smedialink/model/staking/StakingDetailsItem;Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->openStakingReplenishCheckingAccountLevel$lambda$10(Lcom/smedialink/model/staking/StakingDetailsItem;Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zl-bWz3FqwQv7gM67JnsxtnBJvI(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->loadAccountLevelInfo$lambda$4(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$c0XEaIx1_jH4XPvcQvWRv5ljimo(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->loadAccountLevelInfo$lambda$3(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/model/wallet/details/TokenDetailsArgs;Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/i_staking/StakingInteractor;Lcom/smedialink/manager/wallet/create/WalletCreateManager;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountLevelInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingInteractor"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletCreateManager"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    .line 54
    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->accountLevelInteractor:Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 55
    iput-object p3, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    .line 56
    iput-object p4, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 57
    iput-object p5, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 58
    iput-object p6, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 59
    iput-object p7, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 60
    iput-object p8, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 61
    iput-object p9, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->walletCreateManager:Lcom/smedialink/manager/wallet/create/WalletCreateManager;

    .line 65
    new-instance p1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$tokenCode$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$tokenCode$2;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->tokenCode$delegate:Lkotlin/Lazy;

    .line 66
    new-instance p1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$horizontalActionButtonItems$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$horizontalActionButtonItems$2;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->horizontalActionButtonItems$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getArgs$p(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)Lcom/smedialink/model/wallet/details/TokenDetailsArgs;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getRxEventBus$p(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)Lcom/smedialink/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    return-object p0
.end method

.method public static final synthetic access$getStakingMetadata$p(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->stakingMetadata:Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;

    return-object p0
.end method

.method public static final synthetic access$getTokenCode(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadStakingDetailedMetadata(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->loadStakingDetailedMetadata()V

    return-void
.end method

.method public static final synthetic access$openStakingReplenishCheckingAccountLevel(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/model/staking/StakingDetailsItem;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->openStakingReplenishCheckingAccountLevel(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    return-void
.end method

.method public static final synthetic access$resolveAvailableTokenActions(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)Ljava/util/List;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->resolveAvailableTokenActions(Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$resolveTokenCode(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->resolveTokenCode(Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setAccountLevelInformation$p(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->accountLevelInformation:Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;

    return-void
.end method

.method public static final synthetic access$setStakingMetadata$p(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->stakingMetadata:Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;

    return-void
.end method

.method public static final synthetic access$setupHorizontalActionButtons(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->setupHorizontalActionButtons()V

    return-void
.end method

.method public static final synthetic access$setupRankBadge(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->setupRankBadge()V

    return-void
.end method

.method public static final synthetic access$setupStakingDetailsScreen(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/model/staking/StakingDetailsItem;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->setupStakingDetailsScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    return-void
.end method

.method public static final synthetic access$startBinanceReceiveScreen(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->startBinanceReceiveScreen(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V

    return-void
.end method

.method public static final synthetic access$startBinanceReplenishScreen(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->startBinanceReplenishScreen(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V

    return-void
.end method

.method public static final synthetic access$startBinanceSwapScreen(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->startBinanceSwapScreen(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V

    return-void
.end method

.method public static final synthetic access$startBuyScreen(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->startBuyScreen(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method public static final synthetic access$startReceiveScreen(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->startReceiveScreen(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method public static final synthetic access$startSendScreen(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->startSendScreen(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method private final getCryptoAddress()Ljava/lang/String;
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lcom/smedialink/storage/domain/model/crypto/Wallet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method private final getHorizontalActionButtonItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->horizontalActionButtonItems$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->tokenCode$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method private final isBuyAvailable(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Z
    .locals 1

    .line 239
    sget-object v0, Lcom/smedialink/manager/common/FeatureAvailableManager$Token;->INSTANCE:Lcom/smedialink/manager/common/FeatureAvailableManager$Token;

    invoke-virtual {v0, p1, p2}, Lcom/smedialink/manager/common/FeatureAvailableManager$Token;->isPurchaseAvailable(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Z

    move-result p1

    return p1
.end method

.method private final isReceiveAvailable(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Z
    .locals 0

    .line 236
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->isCryptoTokens()Z

    move-result p1

    return p1
.end method

.method private final isSendAvailable(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Z
    .locals 0

    .line 234
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->isCryptoTokens()Z

    move-result p1

    return p1
.end method

.method private final listenEvents()V
    .locals 5

    .line 328
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

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
    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)V

    new-instance v2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v4, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 331
    invoke-static {p0, v0, v3, v1, v3}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadAccountLevelInfo(ZLorg/fork/utils/Callbacks$Callback1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;",
            ">;)V"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->accountLevelInteractor:Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 212
    invoke-static {v0, v1, v2, v3, v4}, Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;->getAccountLevelInformation$default(Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;JILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 214
    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$2;

    invoke-direct {v1, p1, p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$2;-><init>(ZLcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)V

    new-instance v2, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "private fun loadAccountL\u2026     .autoDispose()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lorg/fork/utils/Callbacks$Callback1;Z)V

    new-instance p1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p2, v1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, p2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-static {p0, p1, v4, v3, v4}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic loadAccountLevelInfo$default(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;ZLorg/fork/utils/Callbacks$Callback1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 209
    sget-object p2, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda3;->INSTANCE:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda3;

    .line 207
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->loadAccountLevelInfo(ZLorg/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method private static final loadAccountLevelInfo$lambda$3(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 0

    return-void
.end method

.method private static final loadAccountLevelInfo$lambda$4(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final loadStakingDetailedMetadata()V
    .locals 5

    .line 173
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    instance-of v1, v0, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;

    if-nez v1, :cond_0

    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 175
    check-cast v0, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/smedialink/model/staking/StakingDetailsItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/iMe/i_staking/StakingInteractor;->getStakingDetails(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "stakingInteractor\n      \u2026(schedulersProvider.ui())"

    .line 175
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)V

    new-instance v2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v4, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 195
    invoke-static {p0, v0, v3, v1, v3}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final openStakingReplenishCheckingAccountLevel(Lcom/smedialink/model/staking/StakingDetailsItem;)V
    .locals 1

    .line 425
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/model/staking/StakingDetailsItem;Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)V

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->startAccountLevelInformationAction(Lorg/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method private static final openStakingReplenishCheckingAccountLevel$lambda$10(Lcom/smedialink/model/staking/StakingDetailsItem;Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 1

    const-string v0, "$stakingDetailsItem"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getMinimalRank()Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v0

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;->getLevel()Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;->isReached(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 428
    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    invoke-interface {p1, p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;->openStakingReplenishScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    invoke-virtual {p0}, Lcom/smedialink/model/staking/StakingDetailsItem;->getMinimalRank()Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;->showLevelRequiredDialog(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V

    :goto_0
    return-void
.end method

.method private final resolveAvailableTokenActions(Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/model/wallet/details/TokenDetailsArgs;",
            ")",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;",
            ">;"
        }
    .end annotation

    .line 346
    instance-of v0, p1, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Binance;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    new-array v0, v2, [Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 347
    move-object v2, p1

    check-cast v2, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Binance;

    invoke-virtual {v2}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getConvertible()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 348
    new-instance v6, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 349
    sget v8, Lorg/telegram/messenger/R$drawable;->fork_ic_exchange_27:I

    .line 350
    sget v9, Lorg/telegram/messenger/R$string;->wallet_token_details_transactions_swap:I

    const/4 v10, 0x0

    .line 346
    new-instance v11, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$1;

    invoke-direct {v11, p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$1;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)V

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v7, v6

    .line 348
    invoke-direct/range {v7 .. v13}, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;-><init>(IIZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    move-object v6, v3

    :goto_0
    aput-object v6, v0, v5

    .line 354
    invoke-virtual {v2}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getReplenishNetworks()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v4

    if-eqz v5, :cond_1

    .line 355
    new-instance v5, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 356
    sget v7, Lorg/telegram/messenger/R$drawable;->fork_ic_buy_28:I

    .line 357
    sget v8, Lorg/telegram/messenger/R$string;->wallet_token_details_action_buy:I

    const/4 v9, 0x0

    .line 346
    new-instance v10, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$2;

    invoke-direct {v10, p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$2;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)V

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v6, v5

    .line 355
    invoke-direct/range {v6 .. v12}, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;-><init>(IIZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_1
    aput-object v5, v0, v4

    .line 361
    invoke-virtual {v2}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getReceivable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 362
    new-instance v3, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 363
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_ic_ask_transfer:I

    .line 364
    sget v6, Lorg/telegram/messenger/R$string;->wallet_token_details_action_receive:I

    const/4 v7, 0x0

    .line 346
    new-instance v8, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$3;

    invoke-direct {v8, p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$3;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)V

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v4, v3

    .line 362
    invoke-direct/range {v4 .. v10}, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;-><init>(IIZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_2
    aput-object v3, v0, v1

    .line 346
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto/16 :goto_8

    .line 369
    :cond_3
    instance-of v0, p1, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;

    if-eqz v0, :cond_7

    new-array v0, v2, [Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 370
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->isSendAvailable(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 371
    new-instance v2, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 372
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_send:I

    .line 373
    sget v8, Lorg/telegram/messenger/R$string;->wallet_token_details_details_action_send:I

    const/4 v9, 0x0

    .line 369
    new-instance v10, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$4;

    invoke-direct {v10, p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$4;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)V

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v6, v2

    .line 371
    invoke-direct/range {v6 .. v12}, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;-><init>(IIZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_4
    move-object v2, v3

    :goto_2
    aput-object v2, v0, v5

    .line 376
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    move-object v5, p1

    check-cast v5, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;

    invoke-virtual {v5}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/smedialink/model/wallet/home/AccountItem$Token;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smedialink/model/wallet/home/AccountItem$Token;->getBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->isBuyAvailable(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 377
    new-instance v2, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 378
    sget v6, Lorg/telegram/messenger/R$drawable;->fork_ic_buy_28:I

    .line 379
    sget v7, Lorg/telegram/messenger/R$string;->wallet_token_details_action_buy:I

    const/4 v8, 0x0

    .line 369
    new-instance v9, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$5;

    invoke-direct {v9, p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$5;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v5, v2

    .line 377
    invoke-direct/range {v5 .. v11}, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;-><init>(IIZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_5
    move-object v2, v3

    :goto_3
    aput-object v2, v0, v4

    .line 383
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->isReceiveAvailable(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 384
    new-instance v3, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 385
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_ic_ask_transfer:I

    .line 386
    sget v6, Lorg/telegram/messenger/R$string;->wallet_token_details_action_receive:I

    const/4 v7, 0x0

    .line 369
    new-instance v8, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$6;

    invoke-direct {v8, p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$6;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)V

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v4, v3

    .line 384
    invoke-direct/range {v4 .. v10}, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;-><init>(IIZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_6
    aput-object v3, v0, v1

    .line 369
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto/16 :goto_8

    .line 391
    :cond_7
    instance-of v0, p1, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 392
    new-instance v3, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 393
    sget v6, Lorg/telegram/messenger/R$drawable;->fork_ic_buy_28:I

    .line 394
    sget v7, Lorg/telegram/messenger/R$string;->staking_details_replenish:I

    .line 395
    iget-object v8, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->stakingMetadata:Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getRules()Lcom/smedialink/storage/domain/model/staking/StakingRules;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lcom/smedialink/storage/domain/model/staking/StakingRules;->getCanDeposit()Z

    move-result v8

    if-ne v8, v4, :cond_8

    const/4 v8, 0x1

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    .line 391
    :goto_4
    new-instance v9, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$7;

    invoke-direct {v9, p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$7;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)V

    .line 392
    invoke-direct {v3, v6, v7, v8, v9}, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;-><init>(IIZLkotlin/jvm/functions/Function0;)V

    aput-object v3, v0, v5

    .line 398
    new-instance v3, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 399
    sget v6, Lorg/telegram/messenger/R$drawable;->fork_ic_ask_transfer:I

    .line 400
    sget v7, Lorg/telegram/messenger/R$string;->staking_details_claim:I

    .line 401
    iget-object v8, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->stakingMetadata:Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getStats()Lcom/smedialink/storage/domain/model/staking/StakingDetailedStats;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedStats;->isParticipated()Z

    move-result v8

    if-ne v8, v4, :cond_9

    const/4 v8, 0x1

    goto :goto_5

    :cond_9
    const/4 v8, 0x0

    .line 391
    :goto_5
    new-instance v9, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$8;

    invoke-direct {v9, p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$8;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)V

    .line 398
    invoke-direct {v3, v6, v7, v8, v9}, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;-><init>(IIZLkotlin/jvm/functions/Function0;)V

    aput-object v3, v0, v4

    .line 405
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_withdraw:I

    .line 406
    sget v6, Lorg/telegram/messenger/R$string;->staking_details_withdraw:I

    .line 407
    iget-object v7, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->stakingMetadata:Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getRules()Lcom/smedialink/storage/domain/model/staking/StakingRules;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 408
    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/staking/StakingRules;->getCanWithdrawSafely()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/staking/StakingRules;->getCanWithdrawImmediately()Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_a
    const/4 v7, 0x1

    goto :goto_6

    :cond_b
    const/4 v7, 0x0

    .line 391
    :goto_6
    new-instance v8, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$10;

    invoke-direct {v8, p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$10;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)V

    .line 404
    new-instance v9, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    invoke-direct {v9, v3, v6, v7, v8}, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;-><init>(IIZLkotlin/jvm/functions/Function0;)V

    aput-object v9, v0, v1

    .line 412
    new-instance v1, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 413
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_wallet_staking_dashboard_calculator:I

    .line 414
    sget v6, Lorg/telegram/messenger/R$string;->staking_dashboard_calculator:I

    .line 415
    iget-object v7, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->stakingMetadata:Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getRules()Lcom/smedialink/storage/domain/model/staking/StakingRules;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/staking/StakingRules;->getCanDeposit()Z

    move-result v7

    if-ne v7, v4, :cond_c

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    .line 391
    :goto_7
    new-instance v5, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$11;

    invoke-direct {v5, p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$11;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)V

    .line 412
    invoke-direct {v1, v3, v6, v4, v5}, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;-><init>(IIZLkotlin/jvm/functions/Function0;)V

    aput-object v1, v0, v2

    .line 391
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_8
    return-object p1

    :cond_d
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final resolveNetworkForReplenish(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 4

    .line 456
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getReplenishNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    iget-object v3, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v3}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v3

    if-ne v2, v3, :cond_1

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
    check-cast v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    if-nez v1, :cond_3

    .line 457
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getReplenishNetworks()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    :cond_3
    return-object v1
.end method

.method private final resolveTokenCode(Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 339
    instance-of v0, p1, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Binance;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    goto :goto_0

    .line 340
    :cond_0
    instance-of v0, p1, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/smedialink/model/wallet/home/AccountItem$Token;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/home/AccountItem$Token;->getBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object p1

    goto :goto_0

    .line 341
    :cond_1
    instance-of v0, p1, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    check-cast p1, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/smedialink/model/staking/StakingDetailsItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getTokenTicker()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

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

    .line 159
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 160
    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    instance-of v2, v1, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->resolveAvailableTokenActions(Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->getHorizontalActionButtonItems()Ljava/util/List;

    move-result-object v1

    .line 159
    :goto_0
    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;->setupHorizontalActionButtons(Ljava/util/List;)V

    return-void
.end method

.method private final setupRankBadge()V
    .locals 3

    .line 166
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 167
    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    instance-of v1, v1, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Crypto;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->isLime()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCryptoHiddenBalance()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 168
    :goto_0
    iget-object v2, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getAccountLevelMetadata()Lcom/smedialink/storage/data/locale/prefs/model/AccountLevelMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/storage/data/locale/prefs/model/AccountLevelMetadata;->getLevel()Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v2

    .line 166
    invoke-interface {v0, v1, v2}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;->setupRankBadge(ZLcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V

    return-void
.end method

.method private final setupStakingDetailsScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V
    .locals 31

    move-object/from16 v0, p0

    .line 266
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getTokenTicker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v1

    .line 267
    iget-object v2, v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->stakingMetadata:Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getStats()Lcom/smedialink/storage/domain/model/staking/StakingDetailedStats;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedStats;->getProfit()Lcom/smedialink/storage/domain/model/staking/StakingValues;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 268
    :goto_0
    iget-object v4, v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->stakingMetadata:Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getStats()Lcom/smedialink/storage/domain/model/staking/StakingDetailedStats;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedStats;->getDebt()Lcom/smedialink/storage/domain/model/staking/StakingValues;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_2

    .line 269
    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getDebt()Ljava/math/BigDecimal;

    move-result-object v5

    .line 270
    :cond_3
    sget-object v6, Lcom/smedialink/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/smedialink/utils/formatter/BalanceFormatter;

    invoke-virtual/range {p1 .. p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getFormattedAPY()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smedialink/utils/formatter/BalanceFormatter;->parseFormattedString(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v7

    .line 271
    invoke-virtual/range {p1 .. p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getFormattedAPR()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/smedialink/utils/formatter/BalanceFormatter;->parseFormattedString(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v6

    .line 275
    invoke-static {v7}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v7

    const/4 v8, 0x2

    const/16 v9, 0x25

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v7, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getAnnualPercentageMode()Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    move-result-object v7

    sget-object v12, Lcom/smedialink/model/staking/StakingAnnualPercentageMode;->APY:Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    if-ne v7, v12, :cond_4

    goto :goto_3

    .line 279
    :cond_4
    invoke-static {v6}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getAnnualPercentageMode()Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    move-result-object v6

    sget-object v7, Lcom/smedialink/model/staking/StakingAnnualPercentageMode;->APR:Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    if-ne v6, v7, :cond_5

    goto :goto_2

    .line 284
    :cond_5
    iget-object v6, v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v7, Lorg/telegram/messenger/R$string;->staking_details_apy_apr_values:I

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getFormattedAPR()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-virtual/range {p1 .. p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getFormattedAPY()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v10

    invoke-interface {v6, v7, v9}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 285
    iget-object v7, v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v9, Lorg/telegram/messenger/R$string;->staking_details_apy_apr:I

    invoke-interface {v7, v9}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 280
    :cond_6
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getFormattedAPR()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 281
    iget-object v7, v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v9, Lorg/telegram/messenger/R$string;->staking_details_apr:I

    invoke-interface {v7, v9}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 276
    :cond_7
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getFormattedAPY()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 277
    iget-object v7, v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v9, Lorg/telegram/messenger/R$string;->staking_details_apy:I

    invoke-interface {v7, v9}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_4
    move-object/from16 v17, v6

    move-object/from16 v16, v7

    if-eqz v2, :cond_8

    .line 289
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-static {v6}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v6

    if-nez v6, :cond_8

    const/16 v19, 0x1

    goto :goto_5

    :cond_8
    const/16 v19, 0x0

    :goto_5
    if-eqz v19, :cond_b

    .line 291
    sget-object v6, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance$Companion;

    invoke-virtual {v6, v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance$Companion;->createEmptyBalanceFor(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;)Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v20

    const/16 v21, 0x0

    if-eqz v2, :cond_9

    .line 292
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_6

    :cond_9
    move-object v6, v3

    :goto_6
    invoke-static {v6}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v22

    if-eqz v2, :cond_a

    .line 293
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/staking/StakingValues;->getAsUsd()Ljava/math/BigDecimal;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_7

    :cond_a
    move-object v2, v3

    :goto_7
    invoke-static {v2}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Float;)F

    move-result v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x39

    const/16 v29, 0x0

    .line 291
    invoke-static/range {v20 .. v29}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->copy$default(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;DFLcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/wallet/PriceRate;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v2

    .line 295
    iget-object v6, v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 296
    sget v7, Lorg/telegram/messenger/R$string;->staking_details_profit_value:I

    new-array v8, v8, [Ljava/lang/Object;

    .line 297
    invoke-static {v2, v6}, Lcom/smedialink/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalanceShortText(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    .line 298
    iget-object v9, v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-static {v2, v9}, Lcom/smedialink/utils/extentions/model/wallet/TokenBalanceExtKt;->getDollarsBalanceText(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v10

    .line 295
    invoke-interface {v6, v7, v8}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_b
    const-string v2, "-"

    :goto_8
    move-object/from16 v18, v2

    .line 305
    invoke-virtual/range {p1 .. p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getHasEnoughFunds()Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Lcom/smedialink/model/staking/StakingProgrammeStatus;->SHORT_OF_FUNDS:Lcom/smedialink/model/staking/StakingProgrammeStatus;

    :goto_9
    move-object/from16 v20, v2

    goto :goto_a

    .line 306
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getEndsAtISO()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smedialink/utils/extentions/common/StringExtKt;->parseISODate(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-lez v2, :cond_d

    sget-object v2, Lcom/smedialink/model/staking/StakingProgrammeStatus;->ACTIVE:Lcom/smedialink/model/staking/StakingProgrammeStatus;

    goto :goto_9

    .line 307
    :cond_d
    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v5, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-lez v2, :cond_e

    sget-object v2, Lcom/smedialink/model/staking/StakingProgrammeStatus;->WITHDRAWAL_AVAILABLE:Lcom/smedialink/model/staking/StakingProgrammeStatus;

    goto :goto_9

    .line 308
    :cond_e
    sget-object v2, Lcom/smedialink/model/staking/StakingProgrammeStatus;->CLOSED:Lcom/smedialink/model/staking/StakingProgrammeStatus;

    goto :goto_9

    .line 311
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/smedialink/model/staking/StakingDetailsItem;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smedialink/storage/domain/utils/extentions/model/TokenInfoExtKt;->getLogo(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)I

    move-result v13

    .line 313
    iget-object v2, v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getFullName()I

    move-result v6

    invoke-interface {v2, v6}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 314
    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance$Companion;

    invoke-virtual {v2, v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance$Companion;->createEmptyBalanceFor(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;)Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v21

    const/16 v22, 0x0

    .line 315
    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v23

    if-eqz v4, :cond_f

    .line 316
    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/staking/StakingValues;->getAsUsd()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :cond_f
    invoke-static {v3}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Float;)F

    move-result v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x39

    const/16 v30, 0x0

    .line 314
    invoke-static/range {v21 .. v30}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->copy$default(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;DFLcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/wallet/PriceRate;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    .line 317
    iget-object v2, v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-static {v1, v2}, Lcom/smedialink/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalanceShortText(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v15

    .line 311
    invoke-interface/range {v12 .. v20}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;->setupStakingDetailsScreen(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/smedialink/model/staking/StakingProgrammeStatus;)V

    return-void
.end method

.method private final setupWithTokenType(Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)V
    .locals 1

    .line 257
    instance-of v0, p1, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v0, :cond_0

    .line 258
    check-cast p1, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/smedialink/model/staking/StakingDetailsItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->setupStakingDetailsScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;->setupTransactionsScreen(Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)V

    :goto_0
    return-void
.end method

.method private static final startAccountLevelDialog$lambda$0(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    const-string v0, "accountLevelInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;->showAccountLevelDialog(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;)V

    return-void
.end method

.method private final startAccountLevelInformationAction(Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;",
            ">;)V"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->accountLevelInformation:Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {p1, v0}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 203
    invoke-direct {p0, v0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->loadAccountLevelInfo(ZLorg/fork/utils/Callbacks$Callback1;)V

    :goto_0
    return-void
.end method

.method private final startBinanceReceiveScreen(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 1

    .line 452
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    invoke-static {p1}, Lcom/smedialink/mapper/wallet/select/SelectableMappingKt;->mapToSelectable(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;->openBinanceReceiveScreen(Lcom/smedialink/model/wallet/select/SelectableToken;)V

    return-void
.end method

.method private final startBinanceReplenishScreen(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda4;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)V

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;->showRequiredWalletCreatedDialog(Lorg/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getBinanceUserInfo()Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;->getInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceUserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceUserInfo;->isVerified()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;->showRequiredVerifyDialog()V

    goto :goto_0

    .line 447
    :cond_2
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAsset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->resolveNetworkForReplenish(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;->openBinanceReplenishScreen(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    :goto_0
    return-void
.end method

.method private static final startBinanceReplenishScreen$lambda$11(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->startChooseWalletOptionsFlow(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method

.method private final startBinanceSwapScreen(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getBinanceUserInfo()Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;->getInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceUserInfo;->isVerified()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 438
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;->showRequiredVerifyDialog()V

    goto :goto_1

    .line 439
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    invoke-static {p1}, Lcom/smedialink/mapper/wallet/select/SelectableMappingKt;->mapToSelectable(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;->openBinanceSwapScreen(Lcom/smedialink/model/wallet/select/SelectableToken;)V

    :goto_1
    return-void
.end method

.method private final startBuyScreen(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 8

    .line 246
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    new-instance v7, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    sget-object v1, Lcom/smedialink/utils/helper/wallet/SwapHelper;->INSTANCE:Lcom/smedialink/utils/helper/wallet/SwapHelper;

    invoke-virtual {v1, p1}, Lcom/smedialink/utils/helper/wallet/SwapHelper;->resolveSwapProtocolByNetwork(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v7}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;->openBuyScreen(Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    return-void
.end method

.method private final startReceiveScreen(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 2

    .line 242
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->getCryptoAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;->openReceiveScreen(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method private final startSendScreen(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 2

    .line 251
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->isCryptoTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;->openSendScreen(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_feature_not_available:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public attachViewState(Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->walletCreateManager:Lcom/smedialink/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0, p1}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->attachViewState(Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;)V

    return-void
.end method

.method public final changeRankVisibility(Z)V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->accountLevelInteractor:Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 93
    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;->changeLevelVisibility(Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 94
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "accountLevelInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)V

    new-instance v2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v0, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 101
    invoke-static {p0, p1, v0, v1, v0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 150
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->onDestroy()V

    .line 151
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->onDetachViewState()V

    return-void
.end method

.method public onDetachViewState()V
    .locals 1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->walletCreateManager:Lcom/smedialink/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->onDetachViewState()V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 3

    .line 137
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;

    invoke-virtual {p0, v0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->attachViewState(Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;)V

    .line 138
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->setupWithTokenType(Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)V

    .line 139
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->setupHorizontalActionButtons()V

    .line 141
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    instance-of v0, v0, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->loadStakingDetailedMetadata()V

    .line 143
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->listenEvents()V

    goto :goto_0

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->isLime()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->loadAccountLevelInfo$default(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;ZLorg/fork/utils/Callbacks$Callback1;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final reload()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    instance-of v0, v0, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->loadStakingDetailedMetadata()V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/smedialink/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    :goto_0
    return-void
.end method

.method public final selectTab(I)V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;->onTabSelected(I)V

    return-void
.end method

.method public final setupNavigationRouter()V
    .locals 1

    .line 73
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    invoke-interface {v0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;->onSetupNavigationRouter()V

    return-void
.end method

.method public final startAccountLevelDialog()V
    .locals 1

    .line 81
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda2;-><init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)V

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->startAccountLevelInformationAction(Lorg/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public startChooseWalletOptionsFlow(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V
    .locals 1

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->walletCreateManager:Lcom/smedialink/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0, p1}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->startChooseWalletOptionsFlow(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method

.method public final startStakingConditionsDialog()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    instance-of v0, v0, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->args:Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    check-cast v1, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/smedialink/model/staking/StakingDetailsItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;->showStakingConditionsDialog(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    return-void
.end method

.method public final startTokenDistributionDialog(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 9

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 106
    new-instance v1, Lcom/smedialink/model/statistic/StatisticDiagramModel;

    .line 107
    invoke-static {p1}, Lcom/smedialink/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;->getTotalBalanceText(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/smedialink/model/statistic/StatisticDiagramModel$DiagramItem;

    .line 109
    new-instance v4, Lcom/smedialink/model/statistic/StatisticDiagramModel$DiagramItem;

    .line 110
    iget-object v5, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->binance_token_details_distribution_spot:I

    invoke-interface {v5, v6}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 112
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getSpot()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getTotal()D

    move-result-wide v6

    const-string v8, "statisticChartLine_blue"

    .line 109
    invoke-direct {v4, v5, v8, v6, v7}, Lcom/smedialink/model/statistic/StatisticDiagramModel$DiagramItem;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 114
    new-instance v4, Lcom/smedialink/model/statistic/StatisticDiagramModel$DiagramItem;

    .line 115
    iget-object v5, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->binance_token_details_distribution_margin:I

    invoke-interface {v5, v6}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 117
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getMargin()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getTotal()D

    move-result-wide v6

    const-string p1, "statisticChartLine_golden"

    .line 114
    invoke-direct {v4, v5, p1, v6, v7}, Lcom/smedialink/model/statistic/StatisticDiagramModel$DiagramItem;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    const/4 p1, 0x1

    aput-object v4, v3, p1

    .line 108
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 106
    invoke-direct {v1, v2, p1}, Lcom/smedialink/model/statistic/StatisticDiagramModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 105
    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;->showStatisticDialog(Lcom/smedialink/model/statistic/StatisticDiagramModel;)V

    return-void
.end method
