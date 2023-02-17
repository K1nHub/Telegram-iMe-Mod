.class public Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordView$$State$OnCodeErrorShakeCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateWalletPasswordView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnCodeErrorShakeCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordView$$State;)V
    .locals 1

    .line 128
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "onCodeErrorShake"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordView;)V
    .locals 0

    .line 133
    invoke-interface {p1}, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordView;->onCodeErrorShake()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 126
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordView$$State$OnCodeErrorShakeCommand;->apply(Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordView;)V

    return-void
.end method
