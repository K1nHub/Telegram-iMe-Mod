.class public Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "WalletHomeServicesView$$State.java"

# interfaces
.implements Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State$ShowLoadingDialogCommand;,
        Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State$ShowToastCommand;,
        Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State$FirstScreenInitWithItemsCommand;,
        Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State$ShowRequiredWalletCreatedDialogCommand;,
        Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State$OpenStakingScreenCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;",
        ">;",
        "Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;"
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
.method public firstScreenInitWithItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State$FirstScreenInitWithItemsCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State$FirstScreenInitWithItemsCommand;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State;Ljava/util/List;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;

    .line 58
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;->firstScreenInitWithItems(Ljava/util/List;)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openStakingScreen()V
    .locals 3

    .line 18
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State$OpenStakingScreenCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State$OpenStakingScreenCommand;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;

    .line 26
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;->openStakingScreen()V

    goto :goto_0

    .line 29
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 82
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State$ShowLoadingDialogCommand;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State;ZZLio/reactivex/disposables/Disposable;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;

    .line 90
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRequiredWalletCreatedDialog()V
    .locals 3

    .line 34
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State$ShowRequiredWalletCreatedDialogCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State$ShowRequiredWalletCreatedDialogCommand;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;

    .line 42
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;->showRequiredWalletCreatedDialog()V

    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 66
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State$ShowToastCommand;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State;Ljava/lang/String;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;

    .line 74
    invoke-interface {v2, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
