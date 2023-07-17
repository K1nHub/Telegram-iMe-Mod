.class public final Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletHomeCryptoPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletHomeCryptoPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletHomeCryptoPresenter.kt\ncom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 4 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n+ 7 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 8 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 9 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,499:1\n800#2,11:500\n766#2:524\n857#2,2:525\n1194#2,2:527\n1222#2,4:529\n766#2:533\n857#2,2:534\n1603#2,9:536\n1855#2:545\n1856#2:547\n1612#2:548\n1549#2:569\n1620#2,3:570\n1549#2:573\n1620#2,3:574\n1477#2:577\n1502#2,3:578\n1505#2,3:588\n1549#2:594\n1620#2,3:595\n1549#2:599\n1620#2,3:600\n42#3,12:511\n42#3,12:553\n14#4:523\n26#4:549\n1#5:546\n16#6,3:550\n11335#7:565\n11670#7,3:566\n361#8,7:581\n125#9:591\n152#9,2:592\n154#9:598\n*S KotlinDebug\n*F\n+ 1 WalletHomeCryptoPresenter.kt\ncom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter\n*L\n125#1:500,11\n230#1:524\n230#1:525,2\n231#1:527,2\n231#1:529,4\n233#1:533\n233#1:534,2\n234#1:536,9\n234#1:545\n234#1:547\n234#1:548\n323#1:569\n323#1:570,3\n410#1:573\n410#1:574,3\n437#1:577\n437#1:578,3\n437#1:588,3\n441#1:594\n441#1:595,3\n482#1:599\n482#1:600,3\n196#1:511,12\n282#1:553,12\n217#1:523\n254#1:549\n234#1:546\n272#1:550,3\n308#1:565\n308#1:566,3\n437#1:581,7\n438#1:591\n438#1:592,2\n438#1:598\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private final hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

.field private final mainScreenSubscriptions:Lio/reactivex/disposables/CompositeDisposable;

.field private final nftAvatarInteractor:Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftAvatarInteractor;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private selectedTokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

.field private final telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

.field private tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private tokensDisplaySettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;",
            ">;"
        }
    .end annotation
.end field

.field private final walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

.field private final walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public static synthetic $r8$lambda$E-ehx3XE42GxhBdjH0eSspZCRts(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->listenEvents$lambda$15(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Gkvtq_-iWld7P3o8m_2dCr4sczw(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->showQrReceiveDialog$lambda$32(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RMkhY5xtMq3q2Mau_aoDZNCLFRU(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->loadTokens$lambda$1(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iEpNKDkEpvWfq_7DsFL8R2MEu4o(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->loadTokens$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uwCqe35YHwU4xuPGZn1WdU801Dc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->listenEvents$lambda$16(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftAvatarInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/gateway/TelegramControllersGateway;Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletInteractor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hintsPreferenceHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nftAvatarInteractor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rxEventBus"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schedulersProvider"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "telegramControllersGateway"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "telegramGateway"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletCreateManager"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletInteractor"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 61
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 62
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 63
    iput-object p4, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    .line 64
    iput-object p5, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->nftAvatarInteractor:Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftAvatarInteractor;

    .line 65
    iput-object p6, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 66
    iput-object p7, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 67
    iput-object p8, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 68
    iput-object p9, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    .line 69
    iput-object p10, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 70
    iput-object p11, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    .line 71
    iput-object p12, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 83
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->mainScreenSubscriptions:Lio/reactivex/disposables/CompositeDisposable;

    .line 84
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->tokens:Ljava/util/List;

    .line 85
    sget-object p1, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->CRYPTO:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    .line 86
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->tokensDisplaySettings:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getCryptoAccessManager$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    return-object p0
.end method

.method public static final synthetic access$getCryptoPreferenceHelper$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getCurrentBlockchainType(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCurrentNetworkId(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentNetworkId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getRxEventBus$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    return-object p0
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method

.method public static final synthetic access$getTokens$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Ljava/util/List;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->tokens:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getWalletInteractor$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    return-object p0
.end method

.method public static final synthetic access$isWalletDataMismatching(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Z
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->isWalletDataMismatching()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setTokens$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Ljava/util/List;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->tokens:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setTokensDisplaySettings$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Ljava/util/List;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->tokensDisplaySettings:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setTokensType(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenType;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->setTokensType(Lcom/iMe/storage/domain/model/wallet/token/TokenType;)V

    return-void
.end method

.method public static final synthetic access$showQrReceiveDialog(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->showQrReceiveDialog()V

    return-void
.end method

.method public static final synthetic access$sortTokens(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Ljava/util/List;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->sortTokens(Ljava/util/List;)V

    return-void
.end method

.method private final configureBanner(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isBannersVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->initBannerSlides()Lcom/chad/library/adapter/base/entity/node/BaseNode;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private final configureCryptoAccount(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    new-instance v0, Lcom/iMe/model/wallet/home/CryptoAccountItem;

    .line 355
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getMessagesController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 356
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v2}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 355
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    const-string/jumbo v2, "telegramControllersGatew\u2026                        )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/domain/model/crypto/Wallet;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v4

    :cond_0
    if-nez v4, :cond_1

    const-string v4, ""

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v2

    .line 360
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->resolveActions()Ljava/util/List;

    move-result-object v3

    .line 354
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/iMe/model/wallet/home/CryptoAccountItem;-><init>(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;)V

    goto :goto_0

    .line 363
    :cond_2
    new-instance v0, Lcom/iMe/model/wallet/home/AccountItem$Create;

    .line 364
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;

    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getBNB()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;->createEmptyBalanceFor(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    .line 365
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getHorizontalActionButtonItems()Ljava/util/List;

    move-result-object v2

    .line 363
    invoke-direct {v0, v1, v2}, Lcom/iMe/model/wallet/home/AccountItem$Create;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;Ljava/util/List;)V

    .line 352
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private final configureCryptoAccountHeader(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 343
    new-instance v6, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    .line 344
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_home_crypto_account:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    .line 343
    invoke-direct/range {v0 .. v5}, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;-><init>(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 342
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final configureCryptoTokens(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;)V"
        }
    .end annotation

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 411
    new-instance v2, Lcom/iMe/model/wallet/home/AccountItem$Token;

    .line 413
    iget-object v3, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v3}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isQuotationsVisible()Z

    move-result v3

    .line 414
    iget-object v4, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v4}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isBalanceHidden()Z

    move-result v4

    .line 411
    invoke-direct {v2, v1, v3, v4}, Lcom/iMe/model/wallet/home/AccountItem$Token;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;ZZ)V

    .line 1621
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 420
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/model/wallet/home/AccountItem$Token;

    .line 421
    invoke-virtual {v3}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotalInFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->getValue()D

    move-result-wide v3

    add-double/2addr v1, v3

    goto :goto_1

    :cond_1
    double-to-float p2, v1

    .line 423
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isBalanceHidden()Z

    move-result v1

    .line 419
    new-instance v2, Lcom/iMe/model/wallet/home/TotalBalanceItem;

    invoke-direct {v2, p2, v1}, Lcom/iMe/model/wallet/home/TotalBalanceItem;-><init>(FZ)V

    .line 418
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_2

    .line 427
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 429
    :cond_2
    new-instance p2, Lcom/iMe/model/wallet/home/CryptoAddTokensItem;

    invoke-direct {p2}, Lcom/iMe/model/wallet/home/CryptoAddTokensItem;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final configureNftTokens(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 435
    const-class v0, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;

    .line 436
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->filterIsInstance(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    .line 1477
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1502
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1503
    move-object v2, v1

    check-cast v2, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;

    .line 437
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;->getCollection()Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftCollection;

    move-result-object v2

    .line 361
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1504
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    :cond_0
    check-cast v3, Ljava/util/List;

    .line 1505
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 440
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftCollection;

    .line 441
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 1549
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1621
    check-cast v5, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;

    .line 441
    new-instance v6, Lcom/iMe/model/wallet/home/nft/NftTokenItem;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {v6, v5, v7}, Lcom/iMe/model/wallet/home/nft/NftTokenItem;-><init>(Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;Ljava/util/List;)V

    .line 1621
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 439
    :cond_2
    new-instance v1, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    invoke-direct {v1, v2, v4}, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;-><init>(Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftCollection;Ljava/util/List;)V

    const/4 v2, 0x0

    .line 443
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->setExpanded(Z)V

    .line 153
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 434
    :cond_3
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final configureTokens(Ljava/util/List;Lcom/iMe/storage/domain/model/wallet/token/TokenType;Ljava/util/List;ZLcom/iMe/storage/data/network/model/error/IErrorStatus;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenType;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/iMe/storage/data/network/model/error/IErrorStatus;",
            ")",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    if-eqz p5, :cond_1

    .line 381
    new-instance p2, Lcom/iMe/model/common/GlobalStateItem;

    .line 383
    sget-object p3, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->NO_CONNECTION:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    if-ne p5, p3, :cond_0

    sget-object p3, Lcom/iMe/model/state/GlobalState$NoInternet;->INSTANCE:Lcom/iMe/model/state/GlobalState$NoInternet;

    goto :goto_0

    .line 384
    :cond_0
    sget-object p3, Lcom/iMe/model/state/GlobalState$Unexpected;->INSTANCE:Lcom/iMe/model/state/GlobalState$Unexpected;

    .line 381
    :goto_0
    invoke-direct {p2, p3}, Lcom/iMe/model/common/GlobalStateItem;-><init>(Lcom/iMe/model/state/GlobalState;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    .line 389
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 390
    new-instance p2, Lcom/iMe/model/common/GlobalStateItem;

    sget-object p3, Lcom/iMe/model/state/GlobalState$Progress;->INSTANCE:Lcom/iMe/model/state/GlobalState$Progress;

    invoke-direct {p2, p3}, Lcom/iMe/model/common/GlobalStateItem;-><init>(Lcom/iMe/model/state/GlobalState;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 393
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 394
    new-instance p2, Lcom/iMe/model/common/GlobalStateItem;

    sget-object p3, Lcom/iMe/model/state/GlobalState$Empty$Balance;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Balance;

    invoke-direct {p2, p3}, Lcom/iMe/model/common/GlobalStateItem;-><init>(Lcom/iMe/model/state/GlobalState;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 397
    :cond_3
    sget-object p4, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p4, p2

    const/4 p4, 0x1

    if-eq p2, p4, :cond_5

    const/4 p4, 0x2

    if-eq p2, p4, :cond_5

    const/4 p4, 0x3

    if-eq p2, p4, :cond_4

    goto :goto_1

    .line 403
    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureNftTokens(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 399
    :cond_5
    const-class p2, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    invoke-static {p3, p2}, Lkotlin/collections/CollectionsKt;->filterIsInstance(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureCryptoTokens(Ljava/util/List;Ljava/util/List;)V

    :goto_1
    return-object p1
.end method

.method private final configureTokensHeader(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 320
    sget v1, Lorg/telegram/messenger/R$id;->selectable_token_header:I

    .line 321
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->getCategory()I

    move-result v3

    .line 322
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_arrow_down_16:I

    .line 323
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenType$Companion;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenType$Companion;->getAvailableTypes()Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1621
    check-cast v5, Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    .line 323
    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->getCategory()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1621
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 319
    :cond_0
    new-instance v6, Lcom/iMe/model/wallet/home/SelectableHeaderItem;

    .line 318
    new-instance v5, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$configureTokensHeader$2;

    invoke-direct {v5, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$configureTokensHeader$2;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    move-object v0, v6

    .line 319
    invoke-direct/range {v0 .. v5}, Lcom/iMe/model/wallet/home/SelectableHeaderItem;-><init>(IIILjava/util/List;Lkotlin/jvm/functions/Function2;)V

    .line 318
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final configureUiItems(Ljava/util/List;ZLcom/iMe/storage/data/network/model/error/IErrorStatus;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/iMe/storage/data/network/model/error/IErrorStatus;",
            ")",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    .line 454
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 455
    invoke-direct {p0, v6}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureBanner(Ljava/util/List;)V

    .line 456
    invoke-direct {p0, v6}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureCryptoAccountHeader(Ljava/util/List;)V

    .line 457
    invoke-direct {p0, v6}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureCryptoAccount(Ljava/util/List;)Ljava/util/List;

    .line 458
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-direct {p0, v6}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureTokensHeader(Ljava/util/List;)V

    .line 460
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    move-object v0, p0

    move-object v1, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureTokens(Ljava/util/List;Lcom/iMe/storage/domain/model/wallet/token/TokenType;Ljava/util/List;ZLcom/iMe/storage/data/network/model/error/IErrorStatus;)Ljava/util/List;

    :cond_0
    return-object v6
.end method

.method static synthetic configureUiItems$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Ljava/util/List;ZLcom/iMe/storage/data/network/model/error/IErrorStatus;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 450
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 449
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureUiItems(Ljava/util/List;ZLcom/iMe/storage/data/network/model/error/IErrorStatus;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    return-object v0
.end method

.method private final getCurrentNetworkId()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getHorizontalActionButtonItems()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;"
        }
    .end annotation

    .line 482
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getAvailableWalletCreationTypes()Ljava/util/List;

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
    check-cast v2, Lcom/iMe/model/wallet/crypto/create/WalletCreationType;

    .line 484
    new-instance v10, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 485
    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType;->getIconResId()I

    move-result v4

    .line 486
    iget-object v3, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v2, v3}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType;->getActionText(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 487
    new-instance v7, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getHorizontalActionButtonItems$1$1$1;

    invoke-direct {v7, p0, v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getHorizontalActionButtonItems$1$1$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, v10

    .line 484
    invoke-direct/range {v3 .. v9}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1621
    invoke-interface {v1, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private final getNftItemsObservable(J)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;>;>;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->nftAvatarInteractor:Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftAvatarInteractor;

    .line 251
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentNetworkId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftAvatarInteractor;->getNftAvatars(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    .line 253
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "nftAvatarInteractor\n    \u2026y, TimeUnit.MILLISECONDS)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance p2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getNftItemsObservable$$inlined$mapSuccess$1;

    invoke-direct {p2, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getNftItemsObservable$$inlined$mapSuccess$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getWalletBalanceItemsObservable(ZJ)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;>;>;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 214
    invoke-static {v0, p1, v1, v2, v1}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getWalletBalance$default(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;ZLjava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object p1

    .line 216
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    const-string/jumbo p2, "walletInteractor\n       \u2026y, TimeUnit.MILLISECONDS)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance p2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getWalletBalanceItemsObservable$$inlined$flatMapSuccess$1;

    invoke-direct {p2, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getWalletBalanceItemsObservable$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    new-instance p3, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p3, p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final initBannerSlides()Lcom/chad/library/adapter/base/entity/node/BaseNode;
    .locals 6

    .line 308
    sget-object v0, Lcom/iMe/model/wallet/home/BannerSlide;->Companion:Lcom/iMe/model/wallet/home/BannerSlide$Companion;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/BannerSlide$Companion;->getCryptoBanners()[Lcom/iMe/model/wallet/home/BannerSlide;

    move-result-object v0

    .line 11335
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 308
    new-instance v5, Lcom/iMe/model/wallet/home/SlideItem;

    invoke-direct {v5, v4}, Lcom/iMe/model/wallet/home/SlideItem;-><init>(Lcom/iMe/model/wallet/home/BannerSlide;)V

    .line 11671
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 308
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 307
    new-instance v1, Lcom/iMe/model/wallet/home/BannerItem;

    invoke-direct {v1, v0}, Lcom/iMe/model/wallet/home/BannerItem;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private final isWalletDataMismatching()Z
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getLastLoggedInAddress(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getLinkedWalletAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getLastLoggedInAddress(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getLinkedWalletAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method private final listenEvents()V
    .locals 5

    .line 271
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

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

    const-string v1, "publisher\n              \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    sget-object v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$1;->INSTANCE:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$1;

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->groupBy(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 274
    sget-object v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$2;->INSTANCE:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$2;

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 270
    invoke-static {v0}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "merge(\n                 \u2026      }\n                )"

    .line 274
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

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

    .line 303
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final listenEvents$lambda$15(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method private static final listenEvents$lambda$16(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Observable;

    return-object p0
.end method

.method public static synthetic loadScreenInfo$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;ZZJILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const-wide/16 p3, 0x0

    .line 90
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->loadScreenInfo(ZZJ)V

    return-void
.end method

.method private final loadTokens(ZZJ)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    sget-object v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    .line 171
    invoke-direct {p0, p3, p4}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getNftItemsObservable(J)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 170
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getWalletBalanceItemsObservable(ZJ)Lio/reactivex/Observable;

    move-result-object p1

    .line 174
    :goto_0
    iget-object p3, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 175
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->getLinkedCryptoWalletAddress(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p3

    .line 176
    iget-object p4, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p4}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p4

    invoke-virtual {p3, p4}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    .line 177
    new-instance p4, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$loadTokens$1;

    invoke-direct {p4, p0, p2, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$loadTokens$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;ZLio/reactivex/Observable;)V

    new-instance p1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda3;

    invoke-direct {p1, p4}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p3, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 192
    iget-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 193
    new-instance p2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "private fun loadTokens(\n\u2026creenSubscriptions)\n    }"

    .line 177
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance p3, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$loadTokens$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {p3, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$loadTokens$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    new-instance p4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p4, p3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p3, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$loadTokens$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p3, p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$loadTokens$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance p2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, p3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {p1, p4, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->mainScreenSubscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method static synthetic loadTokens$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;ZZJILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const-wide/16 p3, 0x0

    .line 164
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->loadTokens(ZZJ)V

    return-void
.end method

.method private static final loadTokens$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final loadTokens$lambda$1(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    return-void
.end method

.method private final resetMainRequests()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->mainScreenSubscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method private final resolveActions()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 465
    new-instance v1, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 466
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_send:I

    .line 467
    iget-object v3, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_token_details_details_action_send:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 468
    iget-object v4, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->isCrypto()Z

    move-result v4

    .line 464
    new-instance v5, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$resolveActions$1;

    invoke-direct {v5, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$resolveActions$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    .line 465
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 470
    new-instance v1, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 471
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_ic_ask_transfer:I

    .line 472
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_binance_pay_action_receive:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 464
    new-instance v7, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$resolveActions$2;

    invoke-direct {v7, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$resolveActions$2;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    const/4 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, v1

    .line 470
    invoke-direct/range {v3 .. v9}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 474
    new-instance v1, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 475
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_transactions_28:I

    .line 476
    iget-object v3, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_binance_pay_action_history:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 477
    iget-object v4, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->isCrypto()Z

    move-result v4

    .line 464
    new-instance v5, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$resolveActions$3;

    invoke-direct {v5, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$resolveActions$3;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    .line 474
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 464
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final setTokensType(Lcom/iMe/storage/domain/model/wallet/token/TokenType;)V
    .locals 8

    .line 333
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    if-eq v0, p1, :cond_0

    .line 334
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    .line 335
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->tokens:Ljava/util/List;

    .line 336
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureUiItems$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Ljava/util/List;ZLcom/iMe/storage/data/network/model/error/IErrorStatus;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->renderNodes(Ljava/util/List;)V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, p0

    .line 337
    invoke-static/range {v1 .. v7}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->loadScreenInfo$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;ZZJILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final showQrReceiveDialog()V
    .locals 1

    .line 492
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->runWithCryptoInformationCheck(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final showQrReceiveDialog$lambda$32(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getLinkedWalletAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->showQrReceiveDialog(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;)V

    return-void
.end method

.method private final sortTokens(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;)V"
        }
    .end annotation

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 230
    iget-object v4, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v4}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getOnlyPositiveTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 857
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/16 p1, 0xa

    .line 1194
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result p1

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    .line 1195
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1222
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1223
    move-object v3, v0

    check-cast v3, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 231
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 1223
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 232
    :cond_4
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->tokensDisplaySettings:Ljava/util/List;

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;

    .line 233
    invoke-virtual {v4}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 857
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1603
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1611
    check-cast v3, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;

    .line 234
    invoke-virtual {v3}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->getTokenAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v3, :cond_7

    .line 1611
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 236
    :cond_8
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getTokensOrderType()Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v0

    sget-object v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v2, :cond_b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    goto :goto_5

    .line 245
    :cond_9
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 242
    :cond_a
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$sortTokens$$inlined$compareByDescending$2;

    invoke-direct {v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$sortTokens$$inlined$compareByDescending$2;-><init>()V

    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$sortTokens$$inlined$thenByDescending$1;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$sortTokens$$inlined$thenByDescending$1;-><init>(Ljava/util/Comparator;)V

    .line 241
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    goto :goto_5

    .line 238
    :cond_b
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$sortTokens$$inlined$compareByDescending$1;

    invoke-direct {v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$sortTokens$$inlined$compareByDescending$1;-><init>()V

    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$sortTokens$$inlined$thenBy$1;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$sortTokens$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;)V

    .line 237
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 236
    :goto_5
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->tokens:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public attachViewState(Lcom/iMe/manager/wallet/create/WalletCreateManagerView;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->attachViewState(Lcom/iMe/manager/wallet/create/WalletCreateManagerView;)V

    return-void
.end method

.method protected clearSubscriptions()V
    .locals 0

    .line 155
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->clearSubscriptions()V

    .line 156
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->onDetachViewState()V

    .line 157
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->resetMainRequests()V

    return-void
.end method

.method public getAvailableWalletCreationTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/create/WalletCreationType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getAvailableWalletCreationTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentNetwork()Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    return-object v0
.end method

.method public getLinkedWalletAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getLinkedWalletAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final loadScreenInfo(ZZJ)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->resetMainRequests()V

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->loadTokens(ZZJ)V

    return-void
.end method

.method public onDetachViewState()V
    .locals 1

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->onDetachViewState()V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 7

    .line 148
    invoke-super {p0}, Lmoxy/MvpPresenter;->onFirstViewAttach()V

    .line 149
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureUiItems$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Ljava/util/List;ZLcom/iMe/storage/data/network/model/error/IErrorStatus;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->renderNodes(Ljava/util/List;)V

    .line 150
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string/jumbo v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->attachViewState(Lcom/iMe/manager/wallet/create/WalletCreateManagerView;)V

    .line 151
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->listenEvents()V

    return-void
.end method

.method public final onSelectTokensOrderTypeClicked()V
    .locals 2

    .line 119
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getTokensOrderType()Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->showSelectTokensOrderTypeDialog(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;)V

    return-void
.end method

.method public final openTokenSettingsScreen()V
    .locals 2

    .line 140
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentNetworkId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->openTokenSettingsScreen(Ljava/lang/String;)V

    return-void
.end method

.method public runWithCryptoInformationCheck(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "endAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->runWithCryptoInformationCheck(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public setLinkedWalletAddress(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->setLinkedWalletAddress(Ljava/lang/String;)V

    return-void
.end method

.method public final setTokensOrderType(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;)V
    .locals 8

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setTokensOrderType(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;)V

    .line 124
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->tokensDisplaySettings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    .line 125
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->tokens:Ljava/util/List;

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 809
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_1
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->sortTokens(Ljava/util/List;)V

    .line 126
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->tokens:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureUiItems$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Ljava/util/List;ZLcom/iMe/storage/data/network/model/error/IErrorStatus;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->renderNodes(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, p0

    .line 128
    invoke-static/range {v1 .. v7}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->loadTokens$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;ZZJILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final showChangeNetworkHintIfNeeded()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$CryptoHomeScreen;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$CryptoHomeScreen;

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;->shouldShowHint(Lcom/iMe/storage/domain/model/wallet/Hint;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isWalletCreated(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->showChangeNetworkHint()V

    .line 135
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;->onHintShowed(Lcom/iMe/storage/domain/model/wallet/Hint;)V

    :cond_0
    return-void
.end method

.method public final showWalletAddressScan()V
    .locals 2

    .line 115
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getLinkedWalletAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->showWalletAddressScan(Ljava/lang/String;)V

    return-void
.end method

.method public final startChooseNetworkDialog()V
    .locals 3

    .line 105
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$startChooseNetworkDialog$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$startChooseNetworkDialog$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->showChooseNetworkDialog(Lcom/iMe/storage/domain/model/crypto/Network;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public startWalletCreationFlow(Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V
    .locals 1

    const-string/jumbo v0, "walletCreationType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->startWalletCreationFlow(Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V

    return-void
.end method

.method public final switchHiddenBalance()V
    .locals 7

    .line 100
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isBalanceHidden()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setBalanceHidden(Z)V

    .line 101
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->tokens:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureUiItems$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Ljava/util/List;ZLcom/iMe/storage/data/network/model/error/IErrorStatus;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->renderNodes(Ljava/util/List;)V

    return-void
.end method
