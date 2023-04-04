.class public Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "WalletSwapFeeView$$State.java"

# interfaces
.implements Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State$ShowLoadingDialogCommand;,
        Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State$ShowToastCommand;,
        Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State$OnFeeReselectedCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView;",
        ">;",
        "Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView;"
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

.method public onFeeReselected()V
    .locals 3

    .line 15
    new-instance v0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State$OnFeeReselectedCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State$OnFeeReselectedCommand;-><init>(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State;)V

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

    check-cast v2, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView;

    .line 23
    invoke-interface {v2}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView;->onFeeReselected()V

    goto :goto_0

    .line 26
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 47
    new-instance v0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 48
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 50
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 54
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

    check-cast v2, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView;

    .line 55
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 31
    new-instance v0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State;Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 34
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 38
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

    check-cast v2, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView;

    .line 39
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
