.class public Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "CryptoBuyCustomPriceView$$State.java"

# interfaces
.implements Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowLoadingDialogCommand;,
        Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowToastCommand;,
        Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ResetInputErrorCommand;,
        Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowInputErrorCommand;,
        Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowExchangedValueCommand;,
        Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;,
        Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowConfirmDialogCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;",
        ">;",
        "Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public configureExchangeState(FFLcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;)V
    .locals 7

    .line 34
    new-instance v6, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State;FFLcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;)V

    .line 35
    iget-object v0, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v6}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 37
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 41
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

    check-cast v1, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;

    .line 42
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;->configureExchangeState(FFLcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;)V

    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v6}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public resetInputError()V
    .locals 3

    .line 82
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ResetInputErrorCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ResetInputErrorCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State;)V

    .line 83
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 85
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 89
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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;

    .line 90
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;->resetInputError()V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showConfirmDialog(FLcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/model/dialog/DialogModel;)V
    .locals 3

    .line 17
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowConfirmDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowConfirmDialogCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State;FLcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/model/dialog/DialogModel;)V

    .line 18
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 20
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 24
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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;

    .line 25
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;->showConfirmDialog(FLcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/model/dialog/DialogModel;)V

    goto :goto_0

    .line 28
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showExchangedValue(F)V
    .locals 3

    .line 50
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowExchangedValueCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowExchangedValueCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State;F)V

    .line 51
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 53
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 57
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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;

    .line 58
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;->showExchangedValue(F)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showInputError(Ljava/lang/String;)V
    .locals 3

    .line 66
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowInputErrorCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowInputErrorCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 69
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 73
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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;

    .line 74
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;->showInputError(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 114
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowLoadingDialogCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 115
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 117
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 121
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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;

    .line 122
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 98
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State$ShowToastCommand;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView$$State;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 101
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 105
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

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;

    .line 106
    invoke-interface {v2, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
