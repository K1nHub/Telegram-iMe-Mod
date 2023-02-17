.class public final Lcom/smedialink/mapper/catalog/CatalogLanguagesUiMappingKt;
.super Ljava/lang/Object;
.source "CatalogLanguagesUiMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCatalogLanguagesUiMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogLanguagesUiMapping.kt\ncom/smedialink/mapper/catalog/CatalogLanguagesUiMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,22:1\n1547#2:23\n1618#2,3:24\n*S KotlinDebug\n*F\n+ 1 CatalogLanguagesUiMapping.kt\ncom/smedialink/mapper/catalog/CatalogLanguagesUiMappingKt\n*L\n9#1:23\n9#1:24,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToUI(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;

    .line 10
    new-instance v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 12
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;->getNativeTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 13
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 14
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;->getId()J

    move-result-wide v3

    long-to-int v1, v3

    iput v1, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    .line 10
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    new-array p0, p0, [Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    .line 18
    sget-object v2, Lcom/smedialink/mapper/catalog/CatalogLanguagesUiMappingKt$mapToUI$2;->INSTANCE:Lcom/smedialink/mapper/catalog/CatalogLanguagesUiMappingKt$mapToUI$2;

    aput-object v2, p0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/smedialink/mapper/catalog/CatalogLanguagesUiMappingKt$mapToUI$3;->INSTANCE:Lcom/smedialink/mapper/catalog/CatalogLanguagesUiMappingKt$mapToUI$3;

    aput-object v2, p0, v1

    invoke-static {p0}, Lkotlin/comparisons/ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    move-result-object p0

    .line 17
    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
