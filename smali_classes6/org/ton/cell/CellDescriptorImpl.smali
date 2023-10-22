.class final Lorg/ton/cell/CellDescriptorImpl;
.super Ljava/lang/Object;
.source "CellDescriptor.kt"

# interfaces
.implements Lorg/ton/cell/CellDescriptor;


# instance fields
.field private final d1:B

.field private final d2:B


# direct methods
.method public constructor <init>(BB)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-byte p1, p0, Lorg/ton/cell/CellDescriptorImpl;->d1:B

    .line 130
    iput-byte p2, p0, Lorg/ton/cell/CellDescriptorImpl;->d2:B

    return-void
.end method


# virtual methods
.method public final component1()B
    .locals 1

    iget-byte v0, p0, Lorg/ton/cell/CellDescriptorImpl;->d1:B

    return v0
.end method

.method public final component2()B
    .locals 1

    iget-byte v0, p0, Lorg/ton/cell/CellDescriptorImpl;->d2:B

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/cell/CellDescriptorImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/cell/CellDescriptorImpl;

    iget-byte v1, p0, Lorg/ton/cell/CellDescriptorImpl;->d1:B

    iget-byte v3, p1, Lorg/ton/cell/CellDescriptorImpl;->d1:B

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-byte v1, p0, Lorg/ton/cell/CellDescriptorImpl;->d2:B

    iget-byte p1, p1, Lorg/ton/cell/CellDescriptorImpl;->d2:B

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getCellType()Lorg/ton/cell/CellType;
    .locals 2

    .line 158
    invoke-virtual {p0}, Lorg/ton/cell/CellDescriptorImpl;->getD1()B

    move-result v0

    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_0

    .line 160
    sget-object v0, Lorg/ton/cell/CellType;->ORDINARY:Lorg/ton/cell/CellType;

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x7

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    .line 168
    sget-object v0, Lorg/ton/cell/CellType;->MERKLE_UPDATE:Lorg/ton/cell/CellType;

    goto :goto_0

    .line 167
    :cond_1
    sget-object v0, Lorg/ton/cell/CellType;->MERKLE_PROOF:Lorg/ton/cell/CellType;

    goto :goto_0

    :cond_2
    and-int/lit16 v0, v0, 0xe0

    if-nez v0, :cond_3

    .line 163
    sget-object v0, Lorg/ton/cell/CellType;->LIBRARY_REFERENCE:Lorg/ton/cell/CellType;

    goto :goto_0

    .line 164
    :cond_3
    sget-object v0, Lorg/ton/cell/CellType;->PRUNED_BRANCH:Lorg/ton/cell/CellType;

    :goto_0
    return-object v0
.end method

.method public getD1()B
    .locals 1

    .line 129
    iget-byte v0, p0, Lorg/ton/cell/CellDescriptorImpl;->d1:B

    return v0
.end method

.method public getD2()B
    .locals 1

    .line 130
    iget-byte v0, p0, Lorg/ton/cell/CellDescriptorImpl;->d2:B

    return v0
.end method

.method public getDataLength()I
    .locals 2

    .line 152
    invoke-virtual {p0}, Lorg/ton/cell/CellDescriptorImpl;->getD2()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public getHasHashes()Z
    .locals 1

    .line 139
    invoke-virtual {p0}, Lorg/ton/cell/CellDescriptorImpl;->getD1()B

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHashCount()I
    .locals 3

    .line 174
    invoke-virtual {p0}, Lorg/ton/cell/CellDescriptorImpl;->getLevelMask-Kat384U()I

    move-result v0

    invoke-static {v0}, Lorg/ton/cell/LevelMask;->getLevel-impl(I)I

    move-result v0

    .line 175
    invoke-virtual {p0}, Lorg/ton/cell/CellDescriptorImpl;->isExotic()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/ton/cell/CellDescriptorImpl;->getReferenceCount()I

    move-result v1

    if-nez v1, :cond_0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v2, v0

    :goto_0
    return v2
.end method

.method public getLevelMask-Kat384U()I
    .locals 1

    .line 133
    invoke-virtual {p0}, Lorg/ton/cell/CellDescriptorImpl;->getD1()B

    move-result v0

    ushr-int/lit8 v0, v0, 0x5

    invoke-static {v0}, Lorg/ton/cell/LevelMask;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public getReferenceCount()I
    .locals 1

    .line 142
    invoke-virtual {p0}, Lorg/ton/cell/CellDescriptorImpl;->getD1()B

    move-result v0

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-byte v0, p0, Lorg/ton/cell/CellDescriptorImpl;->d1:B

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lorg/ton/cell/CellDescriptorImpl;->d2:B

    add-int/2addr v0, v1

    return v0
.end method

.method public isAligned()Z
    .locals 2

    .line 148
    invoke-virtual {p0}, Lorg/ton/cell/CellDescriptorImpl;->getD2()B

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isExotic()Z
    .locals 1

    .line 136
    invoke-virtual {p0}, Lorg/ton/cell/CellDescriptorImpl;->getD1()B

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellDescriptor(d1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/ton/cell/CellDescriptorImpl;->getD1()B

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v3

    invoke-static {v3}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "toString(this, checkRadix(radix))"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x8

    const/16 v5, 0x30

    invoke-static {v1, v4, v5}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", d2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/ton/cell/CellDescriptorImpl;->getD2()B

    move-result v1

    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4, v5}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
