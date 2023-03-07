.class public Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$OnSuccessUnlockWalletCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "EnterWalletPasswordView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSuccessUnlockWalletCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;",
        ">;"
    }
.end annotation


# instance fields
.field public final guid:Ljava/lang/String;

.field public final password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 175
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "onSuccessUnlockWallet"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 177
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$OnSuccessUnlockWalletCommand;->password:Ljava/lang/String;

    .line 178
    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$OnSuccessUnlockWalletCommand;->guid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$OnSuccessUnlockWalletCommand;->password:Ljava/lang/String;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$OnSuccessUnlockWalletCommand;->guid:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;->onSuccessUnlockWallet(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 169
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$OnSuccessUnlockWalletCommand;->apply(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;)V

    return-void
.end method
