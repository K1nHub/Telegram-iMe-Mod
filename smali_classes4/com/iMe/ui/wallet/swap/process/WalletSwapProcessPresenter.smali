.class public final Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletSwapProcessPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$Companion;,
        Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSwapProcessPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSwapProcessPresenter.kt\ncom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1015:1\n1747#2,3:1016\n1549#2:1031\n1620#2,3:1032\n1549#2:1035\n1620#2,3:1036\n1549#2:1039\n1620#2,3:1040\n288#2,2:1043\n1549#2:1045\n1620#2,3:1046\n288#2,2:1049\n1549#2:1148\n1620#2,3:1149\n1747#2,3:1164\n1747#2,3:1167\n42#3,12:1019\n42#3,12:1051\n42#3,12:1063\n42#3,12:1075\n42#3,12:1087\n42#3,12:1099\n42#3,12:1111\n42#3,12:1123\n42#3,12:1135\n42#3,12:1152\n1#4:1147\n*S KotlinDebug\n*F\n+ 1 WalletSwapProcessPresenter.kt\ncom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter\n*L\n153#1:1016,3\n265#1:1031\n265#1:1032,3\n371#1:1035\n371#1:1036,3\n389#1:1039\n389#1:1040,3\n389#1:1043,2\n391#1:1045\n391#1:1046,3\n391#1:1049,2\n689#1:1148\n689#1:1149,3\n736#1:1164,3\n935#1:1167,3\n184#1:1019,12\n456#1:1051,12\n478#1:1063,12\n504#1:1075,12\n532#1:1087,12\n558#1:1099,12\n582#1:1111,12\n621#1:1123,12\n651#1:1135,12\n708#1:1152,12\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final accessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private approveMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

.field private approveTokensMetadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;",
            ">;>;"
        }
    .end annotation
.end field

.field private availableNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
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
            "Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private binanceConvertQuote:Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

.field private final binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

.field private binanceTokenBalance:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

.field private inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private loadApproveMetadataDisposable:Lio/reactivex/disposables/Disposable;

.field private outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

.field private selectableSupportedSwapTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            ">;>;"
        }
    .end annotation
.end field

.field private selectedApproveFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

.field private selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

.field private selectedInputNetworkId:Ljava/lang/String;

.field private selectedOutputNetworkId:Ljava/lang/String;

.field private selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

.field private selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

.field private state:Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

.field private final swapInteractor:Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;

.field private swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

.field private swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

.field private swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

.field private tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

.field private final walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public static synthetic $r8$lambda$4CtOpgC-vrWW7OnRXGiJ3FOas_o(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenDialog$lambda$5(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_-LB0du1jMqPCRyrIg1PB4-0o0E(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance$lambda$25(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gBiO6XfretMYaluEPjwktsYPXxk(ZLcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$lambda$30(ZLcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i0eMlZ70dqMWwfJHdbJsG1aQkJU()V
    .locals 0

    invoke-static {}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance$lambda$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$iEtHnAbByYHquqpvzUP0fJg2Zrc(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSwapFlow$lambda$6(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jWNSph5aIKVzIdubs3ydZm74weA(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenDialog$lambda$3(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kMhil353hf3p_LKbJg81RPrF3Co()V
    .locals 0

    invoke-static {}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance$lambda$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$lGAVIE8atHzcd-obAx8l7BbFlyU(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectToken$lambda$0(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tH4DrKEt-ke8GI3DVKTZG7GwSDU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$lambda$29(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zh5n0QLzcOGXk2_nK6yunu9dhlk(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance$lambda$21(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;)V
    .locals 1

    const-string/jumbo v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binanceInternalInteractor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "swapInteractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schedulersProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hintsPreferenceHelper"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 62
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 63
    iput-object p3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 64
    iput-object p4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;

    .line 65
    iput-object p5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 66
    iput-object p6, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 67
    iput-object p7, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->accessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 68
    iput-object p8, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 69
    iput-object p9, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    .line 75
    sget-object p1, Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage$Companion;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage$Companion;->getDefaultValue()Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    .line 76
    sget-object p1, Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline$Companion;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline$Companion;->getDefaultValue()Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    .line 77
    sget-object p1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;->INSTANCE:Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

    .line 78
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectableSupportedSwapTokens:Ljava/util/HashMap;

    .line 79
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    .line 80
    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBSCNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkId:Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBSCNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkId:Ljava/lang/String;

    .line 82
    sget-object p1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->UNKNOWN:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 83
    sget-object p2, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;

    invoke-virtual {p2, p1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;->map(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    .line 89
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveTokensMetadata:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$checkSelectedTokenApprove(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->checkSelectedTokenApprove()V

    return-void
.end method

.method public static final synthetic access$chooseSwapFee(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->chooseSwapFee()V

    return-void
.end method

.method public static final synthetic access$formatBinanceBalance(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->formatBinanceBalance(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getApproveTokensMetadata$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Ljava/util/HashMap;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveTokensMetadata:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getBinanceTokenBalance$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceTokenBalance:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getSelectableSupportedSwapTokens$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Ljava/util/HashMap;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectableSupportedSwapTokens:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getSelectedNetworkIdBySwapSide(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkIdBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSwapFeeType(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/ui/custom/FeeView$ChooseFeeType;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSwapFeeType()Lcom/iMe/ui/custom/FeeView$ChooseFeeType;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSwapInteractor$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;

    return-object p0
.end method

.method public static final synthetic access$getSwapMetadata$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    return-object p0
.end method

.method public static final synthetic access$getSwapProtocol$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    return-object p0
.end method

.method public static final synthetic access$handleSwapErrors(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/Result$Error;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->handleSwapErrors(Lcom/iMe/storage/domain/model/Result$Error;)V

    return-void
.end method

.method public static final synthetic access$loadAvailableSwapTokens(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokens(Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method public static final synthetic access$renderState(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method public static final synthetic access$resetLoadedInformation(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetLoadedInformation()V

    return-void
.end method

.method public static final synthetic access$resetStateTo(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateTo(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method public static final synthetic access$resolveSwapProtocol(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveSwapProtocol()V

    return-void
.end method

.method public static final synthetic access$selectApproveFee(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectApproveFee(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V

    return-void
.end method

.method public static final synthetic access$setBinanceAvailableOppositeSelectableSwapTokens$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lkotlin/Pair;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceAvailableOppositeSelectableSwapTokens:Lkotlin/Pair;

    return-void
.end method

.method public static final synthetic access$setBinanceConvertQuote$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    return-void
.end method

.method public static final synthetic access$setBinanceTokenBalance$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceTokenBalance:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    return-void
.end method

.method public static final synthetic access$setSelectedInputNetworkId$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setSelectedOutputNetworkId$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setSelectedSwapFee$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    return-void
.end method

.method public static final synthetic access$setSwapMetadata$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    return-void
.end method

.method public static final synthetic access$setTokenBalance$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method

.method public static final synthetic access$setupSwapInformation(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->setupSwapInformation()V

    return-void
.end method

.method public static final synthetic access$startUpdatingApproveMetadataIfNeed(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/util/List;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startUpdatingApproveMetadataIfNeed(Ljava/util/List;Z)V

    return-void
.end method

.method private final checkMinMaxInputValues()V
    .locals 5

    .line 964
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_4

    .line 965
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceAvailableOppositeSelectableSwapTokens:Lkotlin/Pair;

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

    check-cast v3, Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;->getTokenInfo()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;->getAsset()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

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
    check-cast v1, Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;

    :cond_3
    if-eqz v1, :cond_4

    .line 967
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showMinMaxInputValues(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;)V

    :cond_4
    return-void
.end method

.method private final checkSelectedTokenApprove()V
    .locals 5

    .line 791
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_7

    .line 792
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveTokensMetadata:Ljava/util/HashMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkIdBySwapSide$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)Ljava/lang/String;

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

    check-cast v3, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

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
    check-cast v2, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;

    .line 793
    :cond_3
    instance-of v0, v2, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$Allowed;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$PrepareSwap;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-direct {v0, v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$PrepareSwap;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    goto :goto_1

    .line 794
    :cond_4
    instance-of v0, v2, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$ApproveInProgress;->INSTANCE:Lcom/iMe/model/wallet/crypto/swap/SwapUiState$ApproveInProgress;

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    goto :goto_1

    .line 795
    :cond_5
    instance-of v0, v2, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    if-eqz v0, :cond_6

    .line 796
    check-cast v2, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    iput-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    .line 797
    new-instance v0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->MEDIUM:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getFeeByLevel(Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;)Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;-><init>(Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;)V

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 798
    new-instance v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$NeedApprove;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getApproveFeeType()Lcom/iMe/ui/custom/FeeView$ChooseFeeType;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-direct {v0, v1, v2}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$NeedApprove;-><init>(Lcom/iMe/ui/custom/FeeView$ChooseFeeType;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    goto :goto_1

    .line 801
    :cond_6
    new-instance v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$PrepareSwap;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-direct {v0, v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$PrepareSwap;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private final chooseSwapFee()V
    .locals 2

    .line 958
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveSwapFeeScreenArgs()Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 959
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->openSwapFeeScreen(Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;)V

    :cond_0
    return-void
.end method

.method private final formatBinanceBalance(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;
    .locals 5

    .line 1002
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 1003
    sget v1, Lorg/telegram/messenger/R$string;->binance_convert_balance:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1004
    invoke-static {p1}, Lcom/iMe/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;->getSpotBalanceShortText(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1005
    invoke-static {p1}, Lcom/iMe/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;->getMarginBalanceShortText(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 1002
    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getApproveFeeType()Lcom/iMe/ui/custom/FeeView$ChooseFeeType;
    .locals 7

    .line 885
    new-instance v6, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;

    .line 886
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getFeeDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    .line 887
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v2

    .line 888
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    .line 889
    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 890
    new-instance v5, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$getApproveFeeType$1;

    invoke-direct {v5, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$getApproveFeeType$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    move-object v0, v6

    .line 885
    invoke-direct/range {v0 .. v5}, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;-><init>(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/storage/domain/model/crypto/TransactionParams;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;Lkotlin/jvm/functions/Function1;)V

    return-object v6
.end method

.method private final getAvailableTokensByNetwork(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            ">;"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectableSupportedSwapTokens:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 362
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private final getFeeDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 8

    .line 952
    new-instance v7, Lcom/iMe/model/dialog/DialogModel;

    .line 953
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_fee_dialog_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 954
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, v7

    .line 952
    invoke-direct/range {v0 .. v6}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method private final getNetworkSwitchState()Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    sget-object v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 444
    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;->GLOBAL:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_1

    .line 443
    :cond_0
    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;->CROSS_CHAIN:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_1

    .line 441
    :cond_1
    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;->GLOBAL:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v3, v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getForcedNetworkId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private final getSelectedNetworkIdBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Ljava/lang/String;
    .locals 1

    .line 353
    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 356
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->isCrossChain()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkId:Ljava/lang/String;

    goto :goto_0

    .line 357
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 354
    :cond_2
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkId:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method static synthetic getSelectedNetworkIdBySwapSide$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 352
    sget-object p1, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    :cond_0
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkIdBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getSwapConfirmationDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 13

    .line 972
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 973
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_swap_alert_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 974
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 975
    instance-of v3, v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 978
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v3, :cond_6

    .line 975
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 976
    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_swap_alert_description:I

    new-array v7, v7, [Ljava/lang/Object;

    .line 978
    iget-object v10, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getInputAmount()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_0

    :cond_0
    move-object v10, v9

    .line 979
    :goto_0
    sget-object v11, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v11}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getBNB()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 977
    invoke-static {v10, v12}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    .line 981
    iget-object v8, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    const/4 v10, 0x0

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getInputTokenShortName()Ljava/lang/String;

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

    .line 983
    iget-object v6, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getOutputAmount()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 984
    :cond_3
    invoke-virtual {v11}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getBNB()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 982
    invoke-static {v9, v6}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    .line 986
    iget-object v5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getOutputTokenShortName()Ljava/lang/String;

    move-result-object v10

    :cond_4
    if-nez v10, :cond_5

    goto :goto_2

    :cond_5
    move-object v12, v10

    :goto_2
    aput-object v12, v7, v4

    .line 975
    invoke-interface {v2, v3, v7}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 989
    :cond_6
    instance-of v2, v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 990
    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_swap_alert_description:I

    new-array v7, v7, [Ljava/lang/Object;

    .line 991
    iget-object v9, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountIn()Ljava/math/BigDecimal;

    move-result-object v9

    iget-object v10, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v10

    invoke-virtual {v10}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 992
    iget-object v8, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    .line 993
    iget-object v6, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountOut()Ljava/math/BigDecimal;

    move-result-object v6

    iget-object v8, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    .line 994
    iget-object v5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    .line 989
    invoke-interface {v2, v3, v7}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 997
    :goto_3
    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 998
    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_swap_alert_action:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 972
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 989
    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final getSwapFeeType()Lcom/iMe/ui/custom/FeeView$ChooseFeeType;
    .locals 3

    .line 878
    new-instance v0, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Custom;

    .line 879
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$getSwapFeeType$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$getSwapFeeType$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    .line 880
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 878
    invoke-direct {v0, v1, v2}, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Custom;-><init>(Lkotlin/jvm/functions/Function0;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V

    return-object v0
.end method

.method private final handleSwapErrors(Lcom/iMe/storage/domain/model/Result$Error;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result$Error<",
            "*>;)V"
        }
    .end annotation

    .line 746
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 747
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_APPROVED_AMOUNT_NOT_SUFFICIENT:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v1, :cond_0

    .line 748
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    .line 749
    invoke-static/range {v2 .. v7}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;ZZLcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 752
    :cond_0
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->NO_ENOUGH_MONEY:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    if-ne v0, v1, :cond_2

    .line 753
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 754
    instance-of v0, p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    new-instance v6, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v6}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showNotEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    goto/16 :goto_4

    .line 755
    :cond_1
    instance-of p1, p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    new-instance v6, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v6}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showNotEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    goto :goto_4

    .line 759
    :cond_2
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->ETHER_BLOCK_CHAIN_ERROR:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_INSUFFICIENT_RESERVES_IN_LIQUIDITY_POOL_OF_TOKENS:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, p0

    .line 760
    invoke-static/range {v4 .. v9}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;ZZLcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/Object;)V

    .line 761
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 762
    sget-object p1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;->INSTANCE:Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateTo(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    goto :goto_4

    .line 765
    :cond_5
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_DIFF_BTW_TOKEN_EXCHANGE_RATES_IS_TOO_BIG:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v1, :cond_6

    :goto_2
    move v2, v3

    goto :goto_3

    :cond_6
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_QUOTE_NOT_FOUND:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v1, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    .line 766
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 767
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateIfNeed()V

    goto :goto_4

    .line 770
    :cond_8
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_9
    :goto_4
    return-void
.end method

.method private final isAvailableBalanceLessThanAmount(Ljava/lang/String;)Z
    .locals 6

    .line 947
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 948
    instance-of v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceTokenBalance:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getSpot()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getTotal()D

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    cmpg-double p1, v0, v4

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    .line 949
    :cond_1
    instance-of v0, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

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

    .line 933
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$NeedApprove;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 934
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_5

    .line 935
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveTokensMetadata:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkIdBySwapSide$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)Ljava/lang/String;

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

    check-cast v4, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;

    .line 935
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

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

    .line 943
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

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

    .line 939
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

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

    .line 909
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_give_token_validation:I

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 910
    :cond_0
    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_receive_token_amount_validation:I

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 911
    :cond_1
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_diff_tokens_validation:I

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 912
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

    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    goto/16 :goto_3

    .line 913
    :cond_5
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->isAvailableBalanceLessThanAmount(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 914
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 915
    instance-of v0, p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showNotEnoughMoneyBinanceErrorDialog()V

    goto :goto_4

    .line 916
    :cond_6
    instance-of p1, p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    new-instance v0, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showNotEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    goto :goto_4

    .line 920
    :cond_7
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveTokensMetadata:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {p0, v0, v2, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkIdBySwapSide$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)Ljava/lang/String;

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

    .line 921
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_approve_info_not_loaded_yet_validation:I

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    .line 922
    invoke-static/range {v3 .. v8}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;ZZLcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/Object;)V

    goto :goto_4

    :cond_9
    move p1, v2

    goto :goto_5

    .line 912
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_amount_enter_valid_amount_title:I

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_b
    :goto_4
    move p1, v1

    .line 928
    :goto_5
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$PrepareSwap;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    move v1, v2

    :cond_c
    return v1
.end method

.method private final loadApproveTokensInfo(ZZLcom/iMe/storage/domain/model/wallet/token/Token;)V
    .locals 9

    .line 676
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v0, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-wide/16 v0, 0x1e

    .line 679
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    goto :goto_0

    .line 680
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 682
    invoke-static {p0, v2, v1, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkIdBySwapSide$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz p3, :cond_2

    .line 684
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    .line 686
    :cond_2
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectableSupportedSwapTokens:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 688
    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1549
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 690
    invoke-static {v3}, Lcom/iMe/storage/domain/utils/extentions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v3

    .line 1621
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v1, v2

    .line 695
    :goto_2
    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$1;

    invoke-direct {v2, p0, v6, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;Ljava/util/List;)V

    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda9;

    invoke-direct {v1, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 702
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 703
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda8;

    invoke-direct {v1, p2, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda8;-><init>(ZLcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "private fun loadApproveT\u2026}\n                }\n    }"

    .line 695
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1;

    move-object v3, v2

    move-object v4, p3

    move-object v5, p0

    move v7, p1

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/storage/domain/model/wallet/token/Token;Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;ZZ)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance p3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p3, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, p1, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 694
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveMetadataDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic loadApproveTokensInfo$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;ZZLcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 671
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo(ZZLcom/iMe/storage/domain/model/wallet/token/Token;)V

    return-void
.end method

.method private static final loadApproveTokensInfo$lambda$29(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final loadApproveTokensInfo$lambda$30(ZLcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 6

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 705
    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    const-string/jumbo p1, "viewState"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->showLoadingDialog$default(Lcom/iMe/ui/base/mvp/base/BaseView;ZZLio/reactivex/disposables/Disposable;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final loadAvailableOppositeSwapTokensBinance(Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v0, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-nez v0, :cond_0

    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 645
    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getOppositeTokensForConvertByToken(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 646
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 647
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$2;

    invoke-direct {v1, p2, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$2;-><init>(ZLcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance p2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda6;

    invoke-direct {p2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p2

    const-string/jumbo v0, "private fun loadAvailabl\u2026     .autoDispose()\n    }"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p3, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, p3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {p2, p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 662
    invoke-static {p0, p1, p3, p2, p3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic loadAvailableOppositeSwapTokensBinance$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 640
    sget-object p3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda5;->INSTANCE:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda5;

    .line 637
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance(Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;)V

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

    const-string/jumbo v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 647
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final loadAvailableSwapTokens(Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 2

    .line 666
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of p1, p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 667
    invoke-static {p0, p1, v1, v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;ZLcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final loadAvailableSwapTokensBinance(ZLcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v0, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-nez v0, :cond_0

    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 615
    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getTokensForConvert()Lio/reactivex/Observable;

    move-result-object v0

    .line 616
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 617
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$2;

    invoke-direct {v1, p1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$2;-><init>(ZLcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda7;

    invoke-direct {p1, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    const-string/jumbo v0, "private fun loadAvailabl\u2026     .autoDispose()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    new-instance p2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 634
    invoke-static {p0, p1, v0, p2, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic loadAvailableSwapTokensBinance$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;ZLcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 610
    sget-object p2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda4;->INSTANCE:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda4;

    .line 608
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance(ZLcom/iMe/fork/utils/Callbacks$Callback;)V

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

    const-string/jumbo v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final loadBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 549
    instance-of v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadBalanceBinance(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto :goto_0

    .line 550
    :cond_0
    instance-of v0, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadBalanceCrypto(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final loadBalanceBinance(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 556
    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getUserBalance()Lio/reactivex/Observable;

    move-result-object v0

    .line 557
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceBinance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceBinance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceBinance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceBinance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 572
    invoke-static {p0, p1, v0, v1, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadBalanceCrypto(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 8

    .line 576
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 578
    invoke-static {p1}, Lcom/iMe/storage/domain/utils/extentions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 579
    invoke-static {p0, v6, v7, v6}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkIdBySwapSide$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 577
    invoke-static/range {v0 .. v5}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getTokenBalance$default(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;Lcom/iMe/storage/domain/model/wallet/token/Token;ZLjava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 581
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 605
    invoke-static {p0, p1, v6, v7, v6}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final prepareForSwapBinance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 494
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->isValidForPrepareSwap(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 497
    invoke-virtual {v0, p2, p3, p1}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getConvertQuote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 502
    iget-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    const-string/jumbo p3, "viewState"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 p3, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 504
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance p3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapBinance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {p3, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapBinance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, p3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapBinance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p3, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapBinance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance p2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, p3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {p1, v0, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 515
    invoke-static {p0, p1, v1, p2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final prepareForSwapCrypto(Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)V
    .locals 8

    .line 519
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->isValidForPrepareSwap(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;

    if-eqz p2, :cond_3

    .line 523
    invoke-static {p2}, Lcom/iMe/storage/domain/utils/extentions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    .line 524
    invoke-static {p3}, Lcom/iMe/storage/domain/utils/extentions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 526
    :cond_2
    sget-object v6, Lcom/iMe/storage/domain/model/wallet/swap/TradeType;->EXACT_INPUT:Lcom/iMe/storage/domain/model/wallet/swap/TradeType;

    .line 527
    sget-object p2, Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;->PERCENT_5:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;->getPercent()F

    move-result v7

    move-object v2, p4

    move-object v5, p1

    .line 522
    invoke-virtual/range {v1 .. v7}, Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;->getQuoteToSwap(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Lcom/iMe/storage/domain/model/wallet/token/Token;Lcom/iMe/storage/domain/model/wallet/token/Token;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/swap/TradeType;F)Lio/reactivex/Observable;

    move-result-object p1

    .line 530
    iget-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string/jumbo p2, "swapInteractor\n         \u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    const-string/jumbo p3, "viewState"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 p3, 0x0

    const/4 p4, 0x2

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 532
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance p3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapCrypto$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {p3, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapCrypto$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance p4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p4, p3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapCrypto$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p3, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapCrypto$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance p2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, p3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {p1, p4, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 544
    invoke-static {p0, p1, v0, p2, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V
    .locals 1

    .line 901
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

    .line 902
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method private final resetLoadedInformation()V
    .locals 1

    .line 365
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectableSupportedSwapTokens:Ljava/util/HashMap;

    .line 366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveTokensMetadata:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 367
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    return-void
.end method

.method private final resetStateTo(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V
    .locals 2

    .line 776
    instance-of v0, p1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 777
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    .line 778
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 779
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline$Companion;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline$Companion;->getDefaultValue()Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    .line 780
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage$Companion;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage$Companion;->getDefaultValue()Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    .line 781
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 782
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 787
    :cond_0
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method private final resolveApproveArgs()Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;
    .locals 18

    move-object/from16 v0, p0

    .line 821
    iget-object v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v1, v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 823
    :cond_0
    iget-object v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->isCoin()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 824
    :goto_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 825
    iget-object v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveTokensMetadata:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkIdBySwapSide$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v2

    :goto_1
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_4
    move-object v4, v2

    :goto_2
    check-cast v4, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;

    goto :goto_3

    :cond_5
    move-object v4, v2

    .line 826
    :goto_3
    instance-of v1, v4, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    if-eqz v1, :cond_8

    .line 828
    check-cast v4, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v6

    .line 829
    iget-object v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->accessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    iget-object v5, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v5}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/domain/model/crypto/Wallet;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    move-object v1, v2

    :goto_4
    if-nez v1, :cond_7

    const-string v1, ""

    :cond_7
    move-object v8, v1

    new-instance v7, Ljava/math/BigInteger;

    .line 830
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getChainId()J

    move-result-wide v9

    .line 832
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getNonce()Ljava/math/BigInteger;

    move-result-object v11

    .line 833
    iget-object v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getPrice()Ljava/math/BigInteger;

    move-result-object v12

    .line 834
    iget-object v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getLimit()Ljava/math/BigInteger;

    move-result-object v13

    .line 835
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v14

    .line 836
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v15

    .line 837
    invoke-static {v0, v2, v3, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkIdBySwapSide$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 838
    iget-object v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 827
    new-instance v2, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;

    move-object v5, v2

    move-object/from16 v17, v1

    invoke-direct/range {v5 .. v17}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;-><init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/math/BigInteger;Ljava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)V

    :cond_8
    return-object v2
.end method

.method private final resolveArgs()V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 399
    instance-of v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-eqz v1, :cond_0

    .line 400
    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;->getFromToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 401
    invoke-virtual {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;->getToToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    goto :goto_0

    .line 404
    :cond_0
    instance-of v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v1, :cond_1

    .line 405
    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getSwapProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 406
    invoke-virtual {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getSwapProtocolInfo()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    .line 407
    invoke-virtual {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getFromToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 408
    invoke-virtual {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getToToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    :cond_1
    :goto_0
    return-void
.end method

.method private final resolveAvailableNetworks()V
    .locals 3

    .line 371
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;->map(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;->getSupportedNetworksIds()Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Ljava/lang/String;

    .line 372
    invoke-static {v2}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 371
    :cond_0
    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    return-void
.end method

.method private final resolveSelectedNetworkType()V
    .locals 6

    .line 385
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getForcedNetworkId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getForcedNetworkId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkId:Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getForcedNetworkId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkId:Ljava/lang/String;

    goto/16 :goto_3

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lcom/iMe/storage/domain/model/crypto/Network;

    .line 389
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1621
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 288
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 389
    iget-object v5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v5}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetworkId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_4

    .line 390
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v1

    .line 389
    :cond_4
    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkId:Ljava/lang/String;

    .line 391
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/storage/domain/model/crypto/Network;

    .line 391
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 288
    :cond_5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 391
    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkId:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    move-object v3, v1

    :cond_7
    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_8

    .line 392
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v3

    .line 391
    :cond_8
    iput-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkId:Ljava/lang/String;

    :goto_3
    return-void
.end method

.method private final resolveSwapArgs()Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;
    .locals 22

    move-object/from16 v0, p0

    .line 851
    iget-object v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v1, v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 853
    :cond_0
    iget-object v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    if-eqz v1, :cond_2

    .line 855
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountIn()Ljava/math/BigDecimal;

    move-result-object v5

    .line 856
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountBound()Ljava/math/BigInteger;

    move-result-object v12

    .line 857
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    .line 858
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getChainId()J

    move-result-wide v7

    .line 859
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getNonce()Ljava/math/BigInteger;

    move-result-object v9

    .line 860
    iget-object v2, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getPrice()Ljava/math/BigInteger;

    move-result-object v10

    .line 861
    iget-object v2, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getLimit()Ljava/math/BigInteger;

    move-result-object v11

    .line 862
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getContractAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    move-object v13, v2

    .line 863
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getSwapMethod()Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    move-result-object v14

    .line 864
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getPath()Ljava/util/List;

    move-result-object v15

    .line 865
    iget-object v2, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;->getMinutes()I

    move-result v16

    .line 866
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getQuoteId()Ljava/lang/String;

    move-result-object v19

    .line 867
    sget-object v2, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-direct {v0, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkIdBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Ljava/lang/String;

    move-result-object v20

    .line 868
    sget-object v2, Lcom/iMe/model/wallet/swap/SwapSide;->OUTPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-direct {v0, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkIdBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Ljava/lang/String;

    move-result-object v21

    .line 869
    iget-object v4, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 870
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getValue()Ljava/math/BigInteger;

    move-result-object v17

    .line 871
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getCallData()Ljava/lang/String;

    move-result-object v18

    .line 854
    new-instance v2, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;

    move-object v3, v2

    invoke-direct/range {v3 .. v21}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;Ljava/util/List;ILjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v2
.end method

.method private final resolveSwapFeeScreenArgs()Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;
    .locals 8

    .line 807
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v0, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 809
    :cond_0
    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    if-eqz v0, :cond_1

    .line 810
    new-instance v1, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;

    .line 811
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 812
    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    .line 813
    iget-object v5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    .line 814
    iget-object v6, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 815
    iget-object v7, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-object v2, v1

    .line 810
    invoke-direct/range {v2 .. v7}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;-><init>(Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)V

    :cond_1
    return-object v1
.end method

.method private final resolveSwapProtocol()V
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    instance-of v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-nez v1, :cond_0

    return-void

    .line 379
    :cond_0
    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->getSwapProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->isUniswap()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkIdBySwapSide$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;->resolveByNetworkId(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    :cond_1
    return-void
.end method

.method private final selectApproveFee(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 2

    .line 896
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 897
    new-instance p1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$NeedApprove;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getApproveFeeType()Lcom/iMe/ui/custom/FeeView$ChooseFeeType;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-direct {p1, v0, v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$NeedApprove;-><init>(Lcom/iMe/ui/custom/FeeView$ChooseFeeType;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method private static final selectToken$lambda$0(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->checkMinMaxInputValues()V

    return-void
.end method

.method private final setupSwapInformation()V
    .locals 8

    .line 415
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 416
    instance-of v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-eqz v1, :cond_0

    .line 417
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 418
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->binance_convert_toolbar_title:I

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 419
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->binance_convert_description:I

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 420
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_ic_bnb_logo:I

    .line 421
    sget-object v6, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;->GLOBAL:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    const/4 v5, 0x0

    .line 417
    invoke-interface/range {v1 .. v6}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setupScreenForSwap(Ljava/lang/String;Ljava/lang/String;IZLcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;)V

    goto :goto_0

    .line 426
    :cond_0
    instance-of v0, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v0, :cond_1

    .line 427
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkSwitchState()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 428
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 429
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;->getName()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 430
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;->getLongDescription()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 431
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;->getLogo()I

    move-result v5

    .line 428
    invoke-interface/range {v2 .. v7}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setupScreenForSwap(Ljava/lang/String;Ljava/lang/String;IZLcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic startChooseNetworkDialog$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 97
    sget-object p1, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startChooseNetworkDialog(Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method private static final startSelectTokenDialog$lambda$3(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenDialog(Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method private static final startSelectTokenDialog$lambda$5(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenDialog(Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method private static final startSwapFlow$lambda$6(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapCrypto()V

    return-void
.end method

.method private final startUpdatingApproveMetadataIfNeed(Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;",
            ">;Z)V"
        }
    .end annotation

    .line 1747
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1748
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;

    .line 736
    instance-of v0, v0, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    .line 739
    invoke-static/range {v2 .. v7}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;ZZLcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    .line 741
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveMetadataDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_4
    :goto_1
    return-void
.end method

.method private final swapBinance()V
    .locals 5

    .line 472
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->isValidForBinanceSwap()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 475
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getQuoteId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->confirmConvertQuote(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 476
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string/jumbo v3, "viewState"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v3, v4, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 478
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$swapBinance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$swapBinance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$swapBinance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$swapBinance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v4, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 489
    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final swapCrypto()V
    .locals 5

    .line 448
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->isValidForCryptoSwap()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 450
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveSwapArgs()Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;

    .line 453
    invoke-virtual {v1, v0}, Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;->swap(Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;)Lio/reactivex/Observable;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "swapInteractor\n         \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string/jumbo v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 456
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$swapCrypto$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$swapCrypto$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$swapCrypto$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$swapCrypto$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 468
    invoke-static {p0, v0, v4, v1, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final approve()V
    .locals 5

    .line 176
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->isValidForApprove()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveApproveArgs()Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;

    .line 181
    invoke-virtual {v1, v0}, Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;->approveToken(Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;)Lio/reactivex/Observable;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "swapInteractor\n         \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string/jumbo v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 196
    invoke-static {p0, v0, v4, v1, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final getApproveConfirmationDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 7

    .line 223
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 224
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 226
    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_description:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 227
    iget-object v5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

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

    .line 225
    invoke-interface {v2, v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 229
    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 230
    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_action:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getApproveTokenDescriptionModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 8

    .line 216
    new-instance v7, Lcom/iMe/model/dialog/DialogModel;

    .line 217
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_what_is_approve:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_what_is_approve_dialog_description:I

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 219
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, v7

    .line 216
    invoke-direct/range {v0 .. v6}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method protected onFirstViewAttach()V
    .locals 4

    .line 332
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveArgs()V

    .line 333
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveAvailableNetworks()V

    .line 334
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveSelectedNetworkType()V

    .line 335
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveSwapProtocol()V

    .line 337
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->setupSwapInformation()V

    .line 338
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    sget-object v1, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-direct {p0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkIdBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setupNetwork(Lcom/iMe/storage/domain/model/crypto/Network;Lcom/iMe/model/wallet/swap/SwapSide;)V

    .line 339
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    sget-object v2, Lcom/iMe/model/wallet/swap/SwapSide;->OUTPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-direct {p0, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkIdBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setupNetwork(Lcom/iMe/storage/domain/model/crypto/Network;Lcom/iMe/model/wallet/swap/SwapSide;)V

    .line 340
    new-instance v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$PrepareSwap;

    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-direct {v0, v3}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$PrepareSwap;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    .line 342
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectToken(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectToken(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 345
    :cond_1
    invoke-direct {p0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokens(Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method public final prepareForSwap(Ljava/lang/String;)V
    .locals 4

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 201
    instance-of v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, ""

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_1
    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    invoke-direct {p0, p1, v0, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->prepareForSwapBinance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 202
    :cond_4
    instance-of v0, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->prepareForSwapCrypto(Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final processSwapFee(Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;)V
    .locals 2

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    .line 116
    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->getSelectedFee()Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 117
    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->getSelectedDeadline()Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    .line 118
    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->getSelectedSlippage()Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    .line 119
    new-instance p1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSwapFeeType()Lcom/iMe/ui/custom/FeeView$ChooseFeeType;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, v0, v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;-><init>(Lcom/iMe/ui/custom/FeeView$ChooseFeeType;Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;)V

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method public final resetStateIfNeed()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    .line 209
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    .line 210
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 211
    new-instance v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$PrepareSwap;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-direct {v0, v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$PrepareSwap;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    :cond_0
    return-void
.end method

.method public final selectToken(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 8

    const-string/jumbo v0, "side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 124
    instance-of v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 125
    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_3

    .line 136
    :cond_0
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 137
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_b

    .line 138
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getBNB()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->onTokenSelected(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;I)V

    .line 139
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->checkMinMaxInputValues()V

    goto/16 :goto_3

    .line 127
    :cond_1
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 128
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getBNB()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->onTokenSelected(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;I)V

    .line 129
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    .line 132
    invoke-direct {p0, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto/16 :goto_3

    .line 145
    :cond_2
    instance-of v0, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v0, :cond_b

    .line 146
    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    goto/16 :goto_2

    .line 166
    :cond_3
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 167
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->onTokenSelected(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;I)V

    goto :goto_2

    .line 148
    :cond_4
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 149
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->onTokenSelected(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;I)V

    .line 150
    invoke-direct {p0, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 151
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveTokensMetadata:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 1747
    :cond_5
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move p1, v1

    goto :goto_0

    .line 1748
    :cond_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;

    .line 153
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move p1, v3

    :goto_0
    if-nez p1, :cond_a

    .line 154
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->isCoin()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    .line 160
    :cond_9
    invoke-static {p2}, Lcom/iMe/storage/domain/utils/extentions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object p1

    .line 157
    invoke-direct {p0, v1, v3, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo(ZZLcom/iMe/storage/domain/model/wallet/token/Token;)V

    goto :goto_2

    .line 155
    :cond_a
    :goto_1
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->checkSelectedTokenApprove()V

    .line 170
    :goto_2
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateIfNeed()V

    :cond_b
    :goto_3
    return-void
.end method

.method public final showChangeNetworkHintIfNeeded()V
    .locals 3

    .line 320
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkSwitchState()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 321
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    sget-object v2, Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$SwapScreen;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$SwapScreen;

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;->shouldShowHint(Lcom/iMe/storage/domain/model/wallet/Hint;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showChangeNetworkHint()V

    .line 323
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;->onHintShowed(Lcom/iMe/storage/domain/model/wallet/Hint;)V

    :cond_0
    return-void
.end method

.method public final startChooseNetworkDialog(Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 4

    const-string/jumbo v0, "side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkIdBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    new-instance v3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;

    invoke-direct {v3, p1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;-><init>(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->showChooseNetworkDialog(Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final startSelectTokenDialog(Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 8

    const-string/jumbo v0, "side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    sget-object v0, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    :goto_0
    move-object v3, v1

    .line 235
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 236
    instance-of v2, v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_c

    .line 237
    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v6, :cond_a

    if-eq v0, v4, :cond_1

    goto/16 :goto_7

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-nez v0, :cond_2

    .line 257
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_give_token_validation:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceAvailableOppositeSelectableSwapTokens:Lkotlin/Pair;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v0, v5

    :goto_1
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v5

    :goto_2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 261
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 264
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceAvailableOppositeSelectableSwapTokens:Lkotlin/Pair;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 1549
    new-instance v5, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

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
    check-cast v1, Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;

    .line 265
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;->getTokenInfo()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/mapper/wallet/select/SelectableMappingKt;->mapToDetailedToken(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    .line 1621
    invoke-interface {v5, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    if-nez v5, :cond_6

    .line 266
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 263
    :cond_6
    new-instance v4, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType$Binance;

    invoke-direct {v4, v5}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType$Binance;-><init>(Ljava/util/List;)V

    .line 269
    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBSCNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 261
    new-instance v7, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$4;

    invoke-direct {v7, p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$4;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V

    invoke-interface/range {v2 .. v7}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->openSelectTokenDialog(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    goto/16 :goto_7

    .line 275
    :cond_7
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v5

    :cond_8
    if-nez v5, :cond_9

    const-string v5, ""

    .line 274
    :cond_9
    new-instance v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V

    invoke-direct {p0, v5, v6, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance(Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;)V

    goto/16 :goto_7

    .line 239
    :cond_a
    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBSCNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getAvailableTokensByNetwork(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 240
    new-instance v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V

    invoke-direct {p0, v6, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance(ZLcom/iMe/fork/utils/Callbacks$Callback;)V

    goto/16 :goto_7

    .line 242
    :cond_b
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 244
    new-instance v4, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType$Binance;

    .line 245
    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBSCNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getAvailableTokensByNetwork(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 244
    invoke-direct {v4, v0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType$Binance;-><init>(Ljava/util/List;)V

    .line 248
    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBSCNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 242
    new-instance v7, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$2;

    invoke-direct {v7, p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$2;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V

    invoke-interface/range {v2 .. v7}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->openSelectTokenDialog(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    goto :goto_7

    .line 285
    :cond_c
    instance-of v1, v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v1, :cond_12

    .line 287
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    sget-object v2, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->SYMBIOSIS:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    if-ne v1, v2, :cond_d

    goto :goto_4

    :cond_d
    if-ne p1, v0, :cond_e

    .line 288
    iget-object v5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    goto :goto_4

    .line 289
    :cond_e
    iget-object v5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 291
    :goto_4
    sget-object v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v6, :cond_10

    if-ne v1, v4, :cond_f

    .line 293
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->IN:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    goto :goto_5

    :cond_f
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 292
    :cond_10
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->OUT:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    .line 296
    :goto_5
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 298
    new-instance v4, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType$Swap;

    .line 299
    iget-object v7, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 298
    invoke-direct {v4, v7, v1, v5}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType$Swap;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    if-ne p1, v0, :cond_11

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    move v6, v0

    .line 304
    :goto_6
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSelectedNetworkIdBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Ljava/lang/String;

    move-result-object v5

    .line 296
    new-instance v7, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$6;

    invoke-direct {v7, p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$6;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V

    invoke-interface/range {v2 .. v7}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->openSelectTokenDialog(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    :cond_12
    :goto_7
    return-void
.end method

.method public final startSwapFlow()V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 314
    instance-of v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapBinance()V

    goto :goto_0

    .line 315
    :cond_0
    instance-of v0, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSwapConfirmationDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showSwapConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    :cond_1
    :goto_0
    return-void
.end method
