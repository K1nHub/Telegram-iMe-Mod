.class public Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "WalletTransactionDetailsView$$State.java"

# interfaces
.implements Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ShowLoadingDialogCommand;,
        Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ShowToastCommand;,
        Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OnSuccessBoostTransactionCommand;,
        Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OnSuccessCancelTransactionCommand;,
        Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ShowConfirmBoostDialogCommand;,
        Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ShowConfirmCancelDialogCommand;,
        Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ShareTransactionInfoCommand;,
        Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OpenUrlCommand;,
        Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OpenProfileScreenCommand;,
        Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OpenSendScreenCommand;,
        Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ActionCopyToClipboardCommand;,
        Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupTransactionActionsCommand;,
        Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;",
        ">;",
        "Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public actionCopyToClipboard(Ljava/lang/String;)V
    .locals 3

    .line 59
    new-instance v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ActionCopyToClipboardCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ActionCopyToClipboardCommand;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 62
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 66
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

    check-cast v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    .line 67
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->actionCopyToClipboard(Ljava/lang/String;)V

    goto :goto_0

    .line 70
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

.method public onSuccessBoostTransaction(Ljava/lang/String;)V
    .locals 3

    .line 187
    new-instance v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OnSuccessBoostTransactionCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OnSuccessBoostTransactionCommand;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 190
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 194
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

    check-cast v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    .line 195
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->onSuccessBoostTransaction(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onSuccessCancelTransaction(Ljava/lang/String;)V
    .locals 3

    .line 171
    new-instance v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OnSuccessCancelTransactionCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OnSuccessCancelTransactionCommand;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State;Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 174
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 178
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

    check-cast v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    .line 179
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->onSuccessCancelTransaction(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openProfileScreen(J)V
    .locals 3

    .line 91
    new-instance v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OpenProfileScreenCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OpenProfileScreenCommand;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State;J)V

    .line 92
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 94
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 98
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

    check-cast v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    .line 99
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->openProfileScreen(J)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openSendScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)V
    .locals 3

    .line 75
    new-instance v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OpenSendScreenCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OpenSendScreenCommand;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 78
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 82
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

    check-cast v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    .line 83
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->openSendScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 3

    .line 107
    new-instance v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OpenUrlCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OpenUrlCommand;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 110
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 114
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

    check-cast v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    .line 115
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupScreenWithData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Integer;)V
    .locals 30

    move-object/from16 v15, p0

    .line 26
    new-instance v14, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v16, v14

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupScreenWithDataCommand;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Integer;)V

    .line 27
    iget-object v0, v15, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 33
    :cond_0
    iget-object v0, v15, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    move/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, p4

    move-object/from16 v21, p5

    move-object/from16 v22, p6

    move-object/from16 v23, p7

    move-object/from16 v24, p8

    move-object/from16 v25, p9

    move-object/from16 v26, p10

    move/from16 v27, p11

    move/from16 v28, p12

    move-object/from16 v29, p13

    .line 34
    invoke-interface/range {v16 .. v29}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->setupScreenWithData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Integer;)V

    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, v15, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v1}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupTransactionActions(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/ActionItem;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupTransactionActionsCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$SetupTransactionActionsCommand;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State;Ljava/util/List;Ljava/util/List;)V

    .line 44
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 46
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 50
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

    check-cast v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    .line 51
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->setupTransactionActions(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public shareTransactionInfo(Ljava/lang/String;)V
    .locals 3

    .line 123
    new-instance v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ShareTransactionInfoCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ShareTransactionInfoCommand;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 126
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 130
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

    check-cast v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    .line 131
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->shareTransactionInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showConfirmBoostDialog(Lcom/iMe/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/dialog/DialogModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ShowConfirmBoostDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ShowConfirmBoostDialogCommand;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State;Lcom/iMe/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V

    .line 156
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 158
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 162
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

    check-cast v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    .line 163
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->showConfirmBoostDialog(Lcom/iMe/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showConfirmCancelDialog(Lcom/iMe/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/dialog/DialogModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 139
    new-instance v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ShowConfirmCancelDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ShowConfirmCancelDialogCommand;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State;Lcom/iMe/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V

    .line 140
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 142
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 146
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

    check-cast v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    .line 147
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->showConfirmCancelDialog(Lcom/iMe/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 219
    new-instance v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 220
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 222
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 226
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

    check-cast v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    .line 227
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 230
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 203
    new-instance v0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 206
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 210
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

    check-cast v2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    .line 211
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
