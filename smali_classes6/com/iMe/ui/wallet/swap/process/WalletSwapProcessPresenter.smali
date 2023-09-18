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
    value = "SMAP\nWalletSwapProcessPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSwapProcessPresenter.kt\ncom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1247:1\n63#2,12:1248\n63#2,12:1272\n63#2,12:1284\n63#2,12:1298\n63#2,12:1310\n63#2,12:1322\n63#2,12:1334\n63#2,12:1351\n63#2,12:1366\n1549#3:1260\n1620#3,3:1261\n1549#3:1264\n1620#3,3:1265\n288#3,2:1268\n288#3,2:1270\n1549#3:1347\n1620#3,3:1348\n1747#3,3:1363\n26#4:1296\n26#4:1297\n1#5:1346\n*S KotlinDebug\n*F\n+ 1 WalletSwapProcessPresenter.kt\ncom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter\n*L\n211#1:1248,12\n550#1:1272,12\n572#1:1284,12\n647#1:1298,12\n680#1:1310,12\n718#1:1322,12\n748#1:1334,12\n800#1:1351,12\n1209#1:1366,12\n312#1:1260\n312#1:1261,3\n475#1:1264\n475#1:1265,3\n486#1:1268,2\n489#1:1270,2\n788#1:1347\n788#1:1348,3\n835#1:1363,3\n597#1:1296\n623#1:1297\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private amount:Ljava/lang/String;

.field private final amountSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private amountSubjectDisposable:Lio/reactivex/disposables/Disposable;

.field private approveMetadata:Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;

.field private availableNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;",
            ">;"
        }
    .end annotation
.end field

.field private binanceAvailableOppositeSwapTokens:Lkotlin/Pair;
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

.field private currentNetworkSelectionSide:Lcom/iMe/model/wallet/swap/SwapSide;

.field private final hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

.field private inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private loadApproveMetadataDisposable:Lio/reactivex/disposables/Disposable;

.field private outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private outputTokenRate:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

.field private selectedApproveFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

.field private selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

.field private selectedInputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

.field private selectedOutputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

.field private selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

.field private selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

.field private shouldIgnoreAmountChanges:Z

.field private state:Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

.field private supportedSwapTokens:Ljava/util/HashMap;
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

.field private final swapInteractor:Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;

.field private swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

.field private swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

.field private swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

.field private tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

.field private tokensApprovalData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public static synthetic $r8$lambda$7peBzB0BMr-MhOzIMQ_RWe3hfhs(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance$lambda$23(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$85QWU3TSZVX-phE4r758P5y7O2Q(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSwapFlow$lambda$5(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bf2eByo1B49ERGoMX2wEsxTGJBk()V
    .locals 0

    invoke-static {}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance$lambda$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$GsYVp0ZEUsh0AAlxbzKniGhN78s(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->subscribeToAmountSubject$lambda$38(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NTRm8X0dXOH3ynCRqYzwGJJLGTs(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectToken$lambda$6(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TGg1jQJK8l5YWp-cUr7H6kEE-cs(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$lambda$27(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$brxcvOFJ0s-0Op_uT29w3ruWNa4()V
    .locals 0

    invoke-static {}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance$lambda$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$hGc06yQ_yc2_CJKAxFciv_dpTwk(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->subscribeToAmountSubject$lambda$37(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ig8j50ix-vzwwG22P35qikAdzbg(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenScreen$lambda$2(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qt-EmBoBqmnWF3r-MaKcNLT05p8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->subscribeToAmountSubject$lambda$39(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sy4Umue1CkptV0SG1i8XVfrkQQQ(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenScreen$lambda$4(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z444JEd5VUSfD7N0oMbsts8ymQg(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance$lambda$19(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

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

.method public constructor <init>(Lcom/iMe/model/wallet/swap/WalletSwapScreenType;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;)V
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

    const-string/jumbo v0, "resourceManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hintsPreferenceHelper"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 73
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 74
    iput-object p3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 75
    iput-object p4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;

    .line 76
    iput-object p5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 77
    iput-object p6, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 78
    iput-object p7, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 79
    iput-object p8, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    .line 82
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "create()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amountSubject:Lio/reactivex/subjects/PublishSubject;

    const-string p1, ""

    .line 84
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amount:Ljava/lang/String;

    .line 87
    sget-object p1, Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage$Companion;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage$Companion;->getDefaultValue()Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    .line 88
    sget-object p1, Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline$Companion;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline$Companion;->getDefaultValue()Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    .line 89
    new-instance p1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 p4, 0x2

    invoke-direct {p1, p2, p3, p4, p3}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;-><init>(ZLcom/iMe/model/wallet/swap/SwapSide;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

    .line 90
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->supportedSwapTokens:Ljava/util/HashMap;

    .line 91
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    .line 92
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getInitialNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 93
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getInitialNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 94
    sget-object p1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->UNKNOWN:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 95
    sget-object p2, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;

    invoke-virtual {p2, p1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;->map(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    .line 101
    invoke-static {}, Lio/reactivex/disposables/Disposables;->disposed()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "disposed()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveMetadataDisposable:Lio/reactivex/disposables/Disposable;

    .line 102
    invoke-static {}, Lio/reactivex/disposables/Disposables;->disposed()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amountSubjectDisposable:Lio/reactivex/disposables/Disposable;

    .line 103
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->tokensApprovalData:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$checkSelectedTokenApprove(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->checkSelectedTokenApprove()V

    return-void
.end method

.method public static final synthetic access$chooseSwapFee(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->chooseSwapFee()V

    return-void
.end method

.method public static final synthetic access$formatBinanceBalance(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->formatBinanceBalance(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAmount$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amount:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getAmountSubject$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amountSubject:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic access$getBinanceTokenBalance$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceTokenBalance:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    return-object p0
.end method

.method public static final synthetic access$getCryptoSwapUiState(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getCryptoSwapUiState()Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInputToken$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object p0
.end method

.method public static final synthetic access$getInputTokenApprovalData(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getInputTokenApprovalData()Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOutputToken$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getSelectedInputNetworkItem$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    return-object p0
.end method

.method public static final synthetic access$getState$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/model/wallet/crypto/swap/SwapUiState;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

    return-object p0
.end method

.method public static final synthetic access$getSupportedSwapTokens$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Ljava/util/HashMap;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->supportedSwapTokens:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getSwapInteractor$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;

    return-object p0
.end method

.method public static final synthetic access$getSwapPrepareObservable(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lio/reactivex/Observable;
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSwapPrepareObservable()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSwapProtocol$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    return-object p0
.end method

.method public static final synthetic access$getTokenBalance$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-object p0
.end method

.method public static final synthetic access$getTokensApprovalData$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Ljava/util/HashMap;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->tokensApprovalData:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$handleSwapErrors(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/Result$Error;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->handleSwapErrors(Lcom/iMe/storage/domain/model/Result$Error;)V

    return-void
.end method

.method public static final synthetic access$isAvailableBalanceLessThanAmount(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;D)Z
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->isAvailableBalanceLessThanAmount(D)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$renderState(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method public static final synthetic access$selectApproveFee(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectApproveFee(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V

    return-void
.end method

.method public static final synthetic access$selectToken(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectToken(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-void
.end method

.method public static final synthetic access$setAmount$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amount:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setBinanceAvailableOppositeSwapTokens$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lkotlin/Pair;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceAvailableOppositeSwapTokens:Lkotlin/Pair;

    return-void
.end method

.method public static final synthetic access$setBinanceConvertQuote$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    return-void
.end method

.method public static final synthetic access$setBinanceTokenBalance$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceTokenBalance:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    return-void
.end method

.method public static final synthetic access$setInputError(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->setInputError(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setInputFiatText(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->setInputFiatText(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setOutputTokenRate$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputTokenRate:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    return-void
.end method

.method public static final synthetic access$setSelectedSwapFee$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    return-void
.end method

.method public static final synthetic access$setSwapMetadata$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    return-void
.end method

.method public static final synthetic access$setTokenBalance$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method

.method public static final synthetic access$startUpdatingApproveMetadataIfNeed(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/util/List;Z)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startUpdatingApproveMetadataIfNeed(Ljava/util/List;Z)V

    return-void
.end method

.method private final checkMinMaxInputValues()V
    .locals 7

    .line 1073
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_5

    .line 1074
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 1075
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-nez v1, :cond_0

    return-void

    .line 1076
    :cond_0
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceAvailableOppositeSwapTokens:Lkotlin/Pair;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;

    .line 1077
    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;->getTokenInfo()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;->getAsset()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    .line 1076
    :cond_3
    check-cast v4, Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;

    if-nez v4, :cond_4

    goto :goto_0

    .line 1074
    :cond_4
    invoke-interface {v0, v1, v4}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showMinMaxInputValues(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;)V

    nop

    :cond_5
    :goto_0
    return-void
.end method

.method private final checkSelectedTokenApprove()V
    .locals 4

    .line 918
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_3

    .line 919
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getInputTokenApprovalData()Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;

    move-result-object v0

    .line 920
    instance-of v1, v0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$Allowed;

    if-eqz v1, :cond_0

    .line 921
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amountSubject:Lio/reactivex/subjects/PublishSubject;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 924
    :cond_0
    instance-of v1, v0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 925
    sget-object v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$ApprovalPending;->INSTANCE:Lcom/iMe/model/wallet/crypto/swap/SwapUiState$ApprovalPending;

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 926
    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;ZLcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/Object;)V

    goto :goto_0

    .line 929
    :cond_1
    instance-of v1, v0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;

    if-eqz v1, :cond_2

    .line 930
    check-cast v0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveMetadata:Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;

    .line 931
    new-instance v1, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 932
    sget-object v2, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->MEDIUM:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    .line 933
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    .line 934
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getFeeByLevel(Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;)Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v0

    .line 931
    invoke-direct {v1, v2, v3, v0}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;-><init>(Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;)V

    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 938
    new-instance v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Approval;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getApproveFeeType()Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-direct {v0, v1, v2}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Approval;-><init>(Lcom/iMe/model/wallet/crypto/send/fee/FeeType;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    goto :goto_0

    .line 942
    :cond_2
    new-instance v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    const/4 v1, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;-><init>(ZLcom/iMe/model/wallet/swap/SwapSide;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final chooseSwapFee()V
    .locals 2

    .line 1069
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveSwapFeeScreenArgs()Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->openSwapFeeScreen(Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;)V

    return-void
.end method

.method private final formatBinanceBalance(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;
    .locals 5

    .line 1122
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 1123
    sget v1, Lorg/telegram/messenger/R$string;->binance_convert_balance:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1124
    invoke-static {p1}, Lcom/iMe/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;->getSpotBalanceShortText(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1125
    invoke-static {p1}, Lcom/iMe/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;->getMarginBalanceShortText(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 1122
    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getApproveFeeType()Lcom/iMe/model/wallet/crypto/send/fee/FeeType;
    .locals 7

    .line 1019
    new-instance v6, Lcom/iMe/model/wallet/crypto/send/fee/FeeType$Default;

    .line 1020
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getFeeDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    .line 1021
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveMetadata:Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v2

    .line 1022
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveMetadata:Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    .line 1023
    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1024
    new-instance v5, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$getApproveFeeType$1;

    invoke-direct {v5, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$getApproveFeeType$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    move-object v0, v6

    .line 1019
    invoke-direct/range {v0 .. v5}, Lcom/iMe/model/wallet/crypto/send/fee/FeeType$Default;-><init>(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/storage/domain/model/crypto/TransactionParams;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;Lkotlin/jvm/functions/Function1;)V

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

    .line 466
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->supportedSwapTokens:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private final getCryptoSwapUiState()Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;
    .locals 4

    .line 1035
    new-instance v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;

    .line 1036
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSwapFeeType()Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    move-result-object v1

    .line 1037
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1038
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getOutputFiatAmountText()Ljava/lang/String;

    move-result-object v3

    .line 1035
    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;-><init>(Lcom/iMe/model/wallet/crypto/send/fee/FeeType;Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getFeeDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 8

    .line 1063
    new-instance v7, Lcom/iMe/model/dialog/DialogModel;

    .line 1064
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_fee_dialog_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1065
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, v7

    .line 1063
    invoke-direct/range {v0 .. v6}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method private final getInitialNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;
    .locals 1

    .line 1241
    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBSCNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v0

    return-object v0
.end method

.method private final getInputTokenApprovalData()Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;
    .locals 5

    .line 913
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->tokensApprovalData:Ljava/util/HashMap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkIdBySwapSide$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    check-cast v3, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;

    .line 914
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

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

    .line 913
    :cond_2
    check-cast v1, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;

    :cond_3
    return-object v1
.end method

.method private final getNetworkIdBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Ljava/lang/String;
    .locals 0

    .line 463
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkItemBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic getNetworkIdBySwapSide$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 462
    sget-object p1, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    :cond_0
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkIdBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getNetworkItemBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;
    .locals 1

    .line 454
    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 457
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->isCrossChain()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    goto :goto_0

    .line 458
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 455
    :cond_2
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    :goto_0
    return-object p1
.end method

.method private final getNetworkSwitchState()Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->isCrossChain()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    sget-object v2, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->UNKNOWN:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method private final getOutputFiatAmountText()Ljava/lang/String;
    .locals 6

    .line 1221
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputTokenRate:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x7e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    .line 1223
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->getValue()D

    move-result-wide v4

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountOut()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v0

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1224
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getUSD()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1222
    invoke-virtual {v3, v0, v1}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatFiatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    return-object v1
.end method

.method private final getSwapConfirmationDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 13

    .line 1085
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_swap_alert_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1086
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 1087
    instance-of v2, v1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    .line 1088
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    if-eqz v1, :cond_3

    .line 1089
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 1090
    sget v8, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_swap_alert_description:I

    new-array v7, v7, [Ljava/lang/Object;

    .line 1091
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getInputAmount()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    sget-object v10, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v10}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getBNB()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v11

    invoke-virtual {v11}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v6

    .line 1092
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getInputTokenShortName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    .line 1093
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getOutputAmount()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v10}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getBNB()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    .line 1094
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getOutputTokenShortName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    .line 1089
    invoke-interface {v2, v8, v7}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 1099
    :cond_0
    instance-of v1, v1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v1, :cond_4

    .line 1100
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    if-eqz v1, :cond_2

    .line 1101
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 1102
    sget v9, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_swap_alert_description:I

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    .line 1103
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountIn()Ljava/math/BigDecimal;

    move-result-object v11

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    .line 1104
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v5

    .line 1105
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountOut()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v4

    .line 1106
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v3

    .line 1108
    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getFee()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    :cond_1
    invoke-static {v8}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 1109
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1107
    invoke-static {v3, v4}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v7

    const/4 v3, 0x5

    .line 1111
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v3

    .line 1101
    invoke-interface {v2, v9, v10}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    :cond_2
    const-string v8, ""

    .line 1117
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1118
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_swap_alert_action:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1084
    new-instance v3, Lcom/iMe/model/dialog/DialogModel;

    invoke-direct {v3, v0, v8, v1, v2}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 1113
    :cond_4
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final getSwapFeeType()Lcom/iMe/model/wallet/crypto/send/fee/FeeType;
    .locals 3

    .line 1013
    new-instance v0, Lcom/iMe/model/wallet/crypto/send/fee/FeeType$Custom;

    .line 1014
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$getSwapFeeType$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$getSwapFeeType$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    .line 1015
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1013
    invoke-direct {v0, v1, v2}, Lcom/iMe/model/wallet/crypto/send/fee/FeeType$Custom;-><init>(Lkotlin/jvm/functions/Function0;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V

    return-object v0
.end method

.method private final getSwapPrepareObservable()Lio/reactivex/Observable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;",
            ">;>;"
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    const-string v1, "empty()"

    if-nez v0, :cond_0

    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 588
    :cond_0
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-nez v2, :cond_1

    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 589
    :cond_1
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 590
    instance-of v3, v1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    const-string v4, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    if-eqz v3, :cond_2

    .line 591
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 593
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v2

    .line 595
    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amount:Ljava/lang/String;

    .line 592
    invoke-virtual {v1, v0, v2, v3}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getConvertQuote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$getSwapPrepareObservable$$inlined$mapSuccess$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$getSwapPrepareObservable$$inlined$mapSuccess$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 602
    :cond_2
    instance-of v1, v1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v1, :cond_7

    .line 603
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    sget-object v3, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Oneinch;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Oneinch;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 604
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getRateToFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->getValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v5

    .line 605
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amount:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    .line 607
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->isCoin()Z

    move-result v1

    if-nez v1, :cond_5

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    cmpg-double v1, v5, v7

    if-gez v1, :cond_4

    goto :goto_1

    .line 610
    :cond_4
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->ONEINCH_FUSION:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    goto :goto_2

    .line 608
    :cond_5
    :goto_1
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->ONEINCH:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 606
    :goto_2
    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 614
    :cond_6
    iget-object v5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;

    .line 616
    invoke-static {v0}, Lcom/iMe/storage/domain/utils/extentions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v7

    .line 617
    invoke-static {v2}, Lcom/iMe/storage/domain/utils/extentions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v8

    .line 618
    iget-object v9, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amount:Ljava/lang/String;

    .line 619
    sget-object v10, Lcom/iMe/storage/domain/model/wallet/swap/TradeType;->EXACT_INPUT:Lcom/iMe/storage/domain/model/wallet/swap/TradeType;

    .line 620
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;->PERCENT_5:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;->getPercent()F

    move-result v0

    .line 621
    iget-object v6, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 620
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 615
    invoke-virtual/range {v5 .. v11}, Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;->getQuoteToSwap(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Lcom/iMe/storage/domain/model/wallet/token/Token;Lcom/iMe/storage/domain/model/wallet/token/Token;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/swap/TradeType;Ljava/lang/Float;)Lio/reactivex/Observable;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$getSwapPrepareObservable$$inlined$mapSuccess$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$getSwapPrepareObservable$$inlined$mapSuccess$2;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object v0

    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final handleSwapErrors(Lcom/iMe/storage/domain/model/Result$Error;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result$Error<",
            "*>;)V"
        }
    .end annotation

    .line 845
    new-instance v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;-><init>(ZLcom/iMe/model/wallet/swap/SwapSide;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    .line 846
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 847
    sget-object v4, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_APPROVED_AMOUNT_NOT_SUFFICIENT:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    const/4 v5, 0x2

    if-ne v0, v4, :cond_0

    .line 848
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {v0, p1, v3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 849
    invoke-static {p0, v1, v2, v5, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;ZLcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 852
    :cond_0
    sget-object v4, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->NO_ENOUGH_MONEY:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    if-ne v0, v4, :cond_2

    .line 853
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 854
    instance-of v0, p1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 855
    new-instance v6, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 854
    invoke-interface {p1, v6}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showNotEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    goto/16 :goto_4

    .line 858
    :cond_1
    instance-of p1, p1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 859
    new-instance v6, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 858
    invoke-interface {p1, v6}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showNotEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    goto/16 :goto_4

    .line 864
    :cond_2
    sget-object v4, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->ETHER_BLOCK_CHAIN_ERROR:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    const/4 v6, 0x1

    if-ne v0, v4, :cond_3

    :goto_0
    move v4, v6

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_INSUFFICIENT_RESERVES_IN_LIQUIDITY_POOL_OF_TOKENS:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v4, :cond_4

    goto :goto_0

    :cond_4
    move v4, v1

    :goto_1
    if-eqz v4, :cond_5

    .line 865
    invoke-static {p0, v1, v2, v5, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;ZLcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/Object;)V

    .line 866
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {v0, p1, v4}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 867
    new-instance p1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    invoke-direct {p1, v1, v2, v3, v2}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;-><init>(ZLcom/iMe/model/wallet/swap/SwapSide;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, p1, v2, v5, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateTo$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/crypto/swap/SwapUiState;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)V

    goto :goto_4

    .line 870
    :cond_5
    sget-object v2, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_DIFF_BTW_TOKEN_EXCHANGE_RATES_IS_TOO_BIG:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v2, :cond_6

    :goto_2
    move v1, v6

    goto :goto_3

    :cond_6
    sget-object v2, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_QUOTE_NOT_FOUND:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v2, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 871
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 872
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateIfNeeded()V

    goto :goto_4

    .line 875
    :cond_8
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->ERR_AMOUNT_LESS_THAN_MIN:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v1, :cond_9

    .line 876
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 877
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_low_amount:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 876
    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setInputError(Ljava/lang/String;)V

    goto :goto_4

    .line 881
    :cond_9
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->ERR_FETCH_TOKEN:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v1, :cond_b

    .line 882
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    const-string p1, ""

    :cond_a
    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showCommonErrorDialog(Ljava/lang/String;)V

    goto :goto_4

    .line 885
    :cond_b
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_c
    :goto_4
    return-void
.end method

.method private final isAvailableBalanceLessThanAmount(D)Z
    .locals 4

    .line 1052
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 1053
    instance-of v1, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1054
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceTokenBalance:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getSpot()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getTotal()D

    move-result-wide v0

    cmpg-double p1, v0, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    .line 1057
    :cond_1
    instance-of v0, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v0, :cond_2

    .line 1058
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v0

    cmpg-double p1, v0, p1

    if-gez p1, :cond_0

    :goto_0
    return v2

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final isValidForApprove()Z
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Approval;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_0

    .line 1049
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getInputTokenApprovalData()Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final loadApproveTokensInfo(ZLcom/iMe/storage/domain/model/wallet/token/Token;)V
    .locals 7

    .line 772
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    instance-of v0, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-wide/16 v0, 0xf

    .line 777
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 775
    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    goto :goto_0

    .line 779
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 781
    invoke-static {p0, v1, v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkIdBySwapSide$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_2

    .line 783
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_2

    .line 785
    :cond_2
    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->supportedSwapTokens:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 787
    :cond_3
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 1549
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1621
    check-cast v6, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 788
    invoke-static {v6}, Lcom/iMe/storage/domain/utils/extentions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v6

    .line 1621
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v4, v5

    .line 792
    :goto_2
    new-instance v5, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$1;

    invoke-direct {v5, p0, v3, v4}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;Ljava/util/List;)V

    new-instance v4, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda8;

    invoke-direct {v4, v5}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v4}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 799
    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v4}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v4, "private fun loadApproveT\u2026     .autoDispose()\n    }"

    .line 792
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 800
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v4

    check-cast v4, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v5, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v5, p2, p0, v3, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/storage/domain/model/wallet/token/Token;Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;Z)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v5}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p2, v4}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, p1, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 827
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveMetadataDisposable:Lio/reactivex/disposables/Disposable;

    .line 828
    invoke-static {p0, p1, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic loadApproveTokensInfo$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;ZLcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 768
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo(ZLcom/iMe/storage/domain/model/wallet/token/Token;)V

    return-void
.end method

.method private static final loadApproveTokensInfo$lambda$27(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 792
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final loadAvailableOppositeSwapTokensBinance(Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 2

    .line 739
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    instance-of v0, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    if-nez v0, :cond_0

    return-void

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 742
    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getOppositeTokensForConvertByToken(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 743
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 744
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$2;

    invoke-direct {v1, p2, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$2;-><init>(ZLcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance p2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda6;

    invoke-direct {p2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p2

    const-string/jumbo v0, "private fun loadAvailabl\u2026     .autoDispose()\n    }"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p3, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, p3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p2, p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 759
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

    .line 737
    sget-object p3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda4;->INSTANCE:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda4;

    .line 734
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance(Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final loadAvailableOppositeSwapTokensBinance$lambda$22()V
    .locals 0

    return-void
.end method

.method private static final loadAvailableOppositeSwapTokensBinance$lambda$23(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final loadAvailableSwapTokens(Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 2

    .line 763
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    instance-of p1, p1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 764
    invoke-static {p0, p1, v1, v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;ZLcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final loadAvailableSwapTokensBinance(ZLcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    instance-of v0, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    if-nez v0, :cond_0

    return-void

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 712
    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getTokensForConvert()Lio/reactivex/Observable;

    move-result-object v0

    .line 713
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 714
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$2;

    invoke-direct {v1, p1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$2;-><init>(ZLcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda7;

    invoke-direct {p1, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    const-string/jumbo v0, "private fun loadAvailabl\u2026     .autoDispose()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    new-instance p2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 731
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

    .line 707
    sget-object p2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda5;->INSTANCE:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda5;

    .line 705
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance(ZLcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final loadAvailableSwapTokensBinance$lambda$18()V
    .locals 0

    return-void
.end method

.method private static final loadAvailableSwapTokensBinance$lambda$19(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 714
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final loadBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 2

    .line 637
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 638
    instance-of v1, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadBalanceBinance(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto :goto_0

    .line 639
    :cond_0
    instance-of v0, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadBalanceCrypto(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final loadBalanceBinance(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 3

    .line 644
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 645
    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getUserBalance()Lio/reactivex/Observable;

    move-result-object v0

    .line 646
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceBinance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceBinance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceBinance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceBinance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 670
    invoke-static {p0, p1, v0, v1, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadBalanceCrypto(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 8

    .line 674
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 676
    invoke-static {p1}, Lcom/iMe/storage/domain/utils/extentions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 677
    invoke-static {p0, v6, v7, v6}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkIdBySwapSide$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 675
    invoke-static/range {v0 .. v5}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getTokenBalance$default(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;Lcom/iMe/storage/domain/model/wallet/token/Token;ZLjava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 679
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    invoke-static {p0, p1, v6, v7, v6}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V
    .locals 1

    .line 1042
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

    .line 1043
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method private final resetAmountSubjectSubscription()V
    .locals 1

    .line 1129
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amountSubjectDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1130
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->subscribeToAmountSubject()V

    return-void
.end method

.method private final resetLoadedInformation()V
    .locals 1

    .line 469
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->supportedSwapTokens:Ljava/util/HashMap;

    .line 470
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->tokensApprovalData:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 471
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveMetadata:Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;

    return-void
.end method

.method private final resetStateTo(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 3

    .line 891
    instance-of v0, p1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 892
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    .line 893
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 894
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline$Companion;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline$Companion;->getDefaultValue()Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    .line 895
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage$Companion;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage$Companion;->getDefaultValue()Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    const/4 v1, -0x1

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    .line 897
    :cond_0
    sget-object v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    :goto_0
    if-eq p2, v1, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    goto :goto_1

    .line 899
    :cond_1
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    goto :goto_1

    .line 898
    :cond_2
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    goto :goto_1

    .line 901
    :cond_3
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 902
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 909
    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method static synthetic resetStateTo$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/crypto/swap/SwapUiState;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 889
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateTo(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method private final resolveApproveArgs()Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;
    .locals 17

    move-object/from16 v0, p0

    .line 960
    iget-object v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    instance-of v1, v1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->isCoin()Z

    move-result v1

    if-ne v1, v4, :cond_0

    move v3, v4

    :cond_0
    if-eqz v3, :cond_1

    goto :goto_0

    .line 963
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getInputTokenApprovalData()Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;

    move-result-object v1

    .line 964
    instance-of v3, v1, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;

    if-eqz v3, :cond_2

    .line 965
    check-cast v1, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;

    .line 966
    new-instance v3, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;

    .line 967
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    .line 968
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 969
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getChainId()J

    move-result-wide v8

    .line 970
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getNonce()Ljava/math/BigInteger;

    move-result-object v10

    .line 971
    iget-object v5, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getPrice()Ljava/math/BigInteger;

    move-result-object v11

    .line 972
    iget-object v5, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getLimit()Ljava/math/BigInteger;

    move-result-object v12

    .line 973
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v13

    .line 974
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v14

    .line 975
    invoke-static {v0, v2, v4, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkIdBySwapSide$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 976
    iget-object v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-object v5, v3

    move-object/from16 v16, v1

    .line 966
    invoke-direct/range {v5 .. v16}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;-><init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/math/BigInteger;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)V

    move-object v2, v3

    :cond_2
    :goto_0
    return-object v2
.end method

.method private final resolveArgs()V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 498
    instance-of v1, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    if-eqz v1, :cond_0

    .line 499
    check-cast v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;->getFromToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 500
    invoke-virtual {v0}, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;->getToToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    goto :goto_0

    .line 503
    :cond_0
    instance-of v1, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v1, :cond_1

    .line 504
    check-cast v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;->getSwapProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 505
    invoke-virtual {v0}, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;->getSwapProtocolInfo()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    .line 506
    invoke-virtual {v0}, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;->getFromToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 507
    invoke-virtual {v0}, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;->getToToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    :cond_1
    :goto_0
    return-void
.end method

.method private final resolveAvailableNetworks()V
    .locals 3

    .line 475
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

    .line 476
    invoke-static {v2}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 477
    :cond_0
    invoke-static {v1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 475
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    return-void
.end method

.method private final resolveSelectedNetworkType()V
    .locals 5

    .line 481
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    instance-of v1, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;->getForcedNetworkId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    check-cast v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;->getForcedNetworkId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v0

    .line 483
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 484
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    goto :goto_1

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    .line 288
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 487
    invoke-virtual {v3}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v4}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetworkId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 486
    :goto_0
    check-cast v1, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    if-nez v1, :cond_3

    .line 488
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 486
    :cond_3
    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 489
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    .line 288
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 490
    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    move-object v2, v1

    .line 489
    :cond_5
    check-cast v2, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    if-nez v2, :cond_6

    .line 491
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 489
    :cond_6
    iput-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    :goto_1
    return-void
.end method

.method private final resolveSwapArgs()Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;
    .locals 22

    move-object/from16 v0, p0

    .line 986
    iget-object v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    instance-of v1, v1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 988
    :cond_0
    iget-object v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    if-eqz v1, :cond_2

    .line 990
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountIn()Ljava/math/BigDecimal;

    move-result-object v5

    .line 991
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountBound()Ljava/math/BigInteger;

    move-result-object v12

    .line 992
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    .line 993
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getChainId()J

    move-result-wide v7

    .line 994
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getNonce()Ljava/math/BigInteger;

    move-result-object v9

    .line 995
    iget-object v2, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getPrice()Ljava/math/BigInteger;

    move-result-object v10

    .line 996
    iget-object v2, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getLimit()Ljava/math/BigInteger;

    move-result-object v11

    .line 997
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getContractAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    move-object v13, v2

    .line 998
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getSwapMethod()Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    move-result-object v14

    .line 999
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getPath()Ljava/util/List;

    move-result-object v15

    .line 1000
    iget-object v2, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;->getMinutes()I

    move-result v16

    .line 1001
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getQuoteId()Ljava/lang/String;

    move-result-object v19

    .line 1002
    sget-object v2, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-direct {v0, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkItemBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object v20

    .line 1003
    sget-object v2, Lcom/iMe/model/wallet/swap/SwapSide;->OUTPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-direct {v0, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkItemBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object v21

    .line 1004
    iget-object v4, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 1005
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getValue()Ljava/math/BigInteger;

    move-result-object v17

    .line 1006
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getCallData()Ljava/lang/String;

    move-result-object v18

    .line 989
    new-instance v2, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;

    move-object v3, v2

    invoke-direct/range {v3 .. v21}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;Ljava/util/List;ILjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v2
.end method

.method private final resolveSwapFeeScreenArgs()Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;
    .locals 7

    .line 949
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    instance-of v0, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    if-eqz v0, :cond_0

    .line 950
    new-instance v0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;

    .line 951
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 952
    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    .line 953
    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    .line 954
    iget-object v5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 955
    iget-object v6, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-object v1, v0

    .line 950
    invoke-direct/range {v1 .. v6}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;-><init>(Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final selectApproveFee(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 2

    .line 1030
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 1031
    new-instance p1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Approval;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getApproveFeeType()Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-direct {p1, v0, v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Approval;-><init>(Lcom/iMe/model/wallet/crypto/send/fee/FeeType;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method private final selectToken(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 7

    .line 399
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 400
    instance-of v1, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 401
    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 414
    :cond_0
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 415
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    .line 416
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->onTokenSelected(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 417
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->checkMinMaxInputValues()V

    goto/16 :goto_2

    .line 403
    :cond_1
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz p2, :cond_8

    .line 405
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->onTokenSelected(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 406
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    .line 409
    invoke-direct {p0, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto :goto_2

    .line 423
    :cond_2
    instance-of v0, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v0, :cond_8

    .line 424
    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 442
    :cond_3
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz p2, :cond_7

    .line 444
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->onTokenSelected(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto :goto_1

    .line 426
    :cond_4
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz p2, :cond_7

    .line 428
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->onTokenSelected(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 429
    invoke-direct {p0, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 430
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getInputTokenApprovalData()Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->isCoin()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 435
    invoke-static {p2}, Lcom/iMe/storage/domain/utils/extentions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object p2

    .line 433
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo(ZLcom/iMe/storage/domain/model/wallet/token/Token;)V

    goto :goto_1

    .line 431
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->checkSelectedTokenApprove()V

    .line 448
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateIfNeeded()V

    :cond_8
    :goto_2
    return-void
.end method

.method private static final selectToken$lambda$6(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->checkMinMaxInputValues()V

    return-void
.end method

.method private final setInputError(Ljava/lang/String;)V
    .locals 1

    .line 1235
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    instance-of v0, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v0, :cond_0

    .line 1236
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setInputError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final setInputFiatText(Ljava/lang/String;)V
    .locals 1

    .line 1229
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    instance-of v0, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v0, :cond_0

    .line 1230
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setInputFiatText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final setupSwapInformation()V
    .locals 8

    .line 514
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 515
    instance-of v1, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    if-eqz v1, :cond_0

    .line 516
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 517
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->binance_convert_toolbar_title:I

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 518
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->binance_convert_description:I

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 519
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_ic_bnb_logo:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 516
    invoke-interface/range {v1 .. v6}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setupScreenForSwap(Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_0

    .line 525
    :cond_0
    instance-of v0, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v0, :cond_1

    .line 526
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkSwitchState()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 527
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 528
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;->getName()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 529
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;->getLongDescription()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 530
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;->getLogo()I

    move-result v5

    .line 527
    invoke-interface/range {v2 .. v7}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setupScreenForSwap(Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic startChooseNetworkDialog$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 111
    sget-object p1, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startChooseNetworkDialog(Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method private static final startSelectTokenScreen$lambda$2(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenScreen(Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method private static final startSelectTokenScreen$lambda$4(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenScreen(Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method private static final startSwapFlow$lambda$5(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 366
    instance-of v1, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapBinance()V

    goto :goto_0

    .line 367
    :cond_0
    instance-of v0, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapCrypto()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final startUpdatingApproveMetadataIfNeed(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;",
            ">;Z)V"
        }
    .end annotation

    .line 1747
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

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

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;

    .line 835
    instance-of v0, v0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;

    if-eqz v0, :cond_1

    move v2, v1

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    if-nez p2, :cond_3

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 838
    invoke-static {p0, v1, p2, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;ZLcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    if-eqz p2, :cond_4

    .line 840
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveMetadataDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_4
    :goto_1
    return-void
.end method

.method private final subscribeToAmountSubject()V
    .locals 5

    .line 1134
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amountSubject:Lio/reactivex/subjects/PublishSubject;

    .line 1135
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1136
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda11;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda11;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1144
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1145
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1146
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1147
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda10;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda10;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1204
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1205
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$3;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$3;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->switchMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1208
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "private fun subscribeToA\u2026     .autoDispose()\n    }"

    .line 1205
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1216
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amountSubjectDisposable:Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x1

    .line 1217
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final subscribeToAmountSubject$lambda$37(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1136
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final subscribeToAmountSubject$lambda$38(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1147
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final subscribeToAmountSubject$lambda$39(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1205
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final swapBinance()V
    .locals 5

    .line 566
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

    instance-of v1, v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;

    if-nez v1, :cond_0

    goto :goto_1

    .line 568
    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getQuoteId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-virtual {v1, v0}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->confirmConvertQuote(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 570
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string/jumbo v3, "viewState"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v3, v4, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 572
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$swapBinance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$swapBinance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$swapBinance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$swapBinance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v4, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 583
    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final swapCrypto()V
    .locals 5

    .line 542
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 544
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveSwapArgs()Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 546
    :cond_1
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;

    .line 547
    invoke-virtual {v1, v0}, Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;->swap(Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;)Lio/reactivex/Observable;

    move-result-object v0

    .line 548
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "swapInteractor\n         \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
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

    .line 550
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$swapCrypto$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$swapCrypto$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$swapCrypto$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$swapCrypto$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 562
    invoke-static {p0, v0, v4, v1, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final approve()V
    .locals 5

    .line 203
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->isValidForApprove()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveApproveArgs()Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;

    .line 208
    invoke-virtual {v1, v0}, Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;->approveToken(Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;)Lio/reactivex/Observable;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "swapInteractor\n         \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
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

    .line 211
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$approve$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 241
    invoke-static {p0, v0, v4, v1, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onAmountChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "amountText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateIfNeeded()V

    .line 156
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->shouldIgnoreAmountChanges:Z

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amountSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onApprovalInfoClick()V
    .locals 7

    .line 254
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 255
    new-instance v1, Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;

    .line 256
    sget v2, Lorg/telegram/messenger/R$raw;->fork_common_info:I

    .line 257
    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_swap_process_what_is_approve:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 258
    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_swap_process_what_is_approve_dialog_description:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 259
    iget-object v5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 255
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;-><init>(ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 254
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showApprovalInfoDialog(Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;)V

    return-void
.end method

.method public final onApproveClick()V
    .locals 8

    .line 265
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 266
    new-instance v1, Lcom/iMe/model/dialog/DialogModel;

    .line 267
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 268
    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 269
    sget v4, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_description:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 270
    iget-object v6, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_1

    const-string v6, ""

    :cond_1
    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 268
    invoke-interface {v3, v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 272
    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 273
    iget-object v5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_action:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 266
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showApprovalConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 6

    .line 381
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->subscribeToAmountSubject()V

    .line 383
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveArgs()V

    .line 384
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveAvailableNetworks()V

    .line 385
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveSelectedNetworkType()V

    .line 387
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->setupSwapInformation()V

    .line 388
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    sget-object v1, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-direct {p0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkItemBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;Lcom/iMe/model/wallet/swap/SwapSide;)V

    .line 389
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    sget-object v2, Lcom/iMe/model/wallet/swap/SwapSide;->OUTPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-direct {p0, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkItemBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;Lcom/iMe/model/wallet/swap/SwapSide;)V

    .line 390
    new-instance v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v0, v3, v4, v5, v4}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;-><init>(ZLcom/iMe/model/wallet/swap/SwapSide;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    .line 392
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectToken(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v2, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectToken(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 395
    :cond_1
    invoke-direct {p0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokens(Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method public final onMaxClick()V
    .locals 6

    .line 162
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 163
    sget-object v1, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    .line 164
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v4

    new-instance v2, Ljava/math/BigDecimal;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "tokenBalance?.total?.toB\u2026.orZero().toPlainString()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v4, v5, v3}, Lcom/iMe/utils/extentions/common/StringExtKt;->stripZeros$default(Ljava/lang/String;CILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setAmount(Lcom/iMe/model/wallet/swap/SwapSide;Ljava/lang/String;)V

    return-void
.end method

.method public final onNetworkSelected(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V
    .locals 4

    .line 117
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetAmountSubjectSubscription()V

    if-nez p1, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->currentNetworkSelectionSide:Lcom/iMe/model/wallet/swap/SwapSide;

    if-nez v0, :cond_1

    return-void

    .line 121
    :cond_1
    sget-object v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    goto :goto_0

    .line 123
    :cond_2
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    goto :goto_0

    .line 122
    :cond_3
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 125
    :goto_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v1, p1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;Lcom/iMe/model/wallet/swap/SwapSide;)V

    .line 126
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetLoadedInformation()V

    .line 127
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->setupSwapInformation()V

    .line 129
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->isCrossChain()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    .line 130
    :cond_4
    sget-object p1, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    if-ne v0, p1, :cond_5

    sget-object p1, Lcom/iMe/model/wallet/swap/SwapSide;->OUTPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    .line 134
    :cond_5
    :goto_1
    new-instance v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    invoke-direct {v1, v2, p1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;-><init>(ZLcom/iMe/model/wallet/swap/SwapSide;)V

    .line 133
    invoke-direct {p0, v1, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateTo(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;Lcom/iMe/model/wallet/swap/SwapSide;)V

    .line 140
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokens(Lcom/iMe/model/wallet/swap/SwapSide;)V

    .line 141
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->isCrossChain()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, ""

    .line 142
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amount:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method public final processSwapFee(Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    .line 148
    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->getSelectedFee()Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 149
    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->getSelectedDeadline()Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    .line 150
    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->getSelectedSlippage()Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    .line 151
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getCryptoSwapUiState()Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method public final resetStateIfNeeded()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    .line 247
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    .line 248
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amountSubject:Lio/reactivex/subjects/PublishSubject;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final showChangeNetworkHintIfNeeded()V
    .locals 3

    .line 373
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkSwitchState()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 374
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    sget-object v2, Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$SwapScreen;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$SwapScreen;

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;->shouldShowHint(Lcom/iMe/storage/domain/model/wallet/Hint;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showChangeNetworkHint()V

    .line 376
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;->onHintShowed(Lcom/iMe/storage/domain/model/wallet/Hint;)V

    :cond_0
    return-void
.end method

.method public final startChooseNetworkDialog(Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 2

    const-string/jumbo v0, "side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->currentNetworkSelectionSide:Lcom/iMe/model/wallet/swap/SwapSide;

    .line 113
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkItemBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object p1

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->showChooseNetworkDialog(Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V

    return-void
.end method

.method public final startSelectTokenScreen(Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 8

    const-string/jumbo v0, "side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    sget-object v0, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    :goto_0
    move-object v3, v1

    .line 280
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 281
    instance-of v2, v1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_c

    .line 282
    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v5, :cond_a

    if-eq v0, v4, :cond_1

    goto/16 :goto_7

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-nez v0, :cond_2

    .line 304
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_give_token_validation:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceAvailableOppositeSwapTokens:Lkotlin/Pair;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_2
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 308
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 311
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceAvailableOppositeSwapTokens:Lkotlin/Pair;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1621
    check-cast v4, Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;

    .line 312
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;->getTokenInfo()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/iMe/mapper/wallet/select/SelectableMappingKt;->mapToDetailedToken(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    .line 1621
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    if-nez v1, :cond_6

    .line 313
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 310
    :cond_6
    new-instance v4, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Binance;

    invoke-direct {v4, v1}, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Binance;-><init>(Ljava/util/List;)V

    .line 316
    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBSCNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 308
    new-instance v7, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenScreen$4;

    invoke-direct {v7, p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenScreen$4;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V

    invoke-interface/range {v2 .. v7}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->openSelectTokenScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/model/wallet/select/SelectTokenScreenType;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    goto/16 :goto_7

    .line 322
    :cond_7
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v1

    :cond_8
    if-nez v1, :cond_9

    const-string v1, ""

    .line 321
    :cond_9
    new-instance v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V

    invoke-direct {p0, v1, v5, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance(Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;)V

    goto/16 :goto_7

    .line 284
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

    .line 285
    new-instance v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V

    invoke-direct {p0, v5, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance(ZLcom/iMe/fork/utils/Callbacks$Callback;)V

    goto/16 :goto_7

    .line 289
    :cond_b
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 291
    new-instance v4, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Binance;

    .line 292
    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBSCNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getAvailableTokensByNetwork(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 291
    invoke-direct {v4, v0}, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Binance;-><init>(Ljava/util/List;)V

    .line 295
    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBSCNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 289
    new-instance v7, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenScreen$2;

    invoke-direct {v7, p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenScreen$2;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V

    invoke-interface/range {v2 .. v7}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->openSelectTokenScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/model/wallet/select/SelectTokenScreenType;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    goto :goto_7

    .line 332
    :cond_c
    instance-of v1, v1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v1, :cond_12

    .line 333
    sget-object v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    if-eq v2, v5, :cond_e

    if-ne v2, v4, :cond_d

    .line 335
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    goto :goto_4

    :cond_d
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 334
    :cond_e
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 337
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v1, v1, v6

    if-eq v1, v5, :cond_10

    if-ne v1, v4, :cond_f

    .line 339
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->IN:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    goto :goto_5

    :cond_f
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 338
    :cond_10
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->OUT:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    .line 342
    :goto_5
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v4

    check-cast v4, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 344
    new-instance v6, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Swap;

    .line 345
    iget-object v7, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 344
    invoke-direct {v6, v7, v1, v2}, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Swap;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    if-ne p1, v0, :cond_11

    move v0, v5

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    .line 350
    :goto_6
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkIdBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Ljava/lang/String;

    move-result-object v5

    .line 342
    new-instance v7, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenScreen$6;

    invoke-direct {v7, p1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenScreen$6;-><init>(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    move-object v2, v4

    move-object v4, v6

    move v6, v0

    invoke-interface/range {v2 .. v7}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->openSelectTokenScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/model/wallet/select/SelectTokenScreenType;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    :cond_12
    :goto_7
    return-void
.end method

.method public final startSwapFlow()V
    .locals 3

    .line 362
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 363
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSwapConfirmationDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    .line 362
    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showSwapConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public final swapPositions()V
    .locals 8

    .line 169
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 170
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetAmountSubjectSubscription()V

    .line 175
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveMetadataDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 177
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountOut()Ljava/math/BigDecimal;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2, v4, v3, v5}, Lcom/iMe/utils/extentions/common/StringExtKt;->stripZeros$default(Ljava/lang/String;CILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v5

    :goto_0
    if-eqz v2, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v4

    .line 178
    :goto_1
    iput-boolean v6, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->shouldIgnoreAmountChanges:Z

    .line 180
    new-instance v6, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    const/4 v7, 0x2

    invoke-direct {v6, v3, v5, v7, v5}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;-><init>(ZLcom/iMe/model/wallet/swap/SwapSide;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, v6, v5, v7, v5}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateTo$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/crypto/swap/SwapUiState;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)V

    const-string v3, ""

    .line 181
    iput-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amount:Ljava/lang/String;

    .line 183
    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->isCrossChain()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 184
    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 186
    sget-object v5, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    iput-object v5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->currentNetworkSelectionSide:Lcom/iMe/model/wallet/swap/SwapSide;

    .line 187
    iget-object v5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-virtual {p0, v5}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->onNetworkSelected(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V

    .line 188
    sget-object v5, Lcom/iMe/model/wallet/swap/SwapSide;->OUTPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    iput-object v5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->currentNetworkSelectionSide:Lcom/iMe/model/wallet/swap/SwapSide;

    .line 189
    invoke-virtual {p0, v3}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->onNetworkSelected(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V

    .line 191
    :cond_3
    sget-object v3, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-direct {p0, v3, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectToken(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 192
    sget-object v1, Lcom/iMe/model/wallet/swap/SwapSide;->OUTPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-direct {p0, v1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectToken(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    if-eqz v2, :cond_4

    .line 195
    iput-boolean v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->shouldIgnoreAmountChanges:Z

    .line 196
    iput-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amount:Ljava/lang/String;

    .line 197
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0, v3, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setAmount(Lcom/iMe/model/wallet/swap/SwapSide;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amountSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, v2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
