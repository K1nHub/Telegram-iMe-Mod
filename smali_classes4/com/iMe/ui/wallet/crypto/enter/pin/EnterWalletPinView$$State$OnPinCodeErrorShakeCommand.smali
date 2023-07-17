.class public Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$OnPinCodeErrorShakeCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "EnterWalletPinView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnPinCodeErrorShakeCommand"
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

    .line 278
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "onPinCodeErrorShake"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;)V
    .locals 0

    .line 283
    invoke-interface {p1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;->onPinCodeErrorShake()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 276
    check-cast p1, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView$$State$OnPinCodeErrorShakeCommand;->apply(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;)V

    return-void
.end method
