.class public Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "BlockchainsManagementView$$State.java"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$FinishScreenCommand;,
        Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowErrorToastCommand;,
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

    .line 18
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public finishScreen()V
    .locals 3

    .line 149
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$FinishScreenCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$FinishScreenCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;)V

    .line 150
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 152
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 156
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

    .line 157
    invoke-interface {v2}, Lcom/iMe/ui/base/mvp/base/BaseView;->finishScreen()V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openBackupScreen(Lcom/iMe/storage/domain/model/crypto/Wallet;)V
    .locals 3

    .line 85
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$OpenBackupScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$OpenBackupScreenCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Lcom/iMe/storage/domain/model/crypto/Wallet;)V

    .line 86
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 88
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 92
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

    .line 93
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;->openBackupScreen(Lcom/iMe/storage/domain/model/crypto/Wallet;)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public synthetic removeSelfFromStackImmediately()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->$default$removeSelfFromStackImmediately(Lcom/iMe/ui/base/mvp/base/BaseView;)V

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

    .line 21
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$SetupWalletsItemsCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$SetupWalletsItemsCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Ljava/util/List;)V

    .line 22
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 24
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 28
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

    .line 29
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;->setupWalletsItems(Ljava/util/List;)V

    goto :goto_0

    .line 32
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/iMe/storage/domain/model/Result$Error<",
            "+TT;>;",
            "Lcom/iMe/storage/domain/utils/system/ResourceManager;",
            ")V"
        }
    .end annotation

    .line 133
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowErrorToastCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowErrorToastCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 134
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 136
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 140
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

    .line 141
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 117
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 118
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 120
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 124
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

    .line 125
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showResetAllWalletsConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 3

    .line 37
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowResetAllWalletsConfirmationDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowResetAllWalletsConfirmationDialogCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Lcom/iMe/model/dialog/DialogModel;)V

    .line 38
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 40
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 44
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

    .line 45
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;->showResetAllWalletsConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V

    goto :goto_0

    .line 48
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 101
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 104
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 108
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

    .line 109
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showWalletDetailsDialog(Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;Lcom/iMe/model/dialog/DialogModel;)V
    .locals 3

    .line 53
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowWalletDetailsDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowWalletDetailsDialogCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;Lcom/iMe/model/dialog/DialogModel;)V

    .line 54
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 56
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 60
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

    .line 61
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;->showWalletDetailsDialog(Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;Lcom/iMe/model/dialog/DialogModel;)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showWalletInfoDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 3

    .line 69
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowWalletInfoDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowWalletInfoDialogCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Lcom/iMe/model/dialog/DialogModel;)V

    .line 70
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 72
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 76
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

    .line 77
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;->showWalletInfoDialog(Lcom/iMe/model/dialog/DialogModel;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
