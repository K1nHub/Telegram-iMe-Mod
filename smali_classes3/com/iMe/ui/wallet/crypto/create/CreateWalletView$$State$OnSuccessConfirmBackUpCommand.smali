.class public Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$OnSuccessConfirmBackUpCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateWalletView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSuccessConfirmBackUpCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State;)V
    .locals 1

    .line 252
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "onSuccessConfirmBackUp"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;)V
    .locals 0

    .line 257
    invoke-interface {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;->onSuccessConfirmBackUp()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 250
    check-cast p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$OnSuccessConfirmBackUpCommand;->apply(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;)V

    return-void
.end method
