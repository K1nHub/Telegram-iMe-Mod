.class public Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "FragmentPremiumView$$State.java"

# interfaces
.implements Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$ShowErrorToastCommand;,
        Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$ShowLoadingDialogCommand;,
        Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$ShowToastCommand;,
        Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$RenderBalanceCommand;,
        Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$RenderRecipientCommand;,
        Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$RenderButtonCommand;,
        Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$RenderItemsCommand;,
        Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$OpenChooseContactCommand;,
        Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$ShowActionErrorCommand;,
        Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$ShowActionSuccessCommand;,
        Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$ShowConfirmationDialogCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;",
        ">;",
        "Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;"
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

.method public openChooseContact(Landroid/os/Bundle;)V
    .locals 3

    .line 70
    new-instance v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$OpenChooseContactCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$OpenChooseContactCommand;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State;Landroid/os/Bundle;)V

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

    check-cast v2, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    .line 78
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;->openChooseContact(Landroid/os/Bundle;)V

    goto :goto_0

    .line 81
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

.method public renderBalance(Ljava/lang/String;)V
    .locals 3

    .line 134
    new-instance v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$RenderBalanceCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$RenderBalanceCommand;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 137
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 141
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

    check-cast v2, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    .line 142
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;->renderBalance(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public renderButton(Ljava/lang/String;Z)V
    .locals 3

    .line 102
    new-instance v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$RenderButtonCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$RenderButtonCommand;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State;Ljava/lang/String;Z)V

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

    check-cast v2, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    .line 110
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;->renderButton(Ljava/lang/String;Z)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public renderItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$RenderItemsCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$RenderItemsCommand;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State;Ljava/util/List;)V

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

    check-cast v2, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    .line 94
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;->renderItems(Ljava/util/List;)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public renderRecipient(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3

    .line 118
    new-instance v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$RenderRecipientCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$RenderRecipientCommand;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State;Lorg/telegram/tgnet/TLRPC$User;)V

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

    check-cast v2, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    .line 126
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;->renderRecipient(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showActionError(Ljava/lang/String;)V
    .locals 3

    .line 54
    new-instance v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$ShowActionErrorCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$ShowActionErrorCommand;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State;Ljava/lang/String;)V

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

    check-cast v2, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    .line 62
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;->showActionError(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showActionSuccess()V
    .locals 3

    .line 38
    new-instance v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$ShowActionSuccessCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$ShowActionSuccessCommand;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State;)V

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

    check-cast v2, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    .line 46
    invoke-interface {v2}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;->showActionSuccess()V

    goto :goto_0

    .line 49
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 3

    .line 22
    new-instance v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$ShowConfirmationDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$ShowConfirmationDialogCommand;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State;Lcom/iMe/model/dialog/DialogModel;)V

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

    check-cast v2, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    .line 30
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;->showConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V

    goto :goto_0

    .line 33
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

    .line 182
    new-instance v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$ShowErrorToastCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$ShowErrorToastCommand;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State;Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 183
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 185
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 189
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

    check-cast v2, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    .line 190
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    goto :goto_0

    .line 193
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 166
    new-instance v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 167
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 169
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 173
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

    check-cast v2, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    .line 174
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 150
    new-instance v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 153
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 157
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

    check-cast v2, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    .line 158
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
