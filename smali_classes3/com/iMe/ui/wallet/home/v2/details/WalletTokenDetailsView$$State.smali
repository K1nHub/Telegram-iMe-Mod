.class public Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "WalletTokenDetailsView$$State.java"

# interfaces
.implements Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowRefreshingCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowSelectOptionsDialogCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenCreateWalletScreenCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenImportWalletScreenCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowActivationConfirmationDialogCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAlreadyCreatedWalletWarningDialogCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAnimatedDialogCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowLoadingDialogCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowToastCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowRequiredWalletCreatedDialogCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowRequiredVerifyDialogCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenBinanceReceiveScreenCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenBinanceSwapScreenCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenBinanceReplenishScreenCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenReceiveScreenCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenSendScreenCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenBuyScreenCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenStakingCalculatorScreenCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenStakingWithdrawScreenCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenStakingProfitScreenCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenStakingReplenishScreenCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowLevelRequiredDialogCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowStatisticDialogCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowStakingConditionsDialogCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAccountLevelDialogCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OnSetupNavigationRouterCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OnTabSelectedCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$SetupRankBadgeCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$SetupHorizontalActionButtonsCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;,
        Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$SetupTransactionsScreenCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;",
        ">;",
        "Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic finishScreen()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->$default$finishScreen(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    return-void
.end method

.method public onSetupNavigationRouter()V
    .locals 3

    .line 128
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OnSetupNavigationRouterCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OnSetupNavigationRouterCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;)V

    .line 129
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 131
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 135
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 136
    invoke-interface {v2}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->onSetupNavigationRouter()V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onTabSelected(I)V
    .locals 3

    .line 112
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OnTabSelectedCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OnTabSelectedCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;I)V

    .line 113
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 115
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 119
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 120
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->onTabSelected(I)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openBinanceReceiveScreen(Lcom/iMe/model/wallet/select/SelectableToken;)V
    .locals 3

    .line 352
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenBinanceReceiveScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenBinanceReceiveScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/iMe/model/wallet/select/SelectableToken;)V

    .line 353
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 355
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 359
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 360
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->openBinanceReceiveScreen(Lcom/iMe/model/wallet/select/SelectableToken;)V

    goto :goto_0

    .line 363
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openBinanceReplenishScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 3

    .line 320
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenBinanceReplenishScreenCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenBinanceReplenishScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    .line 321
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 323
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 327
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 328
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->openBinanceReplenishScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    goto :goto_0

    .line 331
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openBinanceSwapScreen(Lcom/iMe/model/wallet/select/SelectableToken;)V
    .locals 3

    .line 336
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenBinanceSwapScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenBinanceSwapScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/iMe/model/wallet/select/SelectableToken;)V

    .line 337
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 339
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 343
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 344
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->openBinanceSwapScreen(Lcom/iMe/model/wallet/select/SelectableToken;)V

    goto :goto_0

    .line 347
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openBuyScreen(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 3

    .line 272
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenBuyScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenBuyScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    .line 273
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 275
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 279
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 280
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->openBuyScreen(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openCreateWalletScreen(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 530
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenCreateWalletScreenCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenCreateWalletScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Ljava/util/List;Ljava/lang/String;)V

    .line 531
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 533
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 537
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 538
    invoke-interface {v2, p1, p2}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->openCreateWalletScreen(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openImportWalletScreen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 514
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenImportWalletScreenCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenImportWalletScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 517
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 521
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 522
    invoke-interface {v2, p1, p2}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->openImportWalletScreen(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 525
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openReceiveScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 3

    .line 304
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenReceiveScreenCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenReceiveScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    .line 305
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 307
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 311
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 312
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->openReceiveScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    goto :goto_0

    .line 315
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openSendScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 3

    .line 288
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenSendScreenCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenSendScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    .line 289
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 291
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 295
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 296
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->openSendScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    goto :goto_0

    .line 299
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openStakingCalculatorScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 3

    .line 256
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenStakingCalculatorScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenStakingCalculatorScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/iMe/model/staking/StakingDetailsItem;)V

    .line 257
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 259
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 263
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 264
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->openStakingCalculatorScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openStakingProfitScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 3

    .line 224
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenStakingProfitScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenStakingProfitScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/iMe/model/staking/StakingDetailsItem;)V

    .line 225
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 227
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 231
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 232
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->openStakingProfitScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V

    goto :goto_0

    .line 235
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openStakingReplenishScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 3

    .line 208
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenStakingReplenishScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenStakingReplenishScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/iMe/model/staking/StakingDetailsItem;)V

    .line 209
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 211
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 215
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 216
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->openStakingReplenishScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openStakingWithdrawScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 3

    .line 240
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenStakingWithdrawScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenStakingWithdrawScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/iMe/model/staking/StakingDetailsItem;)V

    .line 241
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 243
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 247
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 248
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->openStakingWithdrawScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V

    goto :goto_0

    .line 251
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupHorizontalActionButtons(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;)V"
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$SetupHorizontalActionButtonsCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$SetupHorizontalActionButtonsCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Ljava/util/List;)V

    .line 81
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 83
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 87
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 88
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->setupHorizontalActionButtons(Ljava/util/List;)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupRankBadge(ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 3

    .line 96
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$SetupRankBadgeCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$SetupRankBadgeCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V

    .line 97
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 99
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 103
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 104
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->setupRankBadge(ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupStakingDetailsScreen(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/model/staking/StakingProgrammeStatus;)V
    .locals 21

    move-object/from16 v10, p0

    .line 64
    new-instance v11, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/model/staking/StakingProgrammeStatus;)V

    .line 65
    iget-object v0, v10, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v11}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, v10, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    move/from16 v19, p7

    move-object/from16 v20, p8

    .line 72
    invoke-interface/range {v12 .. v20}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->setupStakingDetailsScreen(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/model/staking/StakingProgrammeStatus;)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, v10, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v11}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupTransactionsScreen(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V
    .locals 3

    .line 46
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$SetupTransactionsScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$SetupTransactionsScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    .line 47
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 49
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 53
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 54
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->setupTransactionsScreen(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showAccountLevelDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 3

    .line 144
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAccountLevelDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAccountLevelDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V

    .line 145
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 147
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 151
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 152
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->showAccountLevelDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showActivationConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 3

    .line 498
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowActivationConfirmationDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowActivationConfirmationDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    .line 499
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 501
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 505
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 506
    invoke-interface {v2, p1, p2}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->showActivationConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 509
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showAlreadyCreatedWalletWarningDialog(Lcom/iMe/model/dialog/DialogModel;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 3

    .line 482
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAlreadyCreatedWalletWarningDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAlreadyCreatedWalletWarningDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/iMe/model/dialog/DialogModel;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    .line 483
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 485
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 489
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 490
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->showAlreadyCreatedWalletWarningDialog(Lcom/iMe/model/dialog/DialogModel;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 493
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showAnimatedDialog(Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 3

    .line 465
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAnimatedDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAnimatedDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    .line 466
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 468
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 472
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 473
    invoke-interface {v2, p1, p2}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->showAnimatedDialog(Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 476
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLevelRequiredDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 3

    .line 192
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowLevelRequiredDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowLevelRequiredDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V

    .line 193
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 195
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 199
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 200
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->showLevelRequiredDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 416
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 417
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 419
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 423
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 424
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 427
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 3

    .line 563
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowRefreshingCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowRefreshingCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Z)V

    .line 564
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 566
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 570
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 571
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    goto :goto_0

    .line 574
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRequiredVerifyDialog()V
    .locals 3

    .line 368
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowRequiredVerifyDialogCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowRequiredVerifyDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;)V

    .line 369
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 371
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 375
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 376
    invoke-interface {v2}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->showRequiredVerifyDialog()V

    goto :goto_0

    .line 379
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRequiredWalletCreatedDialog(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 3

    .line 384
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowRequiredWalletCreatedDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowRequiredWalletCreatedDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    .line 385
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 387
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 391
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 392
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->showRequiredWalletCreatedDialog(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 395
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showSelectOptionsDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    .line 547
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowSelectOptionsDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowSelectOptionsDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 548
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 550
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 554
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 555
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->showSelectOptionsDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 558
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showStakingConditionsDialog(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 3

    .line 160
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowStakingConditionsDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowStakingConditionsDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/iMe/model/staking/StakingDetailsItem;)V

    .line 161
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 163
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 167
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 168
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->showStakingConditionsDialog(Lcom/iMe/model/staking/StakingDetailsItem;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showStatisticDialog(Lcom/iMe/model/statistic/StatisticDiagramModel;)V
    .locals 3

    .line 176
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowStatisticDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowStatisticDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/iMe/model/statistic/StatisticDiagramModel;)V

    .line 177
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 179
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 183
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 184
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->showStatisticDialog(Lcom/iMe/model/statistic/StatisticDiagramModel;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 400
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 403
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 407
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

    check-cast v2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    .line 408
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
