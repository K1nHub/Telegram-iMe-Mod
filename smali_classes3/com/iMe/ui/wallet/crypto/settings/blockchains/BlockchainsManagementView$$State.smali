.class public Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "BlockchainsManagementView$$State.java"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$FinishScreenCommand;,
        Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowLoadingDialogCommand;,
        Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowToastCommand;,
        Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$OpenBackupScreenCommand;,
        Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowWalletInfoDialogCommand;,
        Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowWalletDetailsDialogCommand;,
        Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowResetAllWalletsConfirmationDialogCommand;,
        Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$SetupWalletsItemsCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;",
        ">;",
        "Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public finishScreen()V
    .locals 3

    .line 130
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$FinishScreenCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$FinishScreenCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;)V

    .line 131
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 133
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 137
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;

    .line 138
    invoke-interface {v2}, Lcom/iMe/ui/base/mvp/base/BaseView;->finishScreen()V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openBackupScreen(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$OpenBackupScreenCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$OpenBackupScreenCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Ljava/util/List;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 85
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 89
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;

    .line 90
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;->openBackupScreen(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupWalletsItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;",
            ">;)V"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$SetupWalletsItemsCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$SetupWalletsItemsCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Ljava/util/List;)V

    .line 19
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 21
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 25
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;

    .line 26
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;->setupWalletsItems(Ljava/util/List;)V

    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 114
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 115
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 117
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 121
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;

    .line 122
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showResetAllWalletsConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 3

    .line 34
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowResetAllWalletsConfirmationDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowResetAllWalletsConfirmationDialogCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Lcom/iMe/model/dialog/DialogModel;)V

    .line 35
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 37
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 41
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;

    .line 42
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;->showResetAllWalletsConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V

    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 98
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 101
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 105
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;

    .line 106
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showWalletDetailsDialog(Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;Lcom/iMe/model/dialog/DialogModel;)V
    .locals 3

    .line 50
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowWalletDetailsDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowWalletDetailsDialogCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;Lcom/iMe/model/dialog/DialogModel;)V

    .line 51
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 53
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 57
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;

    .line 58
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;->showWalletDetailsDialog(Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;Lcom/iMe/model/dialog/DialogModel;)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showWalletInfoDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 3

    .line 66
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowWalletInfoDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowWalletInfoDialogCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Lcom/iMe/model/dialog/DialogModel;)V

    .line 67
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 69
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 73
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;

    .line 74
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;->showWalletInfoDialog(Lcom/iMe/model/dialog/DialogModel;)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
