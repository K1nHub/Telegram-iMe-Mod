.class final Lorg/ton/boc/CachedBagOfCells$CellInfo;
.super Ljava/lang/Object;
.source "CachedBagOfCells.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/boc/CachedBagOfCells;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CellInfo"
.end annotation


# instance fields
.field private final cell:Lorg/ton/cell/Cell;

.field private newIndex:I

.field private referencesIndexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private shouldCache:Z

.field private weight:I


# direct methods
.method public constructor <init>(Lorg/ton/cell/Cell;Ljava/util/ArrayList;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/Cell;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;IIZ)V"
        }
    .end annotation

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referencesIndexes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->cell:Lorg/ton/cell/Cell;

    .line 208
    iput-object p2, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->referencesIndexes:Ljava/util/ArrayList;

    .line 209
    iput p3, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->weight:I

    .line 210
    iput p4, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->newIndex:I

    .line 211
    iput-boolean p5, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->shouldCache:Z

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/cell/Cell;Ljava/util/ArrayList;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, -0x1

    :cond_1
    move v5, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    move v6, v0

    goto :goto_1

    :cond_2
    move v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 206
    invoke-direct/range {v1 .. v6}, Lorg/ton/boc/CachedBagOfCells$CellInfo;-><init>(Lorg/ton/cell/Cell;Ljava/util/ArrayList;IIZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/boc/CachedBagOfCells$CellInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/boc/CachedBagOfCells$CellInfo;

    iget-object v1, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->cell:Lorg/ton/cell/Cell;

    iget-object v3, p1, Lorg/ton/boc/CachedBagOfCells$CellInfo;->cell:Lorg/ton/cell/Cell;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->referencesIndexes:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/ton/boc/CachedBagOfCells$CellInfo;->referencesIndexes:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->weight:I

    iget v3, p1, Lorg/ton/boc/CachedBagOfCells$CellInfo;->weight:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->newIndex:I

    iget v3, p1, Lorg/ton/boc/CachedBagOfCells$CellInfo;->newIndex:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->shouldCache:Z

    iget-boolean p1, p1, Lorg/ton/boc/CachedBagOfCells$CellInfo;->shouldCache:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCell()Lorg/ton/cell/Cell;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->cell:Lorg/ton/cell/Cell;

    return-object v0
.end method

.method public final getNewIndex()I
    .locals 1

    .line 210
    iget v0, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->newIndex:I

    return v0
.end method

.method public final getReferencesIndexes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->referencesIndexes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getWeight()I
    .locals 1

    .line 209
    iget v0, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->weight:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->cell:Lorg/ton/cell/Cell;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->referencesIndexes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->weight:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->newIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->shouldCache:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setNewIndex(I)V
    .locals 0

    .line 210
    iput p1, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->newIndex:I

    return-void
.end method

.method public final setShouldCache(Z)V
    .locals 0

    .line 211
    iput-boolean p1, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->shouldCache:Z

    return-void
.end method

.method public final setWeight(I)V
    .locals 0

    .line 209
    iput p1, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->weight:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellInfo(cell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->cell:Lorg/ton/cell/Cell;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referencesIndexes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->referencesIndexes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->weight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->newIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shouldCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/ton/boc/CachedBagOfCells$CellInfo;->shouldCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
