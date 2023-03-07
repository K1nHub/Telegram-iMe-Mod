.class public final Lcom/smedialink/storage/data/mapper/translate/TranslationMappingKt;
.super Ljava/lang/Object;
.source "TranslationMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTranslationMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TranslationMapping.kt\ncom/smedialink/storage/data/mapper/translate/TranslationMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,25:1\n1601#2,9:26\n1849#2:35\n1850#2:37\n1610#2:38\n817#2:39\n845#2,2:40\n1547#2:42\n1618#2,3:43\n1#3:36\n*S KotlinDebug\n*F\n+ 1 TranslationMapping.kt\ncom/smedialink/storage/data/mapper/translate/TranslationMappingKt\n*L\n15#1:26,9\n15#1:35\n15#1:37\n15#1:38\n22#1:39\n22#1:40,2\n23#1:42\n23#1:43,3\n15#1:36\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Ljava/util/ArrayList;)Lcom/smedialink/storage/domain/model/translation/Translation;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/smedialink/storage/domain/model/translation/Translation;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 1601
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1849
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1609
    check-cast v3, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1609
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const-string v3, ""

    .line 15
    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 16
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 14
    new-instance v1, Lcom/smedialink/storage/domain/model/translation/Translation;

    invoke-direct {v1, v0, p0}, Lcom/smedialink/storage/domain/model/translation/Translation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/translate/TranslationLanguagesResponse;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/response/translate/TranslationLanguagesResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/translation/TranslationLanguage;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/translate/TranslationLanguagesResponse;->getLanguageCodes()Ljava/util/List;

    move-result-object p0

    .line 817
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 845
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "-"

    .line 22
    invoke-static {v2, v6, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1547
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Ljava/lang/String;

    .line 23
    new-instance v2, Lcom/smedialink/storage/domain/model/translation/TranslationLanguage;

    invoke-direct {v2, v1}, Lcom/smedialink/storage/domain/model/translation/TranslationLanguage;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 24
    :cond_2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
