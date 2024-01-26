.class public Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "StakingProgrammesView$$State.java"

# interfaces
.implements Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$OnLoadMoreErrorCommand;,
        Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$OnLoadMoreCompleteCommand;,
        Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowErrorToastCommand;,
        Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowLoadingDialogCommand;,
        Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowToastCommand;,
        Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$RenderItemsCommand;,
        Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowLevelRequiredDialogCommand;,
        Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowSelectStakingOrderTypeDialogCommand;,
        Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$OpenDepositScreenCommand;,
        Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$OpenStakingDetailsScreenCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;",
        ">;",
        "Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic finishScreen()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->$default$finishScreen(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    return-void
.end method

.method public onLoadMoreComplete()V
    .locals 3

    .line 217
    new-instance v0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$OnLoadMoreCompleteCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$OnLoadMoreCompleteCommand;-><init>(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State;)V

    .line 218
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 220
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 224
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

    check-cast v2, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;

    .line 225
    invoke-interface {v2}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    goto :goto_0

    .line 228
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onLoadMoreError()V
    .locals 3

    .line 233
    new-instance v0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$OnLoadMoreErrorCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$OnLoadMoreErrorCommand;-><init>(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State;)V

    .line 234
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 236
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 240
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

    check-cast v2, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;

    .line 241
    invoke-interface {v2}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreError()V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openDepositScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 3

    .line 40
    new-instance v0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$OpenDepositScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$OpenDepositScreenCommand;-><init>(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State;Lcom/iMe/model/staking/StakingDetailsItem;)V

    .line 41
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 43
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 47
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

    check-cast v2, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;

    .line 48
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;->openDepositScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V

    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openStakingDetailsScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 3

    .line 24
    new-instance v0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$OpenStakingDetailsScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$OpenStakingDetailsScreenCommand;-><init>(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State;Lcom/iMe/model/staking/StakingDetailsItem;)V

    .line 25
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 27
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 31
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

    check-cast v2, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;

    .line 32
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;->openStakingDetailsScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V

    goto :goto_0

    .line 35
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

    .line 88
    new-instance v0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$RenderItemsCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$RenderItemsCommand;-><init>(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State;Ljava/util/List;)V

    .line 89
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 91
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 95
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

    check-cast v2, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;

    .line 96
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;->renderItems(Ljava/util/List;)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public synthetic resetLoadMore()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/LoadMoreView$-CC;->$default$resetLoadMore(Lcom/iMe/ui/base/mvp/LoadMoreView;)V

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

    .line 136
    new-instance v0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowErrorToastCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowErrorToastCommand;-><init>(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State;Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 137
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 139
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 143
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

    check-cast v2, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;

    .line 144
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLevelRequiredDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 3

    .line 72
    new-instance v0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowLevelRequiredDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowLevelRequiredDialogCommand;-><init>(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 73
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 75
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 79
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

    check-cast v2, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;

    .line 80
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;->showLevelRequiredDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 120
    new-instance v0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 121
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 123
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 127
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

    check-cast v2, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;

    .line 128
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showSelectStakingOrderTypeDialog(Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;)V
    .locals 3

    .line 56
    new-instance v0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowSelectStakingOrderTypeDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowSelectStakingOrderTypeDialogCommand;-><init>(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State;Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;)V

    .line 57
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 59
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 63
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

    check-cast v2, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;

    .line 64
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;->showSelectStakingOrderTypeDialog(Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 104
    new-instance v0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 107
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 111
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

    check-cast v2, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;

    .line 112
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
