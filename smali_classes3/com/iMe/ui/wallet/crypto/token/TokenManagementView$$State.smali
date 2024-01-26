.class public Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "TokenManagementView$$State.java"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowChooseNetworkDialogCommand;,
        Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupNetworkCommand;,
        Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$FinishScreenCommand;,
        Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowErrorToastCommand;,
        Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowLoadingDialogCommand;,
        Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowToastCommand;,
        Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupTokenDataCommand;,
        Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupActionButtonStateCommand;,
        Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ResetImportScreenCommand;,
        Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$UpdateErrorTextVisibilityCommand;,
        Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetScannedAddressTextCommand;,
        Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowTokensListsDialogCommand;,
        Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowDeleteConfirmationDialogCommand;,
        Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowEnableConfirmationDialogCommand;,
        Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$OpenBrowserUrlCommand;,
        Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$CopyAddressToClipboardCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;",
        ">;",
        "Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;"
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
.method public copyAddressToClipboard(Ljava/lang/String;)V
    .locals 3

    .line 23
    new-instance v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$CopyAddressToClipboardCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$CopyAddressToClipboardCommand;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 26
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 30
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    .line 31
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->copyAddressToClipboard(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public finishScreen()V
    .locals 3

    .line 232
    new-instance v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$FinishScreenCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$FinishScreenCommand;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;)V

    .line 233
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 235
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 239
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    .line 240
    invoke-interface {v2}, Lcom/iMe/ui/base/mvp/base/BaseView;->finishScreen()V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openBrowserUrl(Ljava/lang/String;)V
    .locals 3

    .line 39
    new-instance v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$OpenBrowserUrlCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$OpenBrowserUrlCommand;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 42
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 46
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    .line 47
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->openBrowserUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 50
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

.method public resetImportScreen()V
    .locals 3

    .line 135
    new-instance v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ResetImportScreenCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ResetImportScreenCommand;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;)V

    .line 136
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 138
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 142
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    .line 143
    invoke-interface {v2}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->resetImportScreen()V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setScannedAddressText(Ljava/lang/String;)V
    .locals 3

    .line 103
    new-instance v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetScannedAddressTextCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetScannedAddressTextCommand;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 106
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 110
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    .line 111
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->setScannedAddressText(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupActionButtonState(ZZ)V
    .locals 3

    .line 151
    new-instance v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupActionButtonStateCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupActionButtonStateCommand;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;ZZ)V

    .line 152
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 154
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 158
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    .line 159
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->setupActionButtonState(ZZ)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V
    .locals 3

    .line 281
    new-instance v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupNetworkCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupNetworkCommand;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    .line 282
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 284
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 288
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    .line 289
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    goto :goto_0

    .line 292
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupTokenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/lang/Integer;)V
    .locals 19

    move-object/from16 v9, p0

    .line 168
    new-instance v10, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupTokenDataCommand;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$SetupTokenDataCommand;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/lang/Integer;)V

    .line 169
    iget-object v0, v9, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v10}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 175
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

    check-cast v11, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    move-object/from16 v18, p7

    .line 176
    invoke-interface/range {v11 .. v18}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->setupTokenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/lang/Integer;)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, v9, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v10}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showChooseNetworkDialog(Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            ">;)V"
        }
    .end annotation

    .line 298
    new-instance v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowChooseNetworkDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowChooseNetworkDialogCommand;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V

    .line 299
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 301
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 305
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    .line 306
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->showChooseNetworkDialog(Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V

    goto :goto_0

    .line 309
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showDeleteConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 3

    .line 71
    new-instance v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowDeleteConfirmationDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowDeleteConfirmationDialogCommand;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;Lcom/iMe/model/dialog/DialogModel;)V

    .line 72
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 74
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 78
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    .line 79
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->showDeleteConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showEnableConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 3

    .line 55
    new-instance v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowEnableConfirmationDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowEnableConfirmationDialogCommand;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;Lcom/iMe/model/dialog/DialogModel;)V

    .line 56
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 58
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 62
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    .line 63
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->showEnableConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V

    goto :goto_0

    .line 66
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

    .line 216
    new-instance v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowErrorToastCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowErrorToastCommand;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 217
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 219
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 223
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    .line 224
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    goto :goto_0

    .line 227
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 200
    new-instance v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 201
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 203
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 207
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    .line 208
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 184
    new-instance v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 187
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 191
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    .line 192
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showTokensListsDialog(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenListInfo;",
            ">;)V"
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowTokensListsDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$ShowTokensListsDialogCommand;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;Ljava/util/List;)V

    .line 88
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 90
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 94
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    .line 95
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->showTokensListsDialog(Ljava/util/List;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public updateErrorTextVisibility(Z)V
    .locals 3

    .line 119
    new-instance v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$UpdateErrorTextVisibilityCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State$UpdateErrorTextVisibilityCommand;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementView$$State;Z)V

    .line 120
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 122
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 126
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    .line 127
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->updateErrorTextVisibility(Z)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
