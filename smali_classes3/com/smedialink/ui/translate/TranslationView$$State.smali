.class public Lcom/smedialink/ui/translate/TranslationView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "TranslationView$$State.java"

# interfaces
.implements Lcom/smedialink/ui/translate/TranslationView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/translate/TranslationView$$State$ShowAppUpdateDialogCommand;,
        Lcom/smedialink/ui/translate/TranslationView$$State$FinishScreenCommand;,
        Lcom/smedialink/ui/translate/TranslationView$$State$ShowLoadingDialogCommand;,
        Lcom/smedialink/ui/translate/TranslationView$$State$ShowToastCommand;,
        Lcom/smedialink/ui/translate/TranslationView$$State$ShowSubtitleLanguageCommand;,
        Lcom/smedialink/ui/translate/TranslationView$$State$OpenReplyDialogCommand;,
        Lcom/smedialink/ui/translate/TranslationView$$State$OnLoadingStateCommand;,
        Lcom/smedialink/ui/translate/TranslationView$$State$ShowLanguagesCommand;,
        Lcom/smedialink/ui/translate/TranslationView$$State$ShowTranslationCommand;,
        Lcom/smedialink/ui/translate/TranslationView$$State$ConfigureScreenWithCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/smedialink/ui/translate/TranslationView;",
        ">;",
        "Lcom/smedialink/ui/translate/TranslationView;"
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
.method public configureScreenWith(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 19
    new-instance v0, Lcom/smedialink/ui/translate/TranslationView$$State$ConfigureScreenWithCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/ui/translate/TranslationView$$State$ConfigureScreenWithCommand;-><init>(Lcom/smedialink/ui/translate/TranslationView$$State;Ljava/lang/String;Ljava/lang/String;)V

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

    check-cast v2, Lcom/smedialink/ui/translate/TranslationView;

    .line 27
    invoke-interface {v2, p1, p2}, Lcom/smedialink/ui/translate/TranslationView;->configureScreenWith(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public finishScreen()V
    .locals 3

    .line 148
    new-instance v0, Lcom/smedialink/ui/translate/TranslationView$$State$FinishScreenCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/translate/TranslationView$$State$FinishScreenCommand;-><init>(Lcom/smedialink/ui/translate/TranslationView$$State;)V

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

    check-cast v2, Lcom/smedialink/ui/translate/TranslationView;

    .line 156
    invoke-interface {v2}, Lcom/smedialink/ui/base/mvp/base/BaseView;->finishScreen()V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onLoadingState(Ljava/lang/String;Z)V
    .locals 3

    .line 68
    new-instance v0, Lcom/smedialink/ui/translate/TranslationView$$State$OnLoadingStateCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/ui/translate/TranslationView$$State$OnLoadingStateCommand;-><init>(Lcom/smedialink/ui/translate/TranslationView$$State;Ljava/lang/String;Z)V

    .line 69
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 71
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 75
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

    check-cast v2, Lcom/smedialink/ui/translate/TranslationView;

    .line 76
    invoke-interface {v2, p1, p2}, Lcom/smedialink/ui/translate/TranslationView;->onLoadingState(Ljava/lang/String;Z)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openReplyDialog(Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;)V
    .locals 3

    .line 84
    new-instance v0, Lcom/smedialink/ui/translate/TranslationView$$State$OpenReplyDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/translate/TranslationView$$State$OpenReplyDialogCommand;-><init>(Lcom/smedialink/ui/translate/TranslationView$$State;Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;)V

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

    check-cast v2, Lcom/smedialink/ui/translate/TranslationView;

    .line 92
    invoke-interface {v2, p1}, Lcom/smedialink/ui/translate/TranslationView;->openReplyDialog(Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showAppUpdateDialog()V
    .locals 3

    .line 181
    new-instance v0, Lcom/smedialink/ui/translate/TranslationView$$State$ShowAppUpdateDialogCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/translate/TranslationView$$State$ShowAppUpdateDialogCommand;-><init>(Lcom/smedialink/ui/translate/TranslationView$$State;)V

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

    check-cast v2, Lcom/smedialink/ui/translate/TranslationView;

    .line 189
    invoke-interface {v2}, Lcom/smedialink/ui/base/mvp/AppUpdateRequiredView;->showAppUpdateDialog()V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLanguages(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/model/translation/TranslationLanguageUiModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/smedialink/ui/translate/TranslationView$$State$ShowLanguagesCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/ui/translate/TranslationView$$State$ShowLanguagesCommand;-><init>(Lcom/smedialink/ui/translate/TranslationView$$State;Ljava/util/List;Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 55
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 59
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

    check-cast v2, Lcom/smedialink/ui/translate/TranslationView;

    .line 60
    invoke-interface {v2, p1, p2}, Lcom/smedialink/ui/translate/TranslationView;->showLanguages(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 132
    new-instance v0, Lcom/smedialink/ui/translate/TranslationView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/translate/TranslationView$$State$ShowLoadingDialogCommand;-><init>(Lcom/smedialink/ui/translate/TranslationView$$State;ZZLio/reactivex/disposables/Disposable;)V

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

    check-cast v2, Lcom/smedialink/ui/translate/TranslationView;

    .line 140
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showSubtitleLanguage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 100
    new-instance v0, Lcom/smedialink/ui/translate/TranslationView$$State$ShowSubtitleLanguageCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/ui/translate/TranslationView$$State$ShowSubtitleLanguageCommand;-><init>(Lcom/smedialink/ui/translate/TranslationView$$State;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 103
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 107
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

    check-cast v2, Lcom/smedialink/ui/translate/TranslationView;

    .line 108
    invoke-interface {v2, p1, p2}, Lcom/smedialink/ui/translate/TranslationView;->showSubtitleLanguage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 116
    new-instance v0, Lcom/smedialink/ui/translate/TranslationView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/translate/TranslationView$$State$ShowToastCommand;-><init>(Lcom/smedialink/ui/translate/TranslationView$$State;Ljava/lang/String;)V

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

    check-cast v2, Lcom/smedialink/ui/translate/TranslationView;

    .line 124
    invoke-interface {v2, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showTranslation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 35
    new-instance v0, Lcom/smedialink/ui/translate/TranslationView$$State$ShowTranslationCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/translate/TranslationView$$State$ShowTranslationCommand;-><init>(Lcom/smedialink/ui/translate/TranslationView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    check-cast v2, Lcom/smedialink/ui/translate/TranslationView;

    .line 43
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/translate/TranslationView;->showTranslation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
