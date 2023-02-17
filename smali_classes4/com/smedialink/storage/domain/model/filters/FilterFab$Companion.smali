.class public final Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;
.super Ljava/lang/Object;
.source "FilterFab.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/filters/FilterFab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilterFab.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilterFab.kt\ncom/smedialink/storage/domain/model/filters/FilterFab$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 GsonExt.kt\ncom/smedialink/storage/data/utils/extentions/GsonExtKt\n*L\n1#1,49:1\n1#2:50\n1547#3:51\n1618#3,3:52\n1547#3:55\n1618#3,3:56\n1547#3:64\n1618#3,3:65\n3785#4:59\n4300#4,2:60\n25#5,2:62\n*S KotlinDebug\n*F\n+ 1 FilterFab.kt\ncom/smedialink/storage/domain/model/filters/FilterFab$Companion\n*L\n34#1:51\n34#1:52,3\n37#1:55\n37#1:56,3\n46#1:64\n46#1:65,3\n39#1:59\n39#1:60,2\n45#1:62,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final findByOldPreferenceId(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/filters/FilterFab;
    .locals 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/smedialink/storage/domain/model/filters/FilterFab;->values()[Lcom/smedialink/storage/domain/model/filters/FilterFab;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/filters/FilterFab;->getOldPreferenceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    .line 42
    sget-object v3, Lcom/smedialink/storage/domain/model/filters/FilterFab;->CREATE_CHAT:Lcom/smedialink/storage/domain/model/filters/FilterFab;

    :cond_2
    return-object v3
.end method

.method public final getFabsList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/smedialink/storage/domain/model/filters/FilterFab;->values()[Lcom/smedialink/storage/domain/model/filters/FilterFab;

    move-result-object v0

    .line 3785
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4300
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 39
    sget-object v6, Lcom/smedialink/storage/domain/model/filters/FilterFab;->CREATE_ALBUM:Lcom/smedialink/storage/domain/model/filters/FilterFab;

    if-eq v5, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/smedialink/storage/domain/model/filters/FilterFab;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "enums"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Lcom/smedialink/storage/domain/model/filters/FilterFab;

    .line 37
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final mapNameToEnum(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/filters/FilterFab;
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/smedialink/storage/domain/model/filters/FilterFab;->values()[Lcom/smedialink/storage/domain/model/filters/FilterFab;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    sget-object v3, Lcom/smedialink/storage/domain/model/filters/FilterFab;->CREATE_CHAT:Lcom/smedialink/storage/domain/model/filters/FilterFab;

    :cond_2
    return-object v3
.end method

.method public final mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/smedialink/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 1547
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Ljava/lang/String;

    .line 34
    sget-object v2, Lcom/smedialink/storage/domain/model/filters/FilterFab;->Companion:Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v2, v1}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/filters/FilterFab;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final mapOldPreferenceJsonToEnums(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/smedialink/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "[]"

    .line 25
    :cond_0
    new-instance v1, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion$mapOldPreferenceJsonToEnums$$inlined$fromJsonTokenType$1;

    invoke-direct {v1}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion$mapOldPreferenceJsonToEnums$$inlined$fromJsonTokenType$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 26
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Ljava/lang/String;

    .line 46
    sget-object v2, Lcom/smedialink/storage/domain/model/filters/FilterFab;->Companion:Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v2, v1}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->findByOldPreferenceId(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/filters/FilterFab;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
