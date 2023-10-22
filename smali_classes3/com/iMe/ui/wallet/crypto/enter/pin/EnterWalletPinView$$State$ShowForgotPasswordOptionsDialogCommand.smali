.class public Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$ShowForgotPasswordOptionsDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "EnterWalletPinView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowForgotPasswordOptionsDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State;)V
    .locals 1

    .line 326
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showForgotPasswordOptionsDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;)V
    .locals 0

    .line 331
    invoke-interface {p1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;->showForgotPasswordOptionsDialog()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 324
    check-cast p1, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$ShowForgotPasswordOptionsDialogCommand;->apply(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;)V

    return-void
.end method
