.class final Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator$startAction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PinCodeCoordinator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator;->startAction(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/fork/utils/Callbacks$Callback;Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator$Args;Z)V
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
.field final synthetic $action:Lorg/fork/utils/Callbacks$Callback;


# direct methods
.method constructor <init>(Lorg/fork/utils/Callbacks$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator$startAction$1;->$action:Lorg/fork/utils/Callbacks$Callback;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeResult;

    check-cast p2, Lcom/smedialink/ui/base/mvp/MvpFragment;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator$startAction$1;->invoke(Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeResult;Lcom/smedialink/ui/base/mvp/MvpFragment;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeResult;Lcom/smedialink/ui/base/mvp/MvpFragment;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    instance-of p1, p1, Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeResult$Success;

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/smedialink/navigation/wallet/coordinator/PinCodeCoordinator$startAction$1;->$action:Lorg/fork/utils/Callbacks$Callback;

    invoke-interface {p1}, Lorg/fork/utils/Callbacks$Callback;->invoke()V

    .line 51
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    :cond_0
    return-void
.end method
