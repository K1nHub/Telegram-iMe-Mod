.class public Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "WalletTokenDetailsView$$State.java"

# interfaces
.implements Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowRefreshingCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowSelectOptionsDialogCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenCreateWalletIntroScreenCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowActivationConfirmationDialogCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$RemoveSelfFromStackImmediatelyCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowErrorToastCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowLoadingDialogCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowToastCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OnSetupNavigationRouterCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OnTabSelectedCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupRankBadgeCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$RenderHorizontalActionButtonsCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupTransactionsScreenCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowActionErrorCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowCryptoBoxRefreshSuccessCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowCryptoBoxConditionsDialogCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowConfirmationDialogCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowCryptoBoxSuspensionDialogCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowRequiredWalletCreatedDialogCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowRequiredVerifyDialogCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenAddAdminScreenCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenTokenInformationScreenCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenBinanceReceiveScreenCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenBinanceSwapScreenCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenBinanceReplenishScreenCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenReceiveScreenCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenSendScreenCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenBuyScreenCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenStakingCalculatorScreenCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenStakingTransactionScreenCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowLevelRequiredDialogCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowStatisticDialogCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowStakingConditionsDialogCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowAccountLevelDialogCommand;,
        Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ActionCopyToClipboardCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;",
        ">;",
        "Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public actionCopyToClipboard(Ljava/lang/String;)V
    .locals 3

    .line 36
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ActionCopyToClipboardCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ActionCopyToClipboardCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Ljava/lang/String;)V

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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 44
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->actionCopyToClipboard(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public synthetic finishScreen()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->$default$finishScreen(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    return-void
.end method

.method public onSetupNavigationRouter()V
    .locals 3

    .line 489
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OnSetupNavigationRouterCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OnSetupNavigationRouterCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;)V

    .line 490
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 492
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 496
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 497
    invoke-interface {v2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->onSetupNavigationRouter()V

    goto :goto_0

    .line 500
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onTabSelected(I)V
    .locals 3

    .line 473
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OnTabSelectedCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OnTabSelectedCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;I)V

    .line 474
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 476
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 480
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 481
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->onTabSelected(I)V

    goto :goto_0

    .line 484
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openAddAdminScreen(JJLjava/lang/String;)V
    .locals 15

    move-object v7, p0

    .line 261
    new-instance v8, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenAddAdminScreenCommand;

    move-object v0, v8

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenAddAdminScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;JJLjava/lang/String;)V

    .line 262
    iget-object v0, v7, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v8}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 264
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 268
    :cond_0
    iget-object v0, v7, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-object/from16 v14, p5

    .line 269
    invoke-interface/range {v9 .. v14}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openAddAdminScreen(JJLjava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, v7, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v8}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openBinanceReceiveScreen(Lcom/iMe/model/wallet/crypto/TokenItem;)V
    .locals 3

    .line 229
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenBinanceReceiveScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenBinanceReceiveScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/model/wallet/crypto/TokenItem;)V

    .line 230
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 232
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 236
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 237
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openBinanceReceiveScreen(Lcom/iMe/model/wallet/crypto/TokenItem;)V

    goto :goto_0

    .line 240
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openBinanceReplenishScreen(Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;)V
    .locals 3

    .line 197
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenBinanceReplenishScreenCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenBinanceReplenishScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 200
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 204
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 205
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openBinanceReplenishScreen(Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openBinanceSwapScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 3

    .line 213
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenBinanceSwapScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenBinanceSwapScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 214
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 216
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 220
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 221
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openBinanceSwapScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto :goto_0

    .line 224
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openBuyScreen(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 3

    .line 149
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenBuyScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenBuyScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    .line 150
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 152
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 156
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 157
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openBuyScreen(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openCreateWalletIntroScreen(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V
    .locals 3

    .line 619
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenCreateWalletIntroScreenCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenCreateWalletIntroScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V

    .line 620
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 622
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 626
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 627
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->openCreateWalletIntroScreen(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V

    goto :goto_0

    .line 630
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openReceiveScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 181
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenReceiveScreenCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenReceiveScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 184
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 188
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 189
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openReceiveScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openSendScreen(Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;)V
    .locals 3

    .line 165
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenSendScreenCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenSendScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 168
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 172
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 173
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openSendScreen(Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openStakingCalculatorScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 3

    .line 133
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenStakingCalculatorScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenStakingCalculatorScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/model/staking/StakingDetailsItem;)V

    .line 134
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 136
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 140
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 141
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openStakingCalculatorScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openStakingTransactionScreen(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/model/wallet/staking/StakingScreenType;)V
    .locals 3

    .line 117
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenStakingTransactionScreenCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenStakingTransactionScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/model/wallet/staking/StakingScreenType;)V

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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 125
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openStakingTransactionScreen(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/model/wallet/staking/StakingScreenType;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openTokenInformationScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 3

    .line 245
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenTokenInformationScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$OpenTokenInformationScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 246
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 248
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 252
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 253
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openTokenInformationScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto :goto_0

    .line 256
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public removeSelfFromStackImmediately()V
    .locals 3

    .line 569
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$RemoveSelfFromStackImmediatelyCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$RemoveSelfFromStackImmediatelyCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;)V

    .line 570
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 572
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 576
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 577
    invoke-interface {v2}, Lcom/iMe/ui/base/mvp/base/BaseView;->removeSelfFromStackImmediately()V

    goto :goto_0

    .line 580
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public renderHorizontalActionButtons(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;)V"
        }
    .end annotation

    .line 441
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$RenderHorizontalActionButtonsCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$RenderHorizontalActionButtonsCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Ljava/util/List;)V

    .line 442
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 444
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 448
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 449
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->renderHorizontalActionButtons(Ljava/util/List;)V

    goto :goto_0

    .line 452
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupCryptoBoxDetailsScreen(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;)V
    .locals 25

    move-object/from16 v12, p0

    .line 425
    new-instance v13, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupCryptoBoxDetailsScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;)V

    .line 426
    iget-object v0, v12, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v13}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 432
    :cond_0
    iget-object v0, v12, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-wide/from16 v17, p3

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    move-object/from16 v21, p7

    move-object/from16 v22, p8

    move-object/from16 v23, p9

    move-object/from16 v24, p10

    .line 433
    invoke-interface/range {v14 .. v24}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->setupCryptoBoxDetailsScreen(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;)V

    goto :goto_0

    .line 436
    :cond_1
    iget-object v0, v12, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v13}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupRankBadge(ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 3

    .line 457
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupRankBadgeCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupRankBadgeCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V

    .line 458
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 460
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 464
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 465
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->setupRankBadge(ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V

    goto :goto_0

    .line 468
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupStakingDetailsScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/model/staking/StakingProgrammeStatus;)V
    .locals 23

    move-object/from16 v11, p0

    .line 407
    new-instance v12, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/model/staking/StakingProgrammeStatus;)V

    .line 408
    iget-object v0, v11, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v12}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 410
    invoke-virtual/range {p0 .. p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 414
    :cond_0
    iget-object v0, v11, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    move-object/from16 v19, p6

    move-object/from16 v20, p7

    move/from16 v21, p8

    move-object/from16 v22, p9

    .line 415
    invoke-interface/range {v13 .. v22}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->setupStakingDetailsScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/model/staking/StakingProgrammeStatus;)V

    goto :goto_0

    .line 418
    :cond_1
    iget-object v0, v11, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v12}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupTransactionsScreen(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V
    .locals 3

    .line 389
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupTransactionsScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$SetupTransactionsScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    .line 390
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 392
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 396
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 397
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->setupTransactionsScreen(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    goto :goto_0

    .line 400
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showAccountLevelDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 3

    .line 52
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowAccountLevelDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowAccountLevelDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V

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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 60
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showAccountLevelDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showActionError(Ljava/lang/String;)V
    .locals 3

    .line 373
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowActionErrorCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowActionErrorCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 376
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 380
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 381
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showActionError(Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showActivationConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 3

    .line 602
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowActivationConfirmationDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowActivationConfirmationDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    .line 603
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 605
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 609
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 610
    invoke-interface {v2, p1, p2}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->showActivationConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 613
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 3

    .line 325
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowConfirmationDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowConfirmationDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    .line 326
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 328
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 332
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 333
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 336
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showCryptoBoxConditionsDialog(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;)V
    .locals 3

    .line 341
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowCryptoBoxConditionsDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowCryptoBoxConditionsDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;)V

    .line 342
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 344
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 348
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 349
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showCryptoBoxConditionsDialog(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;)V

    goto :goto_0

    .line 352
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showCryptoBoxRefreshSuccess()V
    .locals 3

    .line 357
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowCryptoBoxRefreshSuccessCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowCryptoBoxRefreshSuccessCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;)V

    .line 358
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 360
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 364
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 365
    invoke-interface {v2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showCryptoBoxRefreshSuccess()V

    goto :goto_0

    .line 368
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showCryptoBoxSuspensionDialog(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;)V
    .locals 3

    .line 309
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowCryptoBoxSuspensionDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowCryptoBoxSuspensionDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;)V

    .line 310
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 312
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 316
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 317
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showCryptoBoxSuspensionDialog(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;)V

    goto :goto_0

    .line 320
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

    .line 537
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowErrorToastCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowErrorToastCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 538
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 540
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 544
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 545
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    goto :goto_0

    .line 548
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLevelRequiredDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 3

    .line 100
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowLevelRequiredDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowLevelRequiredDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 101
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 103
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 107
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 108
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showLevelRequiredDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 521
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 522
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 524
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 528
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 529
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 532
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 3

    .line 652
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowRefreshingCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowRefreshingCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Z)V

    .line 653
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 655
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 659
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 660
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    goto :goto_0

    .line 663
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRequiredVerifyDialog()V
    .locals 3

    .line 277
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowRequiredVerifyDialogCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowRequiredVerifyDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;)V

    .line 278
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 280
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 284
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 285
    invoke-interface {v2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showRequiredVerifyDialog()V

    goto :goto_0

    .line 288
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRequiredWalletCreatedDialog(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 3

    .line 293
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowRequiredWalletCreatedDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowRequiredWalletCreatedDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    .line 294
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 296
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 300
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 301
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showRequiredWalletCreatedDialog(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 304
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showSelectOptionsDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    .line 636
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowSelectOptionsDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowSelectOptionsDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 637
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 639
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 643
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 644
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->showSelectOptionsDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 647
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showStakingConditionsDialog(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 3

    .line 68
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowStakingConditionsDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowStakingConditionsDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/model/staking/StakingDetailsItem;)V

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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 76
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showStakingConditionsDialog(Lcom/iMe/model/staking/StakingDetailsItem;)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showStatisticDialog(Lcom/iMe/model/statistic/StatisticDiagramModel;)V
    .locals 3

    .line 84
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowStatisticDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowStatisticDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Lcom/iMe/model/statistic/StatisticDiagramModel;)V

    .line 85
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 87
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 91
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 92
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->showStatisticDialog(Lcom/iMe/model/statistic/StatisticDiagramModel;)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 505
    new-instance v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView$$State;Ljava/lang/String;)V

    .line 506
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 508
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 512
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

    check-cast v2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 513
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 516
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
