.class public Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "WalletSwapProcessView$$State.java"

# interfaces
.implements Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowChooseNetworkDialogCommand;,
        Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowLoadingDialogCommand;,
        Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowToastCommand;,
        Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowChangeNetworkHintCommand;,
        Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowMinMaxInputValuesCommand;,
        Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;,
        Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSwapFeeScreenCommand;,
        Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowSuccessApproveAlertCommand;,
        Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowSwapConfirmationDialogCommand;,
        Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowSuccessSwapAlertCommand;,
        Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowNotEnoughMoneyBinanceErrorDialogCommand;,
        Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowNotEnoughMoneyErrorDialogCommand;,
        Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupNetworkTypeCommand;,
        Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$RenderStateCommand;,
        Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowTokenBalanceCommand;,
        Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;,
        Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;",
        ">;",
        "Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenSelected(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;IILcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 15

    move-object v7, p0

    .line 45
    new-instance v8, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;

    move-object v0, v8

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;IILcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    .line 46
    iget-object v0, v7, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v8}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 48
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 52
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

    check-cast v9, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    .line 53
    invoke-interface/range {v9 .. v14}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->onTokenSelected(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;IILcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, v7, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v8}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openSelectTokenDialog(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/select/SelectableType;ZLkotlin/jvm/functions/Function1;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/model/wallet/swap/SwapSide;",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Lcom/smedialink/model/wallet/select/SelectableType;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 207
    new-instance v10, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSelectTokenDialogCommand;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/select/SelectableType;ZLkotlin/jvm/functions/Function1;)V

    .line 208
    iget-object v0, v9, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v10}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 210
    invoke-virtual/range {p0 .. p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v0, v9, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move/from16 v17, p6

    move-object/from16 v18, p7

    .line 215
    invoke-interface/range {v11 .. v18}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->openSelectTokenDialog(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/select/SelectableType;ZLkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, v9, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v10}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openSwapFeeScreen(Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;)V
    .locals 3

    .line 189
    new-instance v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSwapFeeScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OpenSwapFeeScreenCommand;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;)V

    .line 190
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 192
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 196
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

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 197
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->openSwapFeeScreen(Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V
    .locals 3

    .line 77
    new-instance v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$RenderStateCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$RenderStateCommand;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    .line 78
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 80
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 84
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

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 85
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/swap/SwapSide;)V
    .locals 3

    .line 93
    new-instance v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupNetworkTypeCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupNetworkTypeCommand;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    .line 94
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 96
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 100
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

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 101
    invoke-interface {v2, p1, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->setupNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupScreenForSwap(Ljava/lang/String;Ljava/lang/String;IZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;)V
    .locals 15

    move-object v7, p0

    .line 28
    new-instance v8, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;

    move-object v0, v8

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupScreenForSwapCommand;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;Ljava/lang/String;Ljava/lang/String;IZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;)V

    .line 29
    iget-object v0, v7, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v8}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 31
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 35
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

    check-cast v9, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    .line 36
    invoke-interface/range {v9 .. v14}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->setupScreenForSwap(Ljava/lang/String;Ljava/lang/String;IZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;)V

    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, v7, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v8}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showChangeNetworkHint()V
    .locals 3

    .line 239
    new-instance v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowChangeNetworkHintCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowChangeNetworkHintCommand;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;)V

    .line 240
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 242
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 246
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

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 247
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->showChangeNetworkHint()V

    goto :goto_0

    .line 250
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

    .line 337
    new-instance v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowChooseNetworkDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowChooseNetworkDialogCommand;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 338
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 340
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 344
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

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 345
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/base/mvp/SwitchNetworkView;->showChooseNetworkDialog(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 348
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 271
    new-instance v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowLoadingDialogCommand;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 272
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 274
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 278
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

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 279
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showMinMaxInputValues(Lcom/smedialink/model/wallet/select/SelectableToken;Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;)V
    .locals 3

    .line 223
    new-instance v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowMinMaxInputValuesCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowMinMaxInputValuesCommand;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;Lcom/smedialink/model/wallet/select/SelectableToken;Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;)V

    .line 224
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 226
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 230
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

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 231
    invoke-interface {v2, p1, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->showMinMaxInputValues(Lcom/smedialink/model/wallet/select/SelectableToken;Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showNotEnoughMoneyBinanceErrorDialog()V
    .locals 3

    .line 125
    new-instance v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowNotEnoughMoneyBinanceErrorDialogCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowNotEnoughMoneyBinanceErrorDialogCommand;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;)V

    .line 126
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 128
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 132
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

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 133
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->showNotEnoughMoneyBinanceErrorDialog()V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showNotEnoughMoneyErrorDialog(Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 3

    .line 109
    new-instance v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowNotEnoughMoneyErrorDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowNotEnoughMoneyErrorDialogCommand;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    .line 110
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 112
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 116
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

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 117
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->showNotEnoughMoneyErrorDialog(Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showSuccessApproveAlert()V
    .locals 3

    .line 173
    new-instance v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowSuccessApproveAlertCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowSuccessApproveAlertCommand;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;)V

    .line 174
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 176
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 180
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

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 181
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->showSuccessApproveAlert()V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showSuccessSwapAlert()V
    .locals 3

    .line 141
    new-instance v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowSuccessSwapAlertCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowSuccessSwapAlertCommand;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;)V

    .line 142
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 144
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 148
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

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 149
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->showSuccessSwapAlert()V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showSwapConfirmationDialog(Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 3

    .line 157
    new-instance v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowSwapConfirmationDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowSwapConfirmationDialogCommand;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V

    .line 158
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 160
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 164
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

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 165
    invoke-interface {v2, p1, p2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->showSwapConfirmationDialog(Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 255
    new-instance v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowToastCommand;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 258
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 262
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

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 263
    invoke-interface {v2, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showTokenBalance(Ljava/lang/String;)V
    .locals 3

    .line 61
    new-instance v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowTokenBalanceCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowTokenBalanceCommand;-><init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 64
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 68
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

    check-cast v2, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    .line 69
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->showTokenBalance(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
