.class public Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "WalletNotificationDetailsView$$State.java"

# interfaces
.implements Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$SetupMessageClickableLinkCommand;,
        Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ShowClickableTextDialogCommand;,
        Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionOpenProfileScreenCommand;,
        Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionCopyToClipboardCommand;,
        Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$SetupScreenWithDataCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;",
        ">;",
        "Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;"
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
.method public actionCopyToClipboard(Ljava/lang/String;)V
    .locals 3

    .line 35
    new-instance v0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionCopyToClipboardCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionCopyToClipboardCommand;-><init>(Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State;Ljava/lang/String;)V

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

    check-cast v2, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;

    .line 43
    invoke-interface {v2, p1}, Lcom/iMe/manager/wallet/WalletLinkClickableView;->actionCopyToClipboard(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public actionOpenProfileScreen(J)V
    .locals 3

    .line 51
    new-instance v0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionOpenProfileScreenCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionOpenProfileScreenCommand;-><init>(Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State;J)V

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

    check-cast v2, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;

    .line 59
    invoke-interface {v2, p1, p2}, Lcom/iMe/manager/wallet/WalletLinkClickableView;->actionOpenProfileScreen(J)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupMessageClickableLink(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$SetupMessageClickableLinkCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$SetupMessageClickableLinkCommand;-><init>(Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

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

    check-cast v2, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;

    .line 109
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/manager/wallet/WalletLinkClickableView;->setupMessageClickableLink(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupScreenWithData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 19
    new-instance v0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$SetupScreenWithDataCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$SetupScreenWithDataCommand;-><init>(Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State;Ljava/lang/String;Ljava/lang/String;)V

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

    check-cast v2, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;

    .line 27
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;->setupScreenWithData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showClickableTextDialog([Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ShowClickableTextDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ShowClickableTextDialogCommand;-><init>(Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State;[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 85
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 87
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 91
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

    check-cast v2, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;

    .line 92
    invoke-interface {v2, p1, p2}, Lcom/iMe/manager/wallet/WalletLinkClickableView;->showClickableTextDialog([Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
