.class public Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$ShowRestoreWalletScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "EnterWalletPasswordView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowRestoreWalletScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;",
        ">;"
    }
.end annotation


# instance fields
.field public final walletAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State;Ljava/lang/String;)V
    .locals 1

    .line 202
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showRestoreWalletScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 204
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$ShowRestoreWalletScreenCommand;->walletAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$ShowRestoreWalletScreenCommand;->walletAddress:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;->showRestoreWalletScreen(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 198
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$ShowRestoreWalletScreenCommand;->apply(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;)V

    return-void
.end method
