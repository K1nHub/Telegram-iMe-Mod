.class public final Lorg/ton/cell/DataCell;
.super Ljava/lang/Object;
.source "DataCell.kt"

# interfaces
.implements Lorg/ton/cell/Cell;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDataCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataCell.kt\norg/ton/cell/DataCell\n+ 2 BitString.kt\norg/ton/bitstring/BitStringKt\n*L\n1#1,47:1\n9#2,2:48\n*S KotlinDebug\n*F\n+ 1 DataCell.kt\norg/ton/cell/DataCell\n*L\n13#1:48,2\n*E\n"
.end annotation


# instance fields
.field private final bits:Lorg/ton/bitstring/BitString;

.field private final descriptor:Lorg/ton/cell/CellDescriptor;

.field private final hashes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "[B",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final refs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ton/cell/Cell;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ton/cell/CellDescriptor;Lorg/ton/bitstring/BitString;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellDescriptor;",
            "Lorg/ton/bitstring/BitString;",
            "Ljava/util/List<",
            "+",
            "Lorg/ton/cell/Cell;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "[B",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bits"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hashes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/ton/cell/DataCell;->descriptor:Lorg/ton/cell/CellDescriptor;

    .line 7
    iput-object p2, p0, Lorg/ton/cell/DataCell;->bits:Lorg/ton/bitstring/BitString;

    .line 8
    iput-object p3, p0, Lorg/ton/cell/DataCell;->refs:Ljava/util/List;

    .line 9
    iput-object p4, p0, Lorg/ton/cell/DataCell;->hashes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public beginParse()Lorg/ton/cell/CellSlice;
    .locals 1

    .line 5
    invoke-static {p0}, Lorg/ton/cell/Cell$DefaultImpls;->beginParse(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellSlice;

    move-result-object v0

    return-object v0
.end method

.method public depth(I)I
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/ton/cell/DataCell;->getLevelMask-Kat384U()I

    move-result v0

    invoke-static {v0, p1}, Lorg/ton/cell/LevelMask;->apply-spGXSBY(II)I

    move-result p1

    invoke-static {p1}, Lorg/ton/cell/LevelMask;->getHashIndex-impl(I)I

    move-result p1

    .line 18
    iget-object v0, p0, Lorg/ton/cell/DataCell;->hashes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 33
    :cond_0
    instance-of v0, p1, Lorg/ton/cell/DataCell;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 35
    :cond_1
    invoke-virtual {p0}, Lorg/ton/cell/DataCell;->getDescriptor()Lorg/ton/cell/CellDescriptor;

    move-result-object v0

    check-cast p1, Lorg/ton/cell/DataCell;

    invoke-virtual {p1}, Lorg/ton/cell/DataCell;->getDescriptor()Lorg/ton/cell/CellDescriptor;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 36
    :cond_2
    invoke-virtual {p0}, Lorg/ton/cell/DataCell;->getBits()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-virtual {p1}, Lorg/ton/cell/DataCell;->getBits()Lorg/ton/bitstring/BitString;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 37
    :cond_3
    invoke-virtual {p0}, Lorg/ton/cell/DataCell;->getRefs()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/ton/cell/DataCell;->getRefs()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBits()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/ton/cell/DataCell;->bits:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public getDescriptor()Lorg/ton/cell/CellDescriptor;
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/ton/cell/DataCell;->descriptor:Lorg/ton/cell/CellDescriptor;

    return-object v0
.end method

.method public getLevelMask-Kat384U()I
    .locals 1

    .line 5
    invoke-static {p0}, Lorg/ton/cell/Cell$DefaultImpls;->getLevelMask-Kat384U(Lorg/ton/cell/Cell;)I

    move-result v0

    return v0
.end method

.method public getRefs()Ljava/util/List;
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
    iget-object v0, p0, Lorg/ton/cell/DataCell;->refs:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lorg/ton/cell/CellType;
    .locals 1

    .line 5
    invoke-static {p0}, Lorg/ton/cell/Cell$DefaultImpls;->getType(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellType;

    move-result-object v0

    return-object v0
.end method

.method public hash(I)Lorg/ton/bitstring/BitString;
    .locals 2

    .line 12
    invoke-virtual {p0}, Lorg/ton/cell/DataCell;->getLevelMask-Kat384U()I

    move-result v0

    invoke-static {v0, p1}, Lorg/ton/cell/LevelMask;->apply-spGXSBY(II)I

    move-result p1

    invoke-static {p1}, Lorg/ton/cell/LevelMask;->getHashIndex-impl(I)I

    move-result p1

    .line 13
    iget-object v0, p0, Lorg/ton/cell/DataCell;->hashes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 9
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    .line 10
    sget-object v1, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-virtual {v1, p1, v0}, Lorg/ton/bitstring/BitString$Companion;->of([BI)Lorg/ton/bitstring/BitString;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 41
    invoke-virtual {p0}, Lorg/ton/cell/DataCell;->getDescriptor()Lorg/ton/cell/CellDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 42
    invoke-virtual {p0}, Lorg/ton/cell/DataCell;->getBits()Lorg/ton/bitstring/BitString;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 43
    invoke-virtual {p0}, Lorg/ton/cell/DataCell;->getRefs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lorg/ton/cell/Cell;->Companion:Lorg/ton/cell/Cell$Companion;

    invoke-virtual {v0, p0}, Lorg/ton/cell/Cell$Companion;->toString(Lorg/ton/cell/Cell;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public virtualize(I)Lorg/ton/cell/Cell;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/ton/cell/DataCell;->getLevelMask-Kat384U()I

    move-result v0

    invoke-static {v0}, Lorg/ton/cell/LevelMask;->isEmpty-impl(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lorg/ton/cell/VirtualCell;

    invoke-direct {v0, p0, p1}, Lorg/ton/cell/VirtualCell;-><init>(Lorg/ton/cell/Cell;I)V

    :goto_0
    return-object v0
.end method
