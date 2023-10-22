.class public Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "WalletHomeCryptoView$$State.java"

# interfaces
.implements Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowSelectOptionsDialogCommand;,
        Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenCreateWalletIntroScreenCommand;,
        Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowActivationConfirmationDialogCommand;,
        Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowRefreshingCommand;,
        Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowErrorToastCommand;,
        Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowLoadingDialogCommand;,
        Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowToastCommand;,
        Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$RenderNodesCommand;,
        Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowChooseNetworkDialogCommand;,
        Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowMenuItemsCommand;,
        Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowSelectTokensOrderTypeDialogCommand;,
        Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowChangeNetworkHintCommand;,
        Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenWalletDetailsCommand;,
        Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenTokenSettingsScreenCommand;,
        Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenHistoryScreenCommand;,
        Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenSwapScreenCommand;,
        Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenSendScreenCommand;,
        Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowQrReceiveDialogCommand;,
        Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowWalletAddressScanCommand;,
        Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowAddressMismatchScreenCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;",
        ">;",
        "Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic finishScreen()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->$default$finishScreen(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    return-void
.end method

.method public openCreateWalletIntroScreen(Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V
    .locals 3

    .line 370
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenCreateWalletIntroScreenCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenCreateWalletIntroScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V

    .line 371
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 373
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 377
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 378
    invoke-interface {v2, p1, p2}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->openCreateWalletIntroScreen(Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V

    goto :goto_0

    .line 381
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openHistoryScreen()V
    .locals 3

    .line 110
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenHistoryScreenCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenHistoryScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;)V

    .line 111
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 113
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 117
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 118
    invoke-interface {v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->openHistoryScreen()V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openSendScreen(Lcom/iMe/model/wallet/transfer/TransferScreenArgs;)V
    .locals 3

    .line 78
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenSendScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenSendScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;Lcom/iMe/model/wallet/transfer/TransferScreenArgs;)V

    .line 79
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 81
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 85
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 86
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->openSendScreen(Lcom/iMe/model/wallet/transfer/TransferScreenArgs;)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openSwapScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 3

    .line 94
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenSwapScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenSwapScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 95
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 97
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 101
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 102
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->openSwapScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openTokenSettingsScreen(Ljava/lang/String;)V
    .locals 3

    .line 126
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenTokenSettingsScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenTokenSettingsScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 129
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 133
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 134
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->openTokenSettingsScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openWalletDetails(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V
    .locals 3

    .line 142
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenWalletDetailsCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$OpenWalletDetailsCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    .line 143
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 145
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 149
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 150
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->openWalletDetails(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    goto :goto_0

    .line 153
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

.method public renderNodes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 224
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$RenderNodesCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$RenderNodesCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;Ljava/util/List;)V

    .line 225
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 227
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 231
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 232
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->renderNodes(Ljava/util/List;)V

    goto :goto_0

    .line 235
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showActivationConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 3

    .line 353
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowActivationConfirmationDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowActivationConfirmationDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    .line 354
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 356
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 360
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 361
    invoke-interface {v2, p1, p2}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->showActivationConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 364
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showAddressMismatchScreen()V
    .locals 3

    .line 30
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowAddressMismatchScreenCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowAddressMismatchScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;)V

    .line 31
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 33
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 37
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 38
    invoke-interface {v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->showAddressMismatchScreen()V

    goto :goto_0

    .line 41
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showChangeNetworkHint()V
    .locals 3

    .line 158
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowChangeNetworkHintCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowChangeNetworkHintCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;)V

    .line 159
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 161
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 165
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 166
    invoke-interface {v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->showChangeNetworkHint()V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showChooseNetworkDialog(Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;Lcom/iMe/model/wallet/home/NetworkChoosePurpose;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            ">;",
            "Lcom/iMe/model/wallet/home/NetworkChoosePurpose;",
            ")V"
        }
    .end annotation

    .line 208
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowChooseNetworkDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowChooseNetworkDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;Lcom/iMe/model/wallet/home/NetworkChoosePurpose;)V

    .line 209
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 211
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 215
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 216
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->showChooseNetworkDialog(Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;Lcom/iMe/model/wallet/home/NetworkChoosePurpose;)V

    goto :goto_0

    .line 219
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

    .line 272
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowErrorToastCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowErrorToastCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 273
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 275
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 279
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 280
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 256
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 257
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 259
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 263
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 264
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showMenuItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/ItemOptionsModel;",
            ">;)V"
        }
    .end annotation

    .line 191
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowMenuItemsCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowMenuItemsCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;Ljava/util/List;)V

    .line 192
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 194
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 198
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 199
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->showMenuItems(Ljava/util/List;)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showQrReceiveDialog(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 3

    .line 62
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowQrReceiveDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowQrReceiveDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;)V

    .line 63
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 65
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 69
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 70
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->showQrReceiveDialog(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 3

    .line 337
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowRefreshingCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowRefreshingCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;Z)V

    .line 338
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 340
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 344
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 345
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    goto :goto_0

    .line 348
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showSelectOptionsDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    .line 387
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowSelectOptionsDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowSelectOptionsDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 388
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 390
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 394
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 395
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->showSelectOptionsDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 398
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showSelectTokensOrderTypeDialog(Lcom/iMe/model/wallet/home/TokenSortingData;Z)V
    .locals 3

    .line 175
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowSelectTokensOrderTypeDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowSelectTokensOrderTypeDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;Lcom/iMe/model/wallet/home/TokenSortingData;Z)V

    .line 176
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 178
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 182
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 183
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->showSelectTokensOrderTypeDialog(Lcom/iMe/model/wallet/home/TokenSortingData;Z)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 240
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 243
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 247
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 248
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showWalletAddressScan(Ljava/lang/String;)V
    .locals 3

    .line 46
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowWalletAddressScanCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowWalletAddressScanCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 49
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 53
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    .line 54
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->showWalletAddressScan(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
