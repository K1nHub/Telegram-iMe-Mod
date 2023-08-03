.class public final Lcom/iMe/fork/enums/SortingFilter$Companion;
.super Ljava/lang/Object;
.source "SortingFilter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/enums/SortingFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSortingFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SortingFilter.kt\ncom/iMe/fork/enums/SortingFilter$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,362:1\n1#2:363\n3792#3:364\n4307#3,2:365\n*S KotlinDebug\n*F\n+ 1 SortingFilter.kt\ncom/iMe/fork/enums/SortingFilter$Companion\n*L\n347#1:364\n347#1:365,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/fork/enums/SortingFilter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getExtraId(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x77359400

    goto :goto_0

    :cond_0
    const p1, 0x3b9aca00

    :goto_0
    return p1
.end method

.method public final getFilterByIdWithExtra(ZI)Lcom/iMe/fork/enums/SortingFilter;
    .locals 4

    .line 353
    invoke-virtual {p0, p1}, Lcom/iMe/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/iMe/fork/enums/SortingFilter;

    invoke-virtual {v2}, Lcom/iMe/fork/enums/SortingFilter;->getAddingOrder()I

    move-result v2

    sget-object v3, Lcom/iMe/fork/enums/SortingFilter;->Companion:Lcom/iMe/fork/enums/SortingFilter$Companion;

    invoke-virtual {v3, p1, p2}, Lcom/iMe/fork/enums/SortingFilter$Companion;->removeExtraFromId(ZI)I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/iMe/fork/enums/SortingFilter;

    return-object v1
.end method

.method public final getSortingFilters(Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/iMe/fork/enums/SortingFilter;",
            ">;"
        }
    .end annotation

    .line 347
    invoke-static {}, Lcom/iMe/fork/enums/SortingFilter;->values()[Lcom/iMe/fork/enums/SortingFilter;

    move-result-object v0

    .line 3792
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4307
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 347
    invoke-virtual {v5}, Lcom/iMe/fork/enums/SortingFilter;->isArchive()Z

    move-result v6

    if-ne v6, p1, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    if-eqz v6, :cond_1

    .line 4307
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final isSortingFilter(ZI)Z
    .locals 2

    .line 350
    invoke-virtual {p0, p1}, Lcom/iMe/fork/enums/SortingFilter$Companion;->getExtraId(Z)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/iMe/fork/enums/SortingFilter$Companion;->getExtraId(Z)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/iMe/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr v1, p1

    const/4 p1, 0x0

    if-ge p2, v1, :cond_0

    if-gt v0, p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public final mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/SortingFilter;
    .locals 5

    .line 344
    invoke-static {}, Lcom/iMe/fork/enums/SortingFilter;->values()[Lcom/iMe/fork/enums/SortingFilter;

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
    return-object v3
.end method

.method public final removeExtraFromId(ZI)I
    .locals 0

    .line 356
    invoke-virtual {p0, p1}, Lcom/iMe/fork/enums/SortingFilter$Companion;->getExtraId(Z)I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
