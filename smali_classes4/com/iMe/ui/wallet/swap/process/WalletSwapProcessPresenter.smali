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
    value = "SMAP\nWalletSwapProcessPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSwapProcessPresenter.kt\ncom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1262:1\n63#2,12:1263\n63#2,12:1287\n63#2,12:1299\n63#2,12:1325\n63#2,12:1337\n63#2,12:1349\n63#2,12:1361\n63#2,12:1378\n63#2,12:1393\n1549#3:1275\n1620#3,3:1276\n1549#3:1279\n1620#3,3:1280\n288#3,2:1283\n288#3,2:1285\n1549#3:1374\n1620#3,3:1375\n1747#3,3:1390\n29#4,7:1311\n29#4,7:1318\n1#5:1373\n*S KotlinDebug\n*F\n+ 1 WalletSwapProcessPresenter.kt\ncom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter\n*L\n211#1:1263,12\n548#1:1287,12\n570#1:1299,12\n645#1:1325,12\n677#1:1337,12\n716#1:1349,12\n746#1:1361,12\n798#1:1378,12\n1228#1:1393,12\n310#1:1275\n310#1:1276,3\n473#1:1279\n473#1:1280,3\n484#1:1283,2\n487#1:1285,2\n786#1:1374\n786#1:1375,3\n833#1:1390,3\n595#1:1311,7\n621#1:1318,7\n*E\n"
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
.method public static synthetic $r8$lambda$85QWU3TSZVX-phE4r758P5y7O2Q(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSwapFlow$lambda$5(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BcNp2CVRW6hOgJDgq3lZOS-raxI()V
    .locals 0

    invoke-static {}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance$lambda$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$GsYVp0ZEUsh0AAlxbzKniGhN78s(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->subscribeToAmountSubject$lambda$38(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Lk21ULCDSwPREJU_hR4GjMW6ESg(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->subscribeToAmountSubject$lambda$39(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NTRm8X0dXOH3ynCRqYzwGJJLGTs(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectToken$lambda$6(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R22YHhV1-DVyORyTLERTjyk1O0k(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$lambda$28(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RXL-zNmlfsMuHTatSSPgVFPkM1c()V
    .locals 0

    invoke-static {}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance$lambda$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$WZj3FGzNKNUmfU5EVD9fwfj2YC8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->subscribeToAmountSubject$lambda$40(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ig8j50ix-vzwwG22P35qikAdzbg(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenScreen$lambda$2(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pIt7YLB7Vn64rfhr04hq-AIMiLo(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance$lambda$20(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sy4Umue1CkptV0SG1i8XVfrkQQQ(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenScreen$lambda$4(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xmklzd9JT8HMAgx8RCe0o1-LeYU(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance$lambda$24(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

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

    .line 79
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 72
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 73
    iput-object p3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 74
    iput-object p4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;

    .line 75
    iput-object p5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 76
    iput-object p6, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 77
    iput-object p7, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 78
    iput-object p8, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    .line 81
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "create()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amountSubject:Lio/reactivex/subjects/PublishSubject;

    const-string p1, ""

    .line 83
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amount:Ljava/lang/String;

    .line 86
    sget-object p1, Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage$Companion;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage$Companion;->getDefaultValue()Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    .line 87
    sget-object p1, Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline$Companion;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline$Companion;->getDefaultValue()Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    .line 88
    new-instance p1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 p4, 0x2

    invoke-direct {p1, p2, p3, p4, p3}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;-><init>(ZLcom/iMe/model/wallet/swap/SwapSide;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

    .line 89
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->supportedSwapTokens:Ljava/util/HashMap;

    .line 90
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    .line 91
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getInitialNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 92
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getInitialNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 93
    sget-object p1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->UNKNOWN:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 94
    sget-object p2, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;

    invoke-virtual {p2, p1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;->map(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    .line 100
    invoke-static {}, Lio/reactivex/disposables/Disposables;->disposed()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "disposed()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveMetadataDisposable:Lio/reactivex/disposables/Disposable;

    .line 101
    invoke-static {}, Lio/reactivex/disposables/Disposables;->disposed()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amountSubjectDisposable:Lio/reactivex/disposables/Disposable;

    .line 102
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->tokensApprovalData:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$checkSelectedTokenApprove(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->checkSelectedTokenApprove()V

    return-void
.end method

.method public static final synthetic access$chooseSwapFee(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->chooseSwapFee()V

    return-void
.end method

.method public static final synthetic access$formatBinanceBalance(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->formatBinanceBalance(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAmount$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amount:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getAmountSubject$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amountSubject:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic access$getCryptoSwapUiState(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getCryptoSwapUiState()Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInputToken$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object p0
.end method

.method public static final synthetic access$getInputTokenApprovalData(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getInputTokenApprovalData()Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOutputToken$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getSelectedInputNetworkItem$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    return-object p0
.end method

.method public static final synthetic access$getState$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/model/wallet/crypto/swap/SwapUiState;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

    return-object p0
.end method

.method public static final synthetic access$getSupportedSwapTokens$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Ljava/util/HashMap;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->supportedSwapTokens:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getSwapInteractor$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;

    return-object p0
.end method

.method public static final synthetic access$getSwapPrepareObservable(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lio/reactivex/Observable;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSwapPrepareObservable()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSwapProtocol$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    return-object p0
.end method

.method public static final synthetic access$getTokenBalance$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-object p0
.end method

.method public static final synthetic access$getTokensApprovalData$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Ljava/util/HashMap;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->tokensApprovalData:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$handleSwapErrors(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/Result$Error;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->handleSwapErrors(Lcom/iMe/storage/domain/model/Result$Error;)V

    return-void
.end method

.method public static final synthetic access$isAvailableBalanceLessThanAmount(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;D)Z
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->isAvailableBalanceLessThanAmount(D)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$renderState(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method public static final synthetic access$selectApproveFee(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectApproveFee(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V

    return-void
.end method

.method public static final synthetic access$selectToken(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectToken(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-void
.end method

.method public static final synthetic access$setAmount$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amount:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setBinanceAvailableOppositeSwapTokens$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lkotlin/Pair;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceAvailableOppositeSwapTokens:Lkotlin/Pair;

    return-void
.end method

.method public static final synthetic access$setBinanceConvertQuote$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    return-void
.end method

.method public static final synthetic access$setBinanceTokenBalance$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceTokenBalance:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    return-void
.end method

.method public static final synthetic access$setInputError(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->setInputError(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setInputFiatText(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->setInputFiatText(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setOutputTokenRate$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputTokenRate:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    return-void
.end method

.method public static final synthetic access$setSelectedSwapFee$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    return-void
.end method

.method public static final synthetic access$setSwapMetadata$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    return-void
.end method

.method public static final synthetic access$setTokenBalance$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method

.method public static final synthetic access$startUpdatingApproveMetadataIfNeed(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/util/List;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startUpdatingApproveMetadataIfNeed(Ljava/util/List;Z)V

    return-void
.end method

.method private final checkMinMaxInputValues()V
    .locals 7

    .line 1076
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_5

    .line 1077
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amountSubject:Lio/reactivex/subjects/PublishSubject;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 1078
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 1079
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-nez v1, :cond_0

    return-void

    .line 1080
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

    .line 1081
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

    .line 1080
    :cond_3
    check-cast v4, Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;

    if-nez v4, :cond_4

    goto :goto_0

    .line 1078
    :cond_4
    invoke-interface {v0, v1, v4}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showMinMaxInputValues(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;)V

    nop

    :cond_5
    :goto_0
    return-void
.end method

.method private final checkSelectedTokenApprove()V
    .locals 4

    .line 921
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_3

    .line 922
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getInputTokenApprovalData()Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;

    move-result-object v0

    .line 923
    instance-of v1, v0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$Allowed;

    if-eqz v1, :cond_0

    .line 924
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amountSubject:Lio/reactivex/subjects/PublishSubject;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 927
    :cond_0
    instance-of v1, v0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 928
    sget-object v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$ApprovalPending;->INSTANCE:Lcom/iMe/model/wallet/crypto/swap/SwapUiState$ApprovalPending;

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 929
    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;ZLcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/Object;)V

    goto :goto_0

    .line 932
    :cond_1
    instance-of v1, v0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;

    if-eqz v1, :cond_2

    .line 933
    check-cast v0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveMetadata:Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;

    .line 934
    new-instance v1, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 935
    sget-object v2, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->MEDIUM:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    .line 936
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    .line 937
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getFeeByLevel(Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;)Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v0

    .line 934
    invoke-direct {v1, v2, v3, v0}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;-><init>(Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;)V

    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 941
    new-instance v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Approval;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getApproveFeeType()Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-direct {v0, v1, v2}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Approval;-><init>(Lcom/iMe/model/wallet/crypto/send/fee/FeeType;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    goto :goto_0

    .line 945
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

    .line 1072
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
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    .line 1127
    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 1128
    sget v4, Lorg/telegram/messenger/R$string;->binance_convert_balance:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 1129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/iMe/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;->getSpotBalanceShortText(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    iget-object v6, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v7, Lorg/telegram/messenger/R$string;->common_max:I

    invoke-interface {v6, v7}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1129
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 1134
    invoke-static {p1}, Lcom/iMe/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;->getMarginBalanceShortText(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    .line 1127
    invoke-interface {v3, v4, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1137
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 1138
    sget v3, Lorg/telegram/messenger/R$string;->common_progress_state_title:I

    .line 1137
    invoke-interface {p1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1140
    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 1141
    sget v4, Lorg/telegram/messenger/R$string;->binance_convert_balance:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p1, v2, v0

    .line 1140
    invoke-interface {v3, v4, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final getApproveFeeType()Lcom/iMe/model/wallet/crypto/send/fee/FeeType;
    .locals 7

    .line 1022
    new-instance v6, Lcom/iMe/model/wallet/crypto/send/fee/FeeType$Default;

    .line 1023
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getFeeDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    .line 1024
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveMetadata:Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v2

    .line 1025
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveMetadata:Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    .line 1026
    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1027
    new-instance v5, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$getApproveFeeType$1;

    invoke-direct {v5, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$getApproveFeeType$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    move-object v0, v6

    .line 1022
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

    .line 464
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

    .line 1038
    new-instance v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;

    .line 1039
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSwapFeeType()Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    move-result-object v1

    .line 1040
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1041
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getOutputFiatAmountText()Ljava/lang/String;

    move-result-object v3

    .line 1038
    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;-><init>(Lcom/iMe/model/wallet/crypto/send/fee/FeeType;Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getFeeDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 8

    .line 1066
    new-instance v7, Lcom/iMe/model/dialog/DialogModel;

    .line 1067
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_fee_dialog_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1068
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, v7

    .line 1066
    invoke-direct/range {v0 .. v6}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method private final getInitialNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;
    .locals 1

    .line 1256
    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBSCNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v0

    return-object v0
.end method

.method private final getInputTokenApprovalData()Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;
    .locals 5

    .line 916
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

    .line 917
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

    .line 916
    :cond_2
    check-cast v1, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;

    :cond_3
    return-object v1
.end method

.method private final getNetworkIdBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Ljava/lang/String;
    .locals 0

    .line 461
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

    .line 460
    sget-object p1, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    :cond_0
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkIdBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getNetworkItemBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;
    .locals 1

    .line 452
    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 455
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->isCrossChain()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    goto :goto_0

    .line 456
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 453
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

    .line 537
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

    .line 1240
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputTokenRate:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x7e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    .line 1242
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

    .line 1243
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getUSD()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1241
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

    .line 1089
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_swap_alert_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1090
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 1091
    instance-of v2, v1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    .line 1092
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    if-eqz v1, :cond_3

    .line 1093
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 1094
    sget v8, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_binance_swap_alert_description:I

    new-array v7, v7, [Ljava/lang/Object;

    .line 1095
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

    .line 1096
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getInputTokenShortName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    .line 1097
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

    .line 1098
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getOutputTokenShortName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    .line 1093
    invoke-interface {v2, v8, v7}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 1103
    :cond_0
    instance-of v1, v1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v1, :cond_4

    .line 1104
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    if-eqz v1, :cond_2

    .line 1105
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 1106
    sget v9, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_swap_alert_description:I

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    .line 1107
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

    .line 1108
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v5

    .line 1109
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

    .line 1110
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v3

    .line 1112
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

    .line 1113
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1111
    invoke-static {v3, v4}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v7

    const/4 v3, 0x5

    .line 1115
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v3

    .line 1105
    invoke-interface {v2, v9, v10}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    :cond_2
    const-string v8, ""

    .line 1121
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1122
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_swap_alert_action:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1088
    new-instance v3, Lcom/iMe/model/dialog/DialogModel;

    invoke-direct {v3, v0, v8, v1, v2}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 1117
    :cond_4
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final getSwapFeeType()Lcom/iMe/model/wallet/crypto/send/fee/FeeType;
    .locals 3

    .line 1016
    new-instance v0, Lcom/iMe/model/wallet/crypto/send/fee/FeeType$Custom;

    .line 1017
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$getSwapFeeType$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$getSwapFeeType$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    .line 1018
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1016
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

    .line 585
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    const-string v1, "empty()"

    if-nez v0, :cond_0

    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 586
    :cond_0
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-nez v2, :cond_1

    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 587
    :cond_1
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 588
    instance-of v3, v1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    const-string v4, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    if-eqz v3, :cond_2

    .line 589
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 591
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v2

    .line 593
    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amount:Ljava/lang/String;

    .line 590
    invoke-virtual {v1, v0, v2, v3}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getConvertQuote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$getSwapPrepareObservable$$inlined$mapSuccess$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$getSwapPrepareObservable$$inlined$mapSuccess$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 600
    :cond_2
    instance-of v1, v1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v1, :cond_7

    .line 601
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    sget-object v3, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Oneinch;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Oneinch;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 602
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

    .line 603
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amount:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    .line 605
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->isCoin()Z

    move-result v1

    if-nez v1, :cond_5

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    cmpg-double v1, v5, v7

    if-gez v1, :cond_4

    goto :goto_1

    .line 608
    :cond_4
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->ONEINCH_FUSION:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    goto :goto_2

    .line 606
    :cond_5
    :goto_1
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->ONEINCH:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 604
    :goto_2
    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 612
    :cond_6
    iget-object v5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;

    .line 614
    invoke-static {v0}, Lcom/iMe/storage/domain/utils/extensions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v7

    .line 615
    invoke-static {v2}, Lcom/iMe/storage/domain/utils/extensions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v8

    .line 616
    iget-object v9, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amount:Ljava/lang/String;

    .line 617
    sget-object v10, Lcom/iMe/storage/domain/model/wallet/swap/TradeType;->EXACT_INPUT:Lcom/iMe/storage/domain/model/wallet/swap/TradeType;

    .line 618
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;->PERCENT_5:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;->getPercent()F

    move-result v0

    .line 619
    iget-object v6, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 618
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 613
    invoke-virtual/range {v5 .. v11}, Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;->getQuoteToSwap(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Lcom/iMe/storage/domain/model/wallet/token/Token;Lcom/iMe/storage/domain/model/wallet/token/Token;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/swap/TradeType;Ljava/lang/Float;)Lio/reactivex/Observable;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$getSwapPrepareObservable$$inlined$mapSuccess$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$getSwapPrepareObservable$$inlined$mapSuccess$2;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object v0

    .line 35
    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final handleSwapErrors(Lcom/iMe/storage/domain/model/Result$Error;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result$Error<",
            "*>;)V"
        }
    .end annotation

    .line 843
    new-instance v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;-><init>(ZLcom/iMe/model/wallet/swap/SwapSide;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    .line 844
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 845
    sget-object v4, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_APPROVED_AMOUNT_NOT_SUFFICIENT:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    const/4 v5, 0x2

    if-ne v0, v4, :cond_0

    .line 846
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {v0, p1, v3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 847
    invoke-static {p0, v1, v2, v5, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;ZLcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 850
    :cond_0
    sget-object v4, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->NO_ENOUGH_MONEY:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    if-ne v0, v4, :cond_2

    .line 851
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 852
    instance-of v0, p1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 853
    new-instance v7, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 852
    invoke-interface {p1, v7}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showNotEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    goto/16 :goto_4

    .line 856
    :cond_1
    instance-of p1, p1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 857
    new-instance v7, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    .line 858
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 859
    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    move-object v0, v7

    .line 857
    invoke-direct/range {v0 .. v6}, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 856
    invoke-interface {p1, v7}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showNotEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    goto/16 :goto_4

    .line 865
    :cond_2
    sget-object v4, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->ETHER_BLOCK_CHAIN_ERROR:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    const/4 v6, 0x1

    if-ne v0, v4, :cond_3

    :goto_0
    move v4, v6

    goto :goto_1

    .line 866
    :cond_3
    sget-object v4, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_INSUFFICIENT_RESERVES_IN_LIQUIDITY_POOL_OF_TOKENS:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v4, :cond_4

    goto :goto_0

    :cond_4
    move v4, v1

    :goto_1
    if-eqz v4, :cond_5

    .line 867
    invoke-static {p0, v1, v2, v5, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;ZLcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/Object;)V

    .line 868
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p1, v4}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showCommonErrorDialog(Ljava/lang/String;)V

    .line 869
    new-instance p1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    invoke-direct {p1, v1, v2, v3, v2}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;-><init>(ZLcom/iMe/model/wallet/swap/SwapSide;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, p1, v2, v5, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateTo$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/crypto/swap/SwapUiState;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)V

    goto :goto_4

    .line 872
    :cond_5
    sget-object v2, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_DIFF_BTW_TOKEN_EXCHANGE_RATES_IS_TOO_BIG:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v2, :cond_6

    :goto_2
    move v1, v6

    goto :goto_3

    .line 873
    :cond_6
    sget-object v2, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SWAP_QUOTE_NOT_FOUND:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v2, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 874
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p1, v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showCommonErrorDialog(Ljava/lang/String;)V

    .line 875
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateIfNeeded()V

    goto :goto_4

    .line 878
    :cond_8
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->ERR_AMOUNT_LESS_THAN_MIN:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v1, :cond_9

    .line 879
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 880
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_low_amount:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 879
    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setInputError(Ljava/lang/String;)V

    goto :goto_4

    .line 884
    :cond_9
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->ERR_FETCH_TOKEN:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v1, :cond_a

    .line 885
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p1, v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showCommonErrorDialog(Ljava/lang/String;)V

    goto :goto_4

    .line 888
    :cond_a
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p1, v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showCommonErrorDialog(Ljava/lang/String;)V

    :cond_b
    :goto_4
    return-void
.end method

.method private final isAvailableBalanceLessThanAmount(D)Z
    .locals 3

    .line 1055
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 1056
    instance-of v1, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceTokenBalance:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getSpot()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getTotal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_0
    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v0

    goto :goto_0

    .line 1060
    :cond_1
    instance-of v0, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v0, :cond_4

    .line 1061
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_2
    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v0

    :goto_0
    cmpg-double p1, v0, p1

    if-gez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1

    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final isValidForApprove()Z
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Approval;

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_0

    .line 1052
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

    .line 770
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    instance-of v0, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-wide/16 v0, 0xf

    .line 775
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 773
    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    goto :goto_0

    .line 777
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 779
    invoke-static {p0, v1, v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkIdBySwapSide$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_2

    .line 781
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_2

    .line 783
    :cond_2
    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->supportedSwapTokens:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 785
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

    .line 786
    invoke-static {v6}, Lcom/iMe/storage/domain/utils/extensions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v6

    .line 1621
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v4, v5

    .line 790
    :goto_2
    new-instance v5, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$1;

    invoke-direct {v5, p0, v3, v4}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadApproveTokensInfo$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;Ljava/util/List;)V

    new-instance v4, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda8;

    invoke-direct {v4, v5}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v4}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 797
    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v4}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v4, "private fun loadApproveT\u2026     .autoDispose()\n    }"

    .line 790
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 798
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

    .line 825
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveMetadataDisposable:Lio/reactivex/disposables/Disposable;

    .line 826
    invoke-static {p0, p1, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic loadApproveTokensInfo$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;ZLcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 766
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo(ZLcom/iMe/storage/domain/model/wallet/token/Token;)V

    return-void
.end method

.method private static final loadApproveTokensInfo$lambda$28(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 790
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final loadAvailableOppositeSwapTokensBinance(Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 2

    .line 737
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    instance-of v0, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    if-nez v0, :cond_0

    return-void

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 740
    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getOppositeTokensForConvertByToken(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 741
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 742
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$2;

    invoke-direct {v1, p2, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableOppositeSwapTokensBinance$2;-><init>(ZLcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance p2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda7;

    invoke-direct {p2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p2

    const-string/jumbo v0, "private fun loadAvailabl\u2026     .autoDispose()\n    }"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
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

    .line 757
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

    .line 735
    sget-object p3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda4;->INSTANCE:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda4;

    .line 732
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance(Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final loadAvailableOppositeSwapTokensBinance$lambda$23()V
    .locals 0

    return-void
.end method

.method private static final loadAvailableOppositeSwapTokensBinance$lambda$24(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 742
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final loadAvailableSwapTokens(Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 2

    .line 761
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    instance-of p1, p1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 762
    invoke-static {p0, p1, v1, v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;ZLcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final loadAvailableSwapTokensBinance(ZLcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 2

    .line 707
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    instance-of v0, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    if-nez v0, :cond_0

    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 710
    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getTokensForConvert()Lio/reactivex/Observable;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 712
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$2;

    invoke-direct {v1, p1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensBinance$2;-><init>(ZLcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda6;

    invoke-direct {p1, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    const-string/jumbo v0, "private fun loadAvailabl\u2026     .autoDispose()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 716
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

    .line 729
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

    .line 705
    sget-object p2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda5;->INSTANCE:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda5;

    .line 703
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance(ZLcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final loadAvailableSwapTokensBinance$lambda$19()V
    .locals 0

    return-void
.end method

.method private static final loadAvailableSwapTokensBinance$lambda$20(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final loadBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 636
    instance-of v1, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadBalanceBinance(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto :goto_0

    .line 637
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

    .line 642
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 643
    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getUserBalance()Lio/reactivex/Observable;

    move-result-object v0

    .line 644
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 645
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

    .line 667
    invoke-static {p0, p1, v0, v1, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadBalanceCrypto(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 7

    .line 671
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 673
    invoke-static {p1}, Lcom/iMe/storage/domain/utils/extensions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v1

    const/4 p1, 0x0

    const/4 v6, 0x1

    .line 674
    invoke-static {p0, p1, v6, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkIdBySwapSide$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 672
    invoke-static/range {v0 .. v5}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getTokenBalance$default(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;Lcom/iMe/storage/domain/model/wallet/token/Token;ZLjava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 676
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$loadBalanceCrypto$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    invoke-static {p0, v0, p1, v6, p1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V
    .locals 1

    .line 1045
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

    .line 1046
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    return-void
.end method

.method private final resetAmountSubjectSubscription()V
    .locals 1

    .line 1148
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amountSubjectDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1149
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->subscribeToAmountSubject()V

    return-void
.end method

.method private final resetLoadedInformation()V
    .locals 1

    .line 467
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->supportedSwapTokens:Ljava/util/HashMap;

    .line 468
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->tokensApprovalData:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 469
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approveMetadata:Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;

    return-void
.end method

.method private final resetStateTo(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 3

    .line 894
    instance-of v0, p1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 895
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    .line 896
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 897
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline$Companion;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline$Companion;->getDefaultValue()Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    .line 898
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage$Companion;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage$Companion;->getDefaultValue()Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    const/4 v1, -0x1

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    .line 900
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

    .line 902
    :cond_1
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    goto :goto_1

    .line 901
    :cond_2
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    goto :goto_1

    .line 904
    :cond_3
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 905
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 912
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

    .line 892
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateTo(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method private final resolveApproveArgs()Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;
    .locals 17

    move-object/from16 v0, p0

    .line 963
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

    .line 966
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getInputTokenApprovalData()Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;

    move-result-object v1

    .line 967
    instance-of v3, v1, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;

    if-eqz v3, :cond_2

    .line 968
    check-cast v1, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;

    .line 969
    new-instance v3, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;

    .line 970
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    .line 971
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getChainId()J

    move-result-wide v8

    .line 973
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getNonce()Ljava/math/BigInteger;

    move-result-object v10

    .line 974
    iget-object v5, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getPrice()Ljava/math/BigInteger;

    move-result-object v11

    .line 975
    iget-object v5, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getLimit()Ljava/math/BigInteger;

    move-result-object v12

    .line 976
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v13

    .line 977
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$NeedApprove;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v14

    .line 978
    invoke-static {v0, v2, v4, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkIdBySwapSide$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 979
    iget-object v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-object v5, v3

    move-object/from16 v16, v1

    .line 969
    invoke-direct/range {v5 .. v16}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;-><init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/math/BigInteger;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)V

    move-object v2, v3

    :cond_2
    :goto_0
    return-object v2
.end method

.method private final resolveArgs()V
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 496
    instance-of v1, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    if-eqz v1, :cond_0

    .line 497
    check-cast v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;->getFromToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 498
    invoke-virtual {v0}, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;->getToToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    goto :goto_0

    .line 501
    :cond_0
    instance-of v1, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v1, :cond_1

    .line 502
    check-cast v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;->getSwapProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 503
    invoke-virtual {v0}, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;->getSwapProtocolInfo()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    .line 504
    invoke-virtual {v0}, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;->getFromToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 505
    invoke-virtual {v0}, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;->getToToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    :cond_1
    :goto_0
    return-void
.end method

.method private final resolveAvailableNetworks()V
    .locals 3

    .line 473
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

    .line 474
    invoke-static {v2}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 475
    :cond_0
    invoke-static {v1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 473
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    return-void
.end method

.method private final resolveSelectedNetworkType()V
    .locals 5

    .line 479
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    instance-of v1, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;->getForcedNetworkId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    check-cast v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;->getForcedNetworkId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v0

    .line 481
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 482
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    goto :goto_1

    .line 484
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

    .line 485
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

    .line 484
    :goto_0
    check-cast v1, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    if-nez v1, :cond_3

    .line 486
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 484
    :cond_3
    iput-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 487
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

    .line 488
    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    move-object v2, v1

    .line 487
    :cond_5
    check-cast v2, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    if-nez v2, :cond_6

    .line 489
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->availableNetworks:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 487
    :cond_6
    iput-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    :goto_1
    return-void
.end method

.method private final resolveSwapArgs()Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;
    .locals 22

    move-object/from16 v0, p0

    .line 989
    iget-object v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    instance-of v1, v1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 991
    :cond_0
    iget-object v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    if-eqz v1, :cond_2

    .line 993
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountIn()Ljava/math/BigDecimal;

    move-result-object v5

    .line 994
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountBound()Ljava/math/BigInteger;

    move-result-object v12

    .line 995
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    .line 996
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getChainId()J

    move-result-wide v7

    .line 997
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getNonce()Ljava/math/BigInteger;

    move-result-object v9

    .line 998
    iget-object v2, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getPrice()Ljava/math/BigInteger;

    move-result-object v10

    .line 999
    iget-object v2, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getLimit()Ljava/math/BigInteger;

    move-result-object v11

    .line 1000
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getContractAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    move-object v13, v2

    .line 1001
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getSwapMethod()Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    move-result-object v14

    .line 1002
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getPath()Ljava/util/List;

    move-result-object v15

    .line 1003
    iget-object v2, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;->getMinutes()I

    move-result v16

    .line 1004
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getQuoteId()Ljava/lang/String;

    move-result-object v19

    .line 1005
    sget-object v2, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-direct {v0, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkItemBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object v20

    .line 1006
    sget-object v2, Lcom/iMe/model/wallet/swap/SwapSide;->OUTPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-direct {v0, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkItemBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object v21

    .line 1007
    iget-object v4, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 1008
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getValue()Ljava/math/BigInteger;

    move-result-object v17

    .line 1009
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getCallData()Ljava/lang/String;

    move-result-object v18

    .line 992
    new-instance v2, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;

    move-object v3, v2

    invoke-direct/range {v3 .. v21}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;Ljava/util/List;ILjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v2
.end method

.method private final resolveSwapFeeScreenArgs()Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;
    .locals 7

    .line 952
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    instance-of v0, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    if-eqz v0, :cond_0

    .line 953
    new-instance v0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;

    .line 954
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 955
    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    .line 956
    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    .line 957
    iget-object v5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 958
    iget-object v6, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-object v1, v0

    .line 953
    invoke-direct/range {v1 .. v6}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;-><init>(Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final selectApproveFee(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 2

    .line 1033
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedApproveFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 1034
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

    .line 397
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 398
    instance-of v1, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 399
    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 412
    :cond_0
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 413
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    .line 414
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->onTokenSelected(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 415
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->checkMinMaxInputValues()V

    goto/16 :goto_2

    .line 401
    :cond_1
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz p2, :cond_8

    .line 403
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->onTokenSelected(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 404
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    .line 407
    invoke-direct {p0, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto :goto_2

    .line 421
    :cond_2
    instance-of v0, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v0, :cond_8

    .line 422
    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 440
    :cond_3
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz p2, :cond_7

    .line 442
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->onTokenSelected(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto :goto_1

    .line 424
    :cond_4
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz p2, :cond_7

    .line 426
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->onTokenSelected(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 427
    invoke-direct {p0, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 428
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getInputTokenApprovalData()Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->isCoin()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 433
    invoke-static {p2}, Lcom/iMe/storage/domain/utils/extensions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object p2

    .line 431
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo(ZLcom/iMe/storage/domain/model/wallet/token/Token;)V

    goto :goto_1

    .line 429
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->checkSelectedTokenApprove()V

    .line 446
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

    .line 405
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->checkMinMaxInputValues()V

    return-void
.end method

.method private final setInputError(Ljava/lang/String;)V
    .locals 1

    .line 1252
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setInputError(Ljava/lang/String;)V

    return-void
.end method

.method private final setInputFiatText(Ljava/lang/String;)V
    .locals 1

    .line 1248
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setInputFiatText(Ljava/lang/String;)V

    return-void
.end method

.method private final setupSwapInformation()V
    .locals 8

    .line 512
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 513
    instance-of v1, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    if-eqz v1, :cond_0

    .line 514
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 515
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->binance_convert_toolbar_title:I

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 516
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->binance_convert_description:I

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 517
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_ic_bnb_logo:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 514
    invoke-interface/range {v1 .. v6}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setupScreenForSwap(Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_0

    .line 523
    :cond_0
    instance-of v0, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v0, :cond_1

    .line 524
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

    .line 525
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 526
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;->getName()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 527
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;->getLongDescription()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 528
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;->getLogo()I

    move-result v5

    .line 525
    invoke-interface/range {v2 .. v7}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setupScreenForSwap(Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic startChooseNetworkDialog$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 110
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

    .line 284
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenScreen(Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method private static final startSelectTokenScreen$lambda$4(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenScreen(Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method private static final startSwapFlow$lambda$5(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 364
    instance-of v1, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapBinance()V

    goto :goto_0

    .line 365
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

    .line 833
    instance-of v0, v0, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$InProgress;

    if-eqz v0, :cond_1

    move v2, v1

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    if-nez p2, :cond_3

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 836
    invoke-static {p0, v1, p2, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;ZLcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    if-eqz p2, :cond_4

    .line 838
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveMetadataDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_4
    :goto_1
    return-void
.end method

.method private final subscribeToAmountSubject()V
    .locals 5

    .line 1153
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amountSubject:Lio/reactivex/subjects/PublishSubject;

    .line 1154
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1155
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda10;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda10;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1163
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1164
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1165
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1166
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda11;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda11;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1223
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1224
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$3;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$3;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->switchMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1227
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "private fun subscribeToA\u2026     .autoDispose()\n    }"

    .line 1224
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

    .line 1235
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amountSubjectDisposable:Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x1

    .line 1236
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final subscribeToAmountSubject$lambda$38(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1155
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final subscribeToAmountSubject$lambda$39(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1166
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final subscribeToAmountSubject$lambda$40(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1224
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final swapBinance()V
    .locals 5

    .line 564
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceConvertQuote:Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

    instance-of v1, v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;

    if-nez v1, :cond_0

    goto :goto_1

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 567
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

    .line 568
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string/jumbo v3, "viewState"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v3, v4, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 570
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

    .line 581
    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final swapCrypto()V
    .locals 5

    .line 540
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->state:Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 542
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveSwapArgs()Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 544
    :cond_1
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapInteractor:Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;

    .line 545
    invoke-virtual {v1, v0}, Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;->swap(Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;)Lio/reactivex/Observable;

    move-result-object v0

    .line 546
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "swapInteractor\n         \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
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

    .line 548
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

    .line 560
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

    .line 154
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateIfNeeded()V

    .line 155
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->shouldIgnoreAmountChanges:Z

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amountSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onApprovalInfoClick()V
    .locals 4

    .line 254
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 255
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_what_is_approve:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 257
    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_what_is_approve_dialog_description:I

    .line 256
    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showApprovalInfoDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onApproveClick()V
    .locals 8

    .line 263
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 264
    new-instance v1, Lcom/iMe/model/dialog/DialogModel;

    .line 265
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 266
    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 267
    sget v4, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_description:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 268
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

    .line 266
    invoke-interface {v3, v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 270
    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 271
    iget-object v5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->wallet_swap_process_confirm_approve_alert_action:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 264
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showApprovalConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 6

    .line 379
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->subscribeToAmountSubject()V

    .line 381
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveArgs()V

    .line 382
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveAvailableNetworks()V

    .line 383
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resolveSelectedNetworkType()V

    .line 385
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->setupSwapInformation()V

    .line 386
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    sget-object v1, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-direct {p0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkItemBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;Lcom/iMe/model/wallet/swap/SwapSide;)V

    .line 387
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    sget-object v2, Lcom/iMe/model/wallet/swap/SwapSide;->OUTPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-direct {p0, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkItemBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;Lcom/iMe/model/wallet/swap/SwapSide;)V

    .line 388
    new-instance v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v0, v3, v4, v5, v4}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;-><init>(ZLcom/iMe/model/wallet/swap/SwapSide;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    .line 390
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectToken(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v2, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectToken(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 393
    :cond_1
    invoke-direct {p0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokens(Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method public final onMaxClick()V
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 162
    instance-of v1, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->binanceTokenBalance:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getSpot()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getTotal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    goto :goto_0

    .line 163
    :cond_1
    instance-of v0, v0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 164
    new-instance v1, Ljava/math/BigDecimal;

    .line 161
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 164
    :goto_1
    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "when (screenType) {\n    \u2026.orZero().toPlainString()"

    .line 163
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 164
    invoke-static {v0, v1, v3, v2}, Lcom/iMe/utils/extentions/common/StringExtKt;->stripZeros$default(Ljava/lang/String;CILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    sget-object v2, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-interface {v1, v2, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setAmount(Lcom/iMe/model/wallet/swap/SwapSide;Ljava/lang/String;)V

    return-void

    .line 163
    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final onNetworkSelected(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V
    .locals 4

    .line 116
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetAmountSubjectSubscription()V

    if-nez p1, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->currentNetworkSelectionSide:Lcom/iMe/model/wallet/swap/SwapSide;

    if-nez v0, :cond_1

    return-void

    .line 120
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

    .line 122
    :cond_2
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedOutputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    goto :goto_0

    .line 121
    :cond_3
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedInputNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 124
    :goto_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v1, p1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;Lcom/iMe/model/wallet/swap/SwapSide;)V

    .line 125
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetLoadedInformation()V

    .line 126
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->setupSwapInformation()V

    .line 128
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->isCrossChain()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    .line 129
    :cond_4
    sget-object p1, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    if-ne v0, p1, :cond_5

    sget-object p1, Lcom/iMe/model/wallet/swap/SwapSide;->OUTPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    .line 133
    :cond_5
    :goto_1
    new-instance v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    invoke-direct {v1, v2, p1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;-><init>(ZLcom/iMe/model/wallet/swap/SwapSide;)V

    .line 132
    invoke-direct {p0, v1, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateTo(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;Lcom/iMe/model/wallet/swap/SwapSide;)V

    .line 139
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokens(Lcom/iMe/model/wallet/swap/SwapSide;)V

    .line 140
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->isCrossChain()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, ""

    .line 141
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->amount:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method public final processSwapFee(Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapMetadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    .line 147
    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->getSelectedFee()Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSwapFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 148
    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->getSelectedDeadline()Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    .line 149
    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->getSelectedSlippage()Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    .line 150
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

    .line 371
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkSwitchState()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 372
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    sget-object v2, Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$SwapScreen;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$SwapScreen;

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;->shouldShowHint(Lcom/iMe/storage/domain/model/wallet/Hint;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showChangeNetworkHint()V

    .line 374
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;->onHintShowed(Lcom/iMe/storage/domain/model/wallet/Hint;)V

    :cond_0
    return-void
.end method

.method public final startChooseNetworkDialog(Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 2

    const-string/jumbo v0, "side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->currentNetworkSelectionSide:Lcom/iMe/model/wallet/swap/SwapSide;

    .line 112
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

    .line 277
    sget-object v0, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    :goto_0
    move-object v3, v1

    .line 278
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 279
    instance-of v2, v1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_c

    .line 280
    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v5, :cond_a

    if-eq v0, v4, :cond_1

    goto/16 :goto_7

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-nez v0, :cond_2

    .line 302
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_give_token_validation:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void

    .line 305
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

    .line 306
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 309
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

    .line 310
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;->getTokenInfo()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/iMe/mapper/wallet/select/SelectableMappingKt;->mapToDetailedToken(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    .line 1621
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    if-nez v1, :cond_6

    .line 311
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 308
    :cond_6
    new-instance v4, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Binance;

    invoke-direct {v4, v1}, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Binance;-><init>(Ljava/util/List;)V

    .line 314
    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBSCNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 306
    new-instance v7, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenScreen$4;

    invoke-direct {v7, p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenScreen$4;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V

    invoke-interface/range {v2 .. v7}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->openSelectTokenScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/model/wallet/select/SelectTokenScreenType;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    goto/16 :goto_7

    .line 320
    :cond_7
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v1

    :cond_8
    if-nez v1, :cond_9

    const-string v1, ""

    .line 319
    :cond_9
    new-instance v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V

    invoke-direct {p0, v1, v5, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableOppositeSwapTokensBinance(Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;)V

    goto/16 :goto_7

    .line 282
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

    .line 283
    new-instance v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V

    invoke-direct {p0, v5, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensBinance(ZLcom/iMe/fork/utils/Callbacks$Callback;)V

    goto/16 :goto_7

    .line 287
    :cond_b
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 289
    new-instance v4, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Binance;

    .line 290
    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBSCNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getAvailableTokensByNetwork(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 289
    invoke-direct {v4, v0}, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Binance;-><init>(Ljava/util/List;)V

    .line 293
    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBSCNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 287
    new-instance v7, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenScreen$2;

    invoke-direct {v7, p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenScreen$2;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V

    invoke-interface/range {v2 .. v7}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->openSelectTokenScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/model/wallet/select/SelectTokenScreenType;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    goto :goto_7

    .line 330
    :cond_c
    instance-of v1, v1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v1, :cond_12

    .line 331
    sget-object v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    if-eq v2, v5, :cond_e

    if-ne v2, v4, :cond_d

    .line 333
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->inputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    goto :goto_4

    :cond_d
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 332
    :cond_e
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->outputToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 335
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v1, v1, v6

    if-eq v1, v5, :cond_10

    if-ne v1, v4, :cond_f

    .line 337
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->IN:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    goto :goto_5

    :cond_f
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 336
    :cond_10
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->OUT:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    .line 340
    :goto_5
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v4

    check-cast v4, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 342
    new-instance v6, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Swap;

    .line 343
    iget-object v7, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 342
    invoke-direct {v6, v7, v1, v2}, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Swap;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    if-ne p1, v0, :cond_11

    move v0, v5

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    .line 348
    :goto_6
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkIdBySwapSide(Lcom/iMe/model/wallet/swap/SwapSide;)Ljava/lang/String;

    move-result-object v5

    .line 340
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

    .line 360
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    .line 361
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getSwapConfirmationDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    .line 360
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
