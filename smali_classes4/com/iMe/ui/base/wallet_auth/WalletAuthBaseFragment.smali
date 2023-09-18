.class public abstract Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;
.super Lcom/iMe/ui/base/mvp/MvpFragment;
.source "WalletAuthBaseFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletAuthBaseFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletAuthBaseFragment.kt\ncom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n+ 4 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,73:1\n56#2,6:74\n56#2,6:80\n56#2,6:86\n56#2,6:92\n56#2,6:98\n56#2,6:104\n16#3,3:110\n63#4,12:113\n*S KotlinDebug\n*F\n+ 1 WalletAuthBaseFragment.kt\ncom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment\n*L\n20#1:74,6\n21#1:80,6\n22#1:86,6\n23#1:92,6\n24#1:98,6\n25#1:104,6\n40#1:110,3\n41#1:113,12\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager$delegate:Lkotlin/Lazy;

.field private final cryptoPreferenceHelper$delegate:Lkotlin/Lazy;

.field private final pinCodeCoordinator$delegate:Lkotlin/Lazy;

.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private final rxEventBus$delegate:Lkotlin/Lazy;

.field private final schedulersProvider$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$J5a0K3YggHCFgz1tzfcwLPQuhlE(Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->closeAllWalletFragments$lambda$1(Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 17
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;-><init>()V

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v3}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 20
    iput-object v1, p0, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->rxEventBus$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment$special$$inlined$inject$default$2;

    invoke-direct {v2, p0, v3, v3}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->resourceManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment$special$$inlined$inject$default$3;

    invoke-direct {v2, p0, v3, v3}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 22
    iput-object v1, p0, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->schedulersProvider$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment$special$$inlined$inject$default$4;

    invoke-direct {v2, p0, v3, v3}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment$special$$inlined$inject$default$4;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->cryptoAccessManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment$special$$inlined$inject$default$5;

    invoke-direct {v2, p0, v3, v3}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment$special$$inlined$inject$default$5;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 24
    iput-object v1, p0, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->cryptoPreferenceHelper$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment$special$$inlined$inject$default$6;

    invoke-direct {v1, p0, v3, v3}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment$special$$inlined$inject$default$6;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->pinCodeCoordinator$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$closeAllWalletFragments(Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->closeAllWalletFragments(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final checkWalletLock()V
    .locals 4

    .line 64
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getCryptoAccessManager()Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getCryptoPreferenceHelper()Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isAuthorized(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getCryptoAccessManager()Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->shouldAskPinCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    .line 69
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getPinCodeCoordinator()Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string v2, "parentLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;->lock$default(Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final closeAllWalletFragments(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLastFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x12c

    .line 54
    new-instance v2, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/iMe/ui/base/mvp/MvpFragment;->postViewActionDelayed(JLcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :goto_0
    return-void
.end method

.method private static final closeAllWalletFragments$lambda$1(Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$endAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 56
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final listenGlobalRxEvents()V
    .locals 4

    .line 39
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getRxEventBus()Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    move-result-object v0

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
    new-instance v1, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment$listenGlobalRxEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment$listenGlobalRxEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment$listenGlobalRxEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment$listenGlobalRxEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/iMe/ui/base/mvp/MvpFragment;->autoDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method


# virtual methods
.method protected final getCryptoAccessManager()Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->cryptoAccessManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    return-object v0
.end method

.method protected final getCryptoPreferenceHelper()Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->cryptoPreferenceHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    return-object v0
.end method

.method protected final getPinCodeCoordinator()Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->pinCodeCoordinator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;

    return-object v0
.end method

.method protected final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method protected final getRxEventBus()Lcom/iMe/storage/domain/utils/rx/RxEventBus;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->rxEventBus$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    .line 35
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->checkWalletLock()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->listenGlobalRxEvents()V

    return-void
.end method

.method protected shouldAskPinCode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
