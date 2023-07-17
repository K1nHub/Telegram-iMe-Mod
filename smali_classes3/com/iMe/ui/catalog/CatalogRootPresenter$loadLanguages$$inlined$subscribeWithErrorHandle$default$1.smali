.class public final Lcom/iMe/ui/catalog/CatalogRootPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/catalog/CatalogRootPresenter;->loadLanguages()V
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
        "+",
        "Lcom/iMe/storage/domain/model/catalog/CatalogLanguage;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CatalogRootPresenter.kt\ncom/iMe/ui/catalog/CatalogRootPresenter\n*L\n1#1,111:1\n101#2,9:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/catalog/CatalogRootPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/catalog/CatalogRootPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/catalog/CatalogRootPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/CatalogRootPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/catalog/CatalogLanguage;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/catalog/CatalogRootPresenter;

    invoke-static {v0}, Lcom/iMe/ui/catalog/CatalogRootPresenter;->access$getAllLanguagesLocaleInfo(Lcom/iMe/ui/catalog/CatalogRootPresenter;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/iMe/mapper/catalog/CatalogLanguagesUiMappingKt;->mapToUI(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/iMe/ui/catalog/CatalogRootPresenter;->access$setLanguages$p(Lcom/iMe/ui/catalog/CatalogRootPresenter;Ljava/util/List;)V

    .line 115
    iget-object p1, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/catalog/CatalogRootPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/catalog/CatalogRootView;

    iget-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/catalog/CatalogRootPresenter;

    invoke-static {v0}, Lcom/iMe/ui/catalog/CatalogRootPresenter;->access$getSelectedLanguageId(Lcom/iMe/ui/catalog/CatalogRootPresenter;)I

    move-result v0

    iget-object v1, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/catalog/CatalogRootPresenter;

    invoke-static {v1}, Lcom/iMe/ui/catalog/CatalogRootPresenter;->access$getLanguages$p(Lcom/iMe/ui/catalog/CatalogRootPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/catalog/CatalogRootView;->openSelectLanguageScreen(ILjava/util/List;)V

    goto :goto_0

    .line 117
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/catalog/CatalogRootPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/CatalogRootView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/catalog/CatalogRootPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/catalog/CatalogRootPresenter;

    invoke-static {v1}, Lcom/iMe/ui/catalog/CatalogRootPresenter;->access$getResourceManager$p(Lcom/iMe/ui/catalog/CatalogRootPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_1
    :goto_0
    return-void
.end method
