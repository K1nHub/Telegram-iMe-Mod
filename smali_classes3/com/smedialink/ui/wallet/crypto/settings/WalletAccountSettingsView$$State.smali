.class public Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "WalletAccountSettingsView$$State.java"

# interfaces
.implements Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$ShowLoadingDialogCommand;,
        Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$ShowToastCommand;,
        Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$OpenPinCodeSettingsScreenCommand;,
        Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$OpenWalletConnectScreenCommand;,
        Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$OpenPrivacySettingsScreenCommand;,
        Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$OpenBlockchainsScreenCommand;,
        Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$SetupSettingsItemsCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;",
        ">;",
        "Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;"
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
.method public openBlockchainsScreen()V
    .locals 3

    .line 50
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$OpenBlockchainsScreenCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$OpenBlockchainsScreenCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;

    .line 58
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;->openBlockchainsScreen()V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openPinCodeSettingsScreen()V
    .locals 3

    .line 98
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$OpenPinCodeSettingsScreenCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$OpenPinCodeSettingsScreenCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;

    .line 106
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;->openPinCodeSettingsScreen()V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openPrivacySettingsScreen()V
    .locals 3

    .line 66
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$OpenPrivacySettingsScreenCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$OpenPrivacySettingsScreenCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;

    .line 74
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;->openPrivacySettingsScreen()V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openWalletConnectScreen()V
    .locals 3

    .line 82
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$OpenWalletConnectScreenCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$OpenWalletConnectScreenCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;

    .line 90
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;->openWalletConnectScreen()V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupSettingsItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;",
            ">;)V"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$SetupSettingsItemsCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$SetupSettingsItemsCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State;Ljava/util/List;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;

    .line 26
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;->setupSettingsItems(Ljava/util/List;)V

    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 130
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$ShowLoadingDialogCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State;ZZLio/reactivex/disposables/Disposable;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;

    .line 138
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 114
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$ShowToastCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView$$State;Ljava/lang/String;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsView;

    .line 122
    invoke-interface {v2, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
