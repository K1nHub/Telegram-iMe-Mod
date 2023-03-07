.class public Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "BlockchainWalletDetailsView$$State.java"

# interfaces
.implements Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$ShowLoadingDialogCommand;,
        Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$ShowToastCommand;,
        Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$ShowResetWalletConfirmationDialogCommand;,
        Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$SetupScreenWithDataCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;",
        ">;",
        "Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;"
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
.method public setupScreenWithData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v7, p0

    .line 17
    new-instance v8, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$SetupScreenWithDataCommand;

    move-object v0, v8

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$SetupScreenWithDataCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v0, v7, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v8}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 20
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 24
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

    check-cast v9, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 25
    invoke-interface/range {v9 .. v14}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;->setupScreenWithData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, v7, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v8}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 65
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$ShowLoadingDialogCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State;ZZLio/reactivex/disposables/Disposable;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;

    .line 73
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showResetWalletConfirmationDialog(Lcom/smedialink/model/dialog/DialogModel;)V
    .locals 3

    .line 33
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$ShowResetWalletConfirmationDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$ShowResetWalletConfirmationDialogCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State;Lcom/smedialink/model/dialog/DialogModel;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;

    .line 41
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;->showResetWalletConfirmationDialog(Lcom/smedialink/model/dialog/DialogModel;)V

    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 49
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$ShowToastCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State;Ljava/lang/String;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;

    .line 57
    invoke-interface {v2, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
