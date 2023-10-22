.class public final Lorg/ton/cell/CellSlice$DefaultImpls;
.super Ljava/lang/Object;
.source "CellSlice.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/cell/CellSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static loadUInt16-Mh2AYeg(Lorg/ton/cell/CellSlice;)S
    .locals 2

    const/16 v0, 0x10

    .line 51
    invoke-interface {p0, v0}, Lorg/ton/cell/CellSlice;->loadTinyInt(I)J

    move-result-wide v0

    long-to-int p0, v0

    int-to-short p0, p0

    invoke-static {p0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result p0

    return p0
.end method

.method public static loadUInt32-pVg5ArA(Lorg/ton/cell/CellSlice;)I
    .locals 2

    const/16 v0, 0x20

    .line 52
    invoke-interface {p0, v0}, Lorg/ton/cell/CellSlice;->loadTinyInt(I)J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p0

    return p0
.end method

.method public static loadUInt64-s-VKNKU(Lorg/ton/cell/CellSlice;)J
    .locals 2

    const/16 v0, 0x40

    .line 53
    invoke-interface {p0, v0}, Lorg/ton/cell/CellSlice;->loadTinyInt(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static loadUIntLeq(Lorg/ton/cell/CellSlice;I)Ljava/math/BigInteger;
    .locals 0

    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    invoke-interface {p0, p1}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static loadUIntLes(Lorg/ton/cell/CellSlice;I)Ljava/math/BigInteger;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    .line 61
    invoke-interface {p0, p1}, Lorg/ton/cell/CellSlice;->loadUIntLeq(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static preloadTinyInt(Lorg/ton/cell/CellSlice;I)J
    .locals 0

    .line 56
    invoke-interface {p0, p1}, Lorg/ton/cell/CellSlice;->preloadInt(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    return-wide p0
.end method
