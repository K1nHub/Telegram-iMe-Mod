.class public interface abstract Lcom/iMe/ui/translate/TranslationView;
.super Ljava/lang/Object;
.source "TranslationView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;
.implements Lcom/iMe/ui/base/mvp/AppUpdateRequiredView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract configureScreenWith(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onLoadingState(Ljava/lang/String;Z)V
.end method

.method public abstract openReplyDialog(Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;)V
.end method

.method public abstract showLanguages(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/translation/TranslationLanguageUiModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract showSubtitleLanguage(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showTranslation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
