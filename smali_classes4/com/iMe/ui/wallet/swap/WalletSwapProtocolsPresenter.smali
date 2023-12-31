.class public final Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletSwapProtocolsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSwapProtocolsPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSwapProtocolsPresenter.kt\ncom/iMe/ui/wallet/swap/WalletSwapProtocolsPresenter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,88:1\n1#2:89\n1549#3:90\n1620#3,3:91\n1549#3:96\n1620#3,3:97\n1549#3:102\n1620#3,3:103\n37#4,2:94\n37#4,2:100\n37#4,2:106\n*S KotlinDebug\n*F\n+ 1 WalletSwapProtocolsPresenter.kt\ncom/iMe/ui/wallet/swap/WalletSwapProtocolsPresenter\n*L\n59#1:90\n59#1:91,3\n61#1:96\n61#1:97,3\n67#1:102\n67#1:103,3\n60#1:94,2\n66#1:100,2\n72#1:106,2\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final binancePayManager:Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;)V
    .locals 1

    const-string/jumbo v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binancePayManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rxEventBus"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 21
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 22
    iput-object p3, p0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsPresenter;->binancePayManager:Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    .line 23
    iput-object p4, p0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    return-void
.end method

.method private final loadExchanges()V
    .locals 8

    .line 59
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;->getSupportedExchanges()Ljava/util/List;

    move-result-object v0

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

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Oneinch;

    .line 59
    new-instance v5, Lcom/iMe/model/wallet/swap/DexProtocolItem;

    invoke-direct {v5, v3, v4}, Lcom/iMe/model/wallet/swap/DexProtocolItem;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;Z)V

    .line 1621
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v3, v0, [Lcom/iMe/model/wallet/swap/DexProtocolItem;

    .line 38
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 60
    check-cast v1, [Lcom/iMe/model/wallet/swap/DexProtocolItem;

    .line 61
    sget-object v3, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;->getSupportedCrossChainExchanges()Ljava/util/List;

    move-result-object v3

    .line 1549
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1621
    check-cast v6, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Symbiosis;

    .line 62
    new-instance v7, Lcom/iMe/model/wallet/swap/DexProtocolItem;

    invoke-direct {v7, v6, v4}, Lcom/iMe/model/wallet/swap/DexProtocolItem;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;Z)V

    .line 1621
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-array v3, v0, [Lcom/iMe/model/wallet/swap/DexProtocolItem;

    .line 38
    invoke-interface {v5, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 66
    check-cast v3, [Lcom/iMe/model/wallet/swap/DexProtocolItem;

    .line 67
    sget-object v5, Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Companion;

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Companion;->getSupportedExchanges()Ljava/util/List;

    move-result-object v5

    .line 1549
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1621
    check-cast v5, Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo;

    .line 68
    new-instance v7, Lcom/iMe/model/wallet/swap/CexProtocolItem;

    invoke-direct {v7, v5, v4}, Lcom/iMe/model/wallet/swap/CexProtocolItem;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo;Z)V

    .line 1621
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-array v0, v0, [Lcom/iMe/model/wallet/swap/CexProtocolItem;

    .line 38
    invoke-interface {v6, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 72
    check-cast v0, [Lcom/iMe/model/wallet/swap/CexProtocolItem;

    .line 74
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;

    .line 76
    new-instance v4, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    new-instance v5, Lcom/iMe/model/wallet/home/HeaderItem;

    iget-object v6, p0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v7, Lorg/telegram/messenger/R$string;->wallet_swap_protocols_header_title:I

    invoke-interface {v6, v7}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/iMe/model/wallet/home/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    .line 78
    new-instance v1, Lcom/iMe/model/wallet/home/HeaderItem;

    iget-object v5, p0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->wallet_swap_protocols_cross_chain_header_title:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/iMe/model/wallet/home/HeaderItem;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v4, v1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    .line 80
    new-instance v1, Lcom/iMe/model/wallet/home/HeaderItem;

    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_swap_centralized_exchanges_header_title:I

    invoke-interface {v3, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/iMe/model/wallet/home/HeaderItem;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v4, v1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result v0

    new-array v0, v0, [Lcom/iMe/model/common/NoChildNode;

    invoke-virtual {v4, v0}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-interface {v2, v0}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;->showExchangesProviders(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsPresenter;->loadExchanges()V

    return-void
.end method

.method public final startBinanceExchangeFlow()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsPresenter;->binancePayManager:Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->isAuthorized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    sget-object v1, Lcom/iMe/common/AppRxEvents$BinanceOpenAuthScreen;->INSTANCE:Lcom/iMe/common/AppRxEvents$BinanceOpenAuthScreen;

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

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

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;->showRequiredVerifyDialog()V

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;->openBinanceConvertScreen()V

    :goto_0
    return-void
.end method

.method public final startSwapScreenFlow(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 5

    const-string/jumbo v0, "swapProtocolInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;->getSupportedNetworksIds()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v4}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetworkId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    :cond_2
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 41
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;

    invoke-interface {p2, p1, v1}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;->openSwapScreen(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;Ljava/lang/String;)V

    return-void
.end method
