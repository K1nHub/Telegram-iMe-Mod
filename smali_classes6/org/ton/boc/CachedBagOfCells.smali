.class public final Lorg/ton/boc/CachedBagOfCells;
.super Ljava/lang/Object;
.source "CachedBagOfCells.kt"

# interfaces
.implements Lorg/ton/boc/BagOfCells;
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/boc/CachedBagOfCells$CellInfo;,
        Lorg/ton/boc/CachedBagOfCells$Companion;,
        Lorg/ton/boc/CachedBagOfCells$Revisit;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/boc/BagOfCells;",
        "Ljava/lang/Iterable<",
        "Lorg/ton/cell/Cell;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCachedBagOfCells.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CachedBagOfCells.kt\norg/ton/boc/CachedBagOfCells\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,218:1\n12#2,11:219\n1864#3,3:230\n1855#3,2:233\n1855#3,2:236\n1864#3,3:238\n1864#3,3:241\n1855#3:244\n1855#3,2:245\n1856#3:247\n1855#3,2:248\n1855#3,2:250\n1549#3:252\n1620#3,3:253\n1#4:235\n*S KotlinDebug\n*F\n+ 1 CachedBagOfCells.kt\norg/ton/boc/CachedBagOfCells\n*L\n23#1:219,11\n28#1:230,3\n51#1:233,2\n70#1:236,2\n93#1:238,3\n103#1:241,3\n114#1:244\n116#1:245,2\n114#1:247\n131#1:248,2\n135#1:250,2\n139#1:252\n139#1:253,3\n*E\n"
.end annotation


# instance fields
.field private cellCount:I

.field private cellHashmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/ton/cell/Cell;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cellList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/ton/boc/CachedBagOfCells$CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private cellListTmp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/ton/boc/CachedBagOfCells$CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private revisitIndex:I

.field private rootIndexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final roots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ton/cell/Cell;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/boc/CachedBagOfCells$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/boc/CachedBagOfCells$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/ton/cell/Cell;",
            ">;)V"
        }
    .end annotation

    const-string v0, "roots"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lorg/ton/boc/CachedBagOfCells;->roots:Ljava/util/List;

    .line 11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/ton/boc/CachedBagOfCells;->cellHashmap:Ljava/util/HashMap;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/ton/boc/CachedBagOfCells;->cellList:Ljava/util/ArrayList;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/ton/boc/CachedBagOfCells;->getRoots()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/ton/boc/CachedBagOfCells;->rootIndexes:Ljava/util/ArrayList;

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/ton/boc/CachedBagOfCells;->cellListTmp:Ljava/util/ArrayList;

    .line 18
    invoke-direct {p0}, Lorg/ton/boc/CachedBagOfCells;->importCells()V

    return-void
.end method

.method private final clearCells()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lorg/ton/boc/CachedBagOfCells;->cellCount:I

    .line 44
    iget-object v0, p0, Lorg/ton/boc/CachedBagOfCells;->cellHashmap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 45
    iget-object v0, p0, Lorg/ton/boc/CachedBagOfCells;->cellList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    iget-object v0, p0, Lorg/ton/boc/CachedBagOfCells;->rootIndexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private final importCell(Lorg/ton/cell/Cell;I)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x400

    if-gt p2, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_5

    .line 62
    iget-object v2, p0, Lorg/ton/boc/CachedBagOfCells;->cellHashmap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 64
    iget-object p1, p0, Lorg/ton/boc/CachedBagOfCells;->cellList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/boc/CachedBagOfCells$CellInfo;

    invoke-virtual {p1, v1}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->setShouldCache(Z)V

    .line 65
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 69
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Lorg/ton/cell/Cell;->getRefs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    invoke-interface {p1}, Lorg/ton/cell/Cell;->getRefs()Ljava/util/List;

    move-result-object v3

    .line 1855
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ton/cell/Cell;

    add-int/lit8 v6, p2, 0x1

    .line 71
    invoke-direct {p0, v5, v6}, Lorg/ton/boc/CachedBagOfCells;->importCell(Lorg/ton/cell/Cell;I)I

    move-result v5

    .line 72
    iget-object v6, p0, Lorg/ton/boc/CachedBagOfCells;->cellList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ton/boc/CachedBagOfCells$CellInfo;

    invoke-virtual {v6}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getWeight()I

    move-result v6

    add-int/2addr v4, v6

    .line 73
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :cond_2
    iget-object p2, p0, Lorg/ton/boc/CachedBagOfCells;->cellList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget v3, p0, Lorg/ton/boc/CachedBagOfCells;->cellCount:I

    if-ne p2, v3, :cond_3

    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    .line 76
    iget-object p2, p0, Lorg/ton/boc/CachedBagOfCells;->cellHashmap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0xff

    .line 77
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 78
    new-instance p2, Lorg/ton/boc/CachedBagOfCells$CellInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/ton/boc/CachedBagOfCells$CellInfo;-><init>(Lorg/ton/cell/Cell;Ljava/util/ArrayList;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 83
    iget-object p1, p0, Lorg/ton/boc/CachedBagOfCells;->cellList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget p1, p0, Lorg/ton/boc/CachedBagOfCells;->cellCount:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/ton/boc/CachedBagOfCells;->cellCount:I

    return p1

    .line 75
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "error while importing a cell into a bag of cells: cell depth too large"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final importCells()V
    .locals 3

    .line 50
    invoke-direct {p0}, Lorg/ton/boc/CachedBagOfCells;->clearCells()V

    .line 51
    invoke-virtual {p0}, Lorg/ton/boc/CachedBagOfCells;->getRoots()Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ton/cell/Cell;

    .line 52
    invoke-direct {p0, v1, v2}, Lorg/ton/boc/CachedBagOfCells;->importCell(Lorg/ton/cell/Cell;I)I

    move-result v1

    .line 53
    iget-object v2, p0, Lorg/ton/boc/CachedBagOfCells;->rootIndexes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_0
    invoke-direct {p0}, Lorg/ton/boc/CachedBagOfCells;->reorderCells()V

    .line 56
    iget v0, p0, Lorg/ton/boc/CachedBagOfCells;->cellCount:I

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final reorderCells()V
    .locals 13

    .line 88
    iget-object v0, p0, Lorg/ton/boc/CachedBagOfCells;->cellList:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, v0, :cond_7

    .line 89
    iget-object v1, p0, Lorg/ton/boc/CachedBagOfCells;->cellList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "cellList[i]"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/ton/boc/CachedBagOfCells$CellInfo;

    .line 92
    invoke-virtual {v1}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getReferencesIndexes()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 93
    invoke-virtual {v1}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getReferencesIndexes()Ljava/util/ArrayList;

    move-result-object v5

    .line 1865
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/16 v6, 0x3f

    move v7, v2

    move v8, v7

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "cellList[referenceIndex]"

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v11, v7, 0x1

    if-gez v7, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 94
    iget-object v12, p0, Lorg/ton/boc/CachedBagOfCells;->cellList:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lorg/ton/boc/CachedBagOfCells$CellInfo;

    add-int/lit8 v10, v7, 0x3f

    .line 95
    invoke-virtual {v1}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getReferencesIndexes()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    div-int/2addr v10, v12

    .line 96
    invoke-virtual {v9}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getWeight()I

    move-result v12

    if-gt v12, v10, :cond_1

    .line 97
    invoke-virtual {v9}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getWeight()I

    move-result v9

    sub-int/2addr v6, v9

    add-int/lit8 v4, v4, -0x1

    shl-int v7, v3, v7

    or-int/2addr v8, v7

    :cond_1
    move v7, v11

    goto :goto_1

    :cond_2
    if-lez v4, :cond_6

    .line 103
    invoke-virtual {v1}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getReferencesIndexes()Ljava/util/ArrayList;

    move-result-object v1

    .line 1865
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v7, v2, 0x1

    if-gez v2, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    shl-int v2, v3, v2

    and-int/2addr v2, v8

    if-nez v2, :cond_5

    .line 105
    iget-object v2, p0, Lorg/ton/boc/CachedBagOfCells;->cellList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lorg/ton/boc/CachedBagOfCells$CellInfo;

    add-int/lit8 v5, v6, 0x1

    .line 106
    div-int/2addr v6, v4

    .line 107
    invoke-virtual {v2}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getWeight()I

    move-result v9

    if-le v9, v6, :cond_4

    .line 108
    invoke-virtual {v2, v6}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->setWeight(I)V

    :cond_4
    move v6, v5

    :cond_5
    move v2, v7

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 114
    :cond_7
    iget-object v0, p0, Lorg/ton/boc/CachedBagOfCells;->cellList:Ljava/util/ArrayList;

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ton/boc/CachedBagOfCells$CellInfo;

    .line 116
    invoke-virtual {v1}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getReferencesIndexes()Ljava/util/ArrayList;

    move-result-object v4

    .line 1855
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 117
    iget-object v7, p0, Lorg/ton/boc/CachedBagOfCells;->cellList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ton/boc/CachedBagOfCells$CellInfo;

    invoke-virtual {v6}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getWeight()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_4

    :cond_8
    const/16 v4, 0x40

    if-gt v5, v4, :cond_9

    move v4, v3

    goto :goto_5

    :cond_9
    move v4, v2

    :goto_5
    if-eqz v4, :cond_b

    .line 120
    invoke-virtual {v1}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getWeight()I

    move-result v4

    if-gt v5, v4, :cond_a

    .line 121
    invoke-virtual {v1, v5}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->setWeight(I)V

    goto :goto_3

    .line 123
    :cond_a
    invoke-virtual {v1, v2}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->setWeight(I)V

    goto :goto_3

    .line 119
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_c
    iget v0, p0, Lorg/ton/boc/CachedBagOfCells;->cellCount:I

    if-lez v0, :cond_14

    .line 127
    iput v2, p0, Lorg/ton/boc/CachedBagOfCells;->revisitIndex:I

    .line 128
    iget-object v0, p0, Lorg/ton/boc/CachedBagOfCells;->cellListTmp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    iget-object v0, p0, Lorg/ton/boc/CachedBagOfCells;->cellListTmp:Ljava/util/ArrayList;

    iget v1, p0, Lorg/ton/boc/CachedBagOfCells;->cellCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 131
    iget-object v0, p0, Lorg/ton/boc/CachedBagOfCells;->rootIndexes:Ljava/util/ArrayList;

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 132
    sget-object v4, Lorg/ton/boc/CachedBagOfCells$Revisit;->PREVISIT:Lorg/ton/boc/CachedBagOfCells$Revisit;

    invoke-direct {p0, v1, v4}, Lorg/ton/boc/CachedBagOfCells;->revisit(ILorg/ton/boc/CachedBagOfCells$Revisit;)I

    .line 133
    sget-object v4, Lorg/ton/boc/CachedBagOfCells$Revisit;->VISIT:Lorg/ton/boc/CachedBagOfCells$Revisit;

    invoke-direct {p0, v1, v4}, Lorg/ton/boc/CachedBagOfCells;->revisit(ILorg/ton/boc/CachedBagOfCells$Revisit;)I

    goto :goto_6

    .line 135
    :cond_d
    iget-object v0, p0, Lorg/ton/boc/CachedBagOfCells;->rootIndexes:Ljava/util/ArrayList;

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 136
    sget-object v4, Lorg/ton/boc/CachedBagOfCells$Revisit;->ALLOCATE:Lorg/ton/boc/CachedBagOfCells$Revisit;

    invoke-direct {p0, v1, v4}, Lorg/ton/boc/CachedBagOfCells;->revisit(ILorg/ton/boc/CachedBagOfCells$Revisit;)I

    goto :goto_7

    .line 139
    :cond_e
    iget-object v0, p0, Lorg/ton/boc/CachedBagOfCells;->rootIndexes:Ljava/util/ArrayList;

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1621
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 140
    iget-object v5, p0, Lorg/ton/boc/CachedBagOfCells;->cellList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ton/boc/CachedBagOfCells$CellInfo;

    invoke-virtual {v4}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getNewIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1621
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 138
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/ton/boc/CachedBagOfCells;->rootIndexes:Ljava/util/ArrayList;

    .line 143
    iget v0, p0, Lorg/ton/boc/CachedBagOfCells;->revisitIndex:I

    iget v1, p0, Lorg/ton/boc/CachedBagOfCells;->cellCount:I

    if-ne v0, v1, :cond_10

    move v0, v3

    goto :goto_9

    :cond_10
    move v0, v2

    :goto_9
    if-eqz v0, :cond_13

    .line 144
    iget-object v0, p0, Lorg/ton/boc/CachedBagOfCells;->cellList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/ton/boc/CachedBagOfCells;->cellListTmp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_11

    move v2, v3

    :cond_11
    if-eqz v2, :cond_12

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/ton/boc/CachedBagOfCells;->cellListTmp:Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->asReversedMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/ton/boc/CachedBagOfCells;->cellList:Ljava/util/ArrayList;

    .line 146
    iget-object v0, p0, Lorg/ton/boc/CachedBagOfCells;->cellListTmp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_a

    .line 144
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cellList.size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/boc/CachedBagOfCells;->cellList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellListTmp.size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/boc/CachedBagOfCells;->cellListTmp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revisitIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/boc/CachedBagOfCells;->revisitIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/boc/CachedBagOfCells;->cellCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    :goto_a
    return-void
.end method

.method private final revisit(ILorg/ton/boc/CachedBagOfCells$Revisit;)I
    .locals 6

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 154
    iget v1, p0, Lorg/ton/boc/CachedBagOfCells;->cellCount:I

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_b

    .line 155
    iget-object v0, p0, Lorg/ton/boc/CachedBagOfCells;->cellList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cellList[cellIndex]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/ton/boc/CachedBagOfCells$CellInfo;

    .line 157
    invoke-virtual {v0}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getNewIndex()I

    move-result v1

    if-ltz v1, :cond_1

    .line 158
    invoke-virtual {v0}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getNewIndex()I

    move-result p1

    return p1

    .line 160
    :cond_1
    sget-object v1, Lorg/ton/boc/CachedBagOfCells$Revisit;->PREVISIT:Lorg/ton/boc/CachedBagOfCells$Revisit;

    const-string v2, "cellInfo.referencesIndexes[j]"

    const/4 v3, -0x1

    if-ne p2, v1, :cond_5

    .line 162
    invoke-virtual {v0}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getNewIndex()I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 163
    invoke-virtual {v0}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getReferencesIndexes()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p1

    :goto_0
    if-ge v3, p1, :cond_3

    .line 164
    invoke-virtual {v0}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getReferencesIndexes()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 166
    invoke-virtual {v0}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getWeight()I

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lorg/ton/boc/CachedBagOfCells$Revisit;->VISIT:Lorg/ton/boc/CachedBagOfCells$Revisit;

    goto :goto_1

    :cond_2
    sget-object v1, Lorg/ton/boc/CachedBagOfCells$Revisit;->PREVISIT:Lorg/ton/boc/CachedBagOfCells$Revisit;

    .line 167
    :goto_1
    invoke-direct {p0, p2, v1}, Lorg/ton/boc/CachedBagOfCells;->revisit(ILorg/ton/boc/CachedBagOfCells$Revisit;)I

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x2

    .line 169
    invoke-virtual {v0, p1}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->setNewIndex(I)V

    .line 171
    :cond_4
    invoke-virtual {v0}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getNewIndex()I

    move-result p1

    return p1

    .line 173
    :cond_5
    sget-object v4, Lorg/ton/boc/CachedBagOfCells$Revisit;->ALLOCATE:Lorg/ton/boc/CachedBagOfCells$Revisit;

    if-ne p2, v4, :cond_6

    .line 175
    iget p1, p0, Lorg/ton/boc/CachedBagOfCells;->revisitIndex:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/ton/boc/CachedBagOfCells;->revisitIndex:I

    .line 176
    invoke-virtual {v0, p1}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->setNewIndex(I)V

    .line 177
    iget-object p2, p0, Lorg/ton/boc/CachedBagOfCells;->cellListTmp:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return p1

    .line 180
    :cond_6
    invoke-virtual {v0}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getNewIndex()I

    move-result p2

    const/4 v4, -0x3

    if-ne p2, v4, :cond_7

    .line 182
    invoke-virtual {v0}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getNewIndex()I

    move-result p1

    return p1

    .line 184
    :cond_7
    invoke-virtual {v0}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getWeight()I

    move-result p2

    if-nez p2, :cond_8

    .line 186
    invoke-direct {p0, p1, v1}, Lorg/ton/boc/CachedBagOfCells;->revisit(ILorg/ton/boc/CachedBagOfCells$Revisit;)I

    .line 189
    :cond_8
    invoke-virtual {v0}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getReferencesIndexes()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p1

    :goto_2
    if-ge v3, p1, :cond_9

    .line 190
    invoke-virtual {v0}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getReferencesIndexes()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    sget-object v1, Lorg/ton/boc/CachedBagOfCells$Revisit;->VISIT:Lorg/ton/boc/CachedBagOfCells$Revisit;

    invoke-direct {p0, p2, v1}, Lorg/ton/boc/CachedBagOfCells;->revisit(ILorg/ton/boc/CachedBagOfCells$Revisit;)I

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 193
    :cond_9
    invoke-virtual {v0}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getReferencesIndexes()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p1

    :goto_3
    if-ge v3, p1, :cond_a

    .line 194
    invoke-virtual {v0}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getReferencesIndexes()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {v0}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getReferencesIndexes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sget-object v5, Lorg/ton/boc/CachedBagOfCells$Revisit;->ALLOCATE:Lorg/ton/boc/CachedBagOfCells$Revisit;

    invoke-direct {p0, v1, v5}, Lorg/ton/boc/CachedBagOfCells;->revisit(ILorg/ton/boc/CachedBagOfCells$Revisit;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 196
    :cond_a
    invoke-virtual {v0, v4}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->setNewIndex(I)V

    .line 197
    invoke-virtual {v0}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getNewIndex()I

    move-result p1

    return p1

    .line 154
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 35
    :cond_0
    instance-of v1, p1, Lorg/ton/boc/BagOfCells;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 36
    :cond_1
    invoke-virtual {p0}, Lorg/ton/boc/CachedBagOfCells;->getRoots()Ljava/util/List;

    move-result-object v1

    check-cast p1, Lorg/ton/boc/BagOfCells;

    invoke-interface {p1}, Lorg/ton/boc/BagOfCells;->getRoots()Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getRoots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ton/cell/Cell;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lorg/ton/boc/CachedBagOfCells;->roots:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/ton/boc/CachedBagOfCells;->getRoots()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/ton/cell/Cell;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lorg/ton/boc/CachedBagOfCells;->cellList:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    sget-object v1, Lorg/ton/boc/CachedBagOfCells$iterator$1;->INSTANCE:Lorg/ton/boc/CachedBagOfCells$iterator$1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 11

    .line 16
    new-instance v8, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10, v9}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    .line 24
    :try_start_0
    invoke-static/range {v0 .. v7}, Lorg/ton/boc/BagOfCellsUtilsKt;->writeBagOfCells$default(Lio/ktor/utils/io/core/Output;Lorg/ton/boc/BagOfCells;ZZZIILjava/lang/Object;)V

    .line 19
    invoke-virtual {v8}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 25
    invoke-static {v0, v1, v10, v9}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 21
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Output;->release()V

    .line 22
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    invoke-virtual {p0}, Lorg/ton/boc/CachedBagOfCells;->getRoots()Ljava/util/List;

    move-result-object v0

    .line 1865
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v8, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v1, Lorg/ton/cell/Cell;

    .line 29
    sget-object v0, Lorg/ton/cell/Cell;->Companion:Lorg/ton/cell/Cell$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v2, v6

    invoke-static/range {v0 .. v5}, Lorg/ton/cell/Cell$Companion;->toString$default(Lorg/ton/cell/Cell$Companion;Lorg/ton/cell/Cell;Ljava/lang/Appendable;Ljava/lang/String;ILjava/lang/Object;)V

    move v0, v8

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
