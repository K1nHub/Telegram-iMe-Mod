.class public Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "StakingProgrammesView$$State.java"

# interfaces
.implements Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$OnLoadMoreErrorCommand;,
        Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$OnLoadMoreCompleteCommand;,
        Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowLoadingDialogCommand;,
        Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowToastCommand;,
        Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$RenderItemsCommand;,
        Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowLevelRequiredDialogCommand;,
        Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowSelectStakingOrderTypeDialogCommand;,
        Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$OpenDepositScreenCommand;,
        Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$OpenStakingDetailsScreenCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;",
        ">;",
        "Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;"
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
.method public onLoadMoreComplete()V
    .locals 3

    .line 182
    new-instance v0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$OnLoadMoreCompleteCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$OnLoadMoreCompleteCommand;-><init>(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    .line 190
    invoke-interface {v2}, Lcom/smedialink/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    goto :goto_0

    .line 193
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onLoadMoreError()V
    .locals 3

    .line 198
    new-instance v0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$OnLoadMoreErrorCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$OnLoadMoreErrorCommand;-><init>(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State;)V

    .line 199
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 201
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 205
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

    check-cast v2, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    .line 206
    invoke-interface {v2}, Lcom/smedialink/ui/base/mvp/LoadMoreView;->onLoadMoreError()V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openDepositScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V
    .locals 3

    .line 37
    new-instance v0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$OpenDepositScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$OpenDepositScreenCommand;-><init>(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State;Lcom/smedialink/model/staking/StakingDetailsItem;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    .line 45
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;->openDepositScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    goto :goto_0

    .line 48
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openStakingDetailsScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V
    .locals 3

    .line 21
    new-instance v0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$OpenStakingDetailsScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$OpenStakingDetailsScreenCommand;-><init>(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State;Lcom/smedialink/model/staking/StakingDetailsItem;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    .line 29
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;->openStakingDetailsScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    goto :goto_0

    .line 32
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

    .line 85
    new-instance v0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$RenderItemsCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$RenderItemsCommand;-><init>(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State;Ljava/util/List;)V

    .line 86
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 88
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 92
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

    check-cast v2, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    .line 93
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;->renderItems(Ljava/util/List;)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLevelRequiredDialog(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 3

    .line 69
    new-instance v0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowLevelRequiredDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowLevelRequiredDialogCommand;-><init>(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    .line 77
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;->showLevelRequiredDialog(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 117
    new-instance v0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowLoadingDialogCommand;-><init>(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 118
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 120
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 124
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

    check-cast v2, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    .line 125
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showSelectStakingOrderTypeDialog(Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;)V
    .locals 3

    .line 53
    new-instance v0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowSelectStakingOrderTypeDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowSelectStakingOrderTypeDialogCommand;-><init>(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State;Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    .line 61
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;->showSelectStakingOrderTypeDialog(Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 101
    new-instance v0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowToastCommand;-><init>(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 104
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 108
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

    check-cast v2, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    .line 109
    invoke-interface {v2, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
