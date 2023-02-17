.class public Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "BackupWordSwitcherMvpView$$State.java"

# interfaces
.implements Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView$$State$SetupBackupWordsCommand;,
        Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView$$State$SetupTitleCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView;",
        ">;",
        "Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public setupBackupWords(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView$$State$SetupBackupWordsCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView$$State$SetupBackupWordsCommand;-><init>(Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView$$State;Ljava/util/List;)V

    .line 30
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 32
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 36
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

    check-cast v2, Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView;

    .line 37
    invoke-interface {v2, p1}, Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView;->setupBackupWords(Ljava/util/List;)V

    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public setupTitle(I)V
    .locals 3

    .line 13
    new-instance v0, Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView$$State$SetupTitleCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView$$State$SetupTitleCommand;-><init>(Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView$$State;I)V

    .line 14
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 16
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 20
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

    check-cast v2, Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView;

    .line 21
    invoke-interface {v2, p1}, Lcom/smedialink/ui/custom/backup/switcher/BackupWordSwitcherMvpView;->setupTitle(I)V

    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
