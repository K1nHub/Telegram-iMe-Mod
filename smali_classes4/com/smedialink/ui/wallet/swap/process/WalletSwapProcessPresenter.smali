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
    value = "SMAP\nWalletSwapProcessPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSwapProcessPresenter.kt\ncom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,966:1\n39#2,6:967\n39#2,6:984\n39#2,6:990\n39#2,6:996\n39#2,6:1002\n39#2,6:1008\n39#2,6:1014\n39#2,6:1020\n39#2,6:1026\n39#2,6:1032\n39#2,6:1038\n1547#3:973\n1618#3,3:974\n764#3:977\n855#3,2:978\n286#3,2:980\n286#3,2:982\n1741#3,3:1044\n1741#3,3:1048\n1#4:1047\n*S KotlinDebug\n*F\n+ 1 WalletSwapProcessPresenter.kt\ncom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter\n*L\n166#1:967,6\n422#1:984,6\n442#1:990,6\n466#1:996,6\n494#1:1002,6\n518#1:1008,6\n537#1:1014,6\n569#1:1020,6\n594#1:1026,6\n620#1:1032,6\n664#1:1038,6\n243#1:973\n243#1:974,3\n269#1:977\n269#1:978,2\n360#1:980,2\n362#1:982,2\n681#1:1044,3\n881#1:1048,3\n*E\n"
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
.method public static synthetic $r8$lambda$1PpkUxJgeEoYcm7czlD2g8ejciw(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectToken$lambda-0(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4YzRo-dblwSDc3YGoUHOMD4E5gk(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance$lambda-21(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CMSIJrja9h7SwxlPPRuTB-QHQC0()V
    .locals 0

    invoke-static {}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance$lambda-24()V

    return-void
.end method

.method public static synthetic $r8$lambda$LTmEHmLxxydPtvhB-m9tJExLk8s()V
    .locals 0

    invoke-static {}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance$lambda-20()V

    return-void
.end method

.method public static synthetic $r8$lambda$Tl46m77U0qmPX9KlxbvakypYf9g(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$lambda-27(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$b-JkIQbS_YZb9Lrff0yj5mIefpc(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenDialog$lambda-5(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eXkuvTDToCv0TsLmswQfsIwv_iA(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSwapFlow$lambda-7(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gOYI-lgBNkc-jfjd8DK11IWAYE0(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance$lambda-25(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gbrK3krb4dYeUW8Bgn3HW_b27VQ(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenDialog$lambda-2(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iMeQyLEyane7B1ttZ9AKjZZ4HkE(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensCrypto$lambda-18(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$k8fwTJ0uhSvnKS4HdDrKg3LXZOs(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$lambda-28(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n7tSA5BBgYjONK3GjkJnQafPnnk()V
    .locals 0

    invoke-static {}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensCrypto$lambda-17()V

    return-void
.end method

.method public static synthetic $r8$lambda$tf9VRo2iCEgmTrWGi5-P9FlgZYM(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenDialog$lambda-4(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V

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

    .line 920
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v0, :cond_5

    .line 921
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceAvailableOppositeSelectableSwapTokens:Lkotlin/Pair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->getTokenInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;->getAsset()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-nez v4, :cond_3

    move-object v4, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_4
    check-cast v1, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;

    :goto_1
    if-eqz v1, :cond_5

    .line 923
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->showMinMaxInputValues(Lcom/smedialink/model/wallet/select/SelectableToken;Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;)V

    :cond_5
    return-void
.end method

.method private final checkSelectedTokenApprove()V
    .locals 5

    .line 730
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v0, :cond_7

    .line 731
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveTokensMetadata:Ljava/util/HashMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-nez v4, :cond_2

    move-object v4, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v1

    :cond_3
    check-cast v2, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;

    .line 732
    :goto_1
    instance-of v0, v2, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$Allowed;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$PrepareSwap;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    invoke-direct {v0, v1}, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$PrepareSwap;-><init>(Lcom/smedialink/model/wallet/select/SelectableToken;)V

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    goto :goto_2

    .line 733
    :cond_4
    instance-of v0, v2, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$ApproveInProgress;->INSTANCE:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$ApproveInProgress;

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    goto :goto_2

    .line 734
    :cond_5
    instance-of v0, v2, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    if-eqz v0, :cond_6

    .line 735
    check-cast v2, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    iput-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    .line 736
    new-instance v0, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;->MEDIUM:Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;

    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v3

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->getFeeByLevel(Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;)Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;-><init>(Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;)V

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    .line 737
    new-instance v0, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$NeedApprove;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getApproveFeeType()Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    invoke-direct {v0, v1, v2}, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$NeedApprove;-><init>(Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;Lcom/smedialink/model/wallet/select/SelectableToken;)V

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    goto :goto_2

    .line 739
    :cond_6
    new-instance v0, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$PrepareSwap;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    invoke-direct {v0, v1}, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$PrepareSwap;-><init>(Lcom/smedialink/model/wallet/select/SelectableToken;)V

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private final chooseSwapFee()V
    .locals 2

    .line 914
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveSwapFeeScreenArgs()Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 915
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v1, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->openSwapFeeScreen(Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;)V

    :goto_0
    return-void
.end method

.method private final formatBinanceBalance(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;
    .locals 5

    .line 953
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 954
    sget v1, Lorg/telegram/messenger/R$string;->binance_convert_balance:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 955
    invoke-static {p1}, Lcom/smedialink/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;->getSpotBalanceShortText(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 956
    invoke-static {p1}, Lcom/smedialink/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;->getMarginBalanceShortText(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 953
    invoke-interface {v0, v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getApproveFeeType()Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;
    .locals 7

    .line 832
    new-instance v6, Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Default;

    .line 833
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getFeeDialogModel()Lcom/smedialink/model/dialog/DialogModel;

    move-result-object v1

    .line 834
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v2

    .line 835
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    iget-object v3, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v3

    .line 836
    iget-object v4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 837
    new-instance v5, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$getApproveFeeType$1;

    invoke-direct {v5, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$getApproveFeeType$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    move-object v0, v6

    .line 832
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

    .line 334
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectableSupportedSwapTokens:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 335
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private final getFeeDialogModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 8

    .line 908
    new-instance v7, Lcom/smedialink/model/dialog/DialogModel;

    .line 909
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_fee_dialog_title:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 910
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v0, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, v7

    .line 908
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

    .line 406
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

    .line 410
    sget-object v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;->GLOBAL:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_1

    .line 408
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

    .line 409
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

    .line 326
    sget-object v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 329
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;->isCrossChain()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    goto :goto_0

    .line 330
    :cond_0
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 327
    :cond_2
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    :goto_0
    return-object p1
.end method

.method static synthetic getSelectedNetworkTypeBySwapSide$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 326
    sget-object p1, Lcom/smedialink/model/wallet/swap/SwapSide;->INPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    :cond_0
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p0

    return-object p0
.end method

.method private final getSwapConfirmationDialogModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 13

    .line 928
    new-instance v0, Lcom/smedialink/model/dialog/DialogModel;

    .line 929
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_swap_alert_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 930
    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 931
    instance-of v3, v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 934
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v3, :cond_6

    .line 931
    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 932
    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_swap_alert_description:I

    new-array v7, v7, [Ljava/lang/Object;

    .line 933
    iget-object v10, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;

    if-nez v10, :cond_0

    move-object v10, v9

    goto :goto_0

    :cond_0
    invoke-virtual {v10}, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->getInputAmount()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 934
    :goto_0
    sget-object v11, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;

    invoke-virtual {v11}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getDecimals()I

    move-result v12

    .line 933
    invoke-static {v10, v12}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    .line 935
    iget-object v8, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;

    const/4 v10, 0x0

    if-nez v8, :cond_1

    move-object v8, v10

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->getInputTokenShortName()Ljava/lang/String;

    move-result-object v8

    :goto_1
    const-string v12, ""

    if-nez v8, :cond_2

    move-object v8, v12

    :cond_2
    aput-object v8, v7, v6

    .line 936
    iget-object v6, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->getOutputAmount()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 937
    :goto_2
    invoke-virtual {v11}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getDecimals()I

    move-result v6

    .line 936
    invoke-static {v9, v6}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    .line 938
    iget-object v5, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->getOutputTokenShortName()Ljava/lang/String;

    move-result-object v10

    :goto_3
    if-nez v10, :cond_5

    goto :goto_4

    :cond_5
    move-object v12, v10

    :goto_4
    aput-object v12, v7, v4

    .line 931
    invoke-interface {v2, v3, v7}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 940
    :cond_6
    instance-of v2, v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 941
    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_swap_alert_description:I

    new-array v7, v7, [Ljava/lang/Object;

    .line 942
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

    .line 943
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

    .line 944
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

    .line 945
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

    .line 940
    invoke-interface {v2, v3, v7}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 948
    :goto_5
    iget-object v3, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 949
    iget-object v4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_swap_alert_action:I

    invoke-interface {v4, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 928
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 940
    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final getSwapFeeType()Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;
    .locals 3

    .line 825
    new-instance v0, Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Custom;

    .line 826
    new-instance v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$getSwapFeeType$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$getSwapFeeType$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    .line 827
    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 825
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

    .line 691
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 692
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_APPROVED_AMOUNT_NOT_SUFFICIENT:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 693
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    .line 694
    invoke-direct {p0, v3, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo(ZZ)V

    goto/16 :goto_3

    .line 696
    :cond_0
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->NO_ENOUGH_MONEY:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    if-ne v0, v1, :cond_2

    .line 697
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 698
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

    .line 699
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

    .line 702
    :cond_2
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->ETHER_BLOCK_CHAIN_ERROR:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v1, :cond_3

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_INSUFFICIENT_RESERVES_IN_LIQUIDITY_POOL_OF_TOKENS:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 703
    invoke-static {p0, v3, v3, v0, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;ZZILjava/lang/Object;)V

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
    sget-object p1, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$Idle;->INSTANCE:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$Idle;

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateTo(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    goto :goto_3

    .line 707
    :cond_5
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_DIFF_BTW_TOKEN_EXCHANGE_RATES_IS_TOO_BIG:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v1, :cond_6

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_QUOTE_NOT_FOUND:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_8

    .line 708
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateIfNeed()V

    goto :goto_3

    .line 711
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

    .line 893
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 894
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
    const/4 v2, 0x0

    goto :goto_0

    .line 895
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

    .line 879
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;

    instance-of v0, v0, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$NeedApprove;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 880
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v0, :cond_6

    .line 881
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveTokensMetadata:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    .line 1741
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1742
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;

    .line 881
    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-nez v5, :cond_5

    move-object v5, v3

    goto :goto_0

    :cond_5
    invoke-virtual {v5}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method private final isValidForBinanceSwap()Z
    .locals 1

    .line 889
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

    .line 885
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

    .line 857
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

    .line 858
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

    .line 859
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

    .line 860
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_c

    invoke-static {p1}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v0

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_6

    goto/16 :goto_3

    .line 861
    :cond_6
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->isAvailableBalanceLessThanAmount(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 862
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 863
    instance-of v0, p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->showNotEnoughMoneyBinanceErrorDialog()V

    goto :goto_4

    .line 864
    :cond_7
    instance-of p1, p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz p1, :cond_d

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

    .line 867
    :cond_8
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveTokensMetadata:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {p0, v0, v2, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_a

    :cond_9
    const/4 p1, 0x0

    goto :goto_2

    :cond_a
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-ne p1, v2, :cond_9

    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_b

    .line 868
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_approve_info_not_loaded_yet_validation:I

    invoke-interface {v0, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    .line 869
    invoke-direct {p0, v1, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo(ZZ)V

    goto :goto_4

    :cond_b
    const/4 p1, 0x1

    goto :goto_5

    .line 860
    :cond_c
    :goto_3
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_amount_enter_valid_amount_title:I

    invoke-interface {v0, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_d
    :goto_4
    const/4 p1, 0x0

    .line 874
    :goto_5
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;

    instance-of v0, v0, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$PrepareSwap;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method private final loadApproveTokensInfo(ZZ)V
    .locals 4

    .line 643
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v0, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-wide/16 v0, 0x1e

    .line 646
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    goto :goto_0

    .line 647
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 649
    invoke-static {p0, v2, v1, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    .line 652
    new-instance v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$1;

    invoke-direct {v2, p0, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    new-instance v3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 658
    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 659
    new-instance v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda3;-><init>(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v2, "private fun loadApproveT\u2026}\n                }\n    }"

    .line 652
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ZZ)V

    new-instance p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p1, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v3, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveMetadataDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic loadApproveTokensInfo$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 642
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo(ZZ)V

    return-void
.end method

.method private static final loadApproveTokensInfo$lambda-27(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final loadApproveTokensInfo$lambda-28(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 661
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

    .line 611
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v0, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-nez v0, :cond_0

    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 614
    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getOppositeTokensForConvertByToken(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 615
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 616
    new-instance v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda1;-><init>(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p2

    const-string v0, "binanceInternalInteracto\u2026ervable\n                }"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;)V

    new-instance p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p1, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {p2, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 629
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

    .line 609
    sget-object p3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda10;->INSTANCE:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda10;

    .line 606
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance(Ljava/lang/String;ZLorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final loadAvailableOppositeSwapTokensBinance$lambda-24()V
    .locals 0

    return-void
.end method

.method private static final loadAvailableOppositeSwapTokensBinance$lambda-25(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 2

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 617
    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    const-string p1, "viewState"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p0, p1, v0, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private final loadAvailableSwapTokens(Lcom/smedialink/model/wallet/swap/SwapSide;)V
    .locals 10

    .line 633
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 634
    instance-of v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 p1, 0x3

    invoke-static {p0, v3, v2, p1, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;ZLorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    goto :goto_0

    .line 635
    :cond_0
    instance-of v0, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 636
    invoke-static/range {v4 .. v9}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensCrypto$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ZLorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    const/4 p1, 0x2

    .line 637
    invoke-static {p0, v3, v3, p1, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;ZZILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final loadAvailableSwapTokensBinance(ZLorg/fork/utils/Callbacks$Callback;)V
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v0, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-nez v0, :cond_0

    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 588
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getTokensForConvert()Lio/reactivex/Observable;

    move-result-object v0

    .line 589
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 590
    new-instance v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda0;-><init>(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "binanceInternalInteracto\u2026ervable\n                }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lorg/fork/utils/Callbacks$Callback;)V

    new-instance p2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p2, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {p1, v1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 603
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

    .line 583
    sget-object p2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda11;->INSTANCE:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda11;

    .line 581
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance(ZLorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final loadAvailableSwapTokensBinance$lambda-20()V
    .locals 0

    return-void
.end method

.method private static final loadAvailableSwapTokensBinance$lambda-21(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 2

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 591
    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    const-string p1, "viewState"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p0, p1, v0, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private final loadAvailableSwapTokensCrypto(Lcom/smedialink/model/wallet/swap/SwapSide;ZLorg/fork/utils/Callbacks$Callback;)V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v0, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-nez v0, :cond_0

    return-void

    .line 557
    :cond_0
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p1

    .line 559
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;

    .line 562
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    .line 560
    invoke-virtual {v0, p1, v1}, Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;->getAvailableTokensToSwap(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)Lio/reactivex/Observable;

    move-result-object v0

    .line 564
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 565
    new-instance v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda2;-><init>(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p2

    const-string v0, "swapInteractor\n         \u2026ervable\n                }"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lorg/fork/utils/Callbacks$Callback;)V

    new-instance p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p1, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {p2, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 578
    invoke-static {p0, p1, p3, p2, p3}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic loadAvailableSwapTokensCrypto$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ZLorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 551
    sget-object p1, Lcom/smedialink/model/wallet/swap/SwapSide;->INPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 553
    sget-object p3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda12;->INSTANCE:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda12;

    .line 550
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensCrypto(Lcom/smedialink/model/wallet/swap/SwapSide;ZLorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final loadAvailableSwapTokensCrypto$lambda-17()V
    .locals 0

    return-void
.end method

.method private static final loadAvailableSwapTokensCrypto$lambda-18(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 2

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 566
    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    const-string p1, "viewState"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p0, p1, v0, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private final loadBalance(Lcom/smedialink/model/wallet/select/SelectableToken;)V
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 509
    instance-of v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadBalanceBinance(Lcom/smedialink/model/wallet/select/SelectableToken;)V

    goto :goto_0

    .line 510
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

    .line 515
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 516
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getUserBalance()Lio/reactivex/Observable;

    move-result-object v0

    .line 517
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceBinance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceBinance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/select/SelectableToken;)V

    new-instance p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceBinance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p1, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceBinance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v2, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 530
    invoke-static {p0, p1, v0, v1, v0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadBalanceCrypto(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V
    .locals 8

    .line 534
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 535
    invoke-static {p0, v6, v7, v6}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->getTokenBalance$default(Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;ZLcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V

    new-instance p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p1, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v2, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    invoke-static {p0, p1, v6, v7, v6}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final prepareForSwapBinance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 456
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->isValidForPrepareSwap(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 459
    invoke-virtual {v0, p2, p3, p1}, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getConvertQuote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 464
    iget-object p2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
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

    .line 466
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance p3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapBinance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {p3, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapBinance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapBinance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapBinance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {p1, p3, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 475
    invoke-static {p0, p1, v1, p2, v1}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final prepareForSwapCrypto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)V
    .locals 10

    .line 479
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->isValidForPrepareSwap(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;

    .line 483
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {v0, p2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    .line 484
    invoke-virtual {v0, p3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    .line 486
    sget-object v5, Lcom/smedialink/storage/domain/model/wallet/swap/TradeType;->EXACT_INPUT:Lcom/smedialink/storage/domain/model/wallet/swap/TradeType;

    .line 487
    sget-object p2, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->PERCENT_5:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->getPercent()F

    move-result v6

    .line 488
    sget-object p2, Lcom/smedialink/model/wallet/swap/SwapSide;->INPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    invoke-direct {p0, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v7

    .line 489
    sget-object p2, Lcom/smedialink/model/wallet/swap/SwapSide;->OUTPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    invoke-direct {p0, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v8

    move-object v4, p1

    move-object v9, p4

    .line 482
    invoke-virtual/range {v1 .. v9}, Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;->getQuoteToSwap(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/swap/TradeType;FLcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)Lio/reactivex/Observable;

    move-result-object p1

    .line 492
    iget-object p2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "swapInteractor\n         \u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
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

    .line 494
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance p3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapCrypto$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {p3, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapCrypto$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance p4, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapCrypto$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p4, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapCrypto$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {p1, p3, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 504
    invoke-static {p0, p1, v0, p2, v0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V
    .locals 1

    .line 849
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;

    .line 850
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method private final resetLoadedInformation()V
    .locals 1

    .line 338
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectableSupportedSwapTokens:Ljava/util/HashMap;

    .line 339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveTokensMetadata:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    return-void
.end method

.method private final resetStateTo(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V
    .locals 2

    .line 717
    instance-of v0, p1, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$Idle;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 718
    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    .line 719
    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    .line 720
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;->Companion:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline$Companion;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline$Companion;->getDefaultValue()Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object v1

    iput-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    .line 721
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->Companion:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage$Companion;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage$Companion;->getDefaultValue()Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object v1

    iput-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSlippage:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    .line 722
    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 723
    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 726
    :cond_0
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method private final resolveApproveArgs()Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs;
    .locals 20

    move-object/from16 v0, p0

    .line 761
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v1, v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 763
    :cond_0
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    iget-object v3, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-nez v3, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, ""

    if-nez v3, :cond_2

    move-object v3, v4

    :cond_2
    invoke-virtual {v1, v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    .line 766
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->isCryptoTokens()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getNativeToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v5

    if-eq v1, v5, :cond_9

    .line 767
    iget-object v5, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveTokensMetadata:Ljava/util/HashMap;

    invoke-static {v0, v2, v3, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_3

    move-object v6, v2

    goto :goto_3

    :cond_3
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;

    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-nez v8, :cond_5

    move-object v8, v2

    goto :goto_1

    :cond_5
    invoke-virtual {v8}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_6
    move-object v6, v2

    :goto_2
    check-cast v6, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;

    .line 768
    :goto_3
    instance-of v5, v6, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    if-eqz v5, :cond_9

    .line 770
    sget-object v5, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {v5, v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    .line 771
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->accessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    iget-object v5, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v5}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lcom/smedialink/storage/domain/model/crypto/Wallet;

    move-result-object v1

    if-nez v1, :cond_7

    move-object v1, v2

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v1

    :goto_4
    if-nez v1, :cond_8

    move-object v10, v4

    goto :goto_5

    :cond_8
    move-object v10, v1

    .line 772
    :goto_5
    check-cast v6, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getValue()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 773
    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->getChain()Lcom/smedialink/storage/domain/model/crypto/Chain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/Chain;->getId()J

    move-result-wide v11

    .line 774
    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->getNonce()Ljava/math/BigInteger;

    move-result-object v13

    .line 775
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;->getPrice()Ljava/math/BigInteger;

    move-result-object v14

    .line 776
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;->getLimit()Ljava/math/BigInteger;

    move-result-object v15

    .line 777
    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getTokenContractAddress()Ljava/lang/String;

    move-result-object v16

    .line 778
    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v17

    .line 779
    invoke-static {v0, v2, v3, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v18

    .line 780
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    .line 769
    new-instance v2, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;

    move-object v7, v2

    move-object/from16 v19, v1

    invoke-direct/range {v7 .. v19}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;Ljava/math/BigInteger;Ljava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)V

    :cond_9
    return-object v2
.end method

.method private final resolveArgs()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 369
    instance-of v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-eqz v1, :cond_0

    .line 370
    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;->getFromToken()Lcom/smedialink/model/wallet/select/SelectableToken;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 371
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;->getToToken()Lcom/smedialink/model/wallet/select/SelectableToken;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    goto :goto_0

    .line 373
    :cond_0
    instance-of v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v1, :cond_1

    .line 374
    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getSwapProtocol()Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    .line 375
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getSwapProtocolInfo()Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;

    .line 376
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getFromToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveToken(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/model/wallet/select/SelectableToken;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 377
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

    .line 344
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

    .line 356
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getForcedNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getForcedNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 358
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getForcedNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    goto :goto_3

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    .line 286
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

    .line 360
    iget-object v6, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v6}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v6

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    goto :goto_1

    :cond_3
    move-object v1, v4

    :goto_1
    check-cast v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    if-nez v1, :cond_4

    .line 361
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 360
    :cond_4
    iput-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 362
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    .line 286
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

    .line 362
    iget-object v6, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    if-eq v5, v6, :cond_6

    const/4 v5, 0x1

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_5

    move-object v4, v1

    :cond_7
    check-cast v4, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    if-nez v4, :cond_8

    .line 363
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 362
    :cond_8
    iput-object v4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    :goto_3
    return-void
.end method

.method private final resolveSwapArgs()Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs;
    .locals 25

    move-object/from16 v0, p0

    .line 791
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v1, v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 793
    :cond_0
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    iget-object v3, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-nez v3, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, ""

    if-nez v3, :cond_2

    move-object v3, v4

    :cond_2
    invoke-virtual {v1, v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    .line 796
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->isCryptoTokens()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 797
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    if-eqz v1, :cond_4

    .line 799
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountIn()Ljava/math/BigDecimal;

    move-result-object v7

    .line 800
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountBound()Ljava/math/BigInteger;

    move-result-object v15

    .line 801
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getInputTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    .line 802
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    .line 803
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->getChain()Lcom/smedialink/storage/domain/model/crypto/Chain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/Chain;->getId()J

    move-result-wide v10

    .line 804
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->getNonce()Ljava/math/BigInteger;

    move-result-object v12

    .line 805
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;->getPrice()Ljava/math/BigInteger;

    move-result-object v13

    .line 806
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;->getLimit()Ljava/math/BigInteger;

    move-result-object v14

    .line 807
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getContractAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move-object/from16 v16, v4

    goto :goto_1

    :cond_3
    move-object/from16 v16, v1

    .line 808
    :goto_1
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getSwapMethod()Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    move-result-object v17

    .line 809
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getPath()Ljava/util/List;

    move-result-object v18

    .line 810
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;->getMinutes()I

    move-result v19

    .line 811
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getQuoteId()Ljava/lang/String;

    move-result-object v22

    .line 812
    sget-object v1, Lcom/smedialink/model/wallet/swap/SwapSide;->INPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v23

    .line 813
    sget-object v1, Lcom/smedialink/model/wallet/swap/SwapSide;->OUTPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v24

    .line 814
    iget-object v6, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    .line 815
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getValue()Ljava/math/BigInteger;

    move-result-object v20

    .line 816
    iget-object v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getCallData()Ljava/lang/String;

    move-result-object v21

    .line 798
    new-instance v1, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;

    move-object v5, v1

    invoke-direct/range {v5 .. v24}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;-><init>(Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;Ljava/util/List;ILjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    move-object v2, v1

    :cond_4
    return-object v2
.end method

.method private final resolveSwapFeeScreenArgs()Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;
    .locals 10

    .line 745
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v0, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 747
    :cond_0
    iget-object v3, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    if-eqz v0, :cond_1

    .line 748
    new-instance v1, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    .line 749
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 750
    iget-object v4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;

    .line 751
    iget-object v5, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSlippage:Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    .line 752
    iget-object v6, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 753
    sget-object v0, Lcom/smedialink/model/wallet/swap/SwapSide;->INPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v7

    .line 754
    sget-object v0, Lcom/smedialink/model/wallet/swap/SwapSide;->OUTPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v8

    .line 755
    iget-object v9, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    move-object v2, v1

    .line 748
    invoke-direct/range {v2 .. v9}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;-><init>(Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;Lcom/smedialink/storage/domain/model/wallet/swap/SwapDeadline;Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)V

    :cond_1
    return-object v1
.end method

.method private final resolveSwapProtocol()V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-nez v1, :cond_0

    return-void

    .line 350
    :cond_0
    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getSwapProtocol()Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;->isUniswap()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
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

    .line 899
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getForcedNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getForcedNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 902
    invoke-static {p0, v2, v0, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_1

    .line 904
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

    .line 844
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    .line 845
    new-instance p1, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$NeedApprove;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getApproveFeeType()Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    invoke-direct {p1, v0, v1}, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$NeedApprove;-><init>(Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;Lcom/smedialink/model/wallet/select/SelectableToken;)V

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method private static final selectToken$lambda-0(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->checkMinMaxInputValues()V

    return-void
.end method

.method private final setupSwapInformation()V
    .locals 8

    .line 383
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 384
    instance-of v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 386
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->binance_convert_toolbar_title:I

    invoke-interface {v0, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 387
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->binance_convert_description:I

    invoke-interface {v0, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 388
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_ic_bnb_logo:I

    .line 389
    sget-object v6, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;->GLOBAL:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    const/4 v5, 0x0

    .line 385
    invoke-interface/range {v1 .. v6}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->setupScreenForSwap(Ljava/lang/String;Ljava/lang/String;IZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;)V

    goto :goto_0

    .line 393
    :cond_0
    instance-of v0, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v0, :cond_1

    .line 394
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

    .line 395
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 396
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->getName()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 397
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->getLongDescription()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 398
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->getLogo()I

    move-result v5

    .line 395
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

.method private static final startSelectTokenDialog$lambda-2(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenDialog(Lcom/smedialink/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method private static final startSelectTokenDialog$lambda-4(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenDialog(Lcom/smedialink/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method private static final startSelectTokenDialog$lambda-5(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenDialog(Lcom/smedialink/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method private static final startSwapFlow$lambda-7(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
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

    .line 1741
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 1742
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

    .line 681
    instance-of v0, v0, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 684
    invoke-static {p0, v1, v2, p1, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;ZZILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_5

    if-eqz p2, :cond_5

    .line 686
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveMetadataDisposable:Lio/reactivex/disposables/Disposable;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_5
    :goto_1
    return-void
.end method

.method private final swapBinance()V
    .locals 5

    .line 436
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->isValidForBinanceSwap()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 439
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->getQuoteId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->confirmConvertQuote(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v3, "viewState"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v3, v4, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 442
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$swapBinance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$swapBinance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v4, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$swapBinance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v4, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$swapBinance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v3, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 451
    invoke-static {p0, v0, v2, v1, v2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final swapCrypto()V
    .locals 5

    .line 414
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->isValidForCryptoSwap()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 416
    :cond_0
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveSwapArgs()Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;

    .line 419
    invoke-virtual {v1, v0}, Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;->swap(Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs;)Lio/reactivex/Observable;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "swapInteractor\n         \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
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

    .line 422
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$swapCrypto$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$swapCrypto$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$swapCrypto$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$swapCrypto$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 432
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

    new-instance v3, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 176
    invoke-static {p0, v0, v4, v1, v4}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final getApproveConfirmationDialogModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 7

    .line 203
    new-instance v0, Lcom/smedialink/model/dialog/DialogModel;

    .line 204
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 205
    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 206
    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_description:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 207
    iget-object v5, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lcom/smedialink/model/wallet/select/SelectableToken;->getTicker()Ljava/lang/String;

    move-result-object v5

    :goto_0
    if-nez v5, :cond_1

    const-string v5, ""

    :cond_1
    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 205
    invoke-interface {v2, v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 209
    iget-object v3, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 210
    iget-object v4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_action:I

    invoke-interface {v4, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getApproveTokenDescriptionModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 8

    .line 196
    new-instance v7, Lcom/smedialink/model/dialog/DialogModel;

    .line 197
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_what_is_approve:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_what_is_approve_dialog_description:I

    invoke-interface {v0, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, v7

    .line 196
    invoke-direct/range {v0 .. v6}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method protected onFirstViewAttach()V
    .locals 4

    .line 306
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveArgs()V

    .line 307
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveAvailableNetworks()V

    .line 308
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveSelectedNetworkType()V

    .line 309
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveSwapProtocol()V

    .line 311
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->setupSwapInformation()V

    .line 312
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    sget-object v1, Lcom/smedialink/model/wallet/swap/SwapSide;->INPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    invoke-direct {p0, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->setupNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    .line 313
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    sget-object v2, Lcom/smedialink/model/wallet/swap/SwapSide;->OUTPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    invoke-direct {p0, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->setupNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    .line 314
    new-instance v0, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$PrepareSwap;

    iget-object v3, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    invoke-direct {v0, v3}, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$PrepareSwap;-><init>(Lcom/smedialink/model/wallet/select/SelectableToken;)V

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    .line 316
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectToken(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectToken(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;)V

    .line 319
    :cond_1
    invoke-direct {p0, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokens(Lcom/smedialink/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method public final prepareForSwap(Ljava/lang/String;)V
    .locals 4

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 181
    instance-of v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v2

    :cond_1
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    invoke-direct {p0, p1, v0, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->prepareForSwapBinance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 182
    :cond_4
    instance-of v0, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-nez v0, :cond_5

    move-object v0, v3

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_6

    move-object v0, v2

    :cond_6
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v3

    :goto_4
    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    move-object v2, v3

    :goto_5
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->prepareForSwapCrypto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)V

    :cond_9
    :goto_6
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

    .line 187
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;

    instance-of v0, v0, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$Swap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;

    .line 189
    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    .line 190
    iput-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    .line 191
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

    .line 294
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkSwitchState()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 295
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->hintsPreferenceHelper:Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;

    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork$SwapScreen;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork$SwapScreen;

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;->shouldShowHint(Lcom/smedialink/storage/domain/model/wallet/Hint;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->showChangeNetworkHint()V

    .line 297
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

    .line 214
    sget-object v0, Lcom/smedialink/model/wallet/swap/SwapSide;->INPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    :goto_0
    move-object v4, v1

    .line 215
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 216
    instance-of v2, v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_e

    .line 217
    sget-object v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v5, :cond_c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto/16 :goto_b

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-nez v0, :cond_2

    .line 236
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_give_token_validation:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceAvailableOppositeSelectableSwapTokens:Lkotlin/Pair;

    if-nez v0, :cond_3

    move-object v0, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-nez v1, :cond_4

    move-object v1, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 240
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 243
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceAvailableOppositeSelectableSwapTokens:Lkotlin/Pair;

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_6

    goto :goto_4

    .line 1547
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;

    .line 243
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->getTokenInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/mapper/wallet/select/SelectableMappingKt;->mapToSelectable(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;)Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    :goto_4
    if-nez v3, :cond_8

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    goto :goto_5

    :cond_8
    move-object v5, v3

    .line 244
    :goto_5
    sget-object v7, Lcom/smedialink/model/wallet/select/SelectableType;->BINANCE:Lcom/smedialink/model/wallet/select/SelectableType;

    .line 246
    sget-object v6, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->BINANCE_SMART_CHAIN:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    const/4 v8, 0x0

    .line 240
    new-instance v9, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$4;

    invoke-direct {v9, p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$4;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    move-object v3, p1

    invoke-interface/range {v2 .. v9}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->openSelectTokenDialog(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/select/SelectableType;ZLkotlin/jvm/functions/Function1;)V

    goto/16 :goto_b

    .line 251
    :cond_9
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v3

    :goto_6
    if-nez v3, :cond_b

    const-string v3, ""

    :cond_b
    new-instance v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda9;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    invoke-direct {p0, v3, v5, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance(Ljava/lang/String;ZLorg/fork/utils/Callbacks$Callback;)V

    goto/16 :goto_b

    .line 219
    :cond_c
    sget-object v6, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->BINANCE_SMART_CHAIN:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-direct {p0, v6}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getAvailableTokensByNetwork(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 220
    new-instance v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda8;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    invoke-direct {p0, v5, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance(ZLorg/fork/utils/Callbacks$Callback;)V

    goto/16 :goto_b

    .line 222
    :cond_d
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 225
    invoke-direct {p0, v6}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getAvailableTokensByNetwork(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/util/List;

    move-result-object v5

    .line 226
    sget-object v7, Lcom/smedialink/model/wallet/select/SelectableType;->BINANCE:Lcom/smedialink/model/wallet/select/SelectableType;

    const/4 v8, 0x1

    .line 222
    new-instance v9, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$2;

    invoke-direct {v9, p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$2;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    move-object v3, p1

    invoke-interface/range {v2 .. v9}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->openSelectTokenDialog(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/select/SelectableType;ZLkotlin/jvm/functions/Function1;)V

    goto/16 :goto_b

    .line 258
    :cond_e
    instance-of v1, v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v1, :cond_16

    .line 259
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getAvailableTokensByNetwork(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 260
    new-instance v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda7;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    invoke-direct {p0, p1, v5, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensCrypto(Lcom/smedialink/model/wallet/swap/SwapSide;ZLorg/fork/utils/Callbacks$Callback;)V

    goto/16 :goto_b

    .line 262
    :cond_f
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkTypeBySwapSide(Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v6

    .line 263
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    sget-object v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-ne v1, v5, :cond_10

    move-object v0, v3

    goto :goto_7

    :cond_10
    if-ne p1, v0, :cond_11

    .line 266
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    goto :goto_7

    :cond_11
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 269
    :goto_7
    invoke-direct {p0, v6}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getAvailableTokensByNetwork(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/util/List;

    move-result-object v1

    .line 764
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 269
    invoke-virtual {v8}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v8

    if-nez v0, :cond_13

    move-object v9, v3

    goto :goto_9

    :cond_13
    invoke-virtual {v0}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v9

    :goto_9
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v5

    if-eqz v8, :cond_12

    invoke-interface {v7, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 271
    :cond_14
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 275
    sget-object v0, Lcom/smedialink/model/wallet/select/SelectableType;->INTERNAL:Lcom/smedialink/model/wallet/select/SelectableType;

    .line 276
    sget-object v1, Lcom/smedialink/model/wallet/swap/SwapSide;->INPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    if-ne p1, v1, :cond_15

    const/4 v8, 0x1

    goto :goto_a

    :cond_15
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 271
    :goto_a
    new-instance v9, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$7;

    invoke-direct {v9, p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$7;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    move-object v3, p1

    move-object v5, v7

    move-object v7, v0

    invoke-interface/range {v2 .. v9}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->openSelectTokenDialog(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/select/SelectableType;ZLkotlin/jvm/functions/Function1;)V

    :cond_16
    :goto_b
    return-void
.end method

.method public final startSwapFlow()V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 288
    instance-of v1, v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapBinance()V

    goto :goto_0

    .line 289
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
