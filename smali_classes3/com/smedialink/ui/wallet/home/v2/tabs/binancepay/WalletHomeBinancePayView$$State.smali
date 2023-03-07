.class public Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "WalletHomeBinancePayView$$State.java"

# interfaces
.implements Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$NotifyDataSetChangedCommand;,
        Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowSuccessPaymentProcessedDialogCommand;,
        Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowConfirmPaymentDialogCommand;,
        Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowRefreshingCommand;,
        Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowLoadingDialogCommand;,
        Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowToastCommand;,
        Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowRequiredWalletCreatedDialogCommand;,
        Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowRequiredVerifyDialogCommand;,
        Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$OpenReplenishScreenCommand;,
        Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$OpenHistoryScreenCommand;,
        Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$OpenConvertScreenCommand;,
        Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$OpenPayScreenCommand;,
        Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowConfirmLogOutDialogCommand;,
        Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowLoginGuideDialogCommand;,
        Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowUserInfoCommand;,
        Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$RenderCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;",
        ">;",
        "Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 3

    .line 327
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$NotifyDataSetChangedCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$NotifyDataSetChangedCommand;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;)V

    .line 328
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 330
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 334
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;

    .line 335
    invoke-interface {v2}, Lcom/smedialink/ui/base/mvp/AdapterNotifyView;->notifyDataSetChanged()V

    goto :goto_0

    .line 338
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openConvertScreen()V
    .locals 3

    .line 118
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$OpenConvertScreenCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$OpenConvertScreenCommand;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;)V

    .line 119
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 121
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 125
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;

    .line 126
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;->openConvertScreen()V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openHistoryScreen()V
    .locals 3

    .line 134
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$OpenHistoryScreenCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$OpenHistoryScreenCommand;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;)V

    .line 135
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 137
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 141
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;

    .line 142
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;->openHistoryScreen()V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openPayScreen()V
    .locals 3

    .line 86
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$OpenPayScreenCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$OpenPayScreenCommand;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;)V

    .line 87
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 89
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 93
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;

    .line 94
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;->openPayScreen()V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openReplenishScreen(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 3

    .line 150
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$OpenReplenishScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$OpenReplenishScreenCommand;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    .line 151
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 153
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 157
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;

    .line 158
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;->openReplenishScreen(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public render(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$RenderCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$RenderCommand;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;Ljava/util/List;)V

    .line 23
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 25
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 29
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;

    .line 30
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;->render(Ljava/util/List;)V

    goto :goto_0

    .line 33
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showConfirmLogOutDialog(Lcom/smedialink/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/model/dialog/DialogModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowConfirmLogOutDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowConfirmLogOutDialogCommand;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;Lcom/smedialink/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V

    .line 71
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 73
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 77
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;

    .line 78
    invoke-interface {v2, p1, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;->showConfirmLogOutDialog(Lcom/smedialink/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showConfirmPaymentDialog(Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 3

    .line 279
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowConfirmPaymentDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowConfirmPaymentDialogCommand;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V

    .line 280
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 282
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 286
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;

    .line 287
    invoke-interface {v2, p1, p2}, Lcom/smedialink/manager/crypto/pay/BinancePayProcessView;->showConfirmPaymentDialog(Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 290
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 214
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowLoadingDialogCommand;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 215
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 217
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 221
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;

    .line 222
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoginGuideDialog(Lcom/smedialink/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/model/dialog/DialogModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowLoginGuideDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowLoginGuideDialogCommand;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;Lcom/smedialink/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V

    .line 55
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 57
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 61
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;

    .line 62
    invoke-interface {v2, p1, p2}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;->showLoginGuideDialog(Lcom/smedialink/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 3

    .line 263
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowRefreshingCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowRefreshingCommand;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;Z)V

    .line 264
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 266
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 270
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;

    .line 271
    invoke-interface {v2, p1}, Lcom/smedialink/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    goto :goto_0

    .line 274
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRequiredVerifyDialog()V
    .locals 3

    .line 166
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowRequiredVerifyDialogCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowRequiredVerifyDialogCommand;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;)V

    .line 167
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 169
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 173
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;

    .line 174
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;->showRequiredVerifyDialog()V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRequiredWalletCreatedDialog()V
    .locals 3

    .line 182
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowRequiredWalletCreatedDialogCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowRequiredWalletCreatedDialogCommand;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;

    .line 190
    invoke-interface {v2}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;->showRequiredWalletCreatedDialog()V

    goto :goto_0

    .line 193
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showSuccessPaymentProcessedDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 295
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowSuccessPaymentProcessedDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowSuccessPaymentProcessedDialogCommand;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 298
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 302
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;

    .line 303
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/manager/crypto/pay/BinancePayProcessView;->showSuccessPaymentProcessedDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 198
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowToastCommand;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;Ljava/lang/String;)V

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

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;

    .line 206
    invoke-interface {v2, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showUserInfo(Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;)V
    .locals 3

    .line 38
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowUserInfoCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$ShowUserInfoCommand;-><init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;)V

    .line 39
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 41
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 45
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

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;

    .line 46
    invoke-interface {v2, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;->showUserInfo(Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;)V

    goto :goto_0

    .line 49
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
