.class public Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$OnSuccessCreateWalletCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateWalletPinView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSuccessCreateWalletCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State;)V
    .locals 1

    .line 185
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "onSuccessCreateWallet"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;)V
    .locals 0

    .line 190
    invoke-interface {p1}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;->onSuccessCreateWallet()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 183
    check-cast p1, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView$$State$OnSuccessCreateWalletCommand;->apply(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;)V

    return-void
.end method
