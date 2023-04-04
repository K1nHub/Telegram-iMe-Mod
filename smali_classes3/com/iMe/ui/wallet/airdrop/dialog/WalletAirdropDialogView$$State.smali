.class public Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "WalletAirdropDialogView$$State.java"

# interfaces
.implements Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$FinishScreenCommand;,
        Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ShowLoadingDialogCommand;,
        Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ShowToastCommand;,
        Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$OnAcceptAirdropCommand;,
        Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$OnSuccessClaimAirdropCommand;,
        Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;",
        ">;",
        "Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public configureDialogState(ZZLcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;I)V
    .locals 7

    .line 17
    new-instance v6, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;-><init>(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State;ZZLcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;I)V

    .line 18
    iget-object v0, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v6}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 20
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;

    .line 25
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;->configureDialogState(ZZLcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;I)V

    goto :goto_0

    .line 28
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v6}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public finishScreen()V
    .locals 3

    .line 97
    new-instance v0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$FinishScreenCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$FinishScreenCommand;-><init>(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State;)V

    .line 98
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 100
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 104
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

    check-cast v2, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;

    .line 105
    invoke-interface {v2}, Lcom/iMe/ui/base/mvp/base/BaseView;->finishScreen()V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onAcceptAirdrop()V
    .locals 3

    .line 49
    new-instance v0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$OnAcceptAirdropCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$OnAcceptAirdropCommand;-><init>(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State;)V

    .line 50
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 52
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 56
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

    check-cast v2, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;

    .line 57
    invoke-interface {v2}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;->onAcceptAirdrop()V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onSuccessClaimAirdrop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 33
    new-instance v0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$OnSuccessClaimAirdropCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$OnSuccessClaimAirdropCommand;-><init>(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 36
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 40
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

    check-cast v2, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;

    .line 41
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;->onSuccessClaimAirdrop(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 81
    new-instance v0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 82
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 84
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 88
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

    check-cast v2, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;

    .line 89
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 65
    new-instance v0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 68
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 72
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

    check-cast v2, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;

    .line 73
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
