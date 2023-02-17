.class public final Lcom/smedialink/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/translate/TranslationPresenter;->translateSource(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 TranslationPresenter.kt\ncom/smedialink/ui/translate/TranslationPresenter\n*L\n1#1,111:1\n113#2,20:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $text$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/smedialink/ui/translate/TranslationPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/translate/TranslationPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    iput-object p2, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->$text$inlined:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/translate/TranslationPresenter;->access$getArgs$p(Lcom/smedialink/ui/translate/TranslationPresenter;)Lcom/smedialink/model/translation/TranslationArgs;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/translation/Translation;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/translation/Translation;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smedialink/model/translation/TranslationArgs;->setTextToTranslate(Ljava/lang/String;)V

    .line 115
    :goto_0
    iget-object p1, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/translate/TranslationView;

    iget-object v0, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/translate/TranslationPresenter;->access$getSourceLanguage$p(Lcom/smedialink/ui/translate/TranslationPresenter;)Lcom/smedialink/model/translation/TranslationLanguageUiModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/translate/TranslationPresenter;->access$getTargetLanguage$p(Lcom/smedialink/ui/translate/TranslationPresenter;)Lcom/smedialink/model/translation/TranslationLanguageUiModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/translate/TranslationView;->showSubtitleLanguage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 117
    :cond_1
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 118
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->PERMISSION_DENIED:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    if-ne v0, v1, :cond_2

    .line 119
    iget-object p1, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/translate/TranslationView;

    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/AppUpdateRequiredView;->showAppUpdateDialog()V

    goto :goto_2

    .line 120
    :cond_2
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->TRANSLATION_UNSUPPORTED_LANGUAGE:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 121
    :cond_3
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->RATE_LIMIT:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    .line 122
    iget-object v0, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/translate/TranslationView;

    iget-object v1, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->$text$inlined:Ljava/lang/String;

    iget-object v2, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-static {v2}, Lcom/smedialink/ui/translate/TranslationPresenter;->access$getSourceLanguage$p(Lcom/smedialink/ui/translate/TranslationPresenter;)Lcom/smedialink/model/translation/TranslationLanguageUiModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-static {v3}, Lcom/smedialink/ui/translate/TranslationPresenter;->access$getTargetLanguage$p(Lcom/smedialink/ui/translate/TranslationPresenter;)Lcom/smedialink/model/translation/TranslationLanguageUiModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/smedialink/ui/translate/TranslationView;->showTranslation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/translate/TranslationView;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/translate/TranslationPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/translate/TranslationPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/translate/TranslationView;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/translate/TranslationPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/translate/TranslationPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/translate/TranslationView;

    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->finishScreen()V

    :cond_6
    :goto_2
    return-void
.end method
