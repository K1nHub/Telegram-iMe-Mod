.class public Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$ShowCreateNewWalletConfirmationDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateWalletIntroView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowCreateNewWalletConfirmationDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;",
        ">;"
    }
.end annotation


# instance fields
.field public final dialogModel:Lcom/iMe/model/dialog/DialogModel;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State;Lcom/iMe/model/dialog/DialogModel;)V
    .locals 1

    .line 268
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showCreateNewWalletConfirmationDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 270
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$ShowCreateNewWalletConfirmationDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$ShowCreateNewWalletConfirmationDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;->showCreateNewWalletConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 264
    check-cast p1, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView$$State$ShowCreateNewWalletConfirmationDialogCommand;->apply(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;)V

    return-void
.end method
