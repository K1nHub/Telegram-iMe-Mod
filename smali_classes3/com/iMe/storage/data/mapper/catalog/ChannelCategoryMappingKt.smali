.class public final Lcom/iMe/storage/data/mapper/catalog/ChannelCategoryMappingKt;
.super Ljava/lang/Object;
.source "ChannelCategoryMapping.kt"


# direct methods
.method public static final mapToDb(Lcom/iMe/storage/domain/model/catalog/CategoryWithCounter;)Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;

    .line 32
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/catalog/CategoryWithCounter;->getCategory()Lcom/iMe/storage/domain/model/catalog/CatalogCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/catalog/CatalogCategory;->getId()J

    move-result-wide v1

    .line 33
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/catalog/CategoryWithCounter;->getCategory()Lcom/iMe/storage/domain/model/catalog/CatalogCategory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/catalog/CatalogCategory;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/catalog/CategoryWithCounter;->getTotal()I

    move-result p0

    .line 31
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;-><init>(JLjava/lang/String;I)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;)Lcom/iMe/storage/domain/model/catalog/CatalogCategory;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/iMe/storage/domain/model/catalog/CatalogCategory;

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;->getId()J

    move-result-wide v1

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;->getTitle()Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-direct {v0, v1, v2, p0}, Lcom/iMe/storage/domain/model/catalog/CatalogCategory;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;)Lcom/iMe/storage/domain/model/catalog/CategoryWithCounter;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/iMe/storage/domain/model/catalog/CategoryWithCounter;

    .line 23
    new-instance v1, Lcom/iMe/storage/domain/model/catalog/CatalogCategory;

    .line 24
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->getId()J

    move-result-wide v2

    .line 25
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-direct {v1, v2, v3, v4}, Lcom/iMe/storage/domain/model/catalog/CatalogCategory;-><init>(JLjava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->getTotal()I

    move-result p0

    .line 22
    invoke-direct {v0, v1, p0}, Lcom/iMe/storage/domain/model/catalog/CategoryWithCounter;-><init>(Lcom/iMe/storage/domain/model/catalog/CatalogCategory;I)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;)Lcom/iMe/storage/domain/model/catalog/CategoryWithCounter;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/iMe/storage/domain/model/catalog/CategoryWithCounter;

    .line 17
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;->getCategory()Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/mapper/catalog/ChannelCategoryMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;)Lcom/iMe/storage/domain/model/catalog/CatalogCategory;

    move-result-object v1

    .line 18
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;->getTotal()I

    move-result p0

    .line 16
    invoke-direct {v0, v1, p0}, Lcom/iMe/storage/domain/model/catalog/CategoryWithCounter;-><init>(Lcom/iMe/storage/domain/model/catalog/CatalogCategory;I)V

    return-object v0
.end method
