.class public interface abstract Lcom/smedialink/ui/chat/ChatView;
.super Ljava/lang/Object;
.source "ChatView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;
.implements Lcom/smedialink/ui/base/mvp/AppUpdateRequiredView;
.implements Lcom/smedialink/manager/crypto/pay/BinancePayProcessView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract onLanguagesLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/model/translation/TranslationLanguageUiModel;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract onMultiReplyMessageBuilt(Ljava/lang/CharSequence;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract onSuccessGetAuthTokens(Lcom/smedialink/storage/domain/model/wallet/SessionTokens;)V
.end method

.method public abstract onVoiceToTextCompleted(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
.end method

.method public abstract showDonationMenuItem(Z)V
.end method

.method public abstract showReactionActivationAlert()V
.end method
