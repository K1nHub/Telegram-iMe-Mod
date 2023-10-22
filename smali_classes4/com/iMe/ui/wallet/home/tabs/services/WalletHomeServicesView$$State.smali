.class public Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "WalletHomeServicesView$$State.java"

# interfaces
.implements Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$ShowErrorToastCommand;,
        Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$ShowLoadingDialogCommand;,
        Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$ShowToastCommand;,
        Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$FirstScreenInitWithItemsCommand;,
        Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$ShowRequiredWalletCreatedDialogCommand;,
        Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$OpenActionIntroScreenCommand;,
        Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$OpenTelegramPremiumScreenCommand;,
        Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$OpenTelegramUsernamesScreenCommand;,
        Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$OpenChannelsCatalogScreenCommand;,
        Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$OpenCryptoBoxesScreenCommand;,
        Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$OpenStakingScreenCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;",
        ">;",
        "Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic finishScreen()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->$default$finishScreen(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    return-void
.end method

.method public firstScreenInitWithItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 133
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$FirstScreenInitWithItemsCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$FirstScreenInitWithItemsCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State;Ljava/util/List;)V

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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    .line 141
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;->firstScreenInitWithItems(Ljava/util/List;)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openActionIntroScreen(I)V
    .locals 3

    .line 101
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$OpenActionIntroScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$OpenActionIntroScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State;I)V

    .line 102
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 104
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 108
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    .line 109
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;->openActionIntroScreen(I)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openChannelsCatalogScreen()V
    .locals 3

    .line 53
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$OpenChannelsCatalogScreenCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$OpenChannelsCatalogScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State;)V

    .line 54
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 56
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 60
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    .line 61
    invoke-interface {v2}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;->openChannelsCatalogScreen()V

    goto :goto_0

    .line 64
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openCryptoBoxesScreen()V
    .locals 3

    .line 37
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$OpenCryptoBoxesScreenCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$OpenCryptoBoxesScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State;)V

    .line 38
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 40
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 44
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    .line 45
    invoke-interface {v2}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;->openCryptoBoxesScreen()V

    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openStakingScreen()V
    .locals 3

    .line 21
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$OpenStakingScreenCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$OpenStakingScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State;)V

    .line 22
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 24
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 28
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    .line 29
    invoke-interface {v2}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;->openStakingScreen()V

    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openTelegramPremiumScreen()V
    .locals 3

    .line 85
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$OpenTelegramPremiumScreenCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$OpenTelegramPremiumScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State;)V

    .line 86
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 88
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 92
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    .line 93
    invoke-interface {v2}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;->openTelegramPremiumScreen()V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openTelegramUsernamesScreen()V
    .locals 3

    .line 69
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$OpenTelegramUsernamesScreenCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$OpenTelegramUsernamesScreenCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State;)V

    .line 70
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 72
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 76
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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    .line 77
    invoke-interface {v2}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;->openTelegramUsernamesScreen()V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public synthetic removeSelfFromStackImmediately()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->$default$removeSelfFromStackImmediately(Lcom/iMe/ui/base/mvp/base/BaseView;)V

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

    .line 181
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$ShowErrorToastCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$ShowErrorToastCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State;Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    .line 189
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 165
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State;ZZLio/reactivex/disposables/Disposable;)V

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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    .line 173
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRequiredWalletCreatedDialog(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 3

    .line 117
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$ShowRequiredWalletCreatedDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$ShowRequiredWalletCreatedDialogCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    .line 125
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;->showRequiredWalletCreatedDialog(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 149
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State;Ljava/lang/String;)V

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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    .line 157
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
