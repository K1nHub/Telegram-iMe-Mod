.class public Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "WalletSendRecipientView$$State.java"

# interfaces
.implements Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowLoadingDialogCommand;,
        Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowToastCommand;,
        Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$OpenChatScreenCommand;,
        Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowRequestPermissionSuccessDialogCommand;,
        Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowErrorDialogCommand;,
        Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowRequestPermissionDialogCommand;,
        Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$OnRecipientSelectedCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;",
        ">;",
        "Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic finishScreen()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->$default$finishScreen(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    return-void
.end method

.method public onRecipientSelected(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 15
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$OnRecipientSelectedCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$OnRecipientSelectedCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 18
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 22
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;

    .line 23
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->onRecipientSelected(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openChatScreen(J)V
    .locals 3

    .line 81
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$OpenChatScreenCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$OpenChatScreenCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State;J)V

    .line 82
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 84
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;

    .line 89
    invoke-interface {v2, p1, p2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->openChatScreen(J)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showErrorDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 48
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowErrorDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowErrorDialogCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 51
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;

    .line 56
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 113
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 114
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 116
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;

    .line 121
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRequestPermissionDialog(Ljava/lang/String;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 3

    .line 32
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowRequestPermissionDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowRequestPermissionDialogCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State;Ljava/lang/String;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    .line 33
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 35
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;

    .line 40
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->showRequestPermissionDialog(Ljava/lang/String;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRequestPermissionSuccessDialog(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 3

    .line 65
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowRequestPermissionSuccessDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowRequestPermissionSuccessDialogCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    .line 66
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 68
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;

    .line 73
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;->showRequestPermissionSuccessDialog(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 97
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView$$State;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 100
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/actions/send/recipient/WalletSendRecipientView;

    .line 105
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
