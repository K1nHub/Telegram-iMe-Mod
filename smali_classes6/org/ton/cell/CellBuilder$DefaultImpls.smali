.class public final Lorg/ton/cell/CellBuilder$DefaultImpls;
.super Ljava/lang/Object;
.source "CellBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/cell/CellBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static endCell(Lorg/ton/cell/CellBuilder;)Lorg/ton/cell/Cell;
    .locals 0

    .line 28
    invoke-interface {p0}, Lorg/ton/cell/CellBuilder;->build()Lorg/ton/cell/Cell;

    move-result-object p0

    return-object p0
.end method

.method public static storeInt(Lorg/ton/cell/CellBuilder;II)Lorg/ton/cell/CellBuilder;
    .locals 0

    .line 81
    invoke-static {p1}, Lorg/ton/bigint/BigIntJvmKt;->toBigInt(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lorg/ton/cell/CellBuilder;->storeInt(Ljava/math/BigInteger;I)Lorg/ton/cell/CellBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static storeInt(Lorg/ton/cell/CellBuilder;JI)Lorg/ton/cell/CellBuilder;
    .locals 0

    .line 82
    invoke-static {p1, p2}, Lorg/ton/bigint/BigIntJvmKt;->toBigInt(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Lorg/ton/cell/CellBuilder;->storeInt(Ljava/math/BigInteger;I)Lorg/ton/cell/CellBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static storeInt(Lorg/ton/cell/CellBuilder;SI)Lorg/ton/cell/CellBuilder;
    .locals 0

    .line 80
    invoke-interface {p0, p1, p2}, Lorg/ton/cell/CellBuilder;->storeInt(II)Lorg/ton/cell/CellBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static storeUInt(Lorg/ton/cell/CellBuilder;II)Lorg/ton/cell/CellBuilder;
    .locals 0

    .line 55
    invoke-static {p1}, Lorg/ton/bigint/BigIntJvmKt;->toBigInt(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lorg/ton/cell/CellBuilder;->storeUInt(Ljava/math/BigInteger;I)Lorg/ton/cell/CellBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static storeUInt(Lorg/ton/cell/CellBuilder;JI)Lorg/ton/cell/CellBuilder;
    .locals 0

    .line 56
    invoke-static {p1, p2}, Lorg/ton/bigint/BigIntJvmKt;->toBigInt(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Lorg/ton/cell/CellBuilder;->storeUInt(Ljava/math/BigInteger;I)Lorg/ton/cell/CellBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static storeUInt16-xj2QHRw(Lorg/ton/cell/CellBuilder;S)Lorg/ton/cell/CellBuilder;
    .locals 1

    const/16 v0, 0x10

    .line 59
    invoke-interface {p0, p1, v0}, Lorg/ton/cell/CellBuilder;->storeInt(SI)Lorg/ton/cell/CellBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static storeUInt32-WZ4Q5Ns(Lorg/ton/cell/CellBuilder;I)Lorg/ton/cell/CellBuilder;
    .locals 1

    const/16 v0, 0x20

    .line 60
    invoke-interface {p0, p1, v0}, Lorg/ton/cell/CellBuilder;->storeInt(II)Lorg/ton/cell/CellBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static storeUInt64-VKZWuLQ(Lorg/ton/cell/CellBuilder;J)Lorg/ton/cell/CellBuilder;
    .locals 1

    const/16 v0, 0x40

    .line 61
    invoke-interface {p0, p1, p2, v0}, Lorg/ton/cell/CellBuilder;->storeInt(JI)Lorg/ton/cell/CellBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static storeUIntLeq(Lorg/ton/cell/CellBuilder;II)Lorg/ton/cell/CellBuilder;
    .locals 0

    .line 66
    invoke-static {p1}, Lorg/ton/bigint/BigIntJvmKt;->toBigInt(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p2}, Lorg/ton/bigint/BigIntJvmKt;->toBigInt(I)Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/ton/cell/CellBuilder;->storeUIntLeq(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/ton/cell/CellBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static storeUIntLeq(Lorg/ton/cell/CellBuilder;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/ton/cell/CellBuilder;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "max"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {p2}, Lorg/ton/bigint/BigIntJvmKt;->getBitLength(Ljava/math/BigInteger;)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lorg/ton/cell/CellBuilder;->storeUInt(Ljava/math/BigInteger;I)Lorg/ton/cell/CellBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static storeUIntLes(Lorg/ton/cell/CellBuilder;II)Lorg/ton/cell/CellBuilder;
    .locals 0

    .line 72
    invoke-static {p1}, Lorg/ton/bigint/BigIntJvmKt;->toBigInt(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p2}, Lorg/ton/bigint/BigIntJvmKt;->toBigInt(I)Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/ton/cell/CellBuilder;->storeUIntLes(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/ton/cell/CellBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static storeUIntLes(Lorg/ton/cell/CellBuilder;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/ton/cell/CellBuilder;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "max"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 69
    invoke-static {v0}, Lorg/ton/bigint/BigIntJvmKt;->toBigInt(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/ton/bigint/BigIntJvmKt;->minus(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {p2}, Lorg/ton/bigint/BigIntJvmKt;->getBitLength(Ljava/math/BigInteger;)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lorg/ton/cell/CellBuilder;->storeUInt(Ljava/math/BigInteger;I)Lorg/ton/cell/CellBuilder;

    move-result-object p0

    return-object p0
.end method
