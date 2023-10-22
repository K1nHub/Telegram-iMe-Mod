.class public final Lorg/ton/cell/PrunedBranchCell;
.super Ljava/lang/Object;
.source "PrunedBranchCell.kt"

# interfaces
.implements Lorg/ton/cell/Cell;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrunedBranchCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrunedBranchCell.kt\norg/ton/cell/PrunedBranchCell\n+ 2 BitString.kt\norg/ton/bitstring/BitStringKt\n*L\n1#1,48:1\n20#2:49\n10#2:50\n*S KotlinDebug\n*F\n+ 1 PrunedBranchCell.kt\norg/ton/cell/PrunedBranchCell\n*L\n20#1:49\n20#1:50\n*E\n"
.end annotation


# instance fields
.field private final bits:Lorg/ton/bitstring/BitString;

.field private final depth:I

.field private final descriptor:Lorg/ton/cell/CellDescriptor;

.field private final hash:Lorg/ton/bitstring/BitString;


# direct methods
.method public constructor <init>(Lorg/ton/bitstring/BitString;ILorg/ton/cell/CellDescriptor;Lorg/ton/bitstring/BitString;)V
    .locals 1

    const-string v0, "hash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bits"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/ton/cell/PrunedBranchCell;->hash:Lorg/ton/bitstring/BitString;

    .line 8
    iput p2, p0, Lorg/ton/cell/PrunedBranchCell;->depth:I

    .line 9
    iput-object p3, p0, Lorg/ton/cell/PrunedBranchCell;->descriptor:Lorg/ton/cell/CellDescriptor;

    .line 10
    iput-object p4, p0, Lorg/ton/cell/PrunedBranchCell;->bits:Lorg/ton/bitstring/BitString;

    return-void
.end method


# virtual methods
.method public beginParse()Lorg/ton/cell/CellSlice;
    .locals 1

    .line 6
    invoke-static {p0}, Lorg/ton/cell/Cell$DefaultImpls;->beginParse(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellSlice;

    move-result-object v0

    return-object v0
.end method

.method public depth(I)I
    .locals 4

    .line 25
    invoke-virtual {p0}, Lorg/ton/cell/PrunedBranchCell;->getDescriptor()Lorg/ton/cell/CellDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lorg/ton/cell/CellDescriptor;->getLevelMask-Kat384U()I

    move-result v0

    invoke-static {v0, p1}, Lorg/ton/cell/LevelMask;->apply-spGXSBY(II)I

    move-result p1

    invoke-static {p1}, Lorg/ton/cell/LevelMask;->getHashIndex-impl(I)I

    move-result p1

    .line 26
    invoke-virtual {p0}, Lorg/ton/cell/PrunedBranchCell;->getDescriptor()Lorg/ton/cell/CellDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lorg/ton/cell/CellDescriptor;->getLevelMask-Kat384U()I

    move-result v0

    invoke-static {v0}, Lorg/ton/cell/LevelMask;->getLevel-impl(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 27
    iget p1, p0, Lorg/ton/cell/PrunedBranchCell;->depth:I

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lorg/ton/cell/PrunedBranchCell;->getDescriptor()Lorg/ton/cell/CellDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lorg/ton/cell/CellDescriptor;->getLevelMask-Kat384U()I

    move-result v0

    invoke-static {v0}, Lorg/ton/cell/LevelMask;->getLevel-impl(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x20

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    .line 30
    invoke-virtual {p0}, Lorg/ton/cell/PrunedBranchCell;->getBits()Lorg/ton/bitstring/BitString;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v1, v3, v2}, Lorg/ton/bitstring/BitString$DefaultImpls;->toByteArray$default(Lorg/ton/bitstring/BitString;ZILjava/lang/Object;)[B

    move-result-object p1

    .line 31
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v3

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 42
    :cond_0
    instance-of v0, p1, Lorg/ton/cell/PrunedBranchCell;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 43
    :cond_1
    iget-object v0, p0, Lorg/ton/cell/PrunedBranchCell;->hash:Lorg/ton/bitstring/BitString;

    check-cast p1, Lorg/ton/cell/PrunedBranchCell;

    iget-object p1, p1, Lorg/ton/cell/PrunedBranchCell;->hash:Lorg/ton/bitstring/BitString;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBits()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/ton/cell/PrunedBranchCell;->bits:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public getDescriptor()Lorg/ton/cell/CellDescriptor;
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/ton/cell/PrunedBranchCell;->descriptor:Lorg/ton/cell/CellDescriptor;

    return-object v0
.end method

.method public getLevelMask-Kat384U()I
    .locals 1

    .line 6
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

    .line 12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/ton/cell/CellType;
    .locals 1

    .line 6
    invoke-static {p0}, Lorg/ton/cell/Cell$DefaultImpls;->getType(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellType;

    move-result-object v0

    return-object v0
.end method

.method public hash(I)Lorg/ton/bitstring/BitString;
    .locals 4

    .line 15
    invoke-virtual {p0}, Lorg/ton/cell/PrunedBranchCell;->getDescriptor()Lorg/ton/cell/CellDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lorg/ton/cell/CellDescriptor;->getLevelMask-Kat384U()I

    move-result v0

    invoke-static {v0, p1}, Lorg/ton/cell/LevelMask;->apply-spGXSBY(II)I

    move-result p1

    invoke-static {p1}, Lorg/ton/cell/LevelMask;->getHashIndex-impl(I)I

    move-result p1

    .line 16
    invoke-virtual {p0}, Lorg/ton/cell/PrunedBranchCell;->getDescriptor()Lorg/ton/cell/CellDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lorg/ton/cell/CellDescriptor;->getLevelMask-Kat384U()I

    move-result v0

    invoke-static {v0}, Lorg/ton/cell/LevelMask;->getLevel-impl(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 17
    iget-object p1, p0, Lorg/ton/cell/PrunedBranchCell;->hash:Lorg/ton/bitstring/BitString;

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0x20

    add-int/lit8 p1, p1, 0x2

    .line 20
    invoke-virtual {p0}, Lorg/ton/cell/PrunedBranchCell;->getBits()Lorg/ton/bitstring/BitString;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/ton/bitstring/BitString$DefaultImpls;->toByteArray$default(Lorg/ton/bitstring/BitString;ZILjava/lang/Object;)[B

    move-result-object v0

    add-int/lit8 v1, p1, 0x20

    invoke-static {v0, p1, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    .line 20
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    .line 10
    sget-object v1, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-virtual {v1, p1, v0}, Lorg/ton/bitstring/BitString$Companion;->of([BI)Lorg/ton/bitstring/BitString;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/ton/cell/PrunedBranchCell;->hash:Lorg/ton/bitstring/BitString;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/ton/cell/PrunedBranchCell;->getType()Lorg/ton/cell/CellType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " x{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/ton/cell/PrunedBranchCell;->getBits()Lorg/ton/bitstring/BitString;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public virtualize(I)Lorg/ton/cell/Cell;
    .locals 1

    .line 36
    new-instance v0, Lorg/ton/cell/VirtualCell;

    invoke-direct {v0, p0, p1}, Lorg/ton/cell/VirtualCell;-><init>(Lorg/ton/cell/Cell;I)V

    return-object v0
.end method
