.class public final Lcom/iMe/ui/translate/TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/translate/TranslationPresenter;->loadLanguages(Z)V
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
        "Ljava/util/List<",
        "Lcom/iMe/storage/domain/model/translation/TranslationLanguage;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 TranslationPresenter.kt\ncom/iMe/ui/translate/TranslationPresenter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n46#2,6:112\n52#2,8:122\n1549#3:118\n1620#3,3:119\n*S KotlinDebug\n*F\n+ 1 TranslationPresenter.kt\ncom/iMe/ui/translate/TranslationPresenter\n*L\n51#1:118\n51#1:119,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $isSourceLanguage$inlined:Z

.field final synthetic this$0:Lcom/iMe/ui/translate/TranslationPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/translate/TranslationPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/translate/TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    iput-boolean p2, p0, Lcom/iMe/ui/translate/TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->$isSourceLanguage$inlined:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/iMe/ui/translate/TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/translation/TranslationLanguage;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    iget-boolean v1, p0, Lcom/iMe/ui/translate/TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->$isSourceLanguage$inlined:Z

    invoke-static {v0, v1}, Lcom/iMe/ui/translate/TranslationPresenter;->access$setSource$p(Lcom/iMe/ui/translate/TranslationPresenter;Z)V

    .line 115
    iget-boolean v0, p0, Lcom/iMe/ui/translate/TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->$isSourceLanguage$inlined:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-static {v0}, Lcom/iMe/ui/translate/TranslationPresenter;->access$getSourceLanguage$p(Lcom/iMe/ui/translate/TranslationPresenter;)Lcom/iMe/model/translation/TranslationLanguageUiModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-static {v0}, Lcom/iMe/ui/translate/TranslationPresenter;->access$getTargetLanguage$p(Lcom/iMe/ui/translate/TranslationPresenter;)Lcom/iMe/model/translation/TranslationLanguageUiModel;

    move-result-object v0

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lcom/iMe/storage/domain/model/translation/TranslationLanguage;

    .line 117
    iget-object v4, p0, Lcom/iMe/ui/translate/TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-static {v4}, Lcom/iMe/ui/translate/TranslationPresenter;->access$getCurrentLanguage(Lcom/iMe/ui/translate/TranslationPresenter;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iMe/mapper/translation/TranslationUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/translation/TranslationLanguage;Ljava/lang/String;)Lcom/iMe/model/translation/TranslationLanguageUiModel;

    move-result-object v3

    .line 1621
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    :cond_1
    new-instance p1, Ljava/util/Locale;

    iget-object v3, p0, Lcom/iMe/ui/translate/TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-static {v3}, Lcom/iMe/ui/translate/TranslationPresenter;->access$getCurrentLanguage(Lcom/iMe/ui/translate/TranslationPresenter;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    const-string v3, "getInstance(Locale(currentLanguage))"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/iMe/ui/translate/TranslationPresenter$loadLanguages$lambda$2$$inlined$compareBy$1;

    invoke-direct {v3, p1}, Lcom/iMe/ui/translate/TranslationPresenter$loadLanguages$lambda$2$$inlined$compareBy$1;-><init>(Ljava/util/Comparator;)V

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 123
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 116
    invoke-static {v1, p1}, Lcom/iMe/ui/translate/TranslationPresenter;->access$setSupportedLanguages$p(Lcom/iMe/ui/translate/TranslationPresenter;Ljava/util/List;)V

    .line 124
    iget-object p1, p0, Lcom/iMe/ui/translate/TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/translate/TranslationView;

    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-static {v1}, Lcom/iMe/ui/translate/TranslationPresenter;->access$getSupportedLanguages$p(Lcom/iMe/ui/translate/TranslationPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationLanguageUiModel;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/iMe/ui/translate/TranslationView;->showLanguages(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2

    .line 126
    :cond_2
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iMe/ui/translate/TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/translate/TranslationView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/iMe/ui/translate/TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-static {v1}, Lcom/iMe/ui/translate/TranslationPresenter;->access$getResourceManager$p(Lcom/iMe/ui/translate/TranslationPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method
