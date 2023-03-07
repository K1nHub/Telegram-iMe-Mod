.class public Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "WalletConnectView$$State.java"

# interfaces
.implements Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$ShowChooseNetworkDialogCommand;,
        Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$SetupNetworkTypeCommand;,
        Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$ShowLoadingDialogCommand;,
        Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$ShowToastCommand;,
        Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$ShowChangeNetworkHintCommand;,
        Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$SetupSessionsItemsCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;",
        ">;",
        "Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;"
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
.method public setupNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 3

    .line 118
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$SetupNetworkTypeCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$SetupNetworkTypeCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;

    .line 126
    invoke-interface {v2, p1}, Lcom/smedialink/ui/base/mvp/SwitchNetworkView;->setupNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupSessionsItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;",
            ">;)V"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$SetupSessionsItemsCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$SetupSessionsItemsCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State;Ljava/util/List;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;

    .line 29
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;->setupSessionsItems(Ljava/util/List;)V

    goto :goto_0

    .line 32
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showChangeNetworkHint()V
    .locals 3

    .line 37
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$ShowChangeNetworkHintCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$ShowChangeNetworkHintCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;

    .line 45
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;->showChangeNetworkHint()V

    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

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

    .line 135
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$ShowChooseNetworkDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$ShowChooseNetworkDialogCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 136
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 138
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 142
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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;

    .line 143
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/base/mvp/SwitchNetworkView;->showChooseNetworkDialog(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 69
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$ShowLoadingDialogCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State;ZZLio/reactivex/disposables/Disposable;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;

    .line 77
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 53
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$ShowToastCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State;Ljava/lang/String;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;

    .line 61
    invoke-interface {v2, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
