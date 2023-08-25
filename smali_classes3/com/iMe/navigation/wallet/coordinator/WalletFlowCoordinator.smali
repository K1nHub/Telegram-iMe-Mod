.class public final Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;
.super Ljava/lang/Object;
.source "WalletFlowCoordinator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletFlowCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletFlowCoordinator.kt\ncom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,107:1\n42#2,12:108\n*S KotlinDebug\n*F\n+ 1 WalletFlowCoordinator.kt\ncom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator\n*L\n39#1:108,12\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final pinCodeCoordinator:Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public static synthetic $r8$lambda$mTCOFA1bUmngYsxmgJygqSibr_Y(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->start$lambda$0(Lorg/telegram/ui/LaunchActivity;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinCodeCoordinator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletInteractor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 21
    iput-object p2, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->pinCodeCoordinator:Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;

    .line 22
    iput-object p3, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 23
    iput-object p4, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 24
    iput-object p5, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$startWalletFlow(Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->startWalletFlow(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Z)V

    return-void
.end method

.method public static synthetic start$default(Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 27
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->start(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Z)V

    return-void
.end method

.method private static final start$lambda$0(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->hideLoadingDialog()V

    :cond_0
    return-void
.end method

.method public static synthetic startAction$default(Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/fork/utils/Callbacks$Callback;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 64
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->startAction(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/fork/utils/Callbacks$Callback;Z)V

    return-void
.end method

.method private final startWalletFlow(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Z)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainAuthorized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isAnyWalletCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->pinCodeCoordinator:Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;

    .line 94
    new-instance v1, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;

    sget-object v2, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;->TOTAL_LOCK:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    invoke-direct {v1, v2}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;-><init>(Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;)V

    .line 91
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;->start(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;Z)V

    goto :goto_1

    .line 98
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 99
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p2, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p1, Lorg/telegram/ui/LaunchActivity;->walletConnectManager:Lkotlin/Lazy;

    if-eqz p1, :cond_2

    .line 100
    invoke-interface {p1}, Lkotlin/Lazy;->isInitialized()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 101
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;

    invoke-interface {p1}, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;->connectToStoredSessions()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final start(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;Z)V
    .locals 12

    const-string v0, "actionBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextFragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object v9, v2

    .line 33
    :goto_0
    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 34
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {}, Lio/reactivex/disposables/Disposables;->disposed()Lio/reactivex/disposables/Disposable;

    move-result-object v1

    const-string v3, "disposed()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 35
    iget-object v1, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 36
    invoke-virtual {v1}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getSupportedNetworksWithUpdateCheck()Lio/reactivex/Observable;

    move-result-object v1

    .line 37
    iget-object v3, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v3}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 38
    new-instance v3, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v3, v9}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v3, "walletInteractor\n       \u2026ty?.hideLoadingDialog() }"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v11, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;

    move-object v3, v11

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v10, v0

    invoke-direct/range {v3 .. v10}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;ZLkotlin/jvm/internal/Ref$BooleanRef;Lorg/telegram/ui/LaunchActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v11}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p2, v2}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator$start$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance p3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p3, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v1, p1, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026.invoke(error)\n        })"

    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method public final startAction(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/fork/utils/Callbacks$Callback;Z)V
    .locals 3

    const-string v0, "actionBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainAuthorized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->pinCodeCoordinator:Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;

    .line 75
    new-instance v1, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;

    sget-object v2, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;->TOTAL_LOCK:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    invoke-direct {v1, v2}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;-><init>(Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;)V

    .line 72
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;->startAction(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;Z)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {p2}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    :goto_0
    return-void
.end method
