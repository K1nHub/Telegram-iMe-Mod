.class public final Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "WalletSwapProtocolsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSwapProtocolsPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSwapProtocolsPresenter.kt\ncom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,76:1\n1#2:77\n1549#3:78\n1620#3,3:79\n1549#3:84\n1620#3,3:85\n1549#3:90\n1620#3,3:91\n37#4,2:82\n37#4,2:88\n37#4,2:94\n*S KotlinDebug\n*F\n+ 1 WalletSwapProtocolsPresenter.kt\ncom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter\n*L\n58#1:78\n58#1:79,3\n59#1:84\n59#1:85,3\n60#1:90\n60#1:91,3\n58#1:82,2\n59#1:88,2\n60#1:94,2\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final binancePayManager:Lcom/smedialink/storage/domain/manager/binancepay/BinancePayManager;

.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/manager/binancepay/BinancePayManager;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binancePayManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 21
    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 22
    iput-object p3, p0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter;->binancePayManager:Lcom/smedialink/storage/domain/manager/binancepay/BinancePayManager;

    .line 23
    iput-object p4, p0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    return-void
.end method

.method private final loadExchanges()V
    .locals 8

    .line 58
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;->getSupportedExchanges()Ljava/util/List;

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
    check-cast v3, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;

    .line 58
    new-instance v5, Lcom/smedialink/model/wallet/swap/DexProtocolItem;

    invoke-direct {v5, v3, v4}, Lcom/smedialink/model/wallet/swap/DexProtocolItem;-><init>(Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;Z)V

    .line 1621
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v3, v0, [Lcom/smedialink/model/wallet/swap/DexProtocolItem;

    .line 38
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 58
    check-cast v1, [Lcom/smedialink/model/wallet/swap/DexProtocolItem;

    .line 59
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;->getSupportedCrossChainExchanges()Ljava/util/List;

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
    check-cast v6, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Symbiosis;

    .line 59
    new-instance v7, Lcom/smedialink/model/wallet/swap/DexProtocolItem;

    invoke-direct {v7, v6, v4}, Lcom/smedialink/model/wallet/swap/DexProtocolItem;-><init>(Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;Z)V

    .line 1621
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-array v3, v0, [Lcom/smedialink/model/wallet/swap/DexProtocolItem;

    .line 38
    invoke-interface {v5, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 59
    check-cast v3, [Lcom/smedialink/model/wallet/swap/DexProtocolItem;

    .line 60
    sget-object v5, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Companion;

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Companion;->getSupportedExchanges()Ljava/util/List;

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
    check-cast v5, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;

    .line 60
    new-instance v7, Lcom/smedialink/model/wallet/swap/CexProtocolItem;

    invoke-direct {v7, v5, v4}, Lcom/smedialink/model/wallet/swap/CexProtocolItem;-><init>(Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;Z)V

    .line 1621
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-array v0, v0, [Lcom/smedialink/model/wallet/swap/CexProtocolItem;

    .line 38
    invoke-interface {v6, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 60
    check-cast v0, [Lcom/smedialink/model/wallet/swap/CexProtocolItem;

    .line 62
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsView;

    .line 64
    new-instance v4, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    new-instance v5, Lcom/smedialink/model/wallet/home/HeaderItem;

    iget-object v6, p0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v7, Lorg/telegram/messenger/R$string;->wallet_swap_protocols_header_title:I

    invoke-interface {v6, v7}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/smedialink/model/wallet/home/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    .line 66
    new-instance v1, Lcom/smedialink/model/wallet/home/HeaderItem;

    iget-object v5, p0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->wallet_swap_protocols_cross_chain_header_title:I

    invoke-interface {v5, v6}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/smedialink/model/wallet/home/HeaderItem;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v4, v1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    .line 68
    new-instance v1, Lcom/smedialink/model/wallet/home/HeaderItem;

    iget-object v3, p0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_swap_centralized_exchanges_header_title:I

    invoke-interface {v3, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/smedialink/model/wallet/home/HeaderItem;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v4, v1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result v0

    new-array v0, v0, [Lcom/smedialink/model/common/NoChildNode;

    invoke-virtual {v4, v0}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 62
    invoke-interface {v2, v0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsView;->showExchangesProviders(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter;->loadExchanges()V

    return-void
.end method

.method public final startBinanceExchangeFlow()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter;->binancePayManager:Lcom/smedialink/storage/domain/manager/binancepay/BinancePayManager;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/manager/binancepay/BinancePayManager;->isAuthorized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    sget-object v1, Lcom/smedialink/common/AppRxEvents$BinanceOpenAuthScreen;->INSTANCE:Lcom/smedialink/common/AppRxEvents$BinanceOpenAuthScreen;

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

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

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsView;

    invoke-interface {v0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsView;->showRequiredVerifyDialog()V

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsView;

    invoke-interface {v0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsView;->openBinanceConvertScreen()V

    :goto_0
    return-void
.end method

.method public final startSwapScreenFlow(Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V
    .locals 5

    const-string v0, "swapProtocolInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->getSupportedNetworks()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    iget-object v4, p0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v4}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v4

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    move-object v1, v2

    :cond_3
    check-cast v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    if-nez v1, :cond_4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 41
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsView;

    invoke-interface {p2, p1, v1}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsView;->openSwapScreen(Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method
