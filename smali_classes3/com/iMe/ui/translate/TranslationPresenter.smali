.class public final Lcom/iMe/ui/translate/TranslationPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "TranslationPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/translate/TranslationView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTranslationPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TranslationPresenter.kt\ncom/iMe/ui/translate/TranslationPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,213:1\n39#2,8:214\n39#2,8:222\n39#2,8:230\n*S KotlinDebug\n*F\n+ 1 TranslationPresenter.kt\ncom/iMe/ui/translate/TranslationPresenter\n*L\n45#1:214,8\n72#1:222,8\n114#1:230,8\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final args:Lcom/iMe/model/translation/TranslationArgs;

.field private final currentLanguage$delegate:Lkotlin/Lazy;

.field private isSource:Z

.field private outLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private sourceLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

.field private supportedLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/translation/TranslationLanguageUiModel;",
            ">;"
        }
    .end annotation
.end field

.field private targetLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

.field private final translationInteractor:Lcom/iMe/storage/domain/interactor/translate/TranslationInteractor;


# direct methods
.method public constructor <init>(Lcom/iMe/model/translation/TranslationArgs;Lcom/iMe/storage/domain/interactor/translate/TranslationInteractor;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/gateway/TelegramGateway;)V
    .locals 1

    const-string v0, "translationInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->args:Lcom/iMe/model/translation/TranslationArgs;

    .line 25
    iput-object p2, p0, Lcom/iMe/ui/translate/TranslationPresenter;->translationInteractor:Lcom/iMe/storage/domain/interactor/translate/TranslationInteractor;

    .line 26
    iput-object p3, p0, Lcom/iMe/ui/translate/TranslationPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 27
    iput-object p4, p0, Lcom/iMe/ui/translate/TranslationPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 28
    iput-object p5, p0, Lcom/iMe/ui/translate/TranslationPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 32
    new-instance p1, Lcom/iMe/ui/translate/TranslationPresenter$currentLanguage$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/translate/TranslationPresenter$currentLanguage$2;-><init>(Lcom/iMe/ui/translate/TranslationPresenter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->currentLanguage$delegate:Lkotlin/Lazy;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->supportedLanguages:Ljava/util/List;

    .line 34
    invoke-direct {p0}, Lcom/iMe/ui/translate/TranslationPresenter;->getSourceLanguageByType()Lcom/iMe/model/translation/TranslationLanguageUiModel;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->sourceLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    .line 35
    invoke-direct {p0}, Lcom/iMe/ui/translate/TranslationPresenter;->getTargetLanguageByType()Lcom/iMe/model/translation/TranslationLanguageUiModel;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->targetLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    .line 36
    invoke-direct {p0}, Lcom/iMe/ui/translate/TranslationPresenter;->getTargetLanguageByType()Lcom/iMe/model/translation/TranslationLanguageUiModel;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->outLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    return-void
.end method

.method public static final synthetic access$getArgs$p(Lcom/iMe/ui/translate/TranslationPresenter;)Lcom/iMe/model/translation/TranslationArgs;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->args:Lcom/iMe/model/translation/TranslationArgs;

    return-object p0
.end method

.method public static final synthetic access$getCurrentLanguage(Lcom/iMe/ui/translate/TranslationPresenter;)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/iMe/ui/translate/TranslationPresenter;->getCurrentLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/translate/TranslationPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getSourceLanguage$p(Lcom/iMe/ui/translate/TranslationPresenter;)Lcom/iMe/model/translation/TranslationLanguageUiModel;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->sourceLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    return-object p0
.end method

.method public static final synthetic access$getSupportedLanguages$p(Lcom/iMe/ui/translate/TranslationPresenter;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->supportedLanguages:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getTargetLanguage$p(Lcom/iMe/ui/translate/TranslationPresenter;)Lcom/iMe/model/translation/TranslationLanguageUiModel;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->targetLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    return-object p0
.end method

.method public static final synthetic access$getTelegramGateway$p(Lcom/iMe/ui/translate/TranslationPresenter;)Lcom/iMe/storage/domain/gateway/TelegramGateway;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    return-object p0
.end method

.method public static final synthetic access$setSource$p(Lcom/iMe/ui/translate/TranslationPresenter;Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->isSource:Z

    return-void
.end method

.method public static final synthetic access$setSourceLanguage$p(Lcom/iMe/ui/translate/TranslationPresenter;Lcom/iMe/model/translation/TranslationLanguageUiModel;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->sourceLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    return-void
.end method

.method public static final synthetic access$setSupportedLanguages$p(Lcom/iMe/ui/translate/TranslationPresenter;Ljava/util/List;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->supportedLanguages:Ljava/util/List;

    return-void
.end method

.method private final getCurrentLanguage()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->currentLanguage$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getSourceLanguageByType()Lcom/iMe/model/translation/TranslationLanguageUiModel;
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->args:Lcom/iMe/model/translation/TranslationArgs;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationArgs;->getType()Lcom/iMe/fork/enums/TranslationDialogType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/iMe/fork/enums/TranslationDialogType;->REPLY:Lcom/iMe/fork/enums/TranslationDialogType;

    if-ne v0, v1, :cond_3

    .line 193
    sget-object v0, Lcom/iMe/model/translation/TranslationLanguageUiModel;->Companion:Lcom/iMe/model/translation/TranslationLanguageUiModel$Companion;

    .line 194
    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->args:Lcom/iMe/model/translation/TranslationArgs;

    invoke-virtual {v1}, Lcom/iMe/model/translation/TranslationArgs;->getTranslationSettings()Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->getOutTextTranslateLangCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/iMe/ui/translate/TranslationPresenter;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v1

    .line 196
    :cond_2
    invoke-direct {p0}, Lcom/iMe/ui/translate/TranslationPresenter;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-virtual {v0, v1, v2}, Lcom/iMe/model/translation/TranslationLanguageUiModel$Companion;->createByLangCode(Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/model/translation/TranslationLanguageUiModel;

    move-result-object v0

    goto :goto_1

    .line 199
    :cond_3
    sget-object v0, Lcom/iMe/model/translation/TranslationLanguageUiModel;->Companion:Lcom/iMe/model/translation/TranslationLanguageUiModel$Companion;

    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v0, v1}, Lcom/iMe/model/translation/TranslationLanguageUiModel$Companion;->getAutoDetectionLanguage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Lcom/iMe/model/translation/TranslationLanguageUiModel;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private final getTargetLanguageByType()Lcom/iMe/model/translation/TranslationLanguageUiModel;
    .locals 4

    .line 202
    sget-object v0, Lcom/iMe/model/translation/TranslationLanguageUiModel;->Companion:Lcom/iMe/model/translation/TranslationLanguageUiModel$Companion;

    .line 203
    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->args:Lcom/iMe/model/translation/TranslationArgs;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iMe/model/translation/TranslationArgs;->getType()Lcom/iMe/fork/enums/TranslationDialogType;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    sget-object v3, Lcom/iMe/fork/enums/TranslationDialogType;->REPLY:Lcom/iMe/fork/enums/TranslationDialogType;

    if-ne v1, v3, :cond_1

    .line 204
    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->args:Lcom/iMe/model/translation/TranslationArgs;

    invoke-virtual {v1}, Lcom/iMe/model/translation/TranslationArgs;->getTranslationSettings()Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->getInTextTranslateLangCode()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->args:Lcom/iMe/model/translation/TranslationArgs;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/iMe/model/translation/TranslationArgs;->getLangCodeByType()Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 207
    invoke-direct {p0}, Lcom/iMe/ui/translate/TranslationPresenter;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v2

    .line 208
    :cond_3
    invoke-direct {p0}, Lcom/iMe/ui/translate/TranslationPresenter;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-virtual {v0, v2, v1}, Lcom/iMe/model/translation/TranslationLanguageUiModel$Companion;->createByLangCode(Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/model/translation/TranslationLanguageUiModel;

    move-result-object v0

    return-object v0
.end method

.method private final isSourceAndTargetLanguagesIsSame()Z
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->targetLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->sourceLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    invoke-virtual {v1}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final isValidToTranslate()Z
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->targetLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->isAutoDetection()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/translate/TranslationPresenter;->isSourceAndTargetLanguagesIsSame()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic translate$default(Lcom/iMe/ui/translate/TranslationPresenter;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_1

    .line 63
    iget-object p1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->args:Lcom/iMe/model/translation/TranslationArgs;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iMe/model/translation/TranslationArgs;->getTextToTranslate()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_2

    const/4 p2, 0x0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/translate/TranslationPresenter;->translate(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic translateSource$default(Lcom/iMe/ui/translate/TranslationPresenter;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_1

    .line 106
    iget-object p1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->args:Lcom/iMe/model/translation/TranslationArgs;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iMe/model/translation/TranslationArgs;->getTextToTranslate()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_2

    const/4 p2, 0x0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/translate/TranslationPresenter;->translateSource(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final loadLanguages(Z)V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->translationInteractor:Lcom/iMe/storage/domain/interactor/translate/TranslationInteractor;

    .line 43
    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/translate/TranslationInteractor;->languages()Lio/reactivex/Observable;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "translationInteractor\n  \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/iMe/ui/translate/TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/iMe/ui/translate/TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/translate/TranslationPresenter;Z)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/translate/TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/translate/TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 60
    invoke-static {p0, p1, v0, v1, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->args:Lcom/iMe/model/translation/TranslationArgs;

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/translate/TranslationView;

    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->sourceLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    invoke-virtual {v1}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/ui/translate/TranslationPresenter;->targetLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    invoke-virtual {v2}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/translate/TranslationView;->configureScreenWith(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->args:Lcom/iMe/model/translation/TranslationArgs;

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationArgs;->getType()Lcom/iMe/fork/enums/TranslationDialogType;

    move-result-object v0

    sget-object v1, Lcom/iMe/fork/enums/TranslationDialogType;->REPLY:Lcom/iMe/fork/enums/TranslationDialogType;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 180
    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/ui/translate/TranslationPresenter;->translate$default(Lcom/iMe/ui/translate/TranslationPresenter;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final prepareReplyDialog()V
    .locals 14

    .line 163
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/translate/TranslationView;

    .line 164
    new-instance v13, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xff

    const/4 v12, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;-><init>(ZLjava/lang/String;ZLjava/lang/String;JZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 165
    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->sourceLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    invoke-virtual {v1}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->setInTextTranslateLangCode(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->targetLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    invoke-virtual {v1}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "en"

    :cond_0
    invoke-virtual {v13, v1}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->setOutTextTranslateLangCode(Ljava/lang/String;)V

    .line 163
    invoke-interface {v0, v13}, Lcom/iMe/ui/translate/TranslationView;->openReplyDialog(Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;)V

    return-void
.end method

.method public final replaceLanguage(ZLjava/lang/String;)V
    .locals 2

    const-string v0, "translateText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/translate/TranslationView;

    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->targetLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->sourceLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    invoke-virtual {v1}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/iMe/ui/translate/TranslationView;->showTranslation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/translate/TranslationView;

    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->sourceLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->targetLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    invoke-virtual {v1}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/iMe/ui/translate/TranslationView;->showTranslation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final selectLanguage(Ljava/lang/String;)V
    .locals 4

    const-string v0, "selectedLanguageCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-boolean v0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->isSource:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->sourceLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    iput-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->outLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    .line 150
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->supportedLanguages:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/iMe/model/translation/TranslationLanguageUiModel;

    .line 151
    invoke-virtual {v3}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 150
    :goto_0
    check-cast v2, Lcom/iMe/model/translation/TranslationLanguageUiModel;

    if-nez v2, :cond_2

    return-void

    :cond_2
    iput-object v2, p0, Lcom/iMe/ui/translate/TranslationPresenter;->sourceLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    const/4 p1, 0x0

    const/4 v0, 0x3

    .line 153
    invoke-static {p0, v1, p1, v0, v1}, Lcom/iMe/ui/translate/TranslationPresenter;->translateSource$default(Lcom/iMe/ui/translate/TranslationPresenter;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_2

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->supportedLanguages:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/iMe/model/translation/TranslationLanguageUiModel;

    .line 156
    invoke-virtual {v3}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_5
    move-object v2, v1

    .line 155
    :goto_1
    check-cast v2, Lcom/iMe/model/translation/TranslationLanguageUiModel;

    if-nez v2, :cond_6

    return-void

    :cond_6
    iput-object v2, p0, Lcom/iMe/ui/translate/TranslationPresenter;->targetLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    const/4 p1, 0x1

    .line 158
    invoke-static {p0, v1, p1, p1, v1}, Lcom/iMe/ui/translate/TranslationPresenter;->translate$default(Lcom/iMe/ui/translate/TranslationPresenter;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public final translate(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/translate/TranslationPresenter;->isValidToTranslate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->translationInteractor:Lcom/iMe/storage/domain/interactor/translate/TranslationInteractor;

    .line 68
    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->targetLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    invoke-virtual {v1}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 69
    iget-object v2, p0, Lcom/iMe/ui/translate/TranslationPresenter;->sourceLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    invoke-virtual {v2}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v0, p1, v1, v2}, Lcom/iMe/storage/domain/interactor/translate/TranslationInteractor;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "translationInteractor\n  \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/iMe/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/iMe/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/translate/TranslationPresenter;Ljava/lang/String;Z)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/iMe/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p2, v1}, Lcom/iMe/ui/translate/TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 100
    invoke-static {p0, p1, v0, p2, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/translate/TranslationView;

    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->sourceLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->targetLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    invoke-virtual {v1}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1, v0, v1}, Lcom/iMe/ui/translate/TranslationView;->showTranslation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final translateSource(Ljava/lang/String;Z)V
    .locals 2

    const-string p2, "text"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object p2, p0, Lcom/iMe/ui/translate/TranslationPresenter;->translationInteractor:Lcom/iMe/storage/domain/interactor/translate/TranslationInteractor;

    .line 110
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->sourceLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 111
    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter;->outLanguage:Lcom/iMe/model/translation/TranslationLanguageUiModel;

    invoke-virtual {v1}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {p2, p1, v0, v1}, Lcom/iMe/storage/domain/interactor/translate/TranslationInteractor;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p2

    .line 113
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    const-string v0, "translationInteractor\n  \u2026(schedulersProvider.ui())"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/iMe/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/translate/TranslationPresenter;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/translate/TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p2, p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 136
    invoke-static {p0, p1, p2, v0, p2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method
