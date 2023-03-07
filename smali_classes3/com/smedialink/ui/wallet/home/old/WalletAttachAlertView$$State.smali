.class public Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "WalletAttachAlertView$$State.java"

# interfaces
.implements Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$OnEmptyStateCommand;,
        Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$OnLoadingStateCommand;,
        Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$OnUnexpectedErrorStateCommand;,
        Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$OnNoInternetErrorStateCommand;,
        Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$OpenChatScreenCommand;,
        Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowRequestPermissionSuccessDialogCommand;,
        Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowRecipientEthWalletNotActivatedErrorCommand;,
        Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowRecipientWalletNotActivatedErrorCommand;,
        Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowRequestPermissionDialogCommand;,
        Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$OnRecipientSelectedCommand;,
        Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowLoadingDialogCommand;,
        Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowToastCommand;,
        Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowChooseNetworkDialogCommand;,
        Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowTransactionsCommand;,
        Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowBalancesCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;",
        ">;",
        "Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmptyState()V
    .locals 3

    .line 284
    new-instance v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$OnEmptyStateCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$OnEmptyStateCommand;-><init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State;)V

    .line 285
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 287
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 291
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    .line 292
    invoke-interface {v2}, Lcom/smedialink/ui/custom/state/GlobalStateView;->onEmptyState()V

    goto :goto_0

    .line 295
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onLoadingState()V
    .locals 3

    .line 268
    new-instance v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$OnLoadingStateCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$OnLoadingStateCommand;-><init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State;)V

    .line 269
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 271
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 275
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    .line 276
    invoke-interface {v2}, Lcom/smedialink/ui/custom/state/GlobalStateView;->onLoadingState()V

    goto :goto_0

    .line 279
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onNoInternetErrorState()V
    .locals 3

    .line 236
    new-instance v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$OnNoInternetErrorStateCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$OnNoInternetErrorStateCommand;-><init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    .line 244
    invoke-interface {v2}, Lcom/smedialink/ui/custom/state/GlobalStateView;->onNoInternetErrorState()V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onRecipientSelected(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 136
    new-instance v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$OnRecipientSelectedCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$OnRecipientSelectedCommand;-><init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 137
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 139
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 143
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    .line 144
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;->onRecipientSelected(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onUnexpectedErrorState()V
    .locals 3

    .line 252
    new-instance v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$OnUnexpectedErrorStateCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$OnUnexpectedErrorStateCommand;-><init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State;)V

    .line 253
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 255
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 259
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    .line 260
    invoke-interface {v2}, Lcom/smedialink/ui/custom/state/GlobalStateView;->onUnexpectedErrorState()V

    goto :goto_0

    .line 263
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openChatScreen(J)V
    .locals 3

    .line 220
    new-instance v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$OpenChatScreenCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$OpenChatScreenCommand;-><init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State;J)V

    .line 221
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 223
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 227
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    .line 228
    invoke-interface {v2, p1, p2}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;->openChatScreen(J)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showBalances(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
            ">;)V"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowBalancesCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowBalancesCommand;-><init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State;Ljava/util/List;)V

    .line 23
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 25
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 29
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    .line 30
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;->showBalances(Ljava/util/List;)V

    goto :goto_0

    .line 33
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showChooseNetworkDialog(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowChooseNetworkDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowChooseNetworkDialogCommand;-><init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 56
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 58
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 62
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    .line 63
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;->showChooseNetworkDialog(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 87
    new-instance v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowLoadingDialogCommand;-><init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 88
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 90
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 94
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    .line 95
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRecipientEthWalletNotActivatedError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 187
    new-instance v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowRecipientEthWalletNotActivatedErrorCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowRecipientEthWalletNotActivatedErrorCommand;-><init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 190
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 194
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    .line 195
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;->showRecipientEthWalletNotActivatedError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRecipientWalletNotActivatedError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 170
    new-instance v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowRecipientWalletNotActivatedErrorCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowRecipientWalletNotActivatedErrorCommand;-><init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 173
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 177
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    .line 178
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;->showRecipientWalletNotActivatedError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRequestPermissionDialog(Ljava/lang/String;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 3

    .line 153
    new-instance v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowRequestPermissionDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowRequestPermissionDialogCommand;-><init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State;Ljava/lang/String;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    .line 161
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;->showRequestPermissionDialog(Ljava/lang/String;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRequestPermissionSuccessDialog(Ljava/lang/String;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 3

    .line 204
    new-instance v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowRequestPermissionSuccessDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowRequestPermissionSuccessDialogCommand;-><init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State;Ljava/lang/String;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;)V

    .line 205
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 207
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 211
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    .line 212
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;->showRequestPermissionSuccessDialog(Ljava/lang/String;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 71
    new-instance v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowToastCommand;-><init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 74
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 78
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    .line 79
    invoke-interface {v2, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showTransactions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowTransactionsCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State$ShowTransactionsCommand;-><init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView$$State;Ljava/util/List;)V

    .line 39
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 41
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 45
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;

    .line 46
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertView;->showTransactions(Ljava/util/List;)V

    goto :goto_0

    .line 49
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
