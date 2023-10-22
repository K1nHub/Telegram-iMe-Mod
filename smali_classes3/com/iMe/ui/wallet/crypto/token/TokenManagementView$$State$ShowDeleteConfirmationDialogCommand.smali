.class public Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowDeleteConfirmationDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TokenManagementView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowDeleteConfirmationDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;",
        ">;"
    }
.end annotation


# instance fields
.field public final dialogModel:Lcom/iMe/model/dialog/DialogModel;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;Lcom/iMe/model/dialog/DialogModel;)V
    .locals 1

    .line 361
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showDeleteConfirmationDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 363
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowDeleteConfirmationDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowDeleteConfirmationDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->showDeleteConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 357
    check-cast p1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowDeleteConfirmationDialogCommand;->apply(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;)V

    return-void
.end method
