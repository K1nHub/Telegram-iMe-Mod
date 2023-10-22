.class public final Lorg/ton/cell/Cell$DefaultImpls;
.super Ljava/lang/Object;
.source "Cell.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/cell/Cell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static beginParse(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellSlice;
    .locals 1

    .line 29
    sget-object v0, Lorg/ton/cell/CellSlice;->Companion:Lorg/ton/cell/CellSlice$Companion;

    invoke-virtual {v0, p0}, Lorg/ton/cell/CellSlice$Companion;->beginParse(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellSlice;

    move-result-object p0

    return-object p0
.end method

.method public static getLevelMask-Kat384U(Lorg/ton/cell/Cell;)I
    .locals 0

    .line 15
    invoke-interface {p0}, Lorg/ton/cell/Cell;->getDescriptor()Lorg/ton/cell/CellDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lorg/ton/cell/CellDescriptor;->getLevelMask-Kat384U()I

    move-result p0

    return p0
.end method

.method public static getType(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellType;
    .locals 0

    .line 14
    invoke-interface {p0}, Lorg/ton/cell/Cell;->getDescriptor()Lorg/ton/cell/CellDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lorg/ton/cell/CellDescriptor;->getCellType()Lorg/ton/cell/CellType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic hash$default(Lorg/ton/cell/Cell;IILjava/lang/Object;)Lorg/ton/bitstring/BitString;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x3

    .line 19
    :cond_0
    invoke-interface {p0, p1}, Lorg/ton/cell/Cell;->hash(I)Lorg/ton/bitstring/BitString;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: hash"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
