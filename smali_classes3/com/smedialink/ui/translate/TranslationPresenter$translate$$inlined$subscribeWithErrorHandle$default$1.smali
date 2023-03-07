.class public final Lcom/smedialink/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/translate/TranslationPresenter;->translate(Ljava/lang/String;Z)V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 TranslationPresenter.kt\ncom/smedialink/ui/translate/TranslationPresenter\n*L\n1#1,111:1\n72#2,26:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $onLanguageChanged$inlined:Z

.field final synthetic $text$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/smedialink/ui/translate/TranslationPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/translate/TranslationPresenter;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    iput-object p2, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;->$text$inlined:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;->$onLanguageChanged$inlined:Z

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

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 114
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/translation/Translation;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/translation/Translation;->getSourceLang()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    sget-object v1, Lcom/smedialink/model/translation/TranslationLanguageUiModel;->Companion:Lcom/smedialink/model/translation/TranslationLanguageUiModel$Companion;

    .line 116
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smedialink/storage/domain/model/translation/Translation;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/translation/Translation;->getSourceLang()Ljava/lang/String;

    move-result-object v2

    .line 117
    iget-object v3, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-static {v3}, Lcom/smedialink/ui/translate/TranslationPresenter;->access$getCurrentLanguage(Lcom/smedialink/ui/translate/TranslationPresenter;)Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-virtual {v1, v2, v3}, Lcom/smedialink/model/translation/TranslationLanguageUiModel$Companion;->createByLangCode(Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/model/translation/TranslationLanguageUiModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smedialink/ui/translate/TranslationPresenter;->access$setSourceLanguage$p(Lcom/smedialink/ui/translate/TranslationPresenter;Lcom/smedialink/model/translation/TranslationLanguageUiModel;)V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/translate/TranslationView;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/translation/Translation;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/translation/Translation;->getText()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/translate/TranslationPresenter;->access$getSourceLanguage$p(Lcom/smedialink/ui/translate/TranslationPresenter;)Lcom/smedialink/model/translation/TranslationLanguageUiModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-static {v2}, Lcom/smedialink/ui/translate/TranslationPresenter;->access$getTargetLanguage$p(Lcom/smedialink/ui/translate/TranslationPresenter;)Lcom/smedialink/model/translation/TranslationLanguageUiModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/smedialink/ui/translate/TranslationView;->showTranslation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 122
    :cond_2
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 123
    sget-object v3, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->PERMISSION_DENIED:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    if-ne v0, v3, :cond_3

    .line 124
    iget-object p1, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/translate/TranslationView;

    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/AppUpdateRequiredView;->showAppUpdateDialog()V

    goto/16 :goto_2

    .line 125
    :cond_3
    sget-object v3, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->TRANSLATION_UNSUPPORTED_LANGUAGE:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    if-ne v0, v3, :cond_4

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 126
    :cond_4
    sget-object v3, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->RATE_LIMIT:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    if-ne v0, v3, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 127
    iget-object v0, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/translate/TranslationView;

    iget-object v1, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;->$text$inlined:Ljava/lang/String;

    iget-object v2, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-static {v2}, Lcom/smedialink/ui/translate/TranslationPresenter;->access$getSourceLanguage$p(Lcom/smedialink/ui/translate/TranslationPresenter;)Lcom/smedialink/model/translation/TranslationLanguageUiModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-static {v3}, Lcom/smedialink/ui/translate/TranslationPresenter;->access$getTargetLanguage$p(Lcom/smedialink/ui/translate/TranslationPresenter;)Lcom/smedialink/model/translation/TranslationLanguageUiModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/smedialink/ui/translate/TranslationView;->showTranslation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/translate/TranslationView;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/translate/TranslationPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/translate/TranslationPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 131
    :cond_6
    iget-object v0, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/translate/TranslationView;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/translate/TranslationPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/translate/TranslationPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/translate/TranslationView;

    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->finishScreen()V

    goto :goto_2

    .line 135
    :cond_7
    instance-of p1, p1, Lcom/smedialink/storage/domain/model/Result$Loading;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/translate/TranslationPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/translate/TranslationView;

    iget-object v0, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;->$text$inlined:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/smedialink/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;->$onLanguageChanged$inlined:Z

    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/translate/TranslationView;->onLoadingState(Ljava/lang/String;Z)V

    :cond_8
    :goto_2
    return-void
.end method
