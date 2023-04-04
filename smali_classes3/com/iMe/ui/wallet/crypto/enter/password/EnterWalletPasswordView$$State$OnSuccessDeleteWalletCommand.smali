.class public Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$OnSuccessDeleteWalletCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "EnterWalletPasswordView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSuccessDeleteWalletCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State;)V
    .locals 1

    .line 160
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "onSuccessDeleteWallet"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordView;)V
    .locals 0

    .line 165
    invoke-interface {p1}, Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordView;->onSuccessDeleteWallet()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 158
    check-cast p1, Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$OnSuccessDeleteWalletCommand;->apply(Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordView;)V

    return-void
.end method
