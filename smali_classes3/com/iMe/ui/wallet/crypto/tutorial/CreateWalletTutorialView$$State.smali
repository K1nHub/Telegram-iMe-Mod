.class public Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "CreateWalletTutorialView$$State.java"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$ShowLoadingDialogCommand;,
        Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$ShowToastCommand;,
        Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$OpenTutorialPassedScreenCommand;,
        Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$OpenPasscodeScreenCommand;,
        Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$ShowTutorialPagesCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;",
        ">;",
        "Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic finishScreen()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->$default$finishScreen(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    return-void
.end method

.method public openPasscodeScreen()V
    .locals 3

    .line 35
    new-instance v0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$OpenPasscodeScreenCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$OpenPasscodeScreenCommand;-><init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State;)V

    .line 36
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 38
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 42
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;

    .line 43
    invoke-interface {v2}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;->openPasscodeScreen()V

    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openTutorialPassedScreen(Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Backup;)V
    .locals 3

    .line 51
    new-instance v0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$OpenTutorialPassedScreenCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$OpenTutorialPassedScreenCommand;-><init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State;Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Backup;)V

    .line 52
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 54
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 58
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;

    .line 59
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;->openTutorialPassedScreen(Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Backup;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 83
    new-instance v0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 84
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 86
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 90
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;

    .line 91
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 67
    new-instance v0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 70
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 74
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;

    .line 75
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showTutorialPages(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/tutorial/TutorialPage;",
            ">;)V"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$ShowTutorialPagesCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State$ShowTutorialPagesCommand;-><init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView$$State;Ljava/util/List;)V

    .line 20
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 22
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 26
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

    check-cast v2, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;

    .line 27
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialView;->showTutorialPages(Ljava/util/List;)V

    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
