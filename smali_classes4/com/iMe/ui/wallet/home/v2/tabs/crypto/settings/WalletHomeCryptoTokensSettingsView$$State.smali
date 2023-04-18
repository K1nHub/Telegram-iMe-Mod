.class public Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "WalletHomeCryptoTokensSettingsView$$State.java"

# interfaces
.implements Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State$ShowErrorToastCommand;,
        Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State$ShowLoadingDialogCommand;,
        Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State$ShowToastCommand;,
        Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State$ShowTokensCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView;",
        ">;",
        "Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic finishScreen()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->$default$finishScreen(Lcom/iMe/ui/base/mvp/base/BaseView;)V

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

    .line 68
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State$ShowErrorToastCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State$ShowErrorToastCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State;Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 69
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 71
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 75
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView;

    .line 76
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 52
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 53
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 55
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 59
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView;

    .line 60
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 36
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State;Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 39
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 43
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView;

    .line 44
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showTokens(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/select/SelectableToken;",
            ">;)V"
        }
    .end annotation

    .line 20
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State$ShowTokensCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State$ShowTokensCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State;Ljava/util/List;)V

    .line 21
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 23
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 27
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView;

    .line 28
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView;->showTokens(Ljava/util/List;)V

    goto :goto_0

    .line 31
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
