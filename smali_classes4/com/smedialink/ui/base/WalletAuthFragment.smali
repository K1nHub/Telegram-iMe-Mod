.class public abstract Lcom/smedialink/ui/base/WalletAuthFragment;
.super Lcom/smedialink/ui/base/mvp/MvpFragment;
.source "WalletAuthFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletAuthFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletAuthFragment.kt\ncom/smedialink/ui/base/WalletAuthFragment\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 RxEventBus.kt\ncom/smedialink/storage/domain/utils/rx/RxEventBus\n+ 4 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n*L\n1#1,87:1\n56#2,6:88\n56#2,6:94\n56#2,6:100\n56#2,6:106\n56#2,6:112\n16#3,3:118\n39#4,6:121\n*S KotlinDebug\n*F\n+ 1 WalletAuthFragment.kt\ncom/smedialink/ui/base/WalletAuthFragment\n*L\n20#1:88,6\n21#1:94,6\n22#1:100,6\n23#1:106,6\n24#1:112,6\n58#1:118,3\n59#1:121,6\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager$delegate:Lkotlin/Lazy;

.field private final cryptoPreferenceHelper$delegate:Lkotlin/Lazy;

.field private final pinCodeCoordinator$delegate:Lkotlin/Lazy;

.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private final rxEventBus$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$cTRKPdNXzjZxPJHZ2x1km_oyyjw(Lcom/smedialink/ui/base/WalletAuthFragment;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/base/WalletAuthFragment;->closeAllWalletFragments$lambda-0(Lcom/smedialink/ui/base/WalletAuthFragment;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 17
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;-><init>()V

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/smedialink/ui/base/WalletAuthFragment$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v3}, Lcom/smedialink/ui/base/WalletAuthFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 20
    iput-object v1, p0, Lcom/smedialink/ui/base/WalletAuthFragment;->rxEventBus$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/smedialink/ui/base/WalletAuthFragment$special$$inlined$inject$default$2;

    invoke-direct {v2, p0, v3, v3}, Lcom/smedialink/ui/base/WalletAuthFragment$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/smedialink/ui/base/WalletAuthFragment;->resourceManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/smedialink/ui/base/WalletAuthFragment$special$$inlined$inject$default$3;

    invoke-direct {v2, p0, v3, v3}, Lcom/smedialink/ui/base/WalletAuthFragment$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 22
    iput-object v1, p0, Lcom/smedialink/ui/base/WalletAuthFragment;->cryptoAccessManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/smedialink/ui/base/WalletAuthFragment$special$$inlined$inject$default$4;

    invoke-direct {v2, p0, v3, v3}, Lcom/smedialink/ui/base/WalletAuthFragment$special$$inlined$inject$default$4;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/smedialink/ui/base/WalletAuthFragment;->cryptoPreferenceHelper$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/smedialink/ui/base/WalletAuthFragment$special$$inlined$inject$default$5;

    invoke-direct {v1, p0, v3, v3}, Lcom/smedialink/ui/base/WalletAuthFragment$special$$inlined$inject$default$5;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/smedialink/ui/base/WalletAuthFragment;->pinCodeCoordinator$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final checkWalletLock()V
    .locals 4

    .line 77
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getCryptoAccessManager()Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getCryptoPreferenceHelper()Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->isAuthorized(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getCryptoAccessManager()Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->shouldAskPinCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    .line 79
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getPinCodeCoordinator()Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string v2, "parentLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator;->lock$default(Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeScreenType;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final closeAllWalletFragments$lambda-0(Lcom/smedialink/ui/base/WalletAuthFragment;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$endAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 32
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final listenGlobalRxEvents()V
    .locals 4

    .line 57
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getRxEventBus()Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    move-result-object v0

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
    new-instance v1, Lcom/smedialink/ui/base/WalletAuthFragment$listenGlobalRxEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/base/WalletAuthFragment$listenGlobalRxEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/base/WalletAuthFragment;)V

    new-instance v2, Lcom/smedialink/ui/base/WalletAuthFragment$listenGlobalRxEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/smedialink/ui/base/WalletAuthFragment$listenGlobalRxEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->autoDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method


# virtual methods
.method public final closeAllWalletFragments(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "endAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    const-string v1, "parentLayout.fragmentStack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x12c

    .line 30
    new-instance v2, Lcom/smedialink/ui/base/WalletAuthFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/smedialink/ui/base/WalletAuthFragment$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/base/WalletAuthFragment;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/smedialink/ui/base/mvp/MvpFragment;->postViewActionDelayed(JLorg/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :goto_0
    return-void
.end method

.method protected final getCryptoAccessManager()Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/smedialink/ui/base/WalletAuthFragment;->cryptoAccessManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    return-object v0
.end method

.method protected final getCryptoPreferenceHelper()Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/smedialink/ui/base/WalletAuthFragment;->cryptoPreferenceHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    return-object v0
.end method

.method protected final getPinCodeCoordinator()Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/smedialink/ui/base/WalletAuthFragment;->pinCodeCoordinator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator;

    return-object v0
.end method

.method protected final getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/smedialink/ui/base/WalletAuthFragment;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method protected final getRxEventBus()Lcom/smedialink/storage/domain/utils/rx/RxEventBus;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/smedialink/ui/base/WalletAuthFragment;->rxEventBus$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onResume()V

    .line 49
    invoke-direct {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->checkWalletLock()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->listenGlobalRxEvents()V

    return-void
.end method

.method public shouldAskPinCode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
