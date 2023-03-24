.class public final Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "WalletSwapProcessPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$Companion;,
        Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSwapProcessPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSwapProcessPresenter.kt\ncom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,978:1\n39#2,8:979\n39#2,8:998\n39#2,8:1006\n39#2,8:1014\n39#2,8:1022\n39#2,8:1030\n39#2,8:1038\n39#2,8:1046\n39#2,8:1054\n39#2,8:1062\n39#2,8:1070\n1549#3:987\n1620#3,3:988\n766#3:991\n857#3,2:992\n288#3,2:994\n288#3,2:996\n1747#3,3:1078\n1747#3,3:1082\n1#4:1081\n*S KotlinDebug\n*F\n+ 1 WalletSwapProcessPresenter.kt\ncom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter\n*L\n166#1:979,8\n423#1:998,8\n444#1:1006,8\n469#1:1014,8\n498#1:1022,8\n523#1:1030,8\n543#1:1038,8\n576#1:1046,8\n602#1:1054,8\n629#1:1062,8\n674#1:1070,8\n244#1:987\n244#1:988,3\n270#1:991\n270#1:992,2\n361#1:994,2\n363#1:996,2\n692#1:1078,3\n893#1:1082,3\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final accessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

.field private approveMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

.field private approveTokensMetadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;",
            ">;>;"
        }
    .end annotation
.end field

.field private availableNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ">;"
        }
    .end annotation
.end field

.field private binanceAvailableOppositeSelectableSwapTokens:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private binanceConvertQuote:Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;

.field private final binanceInternalInteractor:Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;

.field private binanceTokenBalance:Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final hintsPreferenceHelper:Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;

.field private inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

.field private loadApproveMetadataDisposable:Lio/reactivex/disposables/Disposable;

.field private outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

.field private selectableSupportedSwapTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private selectedApproveFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

.field private selectedDeadline:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

.field private selectedInputNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field private selectedOutputNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field private selectedSlippage:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

.field private selectedSwapFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

.field private state:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;

.field private final swapInteractor:Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;

.field private swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

.field private swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

.field private swapProtocolInfo:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;

.field private tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

.field private final walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public static synthetic $r8$lambda$9dXNxAcOVzP1NwQaxyj9S6qbSUw(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance$lambda$21(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DOS2YNjKrMKT2kPgEDrpvEuQcVI()V
    .locals 0

    invoke-static {}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance$lambda$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$PHD6WOO1R1aIZigWOE8M6w_556U(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$lambda$27(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UCtGGogksHnNWOrfiuzuyaspLEM()V
    .locals 0

    invoke-static {}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance$lambda$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$Vci_XpbUH_ycXmwWbQU_ogL8IdU(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectToken$lambda$0(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d1j3xc5rp-qQQNpSCAUMn4_SH9U(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenDialog$lambda$5(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method public static synthetic $r8$lambda$duwQwtL0SfdPI8zsOZsZq5DEIF8(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenDialog$lambda$4(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e6NgeKKcUVlaB7w29oeMWFgn0IQ()V
    .locals 0

    invoke-static {}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensCrypto$lambda$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$ktCc5kwI6Ql4SZU_tgkZw98_ofg(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenDialog$lambda$2(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mLxmUkiNUAytiTEk_FjA2-MqJ_E(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensCrypto$lambda$18(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$miHIAW48JHUz6LAwD8-3NaxQhzI(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSwapFlow$lambda$7(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t3u57LRGucBj3WhbTbHQNBxzoUc(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance$lambda$25(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yLepbqAibnORd1um9OdfQw4Eof0(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$lambda$28(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;)V
    .locals 1

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binanceInternalInteractor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swapInteractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hintsPreferenceHelper"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 56
    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    .line 57
    iput-object p3, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 58
    iput-object p4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;

    .line 59
    iput-object p5, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 60
    iput-object p6, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 61
    iput-object p7, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->accessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    .line 62
    iput-object p8, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 63
    iput-object p9, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->hintsPreferenceHelper:Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;

    .line 69
    sget-object p1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->Companion:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage$Companion;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage$Companion;->getDefaultValue()Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSlippage:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    .line 70
    sget-object p1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;->Companion:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline$Companion;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline$Companion;->getDefaultValue()Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    .line 71
    sget-object p1, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$Idle;->INSTANCE:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$Idle;

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;

    .line 72
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectableSupportedSwapTokens:Ljava/util/HashMap;

    .line 73
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    .line 74
    sget-object p1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->ETHEREUM:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 75
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 76
    sget-object p1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;->UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    .line 77
    sget-object p2, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;

    invoke-virtual {p2, p1}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;

    .line 83
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveTokensMetadata:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$checkSelectedTokenApprove(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->checkSelectedTokenApprove()V

    return-void
.end method

.method public static final synthetic access$chooseSwapFee(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->chooseSwapFee()V

    return-void
.end method

.method public static final synthetic access$formatBinanceBalance(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->formatBinanceBalance(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getApproveTokensMetadata$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)Ljava/util/HashMap;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveTokensMetadata:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getBinanceTokenBalance$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceTokenBalance:Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getSelectableSupportedSwapTokens$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)Ljava/util/HashMap;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectableSupportedSwapTokens:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getSelectedNetworkTypeBySwapSide(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSwapFeeType(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSwapFeeType()Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSwapInteractor$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;

    return-object p0
.end method

.method public static final synthetic access$getSwapMetadata$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    return-object p0
.end method

.method public static final synthetic access$getSwapProtocol$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    return-object p0
.end method

.method public static final synthetic access$handleSwapErrors(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/storage/domain/model/Result$Error;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->handleSwapErrors(Lcom/smedialink/storage/domain/model/Result$Error;)V

    return-void
.end method

.method public static final synthetic access$loadAvailableSwapTokens(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokens(Lcom/smedialink/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method public static final synthetic access$renderState(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method public static final synthetic access$resetLoadedInformation(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetLoadedInformation()V

    return-void
.end method

.method public static final synthetic access$resetStateTo(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateTo(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method public static final synthetic access$resolveSwapProtocol(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveSwapProtocol()V

    return-void
.end method

.method public static final synthetic access$selectApproveFee(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectApproveFee(Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;)V

    return-void
.end method

.method public static final synthetic access$setBinanceAvailableOppositeSelectableSwapTokens$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lkotlin/Pair;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceAvailableOppositeSelectableSwapTokens:Lkotlin/Pair;

    return-void
.end method

.method public static final synthetic access$setBinanceConvertQuote$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;

    return-void
.end method

.method public static final synthetic access$setBinanceTokenBalance$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceTokenBalance:Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    return-void
.end method

.method public static final synthetic access$setSelectedInputNetworkType$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-void
.end method

.method public static final synthetic access$setSelectedOutputNetworkType$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-void
.end method

.method public static final synthetic access$setSelectedSwapFee$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    return-void
.end method

.method public static final synthetic access$setSwapMetadata$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    return-void
.end method

.method public static final synthetic access$setTokenBalance$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method

.method public static final synthetic access$setupSwapInformation(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->setupSwapInformation()V

    return-void
.end method

.method public static final synthetic access$startUpdatingApproveMetadataIfNeed(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/util/List;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->startUpdatingApproveMetadataIfNeed(Ljava/util/List;Z)V

    return-void
.end method

.method private final checkMinMaxInputValues()V
    .locals 5

    .line 932
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v0, :cond_4

    .line 933
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceAvailableOppositeSelectableSwapTokens:Lkotlin/Pair;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->getTokenInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;->getAsset()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_2
    check-cast v1, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;

    :cond_3
    if-eqz v1, :cond_4

    .line 935
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->showMinMaxInputValues(Lcom/smedialink/model/wallet/select/SelectableToken;Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;)V

    :cond_4
    return-void
.end method

.method private final checkSelectedTokenApprove()V
    .locals 5

    .line 742
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v0, :cond_7

    .line 743
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveTokensMetadata:Ljava/util/HashMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    :cond_2
    check-cast v2, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;

    .line 744
    :cond_3
    instance-of v0, v2, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$Allowed;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$PrepareSwap;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    invoke-direct {v0, v1}, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$PrepareSwap;-><init>(Lcom/smedialink/model/wallet/select/SelectableToken;)V

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    goto :goto_1

    .line 745
    :cond_4
    instance-of v0, v2, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$ApproveInProgress;->INSTANCE:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$ApproveInProgress;

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    goto :goto_1

    .line 746
    :cond_5
    instance-of v0, v2, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    if-eqz v0, :cond_6

    .line 747
    check-cast v2, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    iput-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    .line 748
    new-instance v0, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;->MEDIUM:Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;

    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v3

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->getFeeByLevel(Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;)Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;-><init>(Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;)V

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    .line 749
    new-instance v0, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$NeedApprove;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getApproveFeeType()Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    invoke-direct {v0, v1, v2}, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$NeedApprove;-><init>(Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;Lcom/smedialink/model/wallet/select/SelectableToken;)V

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    goto :goto_1

    .line 751
    :cond_6
    new-instance v0, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$PrepareSwap;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    invoke-direct {v0, v1}, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$PrepareSwap;-><init>(Lcom/smedialink/model/wallet/select/SelectableToken;)V

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private final chooseSwapFee()V
    .locals 2

    .line 926
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveSwapFeeScreenArgs()Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 927
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v1, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->openSwapFeeScreen(Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;)V

    :cond_0
    return-void
.end method

.method private final formatBinanceBalance(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;
    .locals 5

    .line 965
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 966
    sget v1, Lorg/telegram/messenger/R$string;->binance_convert_balance:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 967
    invoke-static {p1}, Lcom/smedialink/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;->getSpotBalanceShortText(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 968
    invoke-static {p1}, Lcom/smedialink/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;->getMarginBalanceShortText(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 965
    invoke-interface {v0, v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getApproveFeeType()Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;
    .locals 7

    .line 844
    new-instance v6, Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Default;

    .line 845
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getFeeDialogModel()Lcom/smedialink/model/dialog/DialogModel;

    move-result-object v1

    .line 846
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v2

    .line 847
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    iget-object v3, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v3

    .line 848
    iget-object v4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 849
    new-instance v5, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$getApproveFeeType$1;

    invoke-direct {v5, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$getApproveFeeType$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    move-object v0, v6

    .line 844
    invoke-direct/range {v0 .. v5}, Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Default;-><init>(Lcom/smedialink/model/dialog/DialogModel;Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;Lkotlin/jvm/functions/Function1;)V

    return-object v6
.end method

.method private final getAvailableTokensByNetwork(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectableSupportedSwapTokens:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 336
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private final getFeeDialogModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 8

    .line 920
    new-instance v7, Lcom/smedialink/model/dialog/DialogModel;

    .line 921
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_fee_dialog_title:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 922
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v0, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, v7

    .line 920
    invoke-direct/range {v0 .. v6}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method private final getNetworkSwitchState()Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    sget-object v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 411
    sget-object v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;->GLOBAL:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_1

    .line 409
    :cond_0
    sget-object v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;->GLOBAL:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v3, v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getForcedNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_1

    .line 410
    :cond_2
    sget-object v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;->CROSS_CHAIN:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private final getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 327
    sget-object v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 330
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;->isCrossChain()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    goto :goto_0

    .line 331
    :cond_0
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 328
    :cond_2
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    :goto_0
    return-object p1
.end method

.method static synthetic getSelectedNetworkTypeBySwapSide$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 327
    sget-object p1, Lcom/smedialink/model/wallet/swap/SwapSide;->INPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    :cond_0
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p0

    return-object p0
.end method

.method private final getSwapConfirmationDialogModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 13

    .line 940
    new-instance v0, Lcom/smedialink/model/dialog/DialogModel;

    .line 941
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_swap_alert_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 942
    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 943
    instance-of v3, v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 946
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v3, :cond_6

    .line 943
    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 944
    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_swap_alert_description:I

    new-array v7, v7, [Ljava/lang/Object;

    .line 945
    iget-object v10, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->getInputAmount()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_0

    :cond_0
    move-object v10, v9

    .line 946
    :goto_0
    sget-object v11, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;

    invoke-virtual {v11}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getDecimals()I

    move-result v12

    .line 945
    invoke-static {v10, v12}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    .line 947
    iget-object v8, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;

    const/4 v10, 0x0

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->getInputTokenShortName()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v10

    :goto_1
    const-string v12, ""

    if-nez v8, :cond_2

    move-object v8, v12

    :cond_2
    aput-object v8, v7, v6

    .line 948
    iget-object v6, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->getOutputAmount()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 949
    :cond_3
    invoke-virtual {v11}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getDecimals()I

    move-result v6

    .line 948
    invoke-static {v9, v6}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    .line 950
    iget-object v5, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->getOutputTokenShortName()Ljava/lang/String;

    move-result-object v10

    :cond_4
    if-nez v10, :cond_5

    goto :goto_2

    :cond_5
    move-object v12, v10

    :goto_2
    aput-object v12, v7, v4

    .line 943
    invoke-interface {v2, v3, v7}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 952
    :cond_6
    instance-of v2, v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 953
    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_swap_alert_description:I

    new-array v7, v7, [Ljava/lang/Object;

    .line 954
    iget-object v9, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountIn()Ljava/math/BigDecimal;

    move-result-object v9

    iget-object v10, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getInputTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v10

    invoke-static {v9, v10}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 955
    iget-object v8, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    iget-object v9, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getInputTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    .line 956
    iget-object v6, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountOut()Ljava/math/BigDecimal;

    move-result-object v6

    iget-object v8, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v8

    invoke-static {v6, v8}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    .line 957
    iget-object v5, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    iget-object v6, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    .line 952
    invoke-interface {v2, v3, v7}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 960
    :goto_3
    iget-object v3, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 961
    iget-object v4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_swap_alert_action:I

    invoke-interface {v4, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 940
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 952
    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final getSwapFeeType()Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;
    .locals 3

    .line 837
    new-instance v0, Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Custom;

    .line 838
    new-instance v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$getSwapFeeType$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$getSwapFeeType$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    .line 839
    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 837
    invoke-direct {v0, v1, v2}, Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Custom;-><init>(Lkotlin/jvm/functions/Function0;Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;)V

    return-object v0
.end method

.method private final handleSwapErrors(Lcom/smedialink/storage/domain/model/Result$Error;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result$Error<",
            "*>;)V"
        }
    .end annotation

    .line 702
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 703
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_APPROVED_AMOUNT_NOT_SUFFICIENT:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 704
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    .line 705
    invoke-direct {p0, v3, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo(ZZ)V

    goto/16 :goto_3

    .line 707
    :cond_0
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->NO_ENOUGH_MONEY:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    if-ne v0, v1, :cond_2

    .line 708
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 709
    instance-of v0, p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    new-instance v6, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;->UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v6}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->showNotEnoughMoneyErrorDialog(Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    goto/16 :goto_3

    .line 710
    :cond_1
    instance-of p1, p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    new-instance v6, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v6}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->showNotEnoughMoneyErrorDialog(Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    goto :goto_3

    .line 713
    :cond_2
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->ETHER_BLOCK_CHAIN_ERROR:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v1, :cond_3

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_INSUFFICIENT_RESERVES_IN_LIQUIDITY_POOL_OF_TOKENS:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v3

    :goto_1
    if-eqz v1, :cond_5

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 714
    invoke-static {p0, v3, v3, v0, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;ZZILjava/lang/Object;)V

    .line 715
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    .line 716
    sget-object p1, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$Idle;->INSTANCE:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$Idle;

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateTo(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    goto :goto_3

    .line 718
    :cond_5
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_DIFF_BTW_TOKEN_EXCHANGE_RATES_IS_TOO_BIG:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v1, :cond_6

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_QUOTE_NOT_FOUND:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v1, :cond_7

    goto :goto_2

    :cond_7
    move v2, v3

    :goto_2
    if-eqz v2, :cond_8

    .line 719
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateIfNeed()V

    goto :goto_3

    .line 722
    :cond_8
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_9
    :goto_3
    return-void
.end method

.method private final isAvailableBalanceLessThanAmount(Ljava/lang/String;)Z
    .locals 6

    .line 905
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 906
    instance-of v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceTokenBalance:Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getSpot()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getTotal()D

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    cmpg-double p1, v0, v4

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    .line 907
    :cond_1
    instance-of v0, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    cmpg-double p1, v0, v4

    if-gez p1, :cond_0

    :goto_0
    return v2

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final isValidForApprove()Z
    .locals 6

    .line 891
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;

    instance-of v0, v0, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$NeedApprove;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 892
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v0, :cond_5

    .line 893
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveTokensMetadata:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1747
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v0, v2

    goto :goto_1

    .line 1748
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;

    .line 893
    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    move-object v5, v3

    :goto_0
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :goto_1
    if-ne v0, v1, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    return v1
.end method

.method private final isValidForBinanceSwap()Z
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;

    instance-of v0, v0, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$Swap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isValidForCryptoSwap()Z
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;

    instance-of v0, v0, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$Swap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isValidForPrepareSwap(Ljava/lang/String;)Z
    .locals 9

    .line 869
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_give_token_validation:I

    invoke-interface {v0, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 870
    :cond_0
    iget-object v3, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_receive_token_amount_validation:I

    invoke-interface {v0, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 871
    :cond_1
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_diff_tokens_validation:I

    invoke-interface {v0, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 872
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    if-nez v0, :cond_a

    invoke-static {p1}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    goto/16 :goto_3

    .line 873
    :cond_5
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->isAvailableBalanceLessThanAmount(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 874
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 875
    instance-of v0, p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->showNotEnoughMoneyBinanceErrorDialog()V

    goto/16 :goto_4

    .line 876
    :cond_6
    instance-of p1, p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    new-instance v0, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    iget-object v4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v4

    iget-object v5, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->showNotEnoughMoneyErrorDialog(Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    goto :goto_4

    .line 879
    :cond_7
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveTokensMetadata:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {p0, v0, v2, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-ne p1, v2, :cond_8

    move p1, v2

    goto :goto_2

    :cond_8
    move p1, v1

    :goto_2
    if-eqz p1, :cond_9

    .line 880
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_approve_info_not_loaded_yet_validation:I

    invoke-interface {v0, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    .line 881
    invoke-direct {p0, v1, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo(ZZ)V

    goto :goto_4

    :cond_9
    move p1, v2

    goto :goto_5

    .line 872
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_amount_enter_valid_amount_title:I

    invoke-interface {v0, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_b
    :goto_4
    move p1, v1

    .line 886
    :goto_5
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;

    instance-of v0, v0, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$PrepareSwap;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    move v1, v2

    :cond_c
    return v1
.end method

.method private final loadApproveTokensInfo(ZZ)V
    .locals 4

    .line 653
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v0, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-wide/16 v0, 0x1e

    .line 656
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    goto :goto_0

    .line 657
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 659
    invoke-static {p0, v2, v1, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    .line 662
    new-instance v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$1;

    invoke-direct {v2, p0, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    new-instance v3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 668
    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 669
    new-instance v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda3;-><init>(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v2, "private fun loadApproveT\u2026}\n                }\n    }"

    .line 662
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ZZ)V

    new-instance p1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v3}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p2, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, p2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveMetadataDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic loadApproveTokensInfo$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 652
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo(ZZ)V

    return-void
.end method

.method private static final loadApproveTokensInfo$lambda$27(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final loadApproveTokensInfo$lambda$28(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 671
    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    const-string p1, "viewState"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/smedialink/ui/base/mvp/base/BaseView$DefaultImpls;->showLoadingDialog$default(Lcom/smedialink/ui/base/mvp/base/BaseView;ZZLio/reactivex/disposables/Disposable;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final loadAvailableOppositeSwapTokensBinance(Ljava/lang/String;ZLorg/fork/utils/Callbacks$Callback;)V
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v0, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-nez v0, :cond_0

    return-void

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 623
    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getOppositeTokensForConvertByToken(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 624
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 625
    new-instance v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$2;

    invoke-direct {v1, p2, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$2;-><init>(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance p2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda2;

    invoke-direct {p2, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p2

    const-string v0, "private fun loadAvailabl\u2026     .autoDispose()\n    }"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;)V

    new-instance p1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p3, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v0, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, p3}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p2, p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 639
    invoke-static {p0, p1, p3, p2, p3}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic loadAvailableOppositeSwapTokensBinance$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;ZLorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 618
    sget-object p3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda11;->INSTANCE:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda11;

    .line 615
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance(Ljava/lang/String;ZLorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final loadAvailableOppositeSwapTokensBinance$lambda$24()V
    .locals 0

    return-void
.end method

.method private static final loadAvailableOppositeSwapTokensBinance$lambda$25(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 625
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final loadAvailableSwapTokens(Lcom/smedialink/model/wallet/swap/SwapSide;)V
    .locals 10

    .line 643
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 644
    instance-of v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 p1, 0x3

    invoke-static {p0, v3, v2, p1, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;ZLorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    goto :goto_0

    .line 645
    :cond_0
    instance-of v0, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 646
    invoke-static/range {v4 .. v9}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensCrypto$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ZLorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    const/4 p1, 0x2

    .line 647
    invoke-static {p0, v3, v3, p1, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;ZZILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final loadAvailableSwapTokensBinance(ZLorg/fork/utils/Callbacks$Callback;)V
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v0, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-nez v0, :cond_0

    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 596
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getTokensForConvert()Lio/reactivex/Observable;

    move-result-object v0

    .line 597
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 598
    new-instance v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$2;

    invoke-direct {v1, p1, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$2;-><init>(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda0;

    invoke-direct {p1, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "private fun loadAvailabl\u2026     .autoDispose()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lorg/fork/utils/Callbacks$Callback;)V

    new-instance p2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v0, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 612
    invoke-static {p0, p1, v0, p2, v0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic loadAvailableSwapTokensBinance$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;ZLorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 591
    sget-object p2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda10;->INSTANCE:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda10;

    .line 589
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance(ZLorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final loadAvailableSwapTokensBinance$lambda$20()V
    .locals 0

    return-void
.end method

.method private static final loadAvailableSwapTokensBinance$lambda$21(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final loadAvailableSwapTokensCrypto(Lcom/smedialink/model/wallet/swap/SwapSide;ZLorg/fork/utils/Callbacks$Callback;)V
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v0, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-nez v0, :cond_0

    return-void

    .line 564
    :cond_0
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p1

    .line 566
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;

    .line 569
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    .line 567
    invoke-virtual {v0, p1, v1}, Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;->getAvailableTokensToSwap(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)Lio/reactivex/Observable;

    move-result-object v0

    .line 571
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 572
    new-instance v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$2;

    invoke-direct {v1, p2, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$2;-><init>(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance p2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda1;

    invoke-direct {p2, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p2

    const-string v0, "private fun loadAvailabl\u2026     .autoDispose()\n    }"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lorg/fork/utils/Callbacks$Callback;)V

    new-instance p1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p3, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v0, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, p3}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p2, p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 586
    invoke-static {p0, p1, p3, p2, p3}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic loadAvailableSwapTokensCrypto$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ZLorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 558
    sget-object p1, Lcom/smedialink/model/wallet/swap/SwapSide;->INPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 560
    sget-object p3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda12;->INSTANCE:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda12;

    .line 557
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensCrypto(Lcom/smedialink/model/wallet/swap/SwapSide;ZLorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final loadAvailableSwapTokensCrypto$lambda$17()V
    .locals 0

    return-void
.end method

.method private static final loadAvailableSwapTokensCrypto$lambda$18(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final loadBalance(Lcom/smedialink/model/wallet/select/SelectableToken;)V
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 514
    instance-of v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadBalanceBinance(Lcom/smedialink/model/wallet/select/SelectableToken;)V

    goto :goto_0

    .line 515
    :cond_0
    instance-of v0, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadBalanceCrypto(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final loadBalanceBinance(Lcom/smedialink/model/wallet/select/SelectableToken;)V
    .locals 3

    .line 520
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 521
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getUserBalance()Lio/reactivex/Observable;

    move-result-object v0

    .line 522
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceBinance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceBinance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/select/SelectableToken;)V

    new-instance p1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceBinance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceBinance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 536
    invoke-static {p0, p1, v0, v1, v0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadBalanceCrypto(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V
    .locals 8

    .line 540
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 541
    invoke-static {p0, v6, v7, v6}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->getTokenBalance$default(Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;ZLcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 542
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V

    new-instance p1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    invoke-static {p0, p1, v6, v7, v6}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final prepareForSwapBinance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 459
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->isValidForPrepareSwap(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 462
    invoke-virtual {v0, p2, p3, p1}, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getConvertQuote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 467
    iget-object p2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    const-string p3, "viewState"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 p3, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 469
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance p3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapBinance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {p3, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapBinance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v0, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, p3}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapBinance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p3, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapBinance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance p2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, p3}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, v0, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 479
    invoke-static {p0, p1, v1, p2, v1}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final prepareForSwapCrypto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)V
    .locals 10

    .line 483
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->isValidForPrepareSwap(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;

    .line 487
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {v0, p2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    .line 488
    invoke-virtual {v0, p3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    .line 490
    sget-object v5, Lcom/smedialink/storage/domain/model/wallet/swap/TradeType;->EXACT_INPUT:Lcom/smedialink/storage/domain/model/wallet/swap/TradeType;

    .line 491
    sget-object p2, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->PERCENT_5:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->getPercent()F

    move-result v6

    .line 492
    sget-object p2, Lcom/smedialink/model/wallet/swap/SwapSide;->INPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    invoke-direct {p0, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v7

    .line 493
    sget-object p2, Lcom/smedialink/model/wallet/swap/SwapSide;->OUTPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    invoke-direct {p0, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v8

    move-object v4, p1

    move-object v9, p4

    .line 486
    invoke-virtual/range {v1 .. v9}, Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;->getQuoteToSwap(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/swap/TradeType;FLcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)Lio/reactivex/Observable;

    move-result-object p1

    .line 496
    iget-object p2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "swapInteractor\n         \u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    const-string p3, "viewState"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 p3, 0x0

    const/4 p4, 0x2

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 498
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance p3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapCrypto$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {p3, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapCrypto$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance p4, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p4, p3}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapCrypto$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p3, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapCrypto$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance p2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, p3}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, p4, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 509
    invoke-static {p0, p1, v0, p2, v0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V
    .locals 1

    .line 861
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;

    .line 862
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method private final resetLoadedInformation()V
    .locals 1

    .line 339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectableSupportedSwapTokens:Ljava/util/HashMap;

    .line 340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveTokensMetadata:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 341
    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    return-void
.end method

.method private final resetStateTo(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V
    .locals 2

    .line 728
    instance-of v0, p1, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$Idle;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 729
    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    .line 730
    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    .line 731
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;->Companion:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline$Companion;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline$Companion;->getDefaultValue()Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object v1

    iput-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    .line 732
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->Companion:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage$Companion;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage$Companion;->getDefaultValue()Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object v1

    iput-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSlippage:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    .line 733
    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 734
    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 738
    :cond_0
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method private final resolveApproveArgs()Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs;
    .locals 20

    move-object/from16 v0, p0

    .line 773
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v1, v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 775
    :cond_0
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    iget-object v3, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    const-string v4, ""

    if-nez v3, :cond_2

    move-object v3, v4

    :cond_2
    invoke-virtual {v1, v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    .line 778
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->isCryptoTokens()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getNativeToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v5

    if-eq v1, v5, :cond_9

    .line 779
    iget-object v5, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveTokensMetadata:Ljava/util/HashMap;

    invoke-static {v0, v2, v3, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;

    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_4
    move-object v8, v2

    :goto_1
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_5
    move-object v6, v2

    :goto_2
    check-cast v6, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;

    goto :goto_3

    :cond_6
    move-object v6, v2

    .line 780
    :goto_3
    instance-of v5, v6, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    if-eqz v5, :cond_9

    .line 782
    sget-object v5, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {v5, v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v1

    const-string v5, "null cannot be cast to non-null type com.smedialink.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    check-cast v8, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    .line 783
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->accessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    iget-object v5, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v5}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lcom/smedialink/storage/domain/model/crypto/Wallet;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_7
    move-object v1, v2

    :goto_4
    if-nez v1, :cond_8

    move-object v10, v4

    goto :goto_5

    :cond_8
    move-object v10, v1

    :goto_5
    new-instance v9, Ljava/math/BigInteger;

    .line 784
    check-cast v6, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 785
    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;->getChain()Lcom/smedialink/storage/domain/model/crypto/Chain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/Chain;->getId()J

    move-result-wide v11

    .line 786
    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;->getNonce()Ljava/math/BigInteger;

    move-result-object v13

    .line 787
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;->getPrice()Ljava/math/BigInteger;

    move-result-object v14

    .line 788
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;->getLimit()Ljava/math/BigInteger;

    move-result-object v15

    .line 789
    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getTokenContractAddress()Ljava/lang/String;

    move-result-object v16

    .line 790
    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v17

    .line 791
    invoke-static {v0, v2, v3, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v18

    .line 792
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    .line 781
    new-instance v2, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;

    move-object v7, v2

    move-object/from16 v19, v1

    invoke-direct/range {v7 .. v19}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;Ljava/math/BigInteger;Ljava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)V

    :cond_9
    return-object v2
.end method

.method private final resolveArgs()V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 370
    instance-of v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-eqz v1, :cond_0

    .line 371
    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;->getFromToken()Lcom/smedialink/model/wallet/select/SelectableToken;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 372
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;->getToToken()Lcom/smedialink/model/wallet/select/SelectableToken;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    goto :goto_0

    .line 374
    :cond_0
    instance-of v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v1, :cond_1

    .line 375
    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getSwapProtocol()Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    .line 376
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getSwapProtocolInfo()Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;

    .line 377
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getFromToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveToken(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/model/wallet/select/SelectableToken;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 378
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getToToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveToken(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/model/wallet/select/SelectableToken;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    :cond_1
    :goto_0
    return-void
.end method

.method private final resolveAvailableNetworks()V
    .locals 2

    .line 345
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->getSupportedNetworks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    return-void
.end method

.method private final resolveSelectedNetworkType()V
    .locals 7

    .line 357
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getForcedNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getForcedNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 359
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getForcedNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    goto :goto_3

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    .line 288
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 361
    iget-object v6, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v6}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v6

    if-ne v5, v6, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    if-eqz v5, :cond_1

    goto :goto_1

    :cond_3
    move-object v1, v4

    :goto_1
    check-cast v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    if-nez v1, :cond_4

    .line 362
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 361
    :cond_4
    iput-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 363
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    .line 288
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 363
    iget-object v6, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    if-eq v5, v6, :cond_6

    move v5, v2

    goto :goto_2

    :cond_6
    move v5, v3

    :goto_2
    if-eqz v5, :cond_5

    move-object v4, v1

    :cond_7
    check-cast v4, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    if-nez v4, :cond_8

    .line 364
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 363
    :cond_8
    iput-object v4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    :goto_3
    return-void
.end method

.method private final resolveSwapArgs()Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs;
    .locals 25

    move-object/from16 v0, p0

    .line 803
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v1, v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 805
    :cond_0
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    iget-object v3, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    const-string v4, ""

    if-nez v3, :cond_2

    move-object v3, v4

    :cond_2
    invoke-virtual {v1, v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    .line 808
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->isCryptoTokens()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 809
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    if-eqz v1, :cond_4

    .line 811
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountIn()Ljava/math/BigDecimal;

    move-result-object v7

    .line 812
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountBound()Ljava/math/BigInteger;

    move-result-object v15

    .line 813
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getInputTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.smedialink.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    check-cast v8, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    .line 814
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v1

    check-cast v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    .line 815
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;->getChain()Lcom/smedialink/storage/domain/model/crypto/Chain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/Chain;->getId()J

    move-result-wide v10

    .line 816
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;->getNonce()Ljava/math/BigInteger;

    move-result-object v12

    .line 817
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;->getPrice()Ljava/math/BigInteger;

    move-result-object v13

    .line 818
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;->getLimit()Ljava/math/BigInteger;

    move-result-object v14

    .line 819
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getContractAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move-object/from16 v16, v4

    goto :goto_1

    :cond_3
    move-object/from16 v16, v1

    .line 820
    :goto_1
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getSwapMethod()Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    move-result-object v17

    .line 821
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getPath()Ljava/util/List;

    move-result-object v18

    .line 822
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;->getMinutes()I

    move-result v19

    .line 823
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getQuoteId()Ljava/lang/String;

    move-result-object v22

    .line 824
    sget-object v1, Lcom/smedialink/model/wallet/swap/SwapSide;->INPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v23

    .line 825
    sget-object v1, Lcom/smedialink/model/wallet/swap/SwapSide;->OUTPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v24

    .line 826
    iget-object v6, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    .line 827
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getValue()Ljava/math/BigInteger;

    move-result-object v20

    .line 828
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getCallData()Ljava/lang/String;

    move-result-object v21

    .line 810
    new-instance v1, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;

    move-object v5, v1

    invoke-direct/range {v5 .. v24}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;-><init>(Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;Ljava/util/List;ILjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    move-object v2, v1

    :cond_4
    return-object v2
.end method

.method private final resolveSwapFeeScreenArgs()Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;
    .locals 10

    .line 757
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v0, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 759
    :cond_0
    iget-object v3, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    if-eqz v0, :cond_1

    .line 760
    new-instance v1, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    .line 761
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 762
    iget-object v4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    .line 763
    iget-object v5, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSlippage:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    .line 764
    iget-object v6, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 765
    sget-object v0, Lcom/smedialink/model/wallet/swap/SwapSide;->INPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v7

    .line 766
    sget-object v0, Lcom/smedialink/model/wallet/swap/SwapSide;->OUTPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v8

    .line 767
    iget-object v9, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    move-object v2, v1

    .line 760
    invoke-direct/range {v2 .. v9}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;-><init>(Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)V

    :cond_1
    return-object v1
.end method

.method private final resolveSwapProtocol()V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-nez v1, :cond_0

    return-void

    .line 351
    :cond_0
    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getSwapProtocol()Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;->isUniswap()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    sget-object v0, Lcom/smedialink/utils/helper/wallet/SwapHelper;->INSTANCE:Lcom/smedialink/utils/helper/wallet/SwapHelper;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smedialink/utils/helper/wallet/SwapHelper;->resolveSwapProtocolByNetwork(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    :cond_1
    return-void
.end method

.method private final resolveToken(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/model/wallet/select/SelectableToken;
    .locals 3

    .line 911
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getForcedNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getForcedNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 914
    invoke-static {p0, v2, v0, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_1

    .line 916
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {v1, p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-static {p1, v1, v0}, Lcom/smedialink/mapper/wallet/select/SelectableMappingKt;->mapToSelectable(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lcom/smedialink/model/wallet/select/SelectableToken$WithResLogo;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method private final selectApproveFee(Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 2

    .line 856
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    .line 857
    new-instance p1, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$NeedApprove;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getApproveFeeType()Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    invoke-direct {p1, v0, v1}, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$NeedApprove;-><init>(Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;Lcom/smedialink/model/wallet/select/SelectableToken;)V

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method private static final selectToken$lambda$0(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->checkMinMaxInputValues()V

    return-void
.end method

.method private final setupSwapInformation()V
    .locals 8

    .line 384
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 385
    instance-of v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 387
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->binance_convert_toolbar_title:I

    invoke-interface {v0, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 388
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->binance_convert_description:I

    invoke-interface {v0, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 389
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_ic_bnb_logo:I

    .line 390
    sget-object v6, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;->GLOBAL:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    const/4 v5, 0x0

    .line 386
    invoke-interface/range {v1 .. v6}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->setupScreenForSwap(Ljava/lang/String;Ljava/lang/String;IZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;)V

    goto :goto_0

    .line 394
    :cond_0
    instance-of v0, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v0, :cond_1

    .line 395
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkSwitchState()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 396
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 397
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->getName()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 398
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->getLongDescription()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 399
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->getLogo()I

    move-result v5

    .line 396
    invoke-interface/range {v2 .. v7}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->setupScreenForSwap(Ljava/lang/String;Ljava/lang/String;IZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic startChooseNetworkDialog$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 91
    sget-object p1, Lcom/smedialink/model/wallet/swap/SwapSide;->INPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->startChooseNetworkDialog(Lcom/smedialink/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method private static final startSelectTokenDialog$lambda$2(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenDialog(Lcom/smedialink/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method private static final startSelectTokenDialog$lambda$4(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenDialog(Lcom/smedialink/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method private static final startSelectTokenDialog$lambda$5(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenDialog(Lcom/smedialink/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method private static final startSwapFlow$lambda$7(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapCrypto()V

    return-void
.end method

.method private final startUpdatingApproveMetadataIfNeed(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;",
            ">;Z)V"
        }
    .end annotation

    .line 1747
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move p1, v2

    goto :goto_0

    .line 1748
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;

    .line 692
    instance-of v0, v0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;

    if-eqz v0, :cond_2

    move p1, v1

    :goto_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 695
    invoke-static {p0, v1, v2, p1, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;ZZILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    .line 697
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveMetadataDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_4
    :goto_1
    return-void
.end method

.method private final swapBinance()V
    .locals 5

    .line 438
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->isValidForBinanceSwap()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 441
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->getQuoteId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->confirmConvertQuote(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v3, "viewState"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v3, v4, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 444
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$swapBinance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$swapBinance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v4, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v3}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$swapBinance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$swapBinance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v3}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v4, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 454
    invoke-static {p0, v0, v2, v1, v2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final swapCrypto()V
    .locals 5

    .line 415
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->isValidForCryptoSwap()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 417
    :cond_0
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveSwapArgs()Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 419
    :cond_1
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;

    .line 420
    invoke-virtual {v1, v0}, Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;->swap(Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs;)Lio/reactivex/Observable;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "swapInteractor\n         \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 423
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$swapCrypto$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$swapCrypto$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v3, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$swapCrypto$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$swapCrypto$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 434
    invoke-static {p0, v0, v4, v1, v4}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final approve()V
    .locals 5

    .line 158
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->isValidForApprove()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveApproveArgs()Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;

    .line 163
    invoke-virtual {v1, v0}, Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;->approveToken(Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs;)Lio/reactivex/Observable;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "swapInteractor\n         \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v3, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 177
    invoke-static {p0, v0, v4, v1, v4}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final getApproveConfirmationDialogModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 7

    .line 204
    new-instance v0, Lcom/smedialink/model/dialog/DialogModel;

    .line 205
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 206
    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 207
    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_description:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 208
    iget-object v5, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/smedialink/model/wallet/select/SelectableToken;->getTicker()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_1

    const-string v5, ""

    :cond_1
    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 206
    invoke-interface {v2, v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 210
    iget-object v3, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 211
    iget-object v4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_action:I

    invoke-interface {v4, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 204
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getApproveTokenDescriptionModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 8

    .line 197
    new-instance v7, Lcom/smedialink/model/dialog/DialogModel;

    .line 198
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_what_is_approve:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_what_is_approve_dialog_description:I

    invoke-interface {v0, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 200
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, v7

    .line 197
    invoke-direct/range {v0 .. v6}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method protected onFirstViewAttach()V
    .locals 4

    .line 307
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveArgs()V

    .line 308
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveAvailableNetworks()V

    .line 309
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveSelectedNetworkType()V

    .line 310
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveSwapProtocol()V

    .line 312
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->setupSwapInformation()V

    .line 313
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    sget-object v1, Lcom/smedialink/model/wallet/swap/SwapSide;->INPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    invoke-direct {p0, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->setupNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    .line 314
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    sget-object v2, Lcom/smedialink/model/wallet/swap/SwapSide;->OUTPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    invoke-direct {p0, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->setupNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    .line 315
    new-instance v0, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$PrepareSwap;

    iget-object v3, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    invoke-direct {v0, v3}, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$PrepareSwap;-><init>(Lcom/smedialink/model/wallet/select/SelectableToken;)V

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    .line 317
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectToken(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectToken(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;)V

    .line 320
    :cond_1
    invoke-direct {p0, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokens(Lcom/smedialink/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method public final prepareForSwap(Ljava/lang/String;)V
    .locals 4

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 182
    instance-of v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v2

    :cond_1
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    invoke-direct {p0, p1, v0, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->prepareForSwapBinance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 183
    :cond_4
    instance-of v0, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v3

    :goto_2
    if-nez v0, :cond_6

    move-object v0, v2

    :cond_6
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v3

    :cond_7
    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    move-object v2, v3

    :goto_3
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->prepareForSwapCrypto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public final processSwapFee(Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;)V
    .locals 2

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getMetadata()Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    .line 110
    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getSelectedFee()Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    .line 111
    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getSelectedDeadline()Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    .line 112
    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getSelectedSlippage()Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSlippage:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    .line 113
    new-instance p1, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSwapFeeType()Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, v0, v1}, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;-><init>(Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;)V

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method public final resetStateIfNeed()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;

    instance-of v0, v0, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$Swap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;

    .line 190
    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    .line 191
    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    .line 192
    new-instance v0, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$PrepareSwap;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    invoke-direct {v0, v1}, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$PrepareSwap;-><init>(Lcom/smedialink/model/wallet/select/SelectableToken;)V

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    :cond_0
    return-void
.end method

.method public final selectToken(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;)V
    .locals 13

    const-string v0, "side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 118
    instance-of v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 119
    sget-object v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 129
    :cond_0
    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 130
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v0, :cond_5

    .line 131
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getMaxInputDigits()I

    move-result v4

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getDecimals()I

    move-result v5

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->onTokenSelected(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;IILcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    .line 132
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->checkMinMaxInputValues()V

    goto/16 :goto_1

    .line 121
    :cond_1
    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 122
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getMaxInputDigits()I

    move-result v4

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getDecimals()I

    move-result v5

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->onTokenSelected(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;IILcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    .line 123
    invoke-virtual {p2}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v10, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda5;

    invoke-direct {v10, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda5;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;ZLorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    .line 126
    invoke-direct {p0, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadBalance(Lcom/smedialink/model/wallet/select/SelectableToken;)V

    goto :goto_1

    .line 137
    :cond_2
    instance-of v0, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v0, :cond_5

    .line 138
    sget-object v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_0

    .line 147
    :cond_3
    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 148
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getMaxInputDigits()I

    move-result v5

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v6

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v7

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->onTokenSelected(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;IILcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    goto :goto_0

    .line 140
    :cond_4
    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 141
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getMaxInputDigits()I

    move-result v5

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v6

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v7

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->onTokenSelected(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;IILcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    .line 143
    invoke-direct {p0, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadBalance(Lcom/smedialink/model/wallet/select/SelectableToken;)V

    .line 144
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->checkSelectedTokenApprove()V

    .line 152
    :goto_0
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateIfNeed()V

    :cond_5
    :goto_1
    return-void
.end method

.method public final showChangeNetworkHintIfNeeded()V
    .locals 3

    .line 295
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkSwitchState()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 296
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->hintsPreferenceHelper:Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;

    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork$SwapScreen;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork$SwapScreen;

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;->shouldShowHint(Lcom/smedialink/storage/domain/model/wallet/Hint;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->showChangeNetworkHint()V

    .line 298
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->hintsPreferenceHelper:Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;

    invoke-interface {v0, v2}, Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;->onHintShowed(Lcom/smedialink/storage/domain/model/wallet/Hint;)V

    :cond_0
    return-void
.end method

.method public final startChooseNetworkDialog(Lcom/smedialink/model/wallet/swap/SwapSide;)V
    .locals 4

    const-string v0, "side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    new-instance v3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;

    invoke-direct {v3, p1, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;-><init>(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/smedialink/ui/base/mvp/SwitchNetworkView;->showChooseNetworkDialog(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final startSelectTokenDialog(Lcom/smedialink/model/wallet/swap/SwapSide;)V
    .locals 10

    const-string v0, "side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/smedialink/model/wallet/swap/SwapSide;->INPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    :goto_0
    move-object v4, v1

    .line 216
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 217
    instance-of v2, v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_c

    .line 218
    sget-object v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v5, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto/16 :goto_9

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-nez v0, :cond_2

    .line 237
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_give_token_validation:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceAvailableOppositeSelectableSwapTokens:Lkotlin/Pair;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v0, v3

    :goto_1
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v3

    :goto_2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 241
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 244
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceAvailableOppositeSelectableSwapTokens:Lkotlin/Pair;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 1549
    new-instance v3, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;

    .line 244
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->getTokenInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/mapper/wallet/select/SelectableMappingKt;->mapToSelectable(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;)Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;

    move-result-object v1

    .line 1621
    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    if-nez v3, :cond_6

    .line 244
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    goto :goto_4

    :cond_6
    move-object v5, v3

    .line 245
    :goto_4
    sget-object v7, Lcom/smedialink/model/wallet/select/SelectableType;->BINANCE:Lcom/smedialink/model/wallet/select/SelectableType;

    .line 247
    sget-object v6, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->BINANCE_SMART_CHAIN:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    const/4 v8, 0x0

    .line 241
    new-instance v9, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$4;

    invoke-direct {v9, p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$4;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    move-object v3, p1

    invoke-interface/range {v2 .. v9}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->openSelectTokenDialog(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/select/SelectableType;ZLkotlin/jvm/functions/Function1;)V

    goto/16 :goto_9

    .line 252
    :cond_7
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v3

    :cond_8
    if-nez v3, :cond_9

    const-string v3, ""

    :cond_9
    new-instance v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda8;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    invoke-direct {p0, v3, v5, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance(Ljava/lang/String;ZLorg/fork/utils/Callbacks$Callback;)V

    goto/16 :goto_9

    .line 220
    :cond_a
    sget-object v6, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->BINANCE_SMART_CHAIN:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-direct {p0, v6}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getAvailableTokensByNetwork(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 221
    new-instance v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda9;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    invoke-direct {p0, v5, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance(ZLorg/fork/utils/Callbacks$Callback;)V

    goto/16 :goto_9

    .line 223
    :cond_b
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 226
    invoke-direct {p0, v6}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getAvailableTokensByNetwork(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/util/List;

    move-result-object v5

    .line 227
    sget-object v7, Lcom/smedialink/model/wallet/select/SelectableType;->BINANCE:Lcom/smedialink/model/wallet/select/SelectableType;

    const/4 v8, 0x1

    .line 223
    new-instance v9, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$2;

    invoke-direct {v9, p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$2;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    move-object v3, p1

    invoke-interface/range {v2 .. v9}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->openSelectTokenDialog(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/select/SelectableType;ZLkotlin/jvm/functions/Function1;)V

    goto/16 :goto_9

    .line 259
    :cond_c
    instance-of v1, v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v1, :cond_14

    .line 260
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getAvailableTokensByNetwork(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 261
    new-instance v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda7;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    invoke-direct {p0, p1, v5, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensCrypto(Lcom/smedialink/model/wallet/swap/SwapSide;ZLorg/fork/utils/Callbacks$Callback;)V

    goto/16 :goto_9

    .line 263
    :cond_d
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v6

    .line 264
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    sget-object v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-ne v1, v5, :cond_e

    move-object v0, v3

    goto :goto_5

    :cond_e
    if-ne p1, v0, :cond_f

    .line 267
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    goto :goto_5

    :cond_f
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 270
    :goto_5
    invoke-direct {p0, v6}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getAvailableTokensByNetwork(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/util/List;

    move-result-object v1

    .line 766
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 270
    invoke-virtual {v8}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v8

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :cond_11
    move-object v9, v3

    :goto_7
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v5

    if-eqz v8, :cond_10

    .line 857
    invoke-interface {v7, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 272
    :cond_12
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 276
    sget-object v0, Lcom/smedialink/model/wallet/select/SelectableType;->INTERNAL:Lcom/smedialink/model/wallet/select/SelectableType;

    .line 277
    sget-object v1, Lcom/smedialink/model/wallet/swap/SwapSide;->INPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    if-ne p1, v1, :cond_13

    move v8, v5

    goto :goto_8

    :cond_13
    const/4 v1, 0x0

    move v8, v1

    .line 272
    :goto_8
    new-instance v9, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$7;

    invoke-direct {v9, p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$7;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    move-object v3, p1

    move-object v5, v7

    move-object v7, v0

    invoke-interface/range {v2 .. v9}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->openSelectTokenDialog(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/select/SelectableType;ZLkotlin/jvm/functions/Function1;)V

    :cond_14
    :goto_9
    return-void
.end method

.method public final startSwapFlow()V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 289
    instance-of v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapBinance()V

    goto :goto_0

    .line 290
    :cond_0
    instance-of v0, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSwapConfirmationDialogModel()Lcom/smedialink/model/dialog/DialogModel;

    move-result-object v1

    new-instance v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda6;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    invoke-interface {v0, v1, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->showSwapConfirmationDialog(Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V

    :cond_1
    :goto_0
    return-void
.end method
