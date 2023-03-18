.class final Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CatalogRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->getLanguages(Z)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/storage/data/locale/db/model/catalog/CatalogLanguageDb;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;",
        ">;>;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCatalogRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogRepositoryImpl.kt\ncom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n+ 4 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n*L\n1#1,126:1\n1549#2:127\n1620#2,3:128\n8#3:131\n18#4:132\n*S KotlinDebug\n*F\n+ 1 CatalogRepositoryImpl.kt\ncom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$2\n*L\n48#1:127\n48#1:128,3\n48#1:131\n48#1:132\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$2;->this$0:Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/List;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/locale/db/model/catalog/CatalogLanguageDb;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "entities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$2;->this$0:Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->getLanguages(Z)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$2;->this$0:Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;->access$getSchedulersProvider$p(Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl;)Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_1

    .line 1549
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/smedialink/storage/data/locale/db/model/catalog/CatalogLanguageDb;

    .line 48
    invoke-static {v1}, Lcom/smedialink/storage/data/mapper/catalog/ChannelLanguageMappingKt;->mapToDomain(Lcom/smedialink/storage/data/locale/db/model/catalog/CatalogLanguageDb;)Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    sget-object p1, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {p1, v0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/repository/catalog/CatalogRepositoryImpl$getLanguages$2;->invoke(Ljava/util/List;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
