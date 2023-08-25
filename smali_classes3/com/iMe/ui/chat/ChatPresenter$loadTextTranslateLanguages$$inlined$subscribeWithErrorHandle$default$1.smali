.class public final Lcom/iMe/ui/chat/ChatPresenter$loadTextTranslateLanguages$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/chat/ChatPresenter;->loadTextTranslateLanguages()V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 ChatPresenter.kt\ncom/iMe/ui/chat/ChatPresenter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n170#2,4:112\n174#2,11:120\n1549#3:116\n1620#3,3:117\n*S KotlinDebug\n*F\n+ 1 ChatPresenter.kt\ncom/iMe/ui/chat/ChatPresenter\n*L\n173#1:116\n173#1:117,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $currentLanguage$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/ui/chat/ChatPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/chat/ChatPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/chat/ChatPresenter$loadTextTranslateLanguages$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/chat/ChatPresenter;

    iput-object p2, p0, Lcom/iMe/ui/chat/ChatPresenter$loadTextTranslateLanguages$$inlined$subscribeWithErrorHandle$default$1;->$currentLanguage$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/ui/chat/ChatPresenter$loadTextTranslateLanguages$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

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
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/translation/TranslationLanguage;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/iMe/ui/chat/ChatPresenter$loadTextTranslateLanguages$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/chat/ChatPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/chat/ChatView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/storage/domain/model/translation/TranslationLanguage;

    .line 115
    iget-object v3, p0, Lcom/iMe/ui/chat/ChatPresenter$loadTextTranslateLanguages$$inlined$subscribeWithErrorHandle$default$1;->$currentLanguage$inlined:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/iMe/mapper/translation/TranslationUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/translation/TranslationLanguage;Ljava/lang/String;)Lcom/iMe/model/translation/TranslationLanguageUiModel;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_0
    new-instance p1, Ljava/util/Locale;

    iget-object v2, p0, Lcom/iMe/ui/chat/ChatPresenter$loadTextTranslateLanguages$$inlined$subscribeWithErrorHandle$default$1;->$currentLanguage$inlined:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    const-string v2, "getInstance(Locale(currentLanguage))"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/iMe/ui/chat/ChatPresenter$loadTextTranslateLanguages$lambda$7$$inlined$compareBy$1;

    invoke-direct {v2, p1}, Lcom/iMe/ui/chat/ChatPresenter$loadTextTranslateLanguages$lambda$7$$inlined$compareBy$1;-><init>(Ljava/util/Comparator;)V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 121
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 114
    invoke-interface {v0, p1}, Lcom/iMe/ui/chat/ChatView;->onLanguagesLoaded(Ljava/util/List;)V

    goto :goto_1

    .line 124
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/iMe/ui/chat/ChatPresenter$loadTextTranslateLanguages$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/chat/ChatPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/chat/ChatView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/chat/ChatPresenter$loadTextTranslateLanguages$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/chat/ChatPresenter;

    invoke-static {v1}, Lcom/iMe/ui/chat/ChatPresenter;->access$getResourceManager$p(Lcom/iMe/ui/chat/ChatPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_2
    :goto_1
    return-void
.end method
