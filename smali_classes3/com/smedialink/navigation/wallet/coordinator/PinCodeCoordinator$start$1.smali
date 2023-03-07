.class final Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator$start$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PinCodeCoordinator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator;->start(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/smedialink/ui/base/WalletAuthFragment;Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator$Args;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeResult;",
        "Lcom/smedialink/ui/base/mvp/MvpFragment;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $nextFragment:Lcom/smedialink/ui/base/WalletAuthFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/base/WalletAuthFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator$start$1;->$nextFragment:Lcom/smedialink/ui/base/WalletAuthFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeResult;

    check-cast p2, Lcom/smedialink/ui/base/mvp/MvpFragment;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator$start$1;->invoke(Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeResult;Lcom/smedialink/ui/base/mvp/MvpFragment;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeResult;Lcom/smedialink/ui/base/mvp/MvpFragment;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    instance-of p1, p1, Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeResult$Success;

    if-eqz p1, :cond_3

    .line 32
    iget-object p1, p0, Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator$start$1;->$nextFragment:Lcom/smedialink/ui/base/WalletAuthFragment;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 33
    iget-object p1, p0, Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator$start$1;->$nextFragment:Lcom/smedialink/ui/base/WalletAuthFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p2, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lorg/telegram/ui/LaunchActivity;->walletConnectManager:Lkotlin/Lazy;

    if-nez p1, :cond_2

    goto :goto_1

    .line 34
    :cond_2
    invoke-interface {p1}, Lkotlin/Lazy;->isInitialized()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 35
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;

    invoke-interface {p1}, Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;->connectToStoredSessions()V

    :cond_3
    :goto_1
    return-void
.end method
