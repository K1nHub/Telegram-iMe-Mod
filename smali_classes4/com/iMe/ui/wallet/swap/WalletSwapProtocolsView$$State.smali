.class public Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "WalletSwapProtocolsView$$State.java"

# interfaces
.implements Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$ShowErrorToastCommand;,
        Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$ShowLoadingDialogCommand;,
        Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$ShowToastCommand;,
        Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$OpenSwapScreenCommand;,
        Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$OpenBinanceConvertScreenCommand;,
        Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$ShowRequiredVerifyDialogCommand;,
        Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$ShowExchangesProvidersCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;",
        ">;",
        "Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;"
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
.method public synthetic finishScreen()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->$default$finishScreen(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    return-void
.end method

.method public openBinanceConvertScreen()V
    .locals 3

    .line 54
    new-instance v0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$OpenBinanceConvertScreenCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$OpenBinanceConvertScreenCommand;-><init>(Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State;)V

    .line 55
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 57
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 61
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

    check-cast v2, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;

    .line 62
    invoke-interface {v2}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;->openBinanceConvertScreen()V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openSwapScreen(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 3

    .line 70
    new-instance v0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$OpenSwapScreenCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$OpenSwapScreenCommand;-><init>(Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    .line 71
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 73
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 77
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

    check-cast v2, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;

    .line 78
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;->openSwapScreen(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    goto :goto_0

    .line 81
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

    .line 118
    new-instance v0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$ShowErrorToastCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$ShowErrorToastCommand;-><init>(Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State;Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 119
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 121
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 125
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

    check-cast v2, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;

    .line 126
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showExchangesProviders(Ljava/util/List;)V
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

    .line 22
    new-instance v0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$ShowExchangesProvidersCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$ShowExchangesProvidersCommand;-><init>(Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State;Ljava/util/List;)V

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

    check-cast v2, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;

    .line 30
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;->showExchangesProviders(Ljava/util/List;)V

    goto :goto_0

    .line 33
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 102
    new-instance v0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 103
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 105
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 109
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

    check-cast v2, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;

    .line 110
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRequiredVerifyDialog()V
    .locals 3

    .line 38
    new-instance v0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$ShowRequiredVerifyDialogCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$ShowRequiredVerifyDialogCommand;-><init>(Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State;)V

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

    check-cast v2, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;

    .line 46
    invoke-interface {v2}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;->showRequiredVerifyDialog()V

    goto :goto_0

    .line 49
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 86
    new-instance v0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 89
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 93
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

    check-cast v2, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;

    .line 94
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
