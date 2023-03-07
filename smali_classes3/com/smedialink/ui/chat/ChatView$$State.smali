.class public Lcom/smedialink/ui/chat/ChatView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "ChatView$$State.java"

# interfaces
.implements Lcom/smedialink/ui/chat/ChatView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/chat/ChatView$$State$ShowSuccessPaymentProcessedDialogCommand;,
        Lcom/smedialink/ui/chat/ChatView$$State$ShowConfirmPaymentDialogCommand;,
        Lcom/smedialink/ui/chat/ChatView$$State$ShowAppUpdateDialogCommand;,
        Lcom/smedialink/ui/chat/ChatView$$State$ShowLoadingDialogCommand;,
        Lcom/smedialink/ui/chat/ChatView$$State$ShowToastCommand;,
        Lcom/smedialink/ui/chat/ChatView$$State$ShowDonationMenuItemCommand;,
        Lcom/smedialink/ui/chat/ChatView$$State$ShowReactionActivationAlertCommand;,
        Lcom/smedialink/ui/chat/ChatView$$State$OnSuccessGetAuthTokensCommand;,
        Lcom/smedialink/ui/chat/ChatView$$State$OnVoiceToTextCompletedCommand;,
        Lcom/smedialink/ui/chat/ChatView$$State$OnLanguagesLoadedCommand;,
        Lcom/smedialink/ui/chat/ChatView$$State$OnMultiReplyMessageBuiltCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/smedialink/ui/chat/ChatView;",
        ">;",
        "Lcom/smedialink/ui/chat/ChatView;"
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
.method public onLanguagesLoaded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/model/translation/TranslationLanguageUiModel;",
            ">;)V"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/smedialink/ui/chat/ChatView$$State$OnLanguagesLoadedCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/chat/ChatView$$State$OnLanguagesLoadedCommand;-><init>(Lcom/smedialink/ui/chat/ChatView$$State;Ljava/util/List;)V

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

    check-cast v2, Lcom/smedialink/ui/chat/ChatView;

    .line 45
    invoke-interface {v2, p1}, Lcom/smedialink/ui/chat/ChatView;->onLanguagesLoaded(Ljava/util/List;)V

    goto :goto_0

    .line 48
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onMultiReplyMessageBuilt(Ljava/lang/CharSequence;)V
    .locals 3

    .line 21
    new-instance v0, Lcom/smedialink/ui/chat/ChatView$$State$OnMultiReplyMessageBuiltCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/chat/ChatView$$State$OnMultiReplyMessageBuiltCommand;-><init>(Lcom/smedialink/ui/chat/ChatView$$State;Ljava/lang/CharSequence;)V

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

    check-cast v2, Lcom/smedialink/ui/chat/ChatView;

    .line 29
    invoke-interface {v2, p1}, Lcom/smedialink/ui/chat/ChatView;->onMultiReplyMessageBuilt(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 32
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onSuccessGetAuthTokens(Lcom/smedialink/storage/domain/model/wallet/SessionTokens;)V
    .locals 3

    .line 69
    new-instance v0, Lcom/smedialink/ui/chat/ChatView$$State$OnSuccessGetAuthTokensCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/chat/ChatView$$State$OnSuccessGetAuthTokensCommand;-><init>(Lcom/smedialink/ui/chat/ChatView$$State;Lcom/smedialink/storage/domain/model/wallet/SessionTokens;)V

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

    check-cast v2, Lcom/smedialink/ui/chat/ChatView;

    .line 77
    invoke-interface {v2, p1}, Lcom/smedialink/ui/chat/ChatView;->onSuccessGetAuthTokens(Lcom/smedialink/storage/domain/model/wallet/SessionTokens;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onVoiceToTextCompleted(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    .locals 3

    .line 53
    new-instance v0, Lcom/smedialink/ui/chat/ChatView$$State$OnVoiceToTextCompletedCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/ui/chat/ChatView$$State$OnVoiceToTextCompletedCommand;-><init>(Lcom/smedialink/ui/chat/ChatView$$State;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

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

    check-cast v2, Lcom/smedialink/ui/chat/ChatView;

    .line 61
    invoke-interface {v2, p1, p2}, Lcom/smedialink/ui/chat/ChatView;->onVoiceToTextCompleted(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showAppUpdateDialog()V
    .locals 3

    .line 182
    new-instance v0, Lcom/smedialink/ui/chat/ChatView$$State$ShowAppUpdateDialogCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/chat/ChatView$$State$ShowAppUpdateDialogCommand;-><init>(Lcom/smedialink/ui/chat/ChatView$$State;)V

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

    check-cast v2, Lcom/smedialink/ui/chat/ChatView;

    .line 190
    invoke-interface {v2}, Lcom/smedialink/ui/base/mvp/AppUpdateRequiredView;->showAppUpdateDialog()V

    goto :goto_0

    .line 193
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showConfirmPaymentDialog(Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 3

    .line 198
    new-instance v0, Lcom/smedialink/ui/chat/ChatView$$State$ShowConfirmPaymentDialogCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/ui/chat/ChatView$$State$ShowConfirmPaymentDialogCommand;-><init>(Lcom/smedialink/ui/chat/ChatView$$State;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V

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

    check-cast v2, Lcom/smedialink/ui/chat/ChatView;

    .line 206
    invoke-interface {v2, p1, p2}, Lcom/smedialink/manager/crypto/pay/BinancePayProcessView;->showConfirmPaymentDialog(Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showDonationMenuItem(Z)V
    .locals 3

    .line 101
    new-instance v0, Lcom/smedialink/ui/chat/ChatView$$State$ShowDonationMenuItemCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/chat/ChatView$$State$ShowDonationMenuItemCommand;-><init>(Lcom/smedialink/ui/chat/ChatView$$State;Z)V

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

    check-cast v2, Lcom/smedialink/ui/chat/ChatView;

    .line 109
    invoke-interface {v2, p1}, Lcom/smedialink/ui/chat/ChatView;->showDonationMenuItem(Z)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 133
    new-instance v0, Lcom/smedialink/ui/chat/ChatView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/chat/ChatView$$State$ShowLoadingDialogCommand;-><init>(Lcom/smedialink/ui/chat/ChatView$$State;ZZLio/reactivex/disposables/Disposable;)V

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

    check-cast v2, Lcom/smedialink/ui/chat/ChatView;

    .line 141
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showReactionActivationAlert()V
    .locals 3

    .line 85
    new-instance v0, Lcom/smedialink/ui/chat/ChatView$$State$ShowReactionActivationAlertCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/chat/ChatView$$State$ShowReactionActivationAlertCommand;-><init>(Lcom/smedialink/ui/chat/ChatView$$State;)V

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

    check-cast v2, Lcom/smedialink/ui/chat/ChatView;

    .line 93
    invoke-interface {v2}, Lcom/smedialink/ui/chat/ChatView;->showReactionActivationAlert()V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showSuccessPaymentProcessedDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 214
    new-instance v0, Lcom/smedialink/ui/chat/ChatView$$State$ShowSuccessPaymentProcessedDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/chat/ChatView$$State$ShowSuccessPaymentProcessedDialogCommand;-><init>(Lcom/smedialink/ui/chat/ChatView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    check-cast v2, Lcom/smedialink/ui/chat/ChatView;

    .line 222
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/manager/crypto/pay/BinancePayProcessView;->showSuccessPaymentProcessedDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 117
    new-instance v0, Lcom/smedialink/ui/chat/ChatView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/chat/ChatView$$State$ShowToastCommand;-><init>(Lcom/smedialink/ui/chat/ChatView$$State;Ljava/lang/String;)V

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

    check-cast v2, Lcom/smedialink/ui/chat/ChatView;

    .line 125
    invoke-interface {v2, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
