.class public final Lcom/iMe/storage/data/mapper/catalog/ChannelLanguageMappingKt;
.super Ljava/lang/Object;
.source "ChannelLanguageMapping.kt"


# direct methods
.method public static final mapToDb(Lcom/iMe/storage/domain/model/catalog/CatalogLanguage;)Lcom/iMe/storage/data/locale/db/model/catalog/CatalogLanguageDb;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogLanguageDb;

    .line 23
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/catalog/CatalogLanguage;->getId()J

    move-result-wide v1

    .line 24
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/catalog/CatalogLanguage;->getNativeTitle()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/catalog/CatalogLanguage;->getTitle()Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogLanguageDb;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/locale/db/model/catalog/CatalogLanguageDb;)Lcom/iMe/storage/domain/model/catalog/CatalogLanguage;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/iMe/storage/domain/model/catalog/CatalogLanguage;

    .line 16
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogLanguageDb;->getId()J

    move-result-wide v1

    .line 17
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogLanguageDb;->getNativeTitle()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogLanguageDb;->getTitle()Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/iMe/storage/domain/model/catalog/CatalogLanguage;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;)Lcom/iMe/storage/domain/model/catalog/CatalogLanguage;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/iMe/storage/domain/model/catalog/CatalogLanguage;

    .line 9
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;->getId()J

    move-result-wide v1

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;->getNativeTitle()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;->getTitle()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/iMe/storage/domain/model/catalog/CatalogLanguage;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
