.class public Lcom/smedialink/ui/profile/ProfileView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "ProfileView$$State.java"

# interfaces
.implements Lcom/smedialink/ui/profile/ProfileView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/profile/ProfileView$$State$ShowLoadingDialogCommand;,
        Lcom/smedialink/ui/profile/ProfileView$$State$ShowToastCommand;,
        Lcom/smedialink/ui/profile/ProfileView$$State$ShowTwitterLinkConfirmationDialogCommand;,
        Lcom/smedialink/ui/profile/ProfileView$$State$ShowTwitterResetConfirmationDialogCommand;,
        Lcom/smedialink/ui/profile/ProfileView$$State$ShowTwitterUnlinkedErrorDialogCommand;,
        Lcom/smedialink/ui/profile/ProfileView$$State$ShowVpnWarningDialogCommand;,
        Lcom/smedialink/ui/profile/ProfileView$$State$ShowTwitterBotConfirmationDialogIfNeededCommand;,
        Lcom/smedialink/ui/profile/ProfileView$$State$ShowTwitterAccountActionsDialogCommand;,
        Lcom/smedialink/ui/profile/ProfileView$$State$OpenTwitterScreenCommand;,
        Lcom/smedialink/ui/profile/ProfileView$$State$OpenTwitterAuthScreenCommand;,
        Lcom/smedialink/ui/profile/ProfileView$$State$UpdateTwitterItemCommand;,
        Lcom/smedialink/ui/profile/ProfileView$$State$ShowUserAccountLevelCommand;,
        Lcom/smedialink/ui/profile/ProfileView$$State$OnFilteredMembersCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/smedialink/ui/profile/ProfileView;",
        ">;",
        "Lcom/smedialink/ui/profile/ProfileView;"
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
.method public onFilteredMembers(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;)V"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/smedialink/ui/profile/ProfileView$$State$OnFilteredMembersCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/profile/ProfileView$$State$OnFilteredMembersCommand;-><init>(Lcom/smedialink/ui/profile/ProfileView$$State;Ljava/util/ArrayList;)V

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

    check-cast v2, Lcom/smedialink/ui/profile/ProfileView;

    .line 27
    invoke-interface {v2, p1}, Lcom/smedialink/ui/profile/ProfileView;->onFilteredMembers(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openTwitterAuthScreen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 83
    new-instance v0, Lcom/smedialink/ui/profile/ProfileView$$State$OpenTwitterAuthScreenCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/ui/profile/ProfileView$$State$OpenTwitterAuthScreenCommand;-><init>(Lcom/smedialink/ui/profile/ProfileView$$State;Ljava/lang/String;Ljava/lang/String;)V

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

    check-cast v2, Lcom/smedialink/ui/profile/ProfileView;

    .line 91
    invoke-interface {v2, p1, p2}, Lcom/smedialink/ui/profile/ProfileView;->openTwitterAuthScreen(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openTwitterScreen(JJLjava/lang/String;)V
    .locals 15

    move-object v7, p0

    .line 100
    new-instance v8, Lcom/smedialink/ui/profile/ProfileView$$State$OpenTwitterScreenCommand;

    move-object v0, v8

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/smedialink/ui/profile/ProfileView$$State$OpenTwitterScreenCommand;-><init>(Lcom/smedialink/ui/profile/ProfileView$$State;JJLjava/lang/String;)V

    .line 101
    iget-object v0, v7, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v8}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 103
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 107
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

    check-cast v9, Lcom/smedialink/ui/profile/ProfileView;

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-object/from16 v14, p5

    .line 108
    invoke-interface/range {v9 .. v14}, Lcom/smedialink/ui/profile/ProfileView;->openTwitterScreen(JJLjava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, v7, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v0, v8}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 228
    new-instance v0, Lcom/smedialink/ui/profile/ProfileView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/profile/ProfileView$$State$ShowLoadingDialogCommand;-><init>(Lcom/smedialink/ui/profile/ProfileView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 229
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 231
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 235
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

    check-cast v2, Lcom/smedialink/ui/profile/ProfileView;

    .line 236
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 239
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 212
    new-instance v0, Lcom/smedialink/ui/profile/ProfileView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/profile/ProfileView$$State$ShowToastCommand;-><init>(Lcom/smedialink/ui/profile/ProfileView$$State;Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 215
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 219
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

    check-cast v2, Lcom/smedialink/ui/profile/ProfileView;

    .line 220
    invoke-interface {v2, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showTwitterAccountActionsDialog()V
    .locals 3

    .line 116
    new-instance v0, Lcom/smedialink/ui/profile/ProfileView$$State$ShowTwitterAccountActionsDialogCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/profile/ProfileView$$State$ShowTwitterAccountActionsDialogCommand;-><init>(Lcom/smedialink/ui/profile/ProfileView$$State;)V

    .line 117
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 119
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 123
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

    check-cast v2, Lcom/smedialink/ui/profile/ProfileView;

    .line 124
    invoke-interface {v2}, Lcom/smedialink/ui/profile/ProfileView;->showTwitterAccountActionsDialog()V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showTwitterBotConfirmationDialogIfNeeded(Lcom/smedialink/model/dialog/DialogModel;)V
    .locals 3

    .line 132
    new-instance v0, Lcom/smedialink/ui/profile/ProfileView$$State$ShowTwitterBotConfirmationDialogIfNeededCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/profile/ProfileView$$State$ShowTwitterBotConfirmationDialogIfNeededCommand;-><init>(Lcom/smedialink/ui/profile/ProfileView$$State;Lcom/smedialink/model/dialog/DialogModel;)V

    .line 133
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 135
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 139
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

    check-cast v2, Lcom/smedialink/ui/profile/ProfileView;

    .line 140
    invoke-interface {v2, p1}, Lcom/smedialink/ui/profile/ProfileView;->showTwitterBotConfirmationDialogIfNeeded(Lcom/smedialink/model/dialog/DialogModel;)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showTwitterLinkConfirmationDialog(Lcom/smedialink/model/dialog/DialogModel;)V
    .locals 3

    .line 196
    new-instance v0, Lcom/smedialink/ui/profile/ProfileView$$State$ShowTwitterLinkConfirmationDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/profile/ProfileView$$State$ShowTwitterLinkConfirmationDialogCommand;-><init>(Lcom/smedialink/ui/profile/ProfileView$$State;Lcom/smedialink/model/dialog/DialogModel;)V

    .line 197
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 199
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 203
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

    check-cast v2, Lcom/smedialink/ui/profile/ProfileView;

    .line 204
    invoke-interface {v2, p1}, Lcom/smedialink/ui/profile/ProfileView;->showTwitterLinkConfirmationDialog(Lcom/smedialink/model/dialog/DialogModel;)V

    goto :goto_0

    .line 207
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showTwitterResetConfirmationDialog(Lcom/smedialink/model/dialog/DialogModel;)V
    .locals 3

    .line 180
    new-instance v0, Lcom/smedialink/ui/profile/ProfileView$$State$ShowTwitterResetConfirmationDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/profile/ProfileView$$State$ShowTwitterResetConfirmationDialogCommand;-><init>(Lcom/smedialink/ui/profile/ProfileView$$State;Lcom/smedialink/model/dialog/DialogModel;)V

    .line 181
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 183
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 187
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

    check-cast v2, Lcom/smedialink/ui/profile/ProfileView;

    .line 188
    invoke-interface {v2, p1}, Lcom/smedialink/ui/profile/ProfileView;->showTwitterResetConfirmationDialog(Lcom/smedialink/model/dialog/DialogModel;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showTwitterUnlinkedErrorDialog(Lcom/smedialink/model/dialog/DialogModel;)V
    .locals 3

    .line 164
    new-instance v0, Lcom/smedialink/ui/profile/ProfileView$$State$ShowTwitterUnlinkedErrorDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/profile/ProfileView$$State$ShowTwitterUnlinkedErrorDialogCommand;-><init>(Lcom/smedialink/ui/profile/ProfileView$$State;Lcom/smedialink/model/dialog/DialogModel;)V

    .line 165
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 167
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 171
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

    check-cast v2, Lcom/smedialink/ui/profile/ProfileView;

    .line 172
    invoke-interface {v2, p1}, Lcom/smedialink/ui/profile/ProfileView;->showTwitterUnlinkedErrorDialog(Lcom/smedialink/model/dialog/DialogModel;)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showUserAccountLevel(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;)V
    .locals 3

    .line 35
    new-instance v0, Lcom/smedialink/ui/profile/ProfileView$$State$ShowUserAccountLevelCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/profile/ProfileView$$State$ShowUserAccountLevelCommand;-><init>(Lcom/smedialink/ui/profile/ProfileView$$State;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;)V

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

    check-cast v2, Lcom/smedialink/ui/profile/ProfileView;

    .line 43
    invoke-interface {v2, p1}, Lcom/smedialink/ui/profile/ProfileView;->showUserAccountLevel(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showVpnWarningDialog(Lcom/smedialink/model/dialog/DialogModel;)V
    .locals 3

    .line 148
    new-instance v0, Lcom/smedialink/ui/profile/ProfileView$$State$ShowVpnWarningDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/profile/ProfileView$$State$ShowVpnWarningDialogCommand;-><init>(Lcom/smedialink/ui/profile/ProfileView$$State;Lcom/smedialink/model/dialog/DialogModel;)V

    .line 149
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 151
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 155
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

    check-cast v2, Lcom/smedialink/ui/profile/ProfileView;

    .line 156
    invoke-interface {v2, p1}, Lcom/smedialink/ui/profile/ProfileView;->showVpnWarningDialog(Lcom/smedialink/model/dialog/DialogModel;)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public updateTwitterItem()V
    .locals 3

    .line 51
    new-instance v0, Lcom/smedialink/ui/profile/ProfileView$$State$UpdateTwitterItemCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/profile/ProfileView$$State$UpdateTwitterItemCommand;-><init>(Lcom/smedialink/ui/profile/ProfileView$$State;)V

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

    check-cast v2, Lcom/smedialink/ui/profile/ProfileView;

    .line 59
    invoke-interface {v2}, Lcom/smedialink/ui/profile/ProfileView;->updateTwitterItem()V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
