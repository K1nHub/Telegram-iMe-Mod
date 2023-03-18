.class public final Lcom/smedialink/ui/wallet/common/WalletRootPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "WalletRootPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/common/WalletRootView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletRootPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletRootPresenter.kt\ncom/smedialink/ui/wallet/common/WalletRootPresenter\n+ 2 RxEventBus.kt\ncom/smedialink/storage/domain/utils/rx/RxEventBus\n+ 3 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n*L\n1#1,86:1\n16#2,3:87\n39#3,8:90\n*S KotlinDebug\n*F\n+ 1 WalletRootPresenter.kt\ncom/smedialink/ui/wallet/common/WalletRootPresenter\n*L\n53#1:87,3\n54#1:90,8\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

.field private selectedTabId:I


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    .line 19
    iput-object p2, p0, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 20
    iput-object p3, p0, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 24
    sget p1, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_home:I

    iput p1, p0, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->selectedTabId:I

    return-void
.end method

.method public static final synthetic access$setupNavigation(Lcom/smedialink/ui/wallet/common/WalletRootPresenter;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->setupNavigation()V

    return-void
.end method

.method public static final synthetic access$updateWalletConnectItemVisibility(Lcom/smedialink/ui/wallet/common/WalletRootPresenter;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->updateWalletConnectItemVisibility()V

    return-void
.end method

.method private final isDefaultTabSelected()Z
    .locals 2

    .line 49
    iget v0, p0, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->selectedTabId:I

    sget v1, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_home:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final listenEvents()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

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
    new-instance v1, Lcom/smedialink/ui/wallet/common/WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/common/WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/common/WalletRootPresenter;)V

    new-instance v2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/smedialink/ui/wallet/common/WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/smedialink/ui/wallet/common/WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v3, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private final setupNavigation()V
    .locals 5

    .line 76
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/common/WalletRootView;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/Pair;

    .line 78
    sget v2, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_home:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 79
    sget v2, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_exchange:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v4}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->isAnyWalletCreated()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 80
    sget v2, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_settings:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 77
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    .line 76
    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/common/WalletRootView;->setupNavigationTabsEnabled(Ljava/util/HashMap;)V

    return-void
.end method

.method private final updateWalletConnectItemVisibility()V
    .locals 3

    .line 68
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/common/WalletRootView;

    .line 69
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->isDefaultTabSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    sget-object v2, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    if-ne v1, v2, :cond_0

    .line 71
    iget-object v1, p0, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 68
    :goto_0
    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/common/WalletRootView;->showWalletConnectItem(Z)V

    return-void
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->listenEvents()V

    .line 41
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->setupNavigation()V

    .line 42
    sget v0, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_home:I

    invoke-virtual {p0, v0}, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->selectTab(I)V

    return-void
.end method

.method public final selectTab(I)V
    .locals 1

    .line 29
    iput p1, p0, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->selectedTabId:I

    .line 30
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/common/WalletRootView;

    iget v0, p0, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->selectedTabId:I

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/common/WalletRootView;->onTabSelected(I)V

    .line 31
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/common/WalletRootView;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->isDefaultTabSelected()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/common/WalletRootView;->showNotificationItem(Z)V

    .line 32
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/common/WalletRootPresenter;->updateWalletConnectItemVisibility()V

    return-void
.end method
