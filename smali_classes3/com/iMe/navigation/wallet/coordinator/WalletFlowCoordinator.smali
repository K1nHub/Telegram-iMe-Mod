.class public final Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;
.super Ljava/lang/Object;
.source "WalletFlowCoordinator.kt"


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final pinCodeCoordinator:Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinCodeCoordinator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 14
    iput-object p2, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 15
    iput-object p3, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->pinCodeCoordinator:Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;

    return-void
.end method

.method public static synthetic start$default(Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/WalletAuthFragment;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 20
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->start(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/WalletAuthFragment;Z)V

    return-void
.end method

.method public static synthetic startAction$default(Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/fork/utils/Callbacks$Callback;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 38
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->startAction(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/fork/utils/Callbacks$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final start(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/WalletAuthFragment;Z)V
    .locals 3

    const-string v0, "actionBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextFragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    iget-object v1, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isAuthorized(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isAnyWalletCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->pinCodeCoordinator:Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;

    .line 25
    new-instance v1, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;

    sget-object v2, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;->TOTAL_LOCK:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    invoke-direct {v1, v2}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;-><init>(Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;)V

    .line 22
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;->start(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/WalletAuthFragment;Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;Z)V

    goto :goto_1

    .line 29
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 30
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

    .line 31
    invoke-interface {p1}, Lkotlin/Lazy;->isInitialized()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 32
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;

    invoke-interface {p1}, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;->connectToStoredSessions()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final startAction(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/fork/utils/Callbacks$Callback;Z)V
    .locals 3

    const-string v0, "actionBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    iget-object v1, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isAuthorized(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->pinCodeCoordinator:Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;

    .line 43
    new-instance v1, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;

    sget-object v2, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;->TOTAL_LOCK:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    invoke-direct {v1, v2}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;-><init>(Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;)V

    .line 40
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator;->startAction(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/navigation/wallet/coordinator/PinCodeCoordinator$Args;Z)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {p2}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    :goto_0
    return-void
.end method
