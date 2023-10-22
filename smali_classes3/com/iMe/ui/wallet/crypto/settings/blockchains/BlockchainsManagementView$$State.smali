.class public Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "BlockchainsManagementView$$State.java"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowSelectOptionsDialogCommand;,
        Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$OpenCreateWalletIntroScreenCommand;,
        Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowActivationConfirmationDialogCommand;,
        Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$FinishScreenCommand;,
        Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowErrorToastCommand;,
        Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowLoadingDialogCommand;,
        Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowToastCommand;,
        Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowWalletDetailsDialogCommand;,
        Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$OpenBackupScreenCommand;,
        Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowWalletInfoDialogCommand;,
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

    .line 21
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public finishScreen()V
    .locals 3

    .line 153
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$FinishScreenCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$FinishScreenCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;)V

    .line 154
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 156
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 160
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

    .line 161
    invoke-interface {v2}, Lcom/iMe/ui/base/mvp/base/BaseView;->finishScreen()V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openBackupScreen(Lcom/iMe/storage/domain/model/crypto/Wallet;)V
    .locals 3

    .line 72
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$OpenBackupScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$OpenBackupScreenCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Lcom/iMe/storage/domain/model/crypto/Wallet;)V

    .line 73
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 75
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 79
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

    .line 80
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;->openBackupScreen(Lcom/iMe/storage/domain/model/crypto/Wallet;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openCreateWalletIntroScreen(Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V
    .locals 3

    .line 219
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$OpenCreateWalletIntroScreenCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$OpenCreateWalletIntroScreenCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V

    .line 220
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 222
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 226
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

    .line 227
    invoke-interface {v2, p1, p2}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->openCreateWalletIntroScreen(Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V

    goto :goto_0

    .line 230
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
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$SetupWalletsItemsCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$SetupWalletsItemsCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Ljava/util/List;)V

    .line 25
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 27
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 31
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

    .line 32
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;->setupWalletsItems(Ljava/util/List;)V

    goto :goto_0

    .line 35
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showActivationConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 3

    .line 202
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowActivationConfirmationDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowActivationConfirmationDialogCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    .line 203
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 205
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 209
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

    .line 210
    invoke-interface {v2, p1, p2}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->showActivationConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 213
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

    .line 137
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowErrorToastCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowErrorToastCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 138
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 140
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 144
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

    .line 145
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 121
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 122
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 124
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 128
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

    .line 129
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showResetAllWalletsConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 3

    .line 40
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowResetAllWalletsConfirmationDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowResetAllWalletsConfirmationDialogCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Lcom/iMe/model/dialog/DialogModel;)V

    .line 41
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 43
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 47
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

    .line 48
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;->showResetAllWalletsConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V

    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showSelectOptionsDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    .line 236
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowSelectOptionsDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowSelectOptionsDialogCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 237
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 239
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 243
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

    .line 244
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->showSelectOptionsDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 105
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 108
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 112
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

    .line 113
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showWalletDetailsDialog(Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;Lcom/iMe/model/dialog/DialogModel;)V
    .locals 3

    .line 89
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowWalletDetailsDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowWalletDetailsDialogCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;Lcom/iMe/model/dialog/DialogModel;)V

    .line 90
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 92
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 96
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

    .line 97
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;->showWalletDetailsDialog(Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;Lcom/iMe/model/dialog/DialogModel;)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showWalletInfoDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 3

    .line 56
    new-instance v0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowWalletInfoDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowWalletInfoDialogCommand;-><init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Lcom/iMe/model/dialog/DialogModel;)V

    .line 57
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 59
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 63
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

    .line 64
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;->showWalletInfoDialog(Lcom/iMe/model/dialog/DialogModel;)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
