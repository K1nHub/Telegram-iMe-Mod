.class public final Lcom/iMe/ui/wallet/common/WalletRootPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletRootPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/common/WalletRootView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletRootPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletRootPresenter.kt\ncom/iMe/ui/wallet/common/WalletRootPresenter\n+ 2 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,74:1\n16#2,3:75\n63#3,12:78\n*S KotlinDebug\n*F\n+ 1 WalletRootPresenter.kt\ncom/iMe/ui/wallet/common/WalletRootPresenter\n*L\n43#1:75,3\n44#1:78,12\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private selectedTabId:I


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/rx/RxEventBus;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/iMe/ui/wallet/common/WalletRootPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 19
    iput-object p2, p0, Lcom/iMe/ui/wallet/common/WalletRootPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 20
    iput-object p3, p0, Lcom/iMe/ui/wallet/common/WalletRootPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 24
    sget p1, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_home:I

    iput p1, p0, Lcom/iMe/ui/wallet/common/WalletRootPresenter;->selectedTabId:I

    return-void
.end method

.method public static final synthetic access$updateWalletConnectItemVisibility(Lcom/iMe/ui/wallet/common/WalletRootPresenter;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootPresenter;->updateWalletConnectItemVisibility()V

    return-void
.end method

.method private final isDefaultTabSelected()Z
    .locals 2

    .line 39
    iget v0, p0, Lcom/iMe/ui/wallet/common/WalletRootPresenter;->selectedTabId:I

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

    .line 42
    iget-object v0, p0, Lcom/iMe/ui/wallet/common/WalletRootPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

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

    const-string v1, "publisher\n            .o\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/common/WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/common/WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/common/WalletRootPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/common/WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/common/WalletRootPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private final updateWalletConnectItemVisibility()V
    .locals 3

    .line 67
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/common/WalletRootView;

    .line 68
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootPresenter;->isDefaultTabSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/iMe/ui/wallet/common/WalletRootPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    sget-object v2, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    if-ne v1, v2, :cond_0

    .line 70
    iget-object v1, p0, Lcom/iMe/ui/wallet/common/WalletRootPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 67
    :goto_0
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/common/WalletRootView;->showWalletConnectItem(Z)V

    return-void
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootPresenter;->listenEvents()V

    .line 35
    sget v0, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_home:I

    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/common/WalletRootPresenter;->selectTab(I)V

    return-void
.end method

.method public final selectTab(I)V
    .locals 1

    .line 27
    iput p1, p0, Lcom/iMe/ui/wallet/common/WalletRootPresenter;->selectedTabId:I

    .line 28
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/common/WalletRootView;

    iget v0, p0, Lcom/iMe/ui/wallet/common/WalletRootPresenter;->selectedTabId:I

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/common/WalletRootView;->onTabSelected(I)V

    .line 29
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/common/WalletRootView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootPresenter;->isDefaultTabSelected()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/common/WalletRootView;->showNotificationItem(Z)V

    .line 30
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootPresenter;->updateWalletConnectItemVisibility()V

    return-void
.end method
