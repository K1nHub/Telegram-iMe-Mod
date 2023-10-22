.class public final Lorg/ton/cell/VirtualCell;
.super Ljava/lang/Object;
.source "VirtualCell.kt"

# interfaces
.implements Lorg/ton/cell/Cell;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVirtualCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VirtualCell.kt\norg/ton/cell/VirtualCell\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,32:1\n1549#2:33\n1620#2,3:34\n*S KotlinDebug\n*F\n+ 1 VirtualCell.kt\norg/ton/cell/VirtualCell\n*L\n10#1:33\n10#1:34,3\n*E\n"
.end annotation


# instance fields
.field private final cell:Lorg/ton/cell/Cell;

.field private final offset:I


# direct methods
.method public constructor <init>(Lorg/ton/cell/Cell;I)V
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/ton/cell/VirtualCell;->cell:Lorg/ton/cell/Cell;

    .line 7
    iput p2, p0, Lorg/ton/cell/VirtualCell;->offset:I

    return-void
.end method


# virtual methods
.method public beginParse()Lorg/ton/cell/CellSlice;
    .locals 1

    .line 29
    sget-object v0, Lorg/ton/cell/CellSlice;->Companion:Lorg/ton/cell/CellSlice$Companion;

    invoke-virtual {v0, p0}, Lorg/ton/cell/CellSlice$Companion;->beginParse(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellSlice;

    move-result-object v0

    return-object v0
.end method

.method public depth(I)I
    .locals 2

    .line 25
    iget-object v0, p0, Lorg/ton/cell/VirtualCell;->cell:Lorg/ton/cell/Cell;

    invoke-virtual {p0}, Lorg/ton/cell/VirtualCell;->getLevelMask-Kat384U()I

    move-result v1

    invoke-static {v1, p1}, Lorg/ton/cell/LevelMask;->apply-spGXSBY(II)I

    move-result p1

    invoke-static {p1}, Lorg/ton/cell/LevelMask;->getLevel-impl(I)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/ton/cell/Cell;->depth(I)I

    move-result p1

    return p1
.end method

.method public getBits()Lorg/ton/bitstring/BitString;
    .locals 1

    iget-object v0, p0, Lorg/ton/cell/VirtualCell;->cell:Lorg/ton/cell/Cell;

    invoke-interface {v0}, Lorg/ton/cell/Cell;->getBits()Lorg/ton/bitstring/BitString;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptor()Lorg/ton/cell/CellDescriptor;
    .locals 1

    iget-object v0, p0, Lorg/ton/cell/VirtualCell;->cell:Lorg/ton/cell/Cell;

    invoke-interface {v0}, Lorg/ton/cell/Cell;->getDescriptor()Lorg/ton/cell/CellDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLevelMask-Kat384U()I
    .locals 2

    .line 13
    iget-object v0, p0, Lorg/ton/cell/VirtualCell;->cell:Lorg/ton/cell/Cell;

    invoke-interface {v0}, Lorg/ton/cell/Cell;->getLevelMask-Kat384U()I

    move-result v0

    iget v1, p0, Lorg/ton/cell/VirtualCell;->offset:I

    invoke-static {v0, v1}, Lorg/ton/cell/LevelMask;->virtualize-spGXSBY(II)I

    move-result v0

    return v0
.end method

.method public getRefs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ton/cell/Cell;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lorg/ton/cell/VirtualCell;->cell:Lorg/ton/cell/Cell;

    invoke-interface {v0}, Lorg/ton/cell/Cell;->getRefs()Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lorg/ton/cell/Cell;

    .line 10
    iget v3, p0, Lorg/ton/cell/VirtualCell;->offset:I

    invoke-interface {v2, v3}, Lorg/ton/cell/Cell;->virtualize(I)Lorg/ton/cell/Cell;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getType()Lorg/ton/cell/CellType;
    .locals 1

    iget-object v0, p0, Lorg/ton/cell/VirtualCell;->cell:Lorg/ton/cell/Cell;

    invoke-interface {v0}, Lorg/ton/cell/Cell;->getType()Lorg/ton/cell/CellType;

    move-result-object v0

    return-object v0
.end method

.method public hash(I)Lorg/ton/bitstring/BitString;
    .locals 2

    .line 21
    iget-object v0, p0, Lorg/ton/cell/VirtualCell;->cell:Lorg/ton/cell/Cell;

    invoke-virtual {p0}, Lorg/ton/cell/VirtualCell;->getLevelMask-Kat384U()I

    move-result v1

    invoke-static {v1, p1}, Lorg/ton/cell/LevelMask;->apply-spGXSBY(II)I

    move-result p1

    invoke-static {p1}, Lorg/ton/cell/LevelMask;->getLevel-impl(I)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/ton/cell/Cell;->hash(I)Lorg/ton/bitstring/BitString;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ton/cell/VirtualCell;->cell:Lorg/ton/cell/Cell;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public virtualize(I)Lorg/ton/cell/Cell;
    .locals 2

    .line 16
    iget v0, p0, Lorg/ton/cell/VirtualCell;->offset:I

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Lorg/ton/cell/VirtualCell;

    iget-object v1, p0, Lorg/ton/cell/VirtualCell;->cell:Lorg/ton/cell/Cell;

    invoke-direct {v0, v1, p1}, Lorg/ton/cell/VirtualCell;-><init>(Lorg/ton/cell/Cell;I)V

    :goto_0
    return-object v0
.end method
