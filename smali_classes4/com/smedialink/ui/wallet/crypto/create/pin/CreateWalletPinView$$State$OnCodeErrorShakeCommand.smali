.class public Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$OnCodeErrorShakeCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateWalletPinView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnCodeErrorShakeCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView$$State;)V
    .locals 1

    .line 188
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "onCodeErrorShake"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView;)V
    .locals 0

    .line 193
    invoke-interface {p1}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView;->onCodeErrorShake()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 186
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$OnCodeErrorShakeCommand;->apply(Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView;)V

    return-void
.end method
