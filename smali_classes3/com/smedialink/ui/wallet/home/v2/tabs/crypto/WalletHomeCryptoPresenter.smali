.class public final Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "WalletHomeCryptoPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletHomeCryptoPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletHomeCryptoPresenter.kt\ncom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter\n+ 2 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n+ 3 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 4 RxEventBus.kt\ncom/smedialink/storage/domain/utils/rx/RxEventBus\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 8 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 9 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,415:1\n27#2:416\n27#2:425\n39#3,8:417\n39#3,8:426\n39#3,8:437\n16#4,3:434\n11335#5:445\n11670#5,3:446\n1549#6:449\n1620#6,3:450\n766#6:453\n857#6,2:454\n1194#6,2:456\n1222#6,4:458\n766#6:462\n857#6,2:463\n1603#6,9:465\n1855#6:474\n1856#6:476\n1612#6:477\n1045#6:478\n1054#6:479\n1549#6:480\n1620#6,3:481\n1477#6:484\n1502#6,3:485\n1505#6,3:495\n1549#6:501\n1620#6,3:502\n1#7:475\n361#8,7:488\n125#9:498\n152#9,2:499\n154#9:505\n*S KotlinDebug\n*F\n+ 1 WalletHomeCryptoPresenter.kt\ncom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter\n*L\n85#1:416\n170#1:425\n96#1:417,8\n176#1:426,8\n206#1:437,8\n205#1:434,3\n226#1:445\n226#1:446,3\n241#1:449\n241#1:450,3\n314#1:453\n314#1:454,2\n315#1:456,2\n315#1:458,4\n317#1:462\n317#1:463,2\n318#1:465,9\n318#1:474\n318#1:476\n318#1:477\n321#1:478\n322#1:479\n324#1:480\n324#1:481,3\n348#1:484\n348#1:485,3\n348#1:495,3\n350#1:501\n350#1:502,3\n318#1:475\n348#1:488,7\n349#1:498\n349#1:499,2\n349#1:505\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private final hintsPreferenceHelper:Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;

.field private isLoading:Z

.field private final mainScreenSubscriptions:Lio/reactivex/disposables/CompositeDisposable;

.field private final nftAvatarInteractor:Lcom/smedialink/storage/domain/interactor/crypto/nft/avatar/NftAvatarInteractor;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private selectedTokenType:Lcom/smedialink/storage/domain/model/wallet/token/TokenType;

.field private final telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;

.field private final telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

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

.field private final walletCreateManager:Lcom/smedialink/manager/wallet/create/WalletCreateManager;

.field private final walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public static synthetic $r8$lambda$MkRrYWVU-HlQFEHmBzwfrmN0X_8(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->loadTokens$lambda$2(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gF06LUx1aqKJVuVSgvx5OZ85i9U(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->loadTokens$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;Lcom/smedialink/storage/domain/interactor/crypto/nft/avatar/NftAvatarInteractor;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/gateway/TelegramControllersGateway;Lcom/smedialink/storage/domain/gateway/TelegramGateway;Lcom/smedialink/manager/wallet/create/WalletCreateManager;Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;)V
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

    const-string v0, "resourceManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramControllersGateway"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletCreateManager"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletInteractor"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    .line 45
    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 46
    iput-object p3, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 47
    iput-object p4, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->hintsPreferenceHelper:Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;

    .line 48
    iput-object p5, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->nftAvatarInteractor:Lcom/smedialink/storage/domain/interactor/crypto/nft/avatar/NftAvatarInteractor;

    .line 49
    iput-object p6, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 50
    iput-object p7, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 51
    iput-object p8, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 52
    iput-object p9, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;

    .line 53
    iput-object p10, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    .line 54
    iput-object p11, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->walletCreateManager:Lcom/smedialink/manager/wallet/create/WalletCreateManager;

    .line 55
    iput-object p12, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->tokens:Ljava/util/List;

    .line 65
    sget-object p1, Lcom/smedialink/storage/domain/model/wallet/token/TokenType;->CRYPTO:Lcom/smedialink/storage/domain/model/wallet/token/TokenType;

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/smedialink/storage/domain/model/wallet/token/TokenType;

    .line 66
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->mainScreenSubscriptions:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static final synthetic access$checkWalletState(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->checkWalletState()V

    return-void
.end method

.method public static final synthetic access$configureUiItems(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenType;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->configureUiItems(Lcom/smedialink/storage/domain/model/wallet/token/TokenType;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCryptoPreferenceHelper$p(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getRxEventBus$p(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)Lcom/smedialink/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    return-object p0
.end method

.method public static final synthetic access$getSelectedTokenType$p(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)Lcom/smedialink/storage/domain/model/wallet/token/TokenType;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/smedialink/storage/domain/model/wallet/token/TokenType;

    return-object p0
.end method

.method public static final synthetic access$getTokens$p(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->tokens:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setLoading$p(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->isLoading:Z

    return-void
.end method

.method public static final synthetic access$setTokens$p(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;Ljava/util/List;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->tokens:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setTokensType(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenType;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->setTokensType(Lcom/smedialink/storage/domain/model/wallet/token/TokenType;)V

    return-void
.end method

.method public static final synthetic access$showQrReceiveDialog(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->showQrReceiveDialog()V

    return-void
.end method

.method private final checkWalletState()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->isAuthorized(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->getLinkedCryptoWalletAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->isRemoteAndLocaleWalletNotMatch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;

    invoke-interface {v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;->showAddressMismatchScreen()V

    :cond_0
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

    .line 230
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->isBannersVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->initBannerSlides()Lcom/chad/library/adapter/base/entity/node/BaseNode;

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

    .line 270
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    new-instance v0, Lcom/smedialink/model/wallet/home/CryptoAccountItem;

    .line 273
    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/smedialink/gateway/TelegramControllersGateway$DefaultImpls;->getMessagesController$default(Lcom/smedialink/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 274
    iget-object v2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 273
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    const-string v2, "telegramControllersGatew\u2026                        )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iget-object v2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    iget-object v3, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v3}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lcom/smedialink/storage/domain/model/crypto/Wallet;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v4

    :cond_0
    if-nez v4, :cond_1

    const-string v4, ""

    .line 277
    :cond_1
    iget-object v2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v2

    .line 278
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->resolveActions()Ljava/util/List;

    move-result-object v3

    .line 272
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/smedialink/model/wallet/home/CryptoAccountItem;-><init>(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/util/List;)V

    .line 271
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 283
    :cond_2
    new-instance v0, Lcom/smedialink/model/wallet/home/AccountItem$Create;

    .line 284
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance$Companion;

    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$ETH;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$ETH;

    invoke-virtual {v1, v2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance$Companion;->createEmptyBalanceFor(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;)Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    .line 285
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->getHorizontalActionButtonItems()Ljava/util/List;

    move-result-object v2

    .line 283
    invoke-direct {v0, v1, v2}, Lcom/smedialink/model/wallet/home/AccountItem$Create;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Ljava/util/List;)V

    .line 282
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p1
.end method

.method private final configureCryptoAccountHeader(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)Z"
        }
    .end annotation

    .line 262
    new-instance v6, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;

    .line 263
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_home_crypto_account:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 264
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    .line 262
    invoke-direct/range {v0 .. v5}, Lcom/smedialink/model/wallet/home/HeaderItemWithNetworkSwitcher;-><init>(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 261
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final configureCryptoTokens(Ljava/util/List;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 310
    const-class v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->filterIsInstance(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    .line 312
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getTokensSettings(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;

    move-result-object v0

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    .line 314
    iget-object v7, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v7}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getOnlyPositiveTokens()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v6

    cmpl-double v8, v6, v3

    if-lez v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :cond_2
    :goto_1
    if-eqz v5, :cond_0

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/16 p2, 0xa

    .line 1194
    invoke-static {v1, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v6, 0x10

    invoke-static {v2, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 1195
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1222
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1223
    move-object v7, v2

    check-cast v7, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    .line 315
    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v7

    .line 1223
    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 316
    :cond_4
    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsMetadata;->getStates()Ljava/util/List;

    move-result-object v0

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;

    .line 317
    invoke-virtual {v7}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1603
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1611
    check-cast v2, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;

    .line 318
    sget-object v7, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {v2}, Lcom/smedialink/storage/data/locale/prefs/model/WalletCryptoTokensSettingsTokenState;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v2, :cond_7

    .line 1611
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 320
    :cond_8
    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getTokensOrderType()Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v1

    sget-object v2, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v5, :cond_b

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    goto :goto_5

    .line 323
    :cond_9
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1054
    :cond_a
    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$configureCryptoTokens$lambda$24$$inlined$sortedByDescending$1;

    invoke-direct {v1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$configureCryptoTokens$lambda$24$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    goto :goto_5

    .line 1045
    :cond_b
    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$configureCryptoTokens$lambda$24$$inlined$sortedBy$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$configureCryptoTokens$lambda$24$$inlined$sortedBy$1;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 1549
    :goto_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1621
    check-cast v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    .line 325
    new-instance v2, Lcom/smedialink/model/wallet/home/AccountItem$Token;

    .line 327
    iget-object v5, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v5}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->isQuotationsVisible()Z

    move-result v5

    .line 325
    invoke-direct {v2, v0, v5}, Lcom/smedialink/model/wallet/home/AccountItem$Token;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Z)V

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 332
    :cond_c
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/model/wallet/home/AccountItem$Token;

    .line 333
    invoke-virtual {v0}, Lcom/smedialink/model/wallet/home/AccountItem$Token;->getBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getTotalInDollars()F

    move-result v0

    float-to-double v5, v0

    add-double/2addr v3, v5

    goto :goto_7

    :cond_d
    double-to-float p2, v3

    .line 331
    new-instance v0, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    invoke-direct {v0, p2}, Lcom/smedialink/model/wallet/home/TotalBalanceItem;-><init>(F)V

    .line 330
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 338
    new-instance p2, Lcom/smedialink/model/wallet/home/CryptoSelectTokensItem;

    invoke-direct {p2}, Lcom/smedialink/model/wallet/home/CryptoSelectTokensItem;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_8

    .line 340
    :cond_e
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    :goto_8
    return p1
.end method

.method private final configureNftTokens(Ljava/util/List;Ljava/util/List;)Z
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
            ">;)Z"
        }
    .end annotation

    .line 345
    const-class v0, Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

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

    check-cast v2, Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

    .line 348
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;->getCollection()Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;

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

    .line 350
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;

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
    check-cast v5, Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

    .line 350
    new-instance v6, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {v6, v5, v7}, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;-><init>(Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;Ljava/util/List;)V

    .line 1621
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 350
    :cond_2
    new-instance v1, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;

    invoke-direct {v1, v2, v4}, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;-><init>(Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;Ljava/util/List;)V

    const/4 v2, 0x0

    .line 351
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->setExpanded(Z)V

    .line 153
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 355
    :cond_3
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method private final configureTokens(Ljava/util/List;Lcom/smedialink/storage/domain/model/wallet/token/TokenType;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenType;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 294
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->isLoading:Z

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    new-instance p2, Lcom/smedialink/model/common/GlobalStateItem;

    sget-object p3, Lcom/smedialink/model/state/GlobalState$Progress;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Progress;

    invoke-direct {p2, p3}, Lcom/smedialink/model/common/GlobalStateItem;-><init>(Lcom/smedialink/model/state/GlobalState;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 297
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    new-instance p2, Lcom/smedialink/model/common/GlobalStateItem;

    sget-object p3, Lcom/smedialink/model/state/GlobalState$Empty$Balance;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Empty$Balance;

    invoke-direct {p2, p3}, Lcom/smedialink/model/common/GlobalStateItem;-><init>(Lcom/smedialink/model/state/GlobalState;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 301
    :cond_1
    sget-object v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 303
    invoke-direct {p0, p1, p3}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->configureNftTokens(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 302
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->configureCryptoTokens(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method private final configureTokensHeader(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)Z"
        }
    .end annotation

    .line 238
    sget v1, Lorg/telegram/messenger/R$id;->selectable_token_header:I

    .line 239
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/smedialink/storage/domain/model/wallet/token/TokenType;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenType;->getCategory()I

    move-result v3

    .line 240
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_arrow_down_16:I

    .line 241
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenType;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenType$Companion;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenType$Companion;->getAvailableTypes()Ljava/util/List;

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
    check-cast v5, Lcom/smedialink/storage/domain/model/wallet/token/TokenType;

    .line 241
    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/wallet/token/TokenType;->getCategory()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1621
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    :cond_0
    new-instance v6, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;

    .line 236
    new-instance v5, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$configureTokensHeader$1$2;

    invoke-direct {v5, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$configureTokensHeader$1$2;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)V

    move-object v0, v6

    .line 237
    invoke-direct/range {v0 .. v5}, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;-><init>(IIILjava/util/List;Lkotlin/jvm/functions/Function2;)V

    .line 236
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final configureUiItems(Lcom/smedialink/storage/domain/model/wallet/token/TokenType;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenType;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->configureBanner(Ljava/util/List;)V

    .line 361
    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->configureCryptoAccountHeader(Ljava/util/List;)Z

    .line 362
    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->configureCryptoAccount(Ljava/util/List;)Ljava/util/List;

    .line 363
    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->configureTokensHeader(Ljava/util/List;)Z

    .line 365
    invoke-direct {p0, v0, p1, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->configureTokens(Ljava/util/List;Lcom/smedialink/storage/domain/model/wallet/token/TokenType;Ljava/util/List;)Z

    :cond_0
    return-object v0
.end method

.method static synthetic configureUiItems$default(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenType;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 358
    iget-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->tokens:Ljava/util/List;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->configureUiItems(Lcom/smedialink/storage/domain/model/wallet/token/TokenType;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getHorizontalActionButtonItems()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 388
    new-instance v9, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 389
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_eth_wallet_create:I

    .line 390
    sget v4, Lorg/telegram/messenger/R$string;->wallet_dashboard_create_eth_wallet:I

    .line 387
    new-instance v6, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$getHorizontalActionButtonItems$1;

    invoke-direct {v6, v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$getHorizontalActionButtonItems$1;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)V

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, v9

    .line 388
    invoke-direct/range {v2 .. v8}, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;-><init>(IIZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    aput-object v9, v1, v2

    .line 393
    new-instance v2, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 394
    sget v11, Lorg/telegram/messenger/R$drawable;->fork_ic_eth_wallet_import:I

    .line 395
    sget v12, Lorg/telegram/messenger/R$string;->wallet_dashboard_import_eth_wallet:I

    .line 387
    new-instance v14, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$getHorizontalActionButtonItems$2;

    invoke-direct {v14, v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$getHorizontalActionButtonItems$2;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)V

    const/4 v13, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v10, v2

    .line 393
    invoke-direct/range {v10 .. v16}, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;-><init>(IIZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->isRestoreAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    new-instance v2, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 400
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_ic_eth_wallet_restore:I

    .line 401
    sget v5, Lorg/telegram/messenger/R$string;->wallet_dashboard_restore_eth_wallet:I

    const/4 v6, 0x0

    .line 387
    new-instance v7, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$getHorizontalActionButtonItems$3;

    invoke-direct {v7, v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$getHorizontalActionButtonItems$3;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, v2

    .line 399
    invoke-direct/range {v3 .. v9}, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;-><init>(IIZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 387
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private final initBannerSlides()Lcom/chad/library/adapter/base/entity/node/BaseNode;
    .locals 6

    .line 226
    sget-object v0, Lcom/smedialink/model/wallet/home/BannerSlide;->Companion:Lcom/smedialink/model/wallet/home/BannerSlide$Companion;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/home/BannerSlide$Companion;->getCryptoBanners()[Lcom/smedialink/model/wallet/home/BannerSlide;

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

    .line 226
    new-instance v5, Lcom/smedialink/model/wallet/home/SlideItem;

    invoke-direct {v5, v4}, Lcom/smedialink/model/wallet/home/SlideItem;-><init>(Lcom/smedialink/model/wallet/home/BannerSlide;)V

    .line 11671
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 226
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 225
    new-instance v1, Lcom/smedialink/model/wallet/home/BannerItem;

    invoke-direct {v1, v0}, Lcom/smedialink/model/wallet/home/BannerItem;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private final isRemoteAndLocaleWalletNotMatch(Ljava/lang/String;)Z
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getLastLoggedInAddress(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 201
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    iget-object v3, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v3}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getLastLoggedInAddress(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private final listenEvents()V
    .locals 5

    .line 204
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 16
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;

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
    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)V

    new-instance v2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

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

    .line 221
    invoke-static {p0, v0, v3, v1, v3}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadAccountInformation()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 169
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->getLinkedCryptoWalletAddress()Lio/reactivex/Observable;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$loadAccountInformation$$inlined$mapSuccess$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$loadAccountInformation$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)V

    new-instance v2, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$loadAccountInformation$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$loadAccountInformation$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)V

    new-instance v3, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$loadAccountInformation$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$loadAccountInformation$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->mainScreenSubscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v0, v1}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public static synthetic loadScreenInfo$default(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;ZJILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const-wide/16 p2, 0x0

    .line 70
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->loadScreenInfo(ZJ)V

    return-void
.end method

.method public static synthetic loadTokens$default(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;ZJILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const-wide/16 p2, 0x0

    .line 76
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->loadTokens(ZJ)V

    return-void
.end method

.method private static final loadTokens$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final loadTokens$lambda$2(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/smedialink/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    return-void
.end method

.method private final resetMainRequests()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->mainScreenSubscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method private final resolveActions()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 370
    new-instance v1, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 371
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_send:I

    .line 372
    sget v3, Lorg/telegram/messenger/R$string;->wallet_token_details_details_action_send:I

    .line 373
    iget-object v4, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/smedialink/storage/domain/model/wallet/token/TokenType;

    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/wallet/token/TokenType;->isCrypto()Z

    move-result v4

    .line 369
    new-instance v5, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$resolveActions$1;

    invoke-direct {v5, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$resolveActions$1;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)V

    .line 370
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;-><init>(IIZLkotlin/jvm/functions/Function0;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 375
    new-instance v1, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 376
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_ic_ask_transfer:I

    .line 377
    sget v5, Lorg/telegram/messenger/R$string;->wallet_binance_pay_action_receive:I

    .line 369
    new-instance v7, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$resolveActions$2;

    invoke-direct {v7, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$resolveActions$2;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)V

    const/4 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, v1

    .line 375
    invoke-direct/range {v3 .. v9}, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;-><init>(IIZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 379
    new-instance v1, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;

    .line 380
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_transactions_28:I

    .line 381
    sget v3, Lorg/telegram/messenger/R$string;->wallet_binance_pay_action_history:I

    .line 382
    iget-object v4, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/smedialink/storage/domain/model/wallet/token/TokenType;

    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/wallet/token/TokenType;->isCrypto()Z

    move-result v4

    .line 369
    new-instance v5, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$resolveActions$3;

    invoke-direct {v5, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$resolveActions$3;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)V

    .line 379
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;-><init>(IIZLkotlin/jvm/functions/Function0;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 369
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final setTokensType(Lcom/smedialink/storage/domain/model/wallet/token/TokenType;)V
    .locals 7

    .line 251
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/smedialink/storage/domain/model/wallet/token/TokenType;

    if-eq v0, p1, :cond_0

    .line 252
    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/smedialink/storage/domain/model/wallet/token/TokenType;

    const/4 p1, 0x1

    .line 253
    iput-boolean p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->isLoading:Z

    .line 254
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->tokens:Ljava/util/List;

    .line 255
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/smedialink/storage/domain/model/wallet/token/TokenType;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->configureUiItems$default(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenType;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;->renderNodes(Ljava/util/List;)V

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    .line 256
    invoke-static/range {v1 .. v6}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->loadScreenInfo$default(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;ZJILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final showQrReceiveDialog()V
    .locals 3

    .line 410
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->getLinkedCryptoWalletAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;->showQrReceiveDialog(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method


# virtual methods
.method public attachViewState(Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->walletCreateManager:Lcom/smedialink/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0, p1}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->attachViewState(Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;)V

    return-void
.end method

.method protected clearSubscriptions()V
    .locals 0

    .line 158
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->clearSubscriptions()V

    .line 159
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->onDetachViewState()V

    .line 160
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->resetMainRequests()V

    return-void
.end method

.method public final getCurrentNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    return-object v0
.end method

.method public getLinkedCryptoWalletAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->walletCreateManager:Lcom/smedialink/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->getLinkedCryptoWalletAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedTokensOrderType()Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getTokensOrderType()Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v0

    return-object v0
.end method

.method public isRestoreAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->walletCreateManager:Lcom/smedialink/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->isRestoreAvailable()Z

    move-result v0

    return v0
.end method

.method public final loadScreenInfo(ZJ)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->resetMainRequests()V

    .line 72
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->loadAccountInformation()V

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->loadTokens(ZJ)V

    return-void
.end method

.method public final loadTokens(ZJ)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/smedialink/storage/domain/model/wallet/token/TokenType;

    sget-object v1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->nftAvatarInteractor:Lcom/smedialink/storage/domain/interactor/crypto/nft/avatar/NftAvatarInteractor;

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smedialink/storage/domain/interactor/crypto/nft/avatar/NftAvatarInteractor;->getNftAvatars(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v2, v1}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->getWalletBalance$default(Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;ZLcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 83
    :goto_0
    invoke-virtual {p1}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object p1

    .line 84
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "observable\n             \u2026y, TimeUnit.MILLISECONDS)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance p2, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$loadTokens$$inlined$mapSuccess$1;

    invoke-direct {p2, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$loadTokens$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)V

    new-instance p3, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p3, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 91
    new-instance p2, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$loadTokens$2;

    invoke-direct {p2, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$loadTokens$2;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)V

    new-instance p3, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda1;

    invoke-direct {p3, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 95
    new-instance p2, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "fun loadTokens(forceUpda\u2026creenSubscriptions)\n    }"

    .line 91
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance p3, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$loadTokens$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {p3, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$loadTokens$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)V

    new-instance v0, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, p3}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p3, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$loadTokens$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p3, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$loadTokens$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance p2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, p3}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, v0, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->mainScreenSubscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public onDetachViewState()V
    .locals 1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->walletCreateManager:Lcom/smedialink/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->onDetachViewState()V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 4

    .line 149
    invoke-super {p0}, Lmoxy/MvpPresenter;->onFirstViewAttach()V

    .line 150
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;

    invoke-virtual {p0, v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->attachViewState(Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;)V

    .line 151
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->listenEvents()V

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->isLoading:Z

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->tokens:Ljava/util/List;

    .line 154
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/smedialink/storage/domain/model/wallet/token/TokenType;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->configureUiItems$default(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenType;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;->renderNodes(Ljava/util/List;)V

    return-void
.end method

.method public setLinkedCryptoWalletAddress(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->walletCreateManager:Lcom/smedialink/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0, p1}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->setLinkedCryptoWalletAddress(Ljava/lang/String;)V

    return-void
.end method

.method public final setTokensOrderType(Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;)V
    .locals 7

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setTokensOrderType(Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    .line 134
    invoke-static/range {v1 .. v6}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->loadTokens$default(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;ZJILjava/lang/Object;)V

    return-void
.end method

.method public final showChangeNetworkHintIfNeeded()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->hintsPreferenceHelper:Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork$CryptoHomeScreen;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork$CryptoHomeScreen;

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;->shouldShowHint(Lcom/smedialink/storage/domain/model/wallet/Hint;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->isWalletCreated(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;

    invoke-interface {v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;->showChangeNetworkHint()V

    .line 140
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->hintsPreferenceHelper:Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;->onHintShowed(Lcom/smedialink/storage/domain/model/wallet/Hint;)V

    :cond_0
    return-void
.end method

.method public final showWalletAddressScan()V
    .locals 2

    .line 125
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->getLinkedCryptoWalletAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;->showWalletAddressScan(Ljava/lang/String;)V

    return-void
.end method

.method public final startChooseNetworkDialog()V
    .locals 3

    .line 118
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    new-instance v2, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$startChooseNetworkDialog$1;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$startChooseNetworkDialog$1;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;)V

    invoke-interface {v0, v1, v2}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;->showChooseNetworkDialog(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public startWalletCreationFlow(Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)V
    .locals 1

    const-string v0, "walletCreationType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->walletCreateManager:Lcom/smedialink/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0, p1}, Lcom/smedialink/manager/wallet/create/WalletCreateManager;->startWalletCreationFlow(Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;)V

    return-void
.end method

.method public final switchHiddenBalance()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCryptoHiddenBalance()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setCryptoHiddenBalance(Z)V

    .line 114
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    sget-object v1, Lcom/smedialink/common/AppRxEvents$HiddenBalanceSettingChanged;->INSTANCE:Lcom/smedialink/common/AppRxEvents$HiddenBalanceSettingChanged;

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    return-void
.end method
