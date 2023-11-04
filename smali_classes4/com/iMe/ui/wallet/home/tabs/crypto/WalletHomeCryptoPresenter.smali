.class public final Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletHomeCryptoPresenter.kt"

# interfaces
.implements Lcom/iMe/manager/wallet/create/WalletCreateManagerDelegate;


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
        ">;",
        "Lcom/iMe/manager/wallet/create/WalletCreateManagerDelegate;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletHomeCryptoPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletHomeCryptoPresenter.kt\ncom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n+ 7 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,789:1\n63#2,12:790\n63#2,12:802\n63#2,12:879\n29#3,7:814\n16#3,7:821\n29#3,7:869\n800#4,11:828\n766#4:839\n857#4,2:840\n1045#4:842\n1054#4:843\n766#4:844\n857#4,2:845\n1194#4,2:847\n1222#4,4:849\n766#4:853\n857#4,2:854\n1603#4,9:856\n1855#4:865\n1856#4:867\n1612#4:868\n1549#4:895\n1620#4,3:896\n1549#4:899\n1620#4,3:900\n800#4,11:904\n1549#4:915\n1620#4,3:916\n1#5:866\n1#5:903\n16#6,3:876\n11335#7:891\n11670#7,3:892\n*S KotlinDebug\n*F\n+ 1 WalletHomeCryptoPresenter.kt\ncom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter\n*L\n308#1:790,12\n391#1:802,12\n521#1:879,12\n424#1:814,7\n433#1:821,7\n491#1:869,7\n447#1:828,11\n450#1:839\n450#1:840,2\n455#1:842\n457#1:843\n463#1:844\n463#1:845,2\n464#1:847,2\n464#1:849,4\n468#1:853\n468#1:854,2\n469#1:856,9\n469#1:865\n469#1:867\n469#1:868\n575#1:895\n575#1:896,3\n669#1:899\n669#1:900,3\n692#1:904,11\n730#1:915\n730#1:916,3\n469#1:866\n511#1:876,3\n560#1:891\n560#1:892,3\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private final hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

.field private final mainScreenSubscriptions:Lio/reactivex/disposables/CompositeDisposable;

.field private final nftAvatarInteractor:Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftInteractor;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem;

.field private selectedTokenDetailed:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private selectedTokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

.field private sortedTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

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
.method public static synthetic $r8$lambda$EaZgB53W4vhmJN43c_TJJBZ_ES4(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->showQrReceiveDialog$lambda$37(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Lcom/iMe/storage/domain/model/crypto/Network;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HSLdYuIDaph6SdJ7lnWDWmuNL-o(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->loadTokens$lambda$4(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JkWOCM6OjcetcdYXmn2en7HelNE(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->listenEvents$lambda$24(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S9cjzv-yLkjW4lvqSWXMrcE_MA4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->listenEvents$lambda$25(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XkpOJ3eV78T1gH0RZ0hu7sstUsI(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->loadTokens$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/gateway/TelegramControllersGateway;Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletInteractor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hintsPreferenceHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "nftAvatarInteractor"

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

    .line 85
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 74
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 75
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 76
    iput-object p4, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    .line 77
    iput-object p5, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->nftAvatarInteractor:Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftInteractor;

    .line 78
    iput-object p6, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 79
    iput-object p7, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 80
    iput-object p8, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 81
    iput-object p9, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    .line 82
    iput-object p10, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 83
    iput-object p11, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    .line 84
    iput-object p12, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 90
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->mainScreenSubscriptions:Lio/reactivex/disposables/CompositeDisposable;

    .line 98
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getInitialNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem;

    .line 99
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->tokens:Ljava/util/List;

    .line 100
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->sortedTokens:Ljava/util/List;

    .line 101
    sget-object p1, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->CRYPTO:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    .line 102
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->tokensDisplaySettings:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getCryptoAccessManager$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    return-object p0
.end method

.method public static final synthetic access$getCryptoPreferenceHelper$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method

.method public static final synthetic access$getSelectedNetworkItem$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Lcom/iMe/model/wallet/crypto/NetworkItem;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem;

    return-object p0
.end method

.method public static final synthetic access$getSortedTokens(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Ljava/util/List;
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getSortedTokens()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSortedTokens$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Ljava/util/List;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->sortedTokens:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getWalletInteractor$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    return-object p0
.end method

.method public static final synthetic access$isAllNetworksSelected(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Z
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->isAllNetworksSelected()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isWalletDataMismatching(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Z
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->isWalletDataMismatching()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onReceiveClick(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->onReceiveClick()V

    return-void
.end method

.method public static final synthetic access$setSelectedNetworkItem$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Lcom/iMe/model/wallet/crypto/NetworkItem;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem;

    return-void
.end method

.method public static final synthetic access$setSortedTokens$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Ljava/util/List;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->sortedTokens:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setTokens$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Ljava/util/List;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->tokens:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setTokensDisplaySettings$p(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Ljava/util/List;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->tokensDisplaySettings:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setTokensType(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenType;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->setTokensType(Lcom/iMe/storage/domain/model/wallet/token/TokenType;)V

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

    .line 564
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isBannersVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
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

    .line 605
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 606
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->isAllNetworksSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isAnyWalletCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 617
    :cond_0
    new-instance v0, Lcom/iMe/model/wallet/home/AccountItem$Create;

    .line 618
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;

    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getBNB()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;->createEmptyBalanceFor(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    .line 619
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getHorizontalActionButtonItems()Ljava/util/List;

    move-result-object v2

    .line 617
    invoke-direct {v0, v1, v2}, Lcom/iMe/model/wallet/home/AccountItem$Create;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;Ljava/util/List;)V

    goto :goto_1

    .line 608
    :cond_1
    :goto_0
    new-instance v0, Lcom/iMe/model/wallet/home/CryptoAccountItem;

    .line 609
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getMessagesController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 610
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v2}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 609
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    const-string/jumbo v2, "telegramControllersGatew\u2026                        )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/domain/model/crypto/Wallet;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v4

    :cond_2
    if-nez v4, :cond_3

    const-string v4, ""

    .line 613
    :cond_3
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem;

    .line 614
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->resolveActions()Ljava/util/List;

    move-result-object v3

    .line 608
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/iMe/model/wallet/home/CryptoAccountItem;-><init>(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V

    .line 604
    :goto_1
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

    .line 595
    new-instance v6, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    .line 596
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_home_crypto_account:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 597
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    .line 595
    invoke-direct/range {v0 .. v5}, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;-><init>(Ljava/lang/String;Lcom/iMe/model/wallet/crypto/NetworkItem;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 594
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final configureCryptoTokens(Ljava/util/List;Ljava/util/List;)V
    .locals 6
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

    .line 670
    new-instance v2, Lcom/iMe/model/wallet/home/AccountItem$Token;

    .line 672
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->isAllNetworksSelected()Z

    move-result v3

    .line 673
    iget-object v4, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v4}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isQuotationsVisible()Z

    move-result v4

    .line 674
    iget-object v5, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v5}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isBalanceHidden()Z

    move-result v5

    .line 670
    invoke-direct {v2, v1, v3, v4, v5}, Lcom/iMe/model/wallet/home/AccountItem$Token;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;ZZZ)V

    .line 1621
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 680
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/model/wallet/home/AccountItem$Token;

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

    .line 681
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isBalanceHidden()Z

    move-result v1

    .line 679
    new-instance v2, Lcom/iMe/model/wallet/home/TotalBalanceItem;

    invoke-direct {v2, p2, v1}, Lcom/iMe/model/wallet/home/TotalBalanceItem;-><init>(FZ)V

    .line 678
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_2

    .line 685
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 687
    :cond_2
    new-instance p2, Lcom/iMe/model/wallet/home/CryptoAddTokensItem;

    invoke-direct {p2}, Lcom/iMe/model/wallet/home/CryptoAddTokensItem;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final configureNftTokens(Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 809
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 692
    :cond_1
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->isAllNetworksSelected()Z

    move-result p2

    invoke-static {v0, p2}, Lcom/iMe/mapper/nft/NftUiMappingKt;->mapToUi(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p2

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

    .line 636
    new-instance p2, Lcom/iMe/model/common/GlobalStateItem;

    .line 638
    sget-object p3, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->NO_CONNECTION:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    if-ne p5, p3, :cond_0

    sget-object p3, Lcom/iMe/model/state/GlobalState$NoInternet;->INSTANCE:Lcom/iMe/model/state/GlobalState$NoInternet;

    goto :goto_0

    .line 639
    :cond_0
    sget-object p3, Lcom/iMe/model/state/GlobalState$Unexpected;->INSTANCE:Lcom/iMe/model/state/GlobalState$Unexpected;

    .line 636
    :goto_0
    invoke-direct {p2, p3}, Lcom/iMe/model/common/GlobalStateItem;-><init>(Lcom/iMe/model/state/GlobalState;)V

    .line 635
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    .line 645
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 646
    new-instance p2, Lcom/iMe/model/common/GlobalStateItem;

    sget-object p3, Lcom/iMe/model/state/GlobalState$Progress;->INSTANCE:Lcom/iMe/model/state/GlobalState$Progress;

    invoke-direct {p2, p3}, Lcom/iMe/model/common/GlobalStateItem;-><init>(Lcom/iMe/model/state/GlobalState;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 649
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 650
    new-instance p2, Lcom/iMe/model/common/GlobalStateItem;

    sget-object p3, Lcom/iMe/model/state/GlobalState$Empty$Balance;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Balance;

    invoke-direct {p2, p3}, Lcom/iMe/model/common/GlobalStateItem;-><init>(Lcom/iMe/model/state/GlobalState;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 653
    :cond_3
    sget-object p4, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p4, p2

    const/4 p4, 0x1

    if-eq p2, p4, :cond_5

    const/4 p4, 0x2

    if-eq p2, p4, :cond_4

    goto :goto_1

    .line 662
    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureNftTokens(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 657
    :cond_5
    const-class p2, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    invoke-static {p3, p2}, Lkotlin/collections/CollectionsKt;->filterIsInstance(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    .line 655
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

    .line 572
    sget v1, Lorg/telegram/messenger/R$id;->selectable_token_header:I

    .line 573
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->getCategory()I

    move-result v3

    .line 574
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_arrow_down_16:I

    .line 575
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

    .line 575
    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->getCategory()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1621
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 571
    :cond_0
    new-instance v6, Lcom/iMe/model/wallet/home/SelectableHeaderItem;

    .line 570
    new-instance v5, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$configureTokensHeader$2;

    invoke-direct {v5, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$configureTokensHeader$2;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    move-object v0, v6

    .line 571
    invoke-direct/range {v0 .. v5}, Lcom/iMe/model/wallet/home/SelectableHeaderItem;-><init>(IIILjava/util/List;Lkotlin/jvm/functions/Function2;)V

    .line 570
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

    .line 700
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 701
    invoke-direct {p0, v6}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureBanner(Ljava/util/List;)V

    .line 702
    invoke-direct {p0, v6}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureCryptoAccountHeader(Ljava/util/List;)V

    .line 703
    invoke-direct {p0, v6}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureCryptoAccount(Ljava/util/List;)Ljava/util/List;

    .line 704
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->isAllNetworksSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isAnyWalletCreated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 707
    :cond_0
    invoke-direct {p0, v6}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureTokensHeader(Ljava/util/List;)V

    .line 708
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    move-object v0, p0

    move-object v1, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureTokens(Ljava/util/List;Lcom/iMe/storage/domain/model/wallet/token/TokenType;Ljava/util/List;ZLcom/iMe/storage/data/network/model/error/IErrorStatus;)Ljava/util/List;

    :cond_1
    return-object v6
.end method

.method static synthetic configureUiItems$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Ljava/util/List;ZLcom/iMe/storage/data/network/model/error/IErrorStatus;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 696
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

    .line 695
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureUiItems(Ljava/util/List;ZLcom/iMe/storage/data/network/model/error/IErrorStatus;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final createMutableListMenuItem(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/ItemOptionsModel;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 327
    new-instance p1, Lcom/iMe/model/wallet/ItemOptionsModel;

    .line 328
    sget v0, Lcom/iMe/common/IdFabric$Menu;->WALLET_BANNER_DISABLE:I

    .line 329
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_disable:I

    .line 330
    sget v2, Lorg/telegram/messenger/R$string;->wallet_details_menu_hide_banner:I

    .line 327
    invoke-direct {p1, v0, v1, v2}, Lcom/iMe/model/wallet/ItemOptionsModel;-><init>(III)V

    .line 326
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 334
    :cond_0
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenDetailed:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->isCoin()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->isAllNetworksSelected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 338
    new-instance v1, Lcom/iMe/model/wallet/ItemOptionsModel;

    .line 339
    sget v2, Lcom/iMe/common/IdFabric$Menu;->WALLET_TOKEN_HIDE:I

    .line 340
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_archive_hide:I

    .line 341
    sget v4, Lorg/telegram/messenger/R$string;->wallet_token_details_menu_hide_token:I

    .line 338
    invoke-direct {v1, v2, v3, v4}, Lcom/iMe/model/wallet/ItemOptionsModel;-><init>(III)V

    .line 337
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isQuotationsVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    new-instance v1, Lcom/iMe/model/wallet/ItemOptionsModel;

    .line 348
    sget v2, Lcom/iMe/common/IdFabric$Menu;->WALLET_TOKEN_HIDE_RATES:I

    .line 349
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_noise_off:I

    .line 350
    sget v4, Lorg/telegram/messenger/R$string;->wallet_token_details_menu_hide_rates:I

    .line 347
    invoke-direct {v1, v2, v3, v4}, Lcom/iMe/model/wallet/ItemOptionsModel;-><init>(III)V

    .line 346
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 355
    :cond_2
    new-instance v1, Lcom/iMe/model/wallet/ItemOptionsModel;

    .line 356
    sget v2, Lcom/iMe/common/IdFabric$Menu;->WALLET_TOKEN_SHOW_RATES:I

    .line 357
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_noise_on:I

    .line 358
    sget v4, Lorg/telegram/messenger/R$string;->wallet_token_details_menu_show_rates:I

    .line 355
    invoke-direct {v1, v2, v3, v4}, Lcom/iMe/model/wallet/ItemOptionsModel;-><init>(III)V

    .line 354
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    :goto_0
    new-instance v1, Lcom/iMe/model/wallet/ItemOptionsModel;

    .line 365
    sget v2, Lcom/iMe/common/IdFabric$Menu;->WALLET_TOKEN_SEND:I

    .line 366
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_send:I

    .line 367
    sget v4, Lorg/telegram/messenger/R$string;->wallet_token_details_details_action_send:I

    .line 364
    invoke-direct {v1, v2, v3, v4}, Lcom/iMe/model/wallet/ItemOptionsModel;-><init>(III)V

    .line 363
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->isBuyAvailable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 372
    new-instance p1, Lcom/iMe/model/wallet/ItemOptionsModel;

    .line 373
    sget v1, Lcom/iMe/common/IdFabric$Menu;->WALLET_TOKEN_SWAP:I

    .line 374
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_exchange_27:I

    .line 375
    sget v3, Lorg/telegram/messenger/R$string;->wallet_token_details_transactions_swap:I

    .line 372
    invoke-direct {p1, v1, v2, v3}, Lcom/iMe/model/wallet/ItemOptionsModel;-><init>(III)V

    .line 371
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method private final getAvailableNetworkItems(Lcom/iMe/model/wallet/home/NetworkChoosePurpose;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/home/NetworkChoosePurpose;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            ">;"
        }
    .end annotation

    .line 772
    instance-of v0, p1, Lcom/iMe/model/wallet/home/NetworkChoosePurpose$Common;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/iMe/model/wallet/crypto/NetworkItem$All;

    const/4 v0, 0x0

    .line 773
    sget-object v1, Lcom/iMe/model/wallet/crypto/NetworkItem$All;->INSTANCE:Lcom/iMe/model/wallet/crypto/NetworkItem$All;

    aput-object v1, p1, v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getEnabledNetworks()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 776
    :cond_0
    instance-of v0, p1, Lcom/iMe/model/wallet/home/NetworkChoosePurpose$Receive;

    if-eqz v0, :cond_1

    .line 777
    sget-object p1, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {p1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getEnabledCreatedNetworks()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 780
    :cond_1
    instance-of p1, p1, Lcom/iMe/model/wallet/home/NetworkChoosePurpose$NewWallet;

    if-eqz p1, :cond_2

    .line 781
    sget-object p1, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {p1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getEnabledNetworks()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    return-object v0
.end method

.method private final getCurrentNetworkId()Ljava/lang/String;
    .locals 1

    .line 92
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

    const/4 v0, 0x0

    .line 730
    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getAvailableWalletCreationTypes(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/util/List;

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

    .line 732
    new-instance v10, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 733
    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType;->getIconResId()I

    move-result v4

    .line 734
    iget-object v3, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v2, v3}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType;->getActionText(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 735
    new-instance v7, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getHorizontalActionButtonItems$1$1$1;

    invoke-direct {v7, p0, v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getHorizontalActionButtonItems$1$1$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, v10

    .line 732
    invoke-direct/range {v3 .. v9}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1621
    invoke-interface {v1, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private final getInitialNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem;
    .locals 1

    .line 786
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->isAllNetworksSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iMe/model/wallet/crypto/NetworkItem$All;->INSTANCE:Lcom/iMe/model/wallet/crypto/NetworkItem$All;

    goto :goto_0

    .line 787
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final getNftItemsObservable()Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;>;>;"
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->nftAvatarInteractor:Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftInteractor;

    .line 488
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->isAllNetworksSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentNetworkId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 487
    invoke-static/range {v0 .. v5}, Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftInteractor;->getOwnNftItems$default(Lcom/iMe/storage/domain/interactor/crypto/nft/avatar/NftInteractor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "nftAvatarInteractor\n    \u2026  .distinctUntilChanged()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getNftItemsObservable$$inlined$mapSuccess$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getNftItemsObservable$$inlined$mapSuccess$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getSortedTokens()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->tokens:Ljava/util/List;

    .line 800
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 809
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isTokensPositiveBalances()Z

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_6

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 450
    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->isCoin()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v7

    cmpl-double v7, v7, v3

    if-lez v7, :cond_3

    goto :goto_2

    :cond_3
    move v7, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v7, v5

    :goto_3
    if-eqz v7, :cond_2

    .line 857
    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v1, v0

    .line 453
    :cond_6
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->isAllNetworksSelected()Z

    move-result v0

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v0, :cond_a

    .line 454
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getAllNetworksTokensOrderType()Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v0

    sget-object v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v5, :cond_9

    if-eq v0, v7, :cond_8

    if-ne v0, v6, :cond_7

    goto/16 :goto_a

    .line 459
    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 1054
    :cond_8
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getSortedTokens$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getSortedTokens$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_a

    .line 1045
    :cond_9
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getSortedTokens$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getSortedTokens$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_a

    .line 766
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 463
    iget-object v10, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v10}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getOnlyPositiveTokens()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v9

    cmpl-double v9, v9, v3

    if-lez v9, :cond_c

    goto :goto_5

    :cond_c
    move v9, v2

    goto :goto_6

    :cond_d
    :goto_5
    move v9, v5

    :goto_6
    if-eqz v9, :cond_b

    .line 857
    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_e
    const/16 v1, 0xa

    .line 1194
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 1195
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1222
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1223
    move-object v3, v1

    check-cast v3, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 464
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 1223
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 467
    :cond_f
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->tokensDisplaySettings:Ljava/util/List;

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;

    .line 468
    invoke-virtual {v4}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 857
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1603
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1611
    check-cast v3, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;

    .line 469
    invoke-virtual {v3}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;->getTokenAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v3, :cond_12

    .line 1611
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 471
    :cond_13
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getTokensOrderType()Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v1

    sget-object v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v5, :cond_16

    if-eq v1, v7, :cond_15

    if-ne v1, v6, :cond_14

    move-object v1, v0

    goto :goto_a

    .line 480
    :cond_14
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 477
    :cond_15
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getSortedTokens$$inlined$compareByDescending$2;

    invoke-direct {v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getSortedTokens$$inlined$compareByDescending$2;-><init>()V

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getSortedTokens$$inlined$thenByDescending$1;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getSortedTokens$$inlined$thenByDescending$1;-><init>(Ljava/util/Comparator;)V

    .line 476
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    goto :goto_a

    .line 473
    :cond_16
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getSortedTokens$$inlined$compareByDescending$1;

    invoke-direct {v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getSortedTokens$$inlined$compareByDescending$1;-><init>()V

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getSortedTokens$$inlined$thenBy$1;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getSortedTokens$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;)V

    .line 472
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    :goto_a
    return-object v1
.end method

.method private final getWalletBalanceItemsObservable(Z)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;>;>;"
        }
    .end annotation

    .line 420
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->isAllNetworksSelected()Z

    move-result v0

    const-string/jumbo v1, "walletInteractor\n       \u2026  .distinctUntilChanged()"

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 422
    invoke-static {v0, p1, v3, v2, v3}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getWalletMultiChainBalance$default(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;ZLjava/util/List;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 423
    invoke-virtual {p1}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getWalletBalanceItemsObservable$$inlined$mapSuccess$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getWalletBalanceItemsObservable$$inlined$mapSuccess$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 431
    invoke-static {v0, p1, v3, v2, v3}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getWalletBalance$default(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;ZLjava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 432
    invoke-virtual {p1}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getWalletBalanceItemsObservable$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getWalletBalanceItemsObservable$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final hideBanners()V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setBannersVisible(Z)V

    .line 411
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    sget-object v1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$InterfaceSettingsChanged;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$InterfaceSettingsChanged;

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    return-void
.end method

.method private final hideToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 4

    .line 383
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 384
    new-instance v1, Lcom/iMe/storage/domain/model/wallet/token/Token;

    .line 385
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object p1

    .line 384
    invoke-direct {v1, v2, p1}, Lcom/iMe/storage/domain/model/wallet/token/Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 383
    invoke-virtual {v0, v1, p1}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->setTokenVisibility(Lcom/iMe/storage/domain/model/wallet/token/Token;Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 390
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string/jumbo v0, "walletInteractor.setToke\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$hideToken$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$hideToken$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$hideToken$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$hideToken$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v1, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 400
    invoke-static {p0, p1, v2, v0, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final initBannerSlides()Lcom/chad/library/adapter/base/entity/node/BaseNode;
    .locals 6

    .line 560
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

    .line 560
    new-instance v5, Lcom/iMe/model/wallet/home/SlideItem;

    invoke-direct {v5, v4}, Lcom/iMe/model/wallet/home/SlideItem;-><init>(Lcom/iMe/model/wallet/home/BannerSlide;)V

    .line 11671
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 560
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 559
    new-instance v1, Lcom/iMe/model/wallet/home/BannerItem;

    invoke-direct {v1, v0}, Lcom/iMe/model/wallet/home/BannerItem;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private final isAllNetworksSelected()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isAllNetworksSelected()Z

    move-result v0

    return v0
.end method

.method private final isBuyAvailable(Ljava/lang/String;)Z
    .locals 1

    .line 415
    sget-object v0, Lcom/iMe/manager/common/FeatureAvailableManager$Token;->INSTANCE:Lcom/iMe/manager/common/FeatureAvailableManager$Token;

    invoke-virtual {v0, p1}, Lcom/iMe/manager/common/FeatureAvailableManager$Token;->isPurchaseAvailable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private final isWalletDataMismatching()Z
    .locals 5

    .line 501
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getLinkedWalletsAddresses()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 502
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getLastLoggedInAddress(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 504
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getLastLoggedInAddress(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method private final listenEvents()V
    .locals 5

    .line 510
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

    const-string/jumbo v1, "publisher\n            .o\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    sget-object v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$1;->INSTANCE:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$1;

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->groupBy(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 513
    sget-object v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$2;->INSTANCE:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$2;

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 509
    invoke-static {v0}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "merge(\n                r\u2026          }\n            )"

    .line 513
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

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

    .line 555
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final listenEvents$lambda$24(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method private static final listenEvents$lambda$25(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Observable;

    return-object p0
.end method

.method public static synthetic loadScreenInfo$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 105
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->loadScreenInfo(ZZ)V

    return-void
.end method

.method private final loadTokens(ZZ)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    sget-object v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getNftItemsObservable()Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 273
    :cond_1
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getWalletBalanceItemsObservable(Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 277
    :goto_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 278
    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->getLinkedWalletsAddresses()Lio/reactivex/Observable;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 280
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$loadTokens$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$loadTokens$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;ZLio/reactivex/Observable;)V

    new-instance p1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda4;

    invoke-direct {p1, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 304
    iget-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 305
    new-instance p2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    const-string/jumbo p2, "private fun loadTokens(\n\u2026creenSubscriptions)\n    }"

    .line 280
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$loadTokens$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$loadTokens$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$loadTokens$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$loadTokens$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance p2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    iget-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->mainScreenSubscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method static synthetic loadTokens$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 268
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->loadTokens(ZZ)V

    return-void
.end method

.method private static final loadTokens$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final loadTokens$lambda$4(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    return-void
.end method

.method private final onReceiveClick()V
    .locals 2

    .line 747
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->isNft()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "POLYGON"

    .line 748
    invoke-static {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->showQrReceiveDialog(Lcom/iMe/storage/domain/model/crypto/Network;)V

    goto :goto_0

    .line 751
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->isAllNetworksSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    sget-object v0, Lcom/iMe/model/wallet/home/NetworkChoosePurpose$Receive;->INSTANCE:Lcom/iMe/model/wallet/home/NetworkChoosePurpose$Receive;

    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->startChooseNetworkDialog(Lcom/iMe/model/wallet/home/NetworkChoosePurpose;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 756
    invoke-static {p0, v1, v0, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->showQrReceiveDialog$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Lcom/iMe/storage/domain/model/crypto/Network;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final resetMainRequests()V
    .locals 1

    .line 497
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

    .line 713
    new-instance v1, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 714
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_send:I

    .line 715
    iget-object v3, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_token_details_details_action_send:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 716
    iget-object v4, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->isCrypto()Z

    move-result v4

    .line 712
    new-instance v5, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$resolveActions$1;

    invoke-direct {v5, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$resolveActions$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    .line 713
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 718
    new-instance v1, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 719
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_ic_ask_transfer:I

    .line 720
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_binance_pay_action_receive:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 712
    new-instance v7, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$resolveActions$2;

    invoke-direct {v7, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$resolveActions$2;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    const/4 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, v1

    .line 718
    invoke-direct/range {v3 .. v9}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 722
    new-instance v1, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 723
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_transactions_28:I

    .line 724
    iget-object v3, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_binance_pay_action_history:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 725
    iget-object v4, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenType;->isCrypto()Z

    move-result v4

    .line 712
    new-instance v5, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$resolveActions$3;

    invoke-direct {v5, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$resolveActions$3;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)V

    .line 722
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 712
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final setTokensType(Lcom/iMe/storage/domain/model/wallet/token/TokenType;)V
    .locals 6

    .line 585
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    if-eq v0, p1, :cond_0

    .line 586
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenType:Lcom/iMe/storage/domain/model/wallet/token/TokenType;

    .line 587
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->sortedTokens:Ljava/util/List;

    .line 588
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

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 589
    invoke-static {p0, p1, v0, v1, v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->loadScreenInfo$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;ZZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final showQrReceiveDialog(Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 1

    .line 762
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Lcom/iMe/storage/domain/model/crypto/Network;)V

    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->runWithCryptoInformationCheck(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method static synthetic showQrReceiveDialog$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Lcom/iMe/storage/domain/model/crypto/Network;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 761
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->showQrReceiveDialog(Lcom/iMe/storage/domain/model/crypto/Network;)V

    return-void
.end method

.method private static final showQrReceiveDialog$lambda$37(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 763
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 764
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getLinkedWalletsAddresses()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    .line 763
    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->showQrReceiveDialog(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;)V

    return-void
.end method

.method public static synthetic startChooseNetworkDialog$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Lcom/iMe/model/wallet/home/NetworkChoosePurpose;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 118
    sget-object p1, Lcom/iMe/model/wallet/home/NetworkChoosePurpose$Common;->INSTANCE:Lcom/iMe/model/wallet/home/NetworkChoosePurpose$Common;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->startChooseNetworkDialog(Lcom/iMe/model/wallet/home/NetworkChoosePurpose;)V

    return-void
.end method

.method private final toggleRates()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 405
    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isQuotationsVisible()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 404
    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setQuotationsVisible(Z)V

    .line 406
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    sget-object v1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$InterfaceSettingsChanged;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$InterfaceSettingsChanged;

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

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

    .line 263
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->clearSubscriptions()V

    .line 264
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->onDetachViewState()V

    .line 265
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->resetMainRequests()V

    return-void
.end method

.method public getAvailableWalletCreationTypes(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/create/WalletCreationType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getAvailableWalletCreationTypes(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getCurrentNetwork()Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    return-object v0
.end method

.method public getLinkedWalletsAddresses()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getLinkedWalletsAddresses()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final loadScreenInfo(ZZ)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->resetMainRequests()V

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->loadTokens(ZZ)V

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

    .line 256
    invoke-super {p0}, Lmoxy/MvpPresenter;->onFirstViewAttach()V

    .line 257
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

    .line 258
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string/jumbo v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->attachViewState(Lcom/iMe/manager/wallet/create/WalletCreateManagerView;)V

    .line 259
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->listenEvents()V

    return-void
.end method

.method public final onItemLongClick(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 1

    .line 220
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->createMutableListMenuItem(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->showMenuItems(Ljava/util/List;)V

    return-void
.end method

.method public final onMenuItemClick(I)V
    .locals 10

    .line 225
    sget v0, Lcom/iMe/common/IdFabric$Menu;->WALLET_BANNER_DISABLE:I

    if-ne p1, v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->hideBanners()V

    goto :goto_1

    .line 229
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$Menu;->WALLET_TOKEN_HIDE:I

    if-ne p1, v0, :cond_2

    .line 230
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenDetailed:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->hideToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto :goto_1

    .line 233
    :cond_2
    sget v0, Lcom/iMe/common/IdFabric$Menu;->WALLET_TOKEN_HIDE_RATES:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 234
    :cond_3
    sget v0, Lcom/iMe/common/IdFabric$Menu;->WALLET_TOKEN_SHOW_RATES:I

    if-ne p1, v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 235
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->toggleRates()V

    goto :goto_1

    .line 238
    :cond_5
    sget v0, Lcom/iMe/common/IdFabric$Menu;->WALLET_TOKEN_SEND:I

    if-ne p1, v0, :cond_6

    .line 239
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenDetailed:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz p1, :cond_8

    .line 240
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 241
    new-instance v9, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    .line 242
    invoke-static {p1}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 243
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v1, v9

    .line 241
    invoke-direct/range {v1 .. v8}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;-><init>(Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 240
    invoke-interface {v0, v9}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->openSendScreen(Lcom/iMe/model/wallet/transfer/TransferScreenArgs;)V

    goto :goto_1

    .line 249
    :cond_6
    sget v0, Lcom/iMe/common/IdFabric$Menu;->WALLET_TOKEN_SWAP:I

    if-ne p1, v0, :cond_8

    .line 250
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedTokenDetailed:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->openSwapScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final onNetworkSelected(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;Lcom/iMe/model/wallet/home/NetworkChoosePurpose;)V
    .locals 6

    const-string/jumbo v0, "purpose"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    instance-of v0, p2, Lcom/iMe/model/wallet/home/NetworkChoosePurpose$Common;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    sget-object p1, Lcom/iMe/model/wallet/crypto/NetworkItem$All;->INSTANCE:Lcom/iMe/model/wallet/crypto/NetworkItem$All;

    .line 131
    :goto_0
    instance-of p2, p1, Lcom/iMe/model/wallet/crypto/NetworkItem$All;

    if-eqz p2, :cond_1

    .line 132
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->isAllNetworksSelected()Z

    move-result p2

    if-nez p2, :cond_3

    .line 133
    iget-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setAllNetworksSelected(Z)V

    .line 134
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureUiItems$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Ljava/util/List;ZLcom/iMe/storage/data/network/model/error/IErrorStatus;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->renderNodes(Ljava/util/List;)V

    .line 135
    iget-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;

    invoke-virtual {p2, v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    goto :goto_1

    .line 139
    :cond_1
    instance-of p2, p1, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    if-eqz p2, :cond_3

    .line 140
    move-object p2, p1

    check-cast p2, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-static {p2}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p2

    .line 141
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentNetworkId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->isAllNetworksSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setAllNetworksSelected(Z)V

    .line 143
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0, p2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V

    .line 144
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureUiItems$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Ljava/util/List;ZLcom/iMe/storage/data/network/model/error/IErrorStatus;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->renderNodes(Ljava/util/List;)V

    .line 145
    iget-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;

    invoke-virtual {p2, v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    .line 129
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem;

    goto :goto_3

    .line 152
    :cond_4
    instance-of v0, p2, Lcom/iMe/model/wallet/home/NetworkChoosePurpose$Receive;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    .line 153
    invoke-static {p1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->showQrReceiveDialog(Lcom/iMe/storage/domain/model/crypto/Network;)V

    goto :goto_3

    :cond_6
    :goto_2
    return-void

    .line 156
    :cond_7
    instance-of v0, p2, Lcom/iMe/model/wallet/home/NetworkChoosePurpose$NewWallet;

    if-eqz v0, :cond_9

    .line 157
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    if-eqz p1, :cond_9

    invoke-static {p1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V

    .line 158
    check-cast p2, Lcom/iMe/model/wallet/home/NetworkChoosePurpose$NewWallet;

    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/NetworkChoosePurpose$NewWallet;->getWalletCreationType()Lcom/iMe/model/wallet/crypto/create/WalletCreationType;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, v0}, Lcom/iMe/manager/wallet/create/WalletCreateManagerDelegate$-CC;->startWalletCreationFlow$default(Lcom/iMe/manager/wallet/create/WalletCreateManagerDelegate;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;Lcom/iMe/storage/domain/model/crypto/BlockchainType;ILjava/lang/Object;)V

    nop

    :cond_9
    :goto_3
    return-void
.end method

.method public final onSelectTokensSortingClicked()V
    .locals 4

    .line 168
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 169
    new-instance v1, Lcom/iMe/model/wallet/home/TokenSortingData;

    .line 170
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->isAllNetworksSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getAllNetworksTokensOrderType()Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v2

    goto :goto_0

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getTokensOrderType()Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v2

    .line 172
    :goto_0
    iget-object v3, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v3}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isTokensPositiveBalances()Z

    move-result v3

    .line 169
    invoke-direct {v1, v2, v3}, Lcom/iMe/model/wallet/home/TokenSortingData;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;Z)V

    .line 174
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->isAllNetworksSelected()Z

    move-result v2

    .line 168
    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->showSelectTokensOrderTypeDialog(Lcom/iMe/model/wallet/home/TokenSortingData;Z)V

    return-void
.end method

.method public final openTokenSettingsScreen()V
    .locals 2

    .line 207
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentNetworkId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->openTokenSettingsScreen(Ljava/lang/String;)V

    return-void
.end method

.method public final openWalletDetails(Lcom/iMe/model/wallet/home/AccountItem$Token;)V
    .locals 4

    const-string/jumbo v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    .line 214
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 215
    new-instance v2, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getLinkedWalletsAddresses()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, p1, v0}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;-><init>(Lcom/iMe/model/wallet/home/AccountItem$Token;Ljava/lang/String;)V

    .line 214
    invoke-interface {v1, v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->openWalletDetails(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

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

.method public setLinkedWalletsAddresses(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->setLinkedWalletsAddresses(Ljava/util/Map;)V

    return-void
.end method

.method public final setTokensSorting(Lcom/iMe/model/wallet/home/TokenSortingData;)V
    .locals 6

    const-string/jumbo v0, "tokenSortingData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 180
    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isAllNetworksSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/TokenSortingData;->getTokensOrderType()Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setAllNetworksTokensOrderType(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/TokenSortingData;->getTokensOrderType()Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setTokensOrderType(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;)V

    .line 185
    :goto_0
    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/TokenSortingData;->isPositiveBalances()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setTokensPositiveBalances(Z)V

    .line 188
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->tokensDisplaySettings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->isAllNetworksSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 192
    invoke-static {p0, v1, v1, p1, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->loadTokens$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;ZZILjava/lang/Object;)V

    goto :goto_2

    .line 189
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getSortedTokens()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->sortedTokens:Ljava/util/List;

    .line 190
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->sortedTokens:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->configureUiItems$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Ljava/util/List;ZLcom/iMe/storage/data/network/model/error/IErrorStatus;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->renderNodes(Ljava/util/List;)V

    :goto_2
    return-void
.end method

.method public final showChangeNetworkHintIfNeeded()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$CryptoHomeScreen;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$CryptoHomeScreen;

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;->shouldShowHint(Lcom/iMe/storage/domain/model/wallet/Hint;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 198
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    .line 197
    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isWalletCreated(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->showChangeNetworkHint()V

    .line 202
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;->onHintShowed(Lcom/iMe/storage/domain/model/wallet/Hint;)V

    :cond_0
    return-void
.end method

.method public final showWalletAddressScan()V
    .locals 3

    .line 164
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getLinkedWalletsAddresses()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->showWalletAddressScan(Ljava/lang/String;)V

    return-void
.end method

.method public final startChooseNetworkDialog(Lcom/iMe/model/wallet/home/NetworkChoosePurpose;)V
    .locals 3

    const-string/jumbo v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 120
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem;

    .line 121
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getAvailableNetworkItems(Lcom/iMe/model/wallet/home/NetworkChoosePurpose;)Ljava/util/List;

    move-result-object v2

    .line 119
    invoke-interface {v0, v1, v2, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->showChooseNetworkDialog(Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;Lcom/iMe/model/wallet/home/NetworkChoosePurpose;)V

    return-void
.end method

.method public startWalletCreationFlow(Lcom/iMe/model/wallet/crypto/create/WalletCreationType;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 1

    const-string/jumbo v0, "walletCreationType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->walletCreateManager:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->startWalletCreationFlow(Lcom/iMe/model/wallet/crypto/create/WalletCreationType;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method

.method public final switchHiddenBalance()V
    .locals 7

    .line 114
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isBalanceHidden()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setBalanceHidden(Z)V

    .line 115
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->sortedTokens:Ljava/util/List;

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
