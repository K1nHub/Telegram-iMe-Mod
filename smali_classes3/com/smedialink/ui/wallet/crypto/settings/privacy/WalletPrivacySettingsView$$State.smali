.class public Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "WalletPrivacySettingsView$$State.java"

# interfaces
.implements Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$ShowLoadingDialogCommand;,
        Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$ShowToastCommand;,
        Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$ShowConfirmDialogCommand;,
        Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$OnSuccessSaveCryptoSettingsCommand;,
        Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$OnSuccessLoadPrivacySettingsCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;",
        ">;",
        "Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;"
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
.method public onSuccessLoadPrivacySettings(Ljava/util/List;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;II)V"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$OnSuccessLoadPrivacySettingsCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$OnSuccessLoadPrivacySettingsCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State;Ljava/util/List;II)V

    .line 20
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 22
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 26
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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;

    .line 27
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;->onSuccessLoadPrivacySettings(Ljava/util/List;II)V

    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onSuccessSaveCryptoSettings()V
    .locals 3

    .line 35
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$OnSuccessSaveCryptoSettingsCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$OnSuccessSaveCryptoSettingsCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State;)V

    .line 36
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 38
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 42
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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;

    .line 43
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;->onSuccessSaveCryptoSettings()V

    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showConfirmDialog(Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 3

    .line 51
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$ShowConfirmDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$ShowConfirmDialogCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V

    .line 52
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 54
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 58
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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;

    .line 59
    invoke-interface {v2, p1, p2}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;->showConfirmDialog(Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 83
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$ShowLoadingDialogCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 84
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 86
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 90
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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;

    .line 91
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 67
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State$ShowToastCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView$$State;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 70
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 74
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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/settings/privacy/WalletPrivacySettingsView;

    .line 75
    invoke-interface {v2, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
