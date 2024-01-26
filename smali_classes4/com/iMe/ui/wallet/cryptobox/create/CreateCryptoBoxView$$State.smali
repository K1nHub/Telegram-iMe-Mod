.class public Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "CreateCryptoBoxView$$State.java"

# interfaces
.implements Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowChooseNetworkDialogCommand;,
        Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupNetworkCommand;,
        Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowErrorToastCommand;,
        Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowLoadingDialogCommand;,
        Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowToastCommand;,
        Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupCapacityInputErrorStateCommand;,
        Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupAmountInputErrorStateCommand;,
        Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderTransactionActionBlockCommand;,
        Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ResetSelectedTokenCommand;,
        Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderSelectedTokenCommand;,
        Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderSelectedChatCommand;,
        Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderCryptoBoxCreationRulesCommand;,
        Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$OpenBuyScreenCommand;,
        Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$OpenAddAdminScreenCommand;,
        Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$OpenSelectChatScreenCommand;,
        Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$OpenSelectTokenScreenCommand;,
        Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowCryptoBoxInfoDialogCommand;,
        Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowConfirmDialogCommand;,
        Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowActionErrorCommand;,
        Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowCreationSuccessCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;",
        ">;",
        "Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic finishScreen()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->$default$finishScreen(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    return-void
.end method

.method public openAddAdminScreen(JLorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 3

    .line 122
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$OpenAddAdminScreenCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$OpenAddAdminScreenCommand;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;JLorg/telegram/tgnet/TLRPC$Chat;)V

    .line 123
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 125
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 129
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

    check-cast v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 130
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->openAddAdminScreen(JLorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openBuyScreen(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 3

    .line 138
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$OpenBuyScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$OpenBuyScreenCommand;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    .line 139
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 141
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 145
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

    check-cast v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 146
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->openBuyScreen(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openSelectChatScreen(Ljava/lang/Long;)V
    .locals 3

    .line 106
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$OpenSelectChatScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$OpenSelectChatScreenCommand;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;Ljava/lang/Long;)V

    .line 107
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 109
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 113
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

    check-cast v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 114
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->openSelectChatScreen(Ljava/lang/Long;)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openSelectTokenScreen(Ljava/lang/String;)V
    .locals 3

    .line 90
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$OpenSelectTokenScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$OpenSelectTokenScreenCommand;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 93
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 97
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

    check-cast v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 98
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->openSelectTokenScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 101
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

.method public renderCryptoBoxCreationRules(Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;Z)V
    .locals 3

    .line 155
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderCryptoBoxCreationRulesCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderCryptoBoxCreationRulesCommand;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;Z)V

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

    check-cast v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 163
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->renderCryptoBoxCreationRules(Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;Z)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public renderSelectedChat(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 3

    .line 171
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderSelectedChatCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderSelectedChatCommand;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;Lorg/telegram/tgnet/TLRPC$Chat;)V

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

    check-cast v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 179
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->renderSelectedChat(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public renderSelectedToken(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .line 188
    new-instance v6, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderSelectedTokenCommand;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderSelectedTokenCommand;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 189
    iget-object v0, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v6}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 191
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 195
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

    check-cast v1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 196
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->renderSelectedToken(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v6}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public renderTransactionActionBlock(Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V
    .locals 3

    .line 220
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderTransactionActionBlockCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderTransactionActionBlockCommand;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V

    .line 221
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 223
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 227
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

    check-cast v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 228
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->renderTransactionActionBlock(Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public resetSelectedToken()V
    .locals 3

    .line 204
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ResetSelectedTokenCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ResetSelectedTokenCommand;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;)V

    .line 205
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 207
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 211
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

    check-cast v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 212
    invoke-interface {v2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->resetSelectedToken()V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupAmountInputErrorState(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 236
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupAmountInputErrorStateCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupAmountInputErrorStateCommand;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;ZLjava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 239
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 243
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

    check-cast v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 244
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->setupAmountInputErrorState(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupCapacityInputErrorState(ZLjava/lang/String;)V
    .locals 3

    .line 252
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupCapacityInputErrorStateCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupCapacityInputErrorStateCommand;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;ZLjava/lang/String;)V

    .line 253
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 255
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 259
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

    check-cast v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 260
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->setupCapacityInputErrorState(ZLjava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V
    .locals 3

    .line 365
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupNetworkCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupNetworkCommand;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    .line 366
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 368
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 372
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

    check-cast v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 373
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    goto :goto_0

    .line 376
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showActionError(Ljava/lang/String;)V
    .locals 3

    .line 42
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowActionErrorCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowActionErrorCommand;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 45
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 49
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

    check-cast v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 50
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->showActionError(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

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

    .line 382
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowChooseNetworkDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowChooseNetworkDialogCommand;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V

    .line 383
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 385
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 389
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

    check-cast v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 390
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->showChooseNetworkDialog(Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V

    goto :goto_0

    .line 393
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showConfirmDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 3

    .line 58
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowConfirmDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowConfirmDialogCommand;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    .line 59
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 61
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 65
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

    check-cast v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 66
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->showConfirmDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showCreationSuccess()V
    .locals 3

    .line 26
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowCreationSuccessCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowCreationSuccessCommand;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;)V

    .line 27
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 29
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 33
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

    check-cast v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 34
    invoke-interface {v2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->showCreationSuccess()V

    goto :goto_0

    .line 37
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showCryptoBoxInfoDialog(Ljava/lang/String;)V
    .locals 3

    .line 74
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowCryptoBoxInfoDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowCryptoBoxInfoDialogCommand;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 77
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 81
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

    check-cast v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 82
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->showCryptoBoxInfoDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 85
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

    .line 300
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowErrorToastCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowErrorToastCommand;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 301
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 303
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 307
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

    check-cast v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 308
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    goto :goto_0

    .line 311
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 284
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 285
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 287
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 291
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

    check-cast v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 292
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 295
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 268
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 271
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 275
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

    check-cast v2, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    .line 276
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
