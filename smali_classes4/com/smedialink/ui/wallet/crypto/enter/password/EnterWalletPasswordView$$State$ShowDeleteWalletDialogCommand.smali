.class public Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$ShowDeleteWalletDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "EnterWalletPasswordView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowDeleteWalletDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;",
        ">;"
    }
.end annotation


# instance fields
.field public final dialogModel:Lcom/smedialink/model/dialog/DialogModel;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State;Lcom/smedialink/model/dialog/DialogModel;)V
    .locals 1

    .line 217
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showDeleteWalletDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 219
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$ShowDeleteWalletDialogCommand;->dialogModel:Lcom/smedialink/model/dialog/DialogModel;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$ShowDeleteWalletDialogCommand;->dialogModel:Lcom/smedialink/model/dialog/DialogModel;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;->showDeleteWalletDialog(Lcom/smedialink/model/dialog/DialogModel;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 213
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView$$State$ShowDeleteWalletDialogCommand;->apply(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;)V

    return-void
.end method
