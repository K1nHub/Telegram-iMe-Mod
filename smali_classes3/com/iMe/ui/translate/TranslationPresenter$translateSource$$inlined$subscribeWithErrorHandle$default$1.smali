.class public final Lcom/iMe/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/translate/TranslationPresenter;->translateSource(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/translation/Translation;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 TranslationPresenter.kt\ncom/iMe/ui/translate/TranslationPresenter\n*L\n1#1,132:1\n143#2,32:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $text$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/ui/translate/TranslationPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/translate/TranslationPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    iput-object p2, p0, Lcom/iMe/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->$text$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/translation/Translation;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-static {v0}, Lcom/iMe/ui/translate/TranslationPresenter;->access$getArgs$p(Lcom/iMe/ui/translate/TranslationPresenter;)Lcom/iMe/model/translation/TranslationArgs;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/translation/Translation;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/translation/Translation;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iMe/model/translation/TranslationArgs;->setTextToTranslate(Ljava/lang/String;)V

    .line 136
    :goto_0
    iget-object p1, p0, Lcom/iMe/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/translate/TranslationView;

    .line 137
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-static {v0}, Lcom/iMe/ui/translate/TranslationPresenter;->access$getSourceLanguage$p(Lcom/iMe/ui/translate/TranslationPresenter;)Lcom/iMe/model/translation/TranslationLanguageUiModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-static {v1}, Lcom/iMe/ui/translate/TranslationPresenter;->access$getTargetLanguage$p(Lcom/iMe/ui/translate/TranslationPresenter;)Lcom/iMe/model/translation/TranslationLanguageUiModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/translate/TranslationView;->showSubtitleLanguage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 142
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 143
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->PERMISSION_DENIED:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    if-ne v0, v1, :cond_2

    .line 144
    iget-object p1, p0, Lcom/iMe/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/translate/TranslationView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/AppUpdateRequiredView;->showAppUpdateDialog()V

    goto :goto_2

    .line 146
    :cond_2
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->TRANSLATION_UNSUPPORTED_LANGUAGE:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 147
    :cond_3
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->RATE_LIMIT:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    .line 148
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/translate/TranslationView;

    .line 149
    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->$text$inlined:Ljava/lang/String;

    .line 150
    iget-object v2, p0, Lcom/iMe/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-static {v2}, Lcom/iMe/ui/translate/TranslationPresenter;->access$getSourceLanguage$p(Lcom/iMe/ui/translate/TranslationPresenter;)Lcom/iMe/model/translation/TranslationLanguageUiModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    .line 151
    iget-object v3, p0, Lcom/iMe/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-static {v3}, Lcom/iMe/ui/translate/TranslationPresenter;->access$getTargetLanguage$p(Lcom/iMe/ui/translate/TranslationPresenter;)Lcom/iMe/model/translation/TranslationLanguageUiModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-interface {v0, v1, v2, v3}, Lcom/iMe/ui/translate/TranslationView;->showTranslation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/translate/TranslationView;

    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-static {v1}, Lcom/iMe/ui/translate/TranslationPresenter;->access$getResourceManager$p(Lcom/iMe/ui/translate/TranslationPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    goto :goto_2

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/translate/TranslationView;

    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-static {v1}, Lcom/iMe/ui/translate/TranslationPresenter;->access$getResourceManager$p(Lcom/iMe/ui/translate/TranslationPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 158
    iget-object p1, p0, Lcom/iMe/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/translate/TranslationView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->finishScreen()V

    :cond_6
    :goto_2
    return-void
.end method
