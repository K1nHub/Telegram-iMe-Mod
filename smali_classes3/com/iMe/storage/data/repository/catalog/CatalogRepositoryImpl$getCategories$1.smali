.class final Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CatalogRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl;->getCategories(Lcom/iMe/storage/domain/model/catalog/ChatType;Z)Lio/reactivex/Observable;
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
        "Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;",
        ">;",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/catalog/CategoryWithCounter;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCatalogRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogRepositoryImpl.kt\ncom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n*L\n1#1,139:1\n1549#2:140\n1620#2,3:141\n15#3:144\n*S KotlinDebug\n*F\n+ 1 CatalogRepositoryImpl.kt\ncom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$1\n*L\n91#1:140\n91#1:141,3\n91#1:144\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$1;

    invoke-direct {v0}, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$1;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$1;->INSTANCE:Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/List;)Lcom/iMe/storage/domain/model/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;",
            ">;)",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/catalog/CategoryWithCounter;",
            ">;>;"
        }
    .end annotation

    const-string v0, "categories"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
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

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;

    .line 91
    invoke-static {v1}, Lcom/iMe/storage/data/mapper/catalog/ChannelCategoryMappingKt;->mapToDomain(Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;)Lcom/iMe/storage/domain/model/catalog/CategoryWithCounter;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_0
    sget-object p1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 90
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/repository/catalog/CatalogRepositoryImpl$getCategories$1;->invoke(Ljava/util/List;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
