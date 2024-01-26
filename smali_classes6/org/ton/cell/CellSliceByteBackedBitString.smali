.class final Lorg/ton/cell/CellSliceByteBackedBitString;
.super Lorg/ton/cell/CellSliceImpl;
.source "CellSlice.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCellSlice.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CellSlice.kt\norg/ton/cell/CellSliceByteBackedBitString\n+ 2 BitString.kt\norg/ton/bitstring/BitStringKt\n*L\n1#1,326:1\n10#2:327\n*S KotlinDebug\n*F\n+ 1 CellSlice.kt\norg/ton/cell/CellSliceByteBackedBitString\n*L\n270#1:327\n*E\n"
.end annotation


# instance fields
.field private final bits:Lorg/ton/bitstring/ByteBackedBitString;


# direct methods
.method public constructor <init>(Lorg/ton/bitstring/ByteBackedBitString;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/bitstring/ByteBackedBitString;",
            "Ljava/util/List<",
            "+",
            "Lorg/ton/cell/Cell;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 211
    invoke-direct/range {v1 .. v7}, Lorg/ton/cell/CellSliceImpl;-><init>(Lorg/ton/bitstring/BitString;Ljava/util/List;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 209
    iput-object p1, p0, Lorg/ton/cell/CellSliceByteBackedBitString;->bits:Lorg/ton/bitstring/ByteBackedBitString;

    return-void
.end method


# virtual methods
.method public final getBits(II)B
    .locals 4

    .line 215
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->getBitsPosition()I

    move-result v0

    add-int/2addr v0, p1

    .line 216
    div-int/lit8 p1, v0, 0x8

    .line 217
    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceByteBackedBitString;->getData()[B

    move-result-object v0

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    :goto_0
    rsub-int/lit8 p2, p2, 0x8

    shr-int/2addr p1, p2

    goto :goto_1

    :cond_0
    rsub-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    if-gt p2, v0, :cond_1

    .line 221
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceByteBackedBitString;->getData()[B

    move-result-object v2

    aget-byte p1, v2, p1

    and-int/lit16 p1, p1, 0xff

    sub-int/2addr v0, p2

    shr-int/2addr p1, v0

    shl-int p2, v1, p2

    sub-int/2addr p2, v1

    and-int/2addr p1, p2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 224
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceByteBackedBitString;->getData()[B

    move-result-object v3

    array-length v3, v3

    if-ge p1, v3, :cond_2

    .line 225
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceByteBackedBitString;->getData()[B

    move-result-object v3

    aget-byte v3, v3, p1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    .line 227
    :cond_2
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceByteBackedBitString;->getData()[B

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v1

    if-ge p1, v3, :cond_3

    .line 228
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceByteBackedBitString;->getData()[B

    move-result-object v3

    add-int/2addr p1, v1

    aget-byte p1, v3, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr v2, p1

    :cond_3
    shr-int p1, v2, v0

    int-to-byte p1, p1

    goto :goto_0

    :goto_1
    int-to-byte p1, p1

    return p1
.end method

.method public bridge synthetic getBits()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 208
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceByteBackedBitString;->getBits()Lorg/ton/bitstring/ByteBackedBitString;

    move-result-object v0

    return-object v0
.end method

.method public getBits()Lorg/ton/bitstring/ByteBackedBitString;
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/ton/cell/CellSliceByteBackedBitString;->bits:Lorg/ton/bitstring/ByteBackedBitString;

    return-object v0
.end method

.method public final getByte(I)B
    .locals 1

    const/16 v0, 0x8

    .line 235
    invoke-virtual {p0, p1, v0}, Lorg/ton/cell/CellSliceByteBackedBitString;->getBits(II)B

    move-result p1

    return p1
.end method

.method public final getData()[B
    .locals 1

    .line 212
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceByteBackedBitString;->getBits()Lorg/ton/bitstring/ByteBackedBitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/bitstring/ByteBackedBitString;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public final getLong-I7RO_PI(I)J
    .locals 8

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 240
    :cond_0
    div-int/lit8 v2, p1, 0x8

    .line 241
    rem-int/lit8 v3, p1, 0x8

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    mul-int/lit8 v5, v4, 0x8

    .line 243
    invoke-virtual {p0, v5}, Lorg/ton/cell/CellSliceByteBackedBitString;->getByte(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    .line 244
    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    rsub-int/lit8 v7, v4, 0x7

    mul-int/lit8 v7, v7, 0x8

    shl-long/2addr v5, v7

    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    or-long/2addr v0, v5

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    mul-int/lit8 v4, v2, 0x8

    .line 247
    invoke-virtual {p0, v4, v3}, Lorg/ton/cell/CellSliceByteBackedBitString;->getBits(II)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    .line 248
    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    rsub-int/lit8 v2, v2, 0x7

    mul-int/lit8 v2, v2, 0x8

    rsub-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    shl-long v2, v4, v2

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    :cond_2
    rsub-int/lit8 p1, p1, 0x40

    ushr-long/2addr v0, p1

    .line 250
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public preloadBits(I)Lorg/ton/bitstring/BitString;
    .locals 11

    .line 254
    div-int/lit8 v0, p1, 0x8

    .line 255
    rem-int/lit8 v1, p1, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    add-int/2addr v3, v0

    .line 257
    new-array v3, v3, [B

    .line 258
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->getBitsPosition()I

    move-result v4

    rem-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 259
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceImpl;->getBitsPosition()I

    move-result v2

    div-int/lit8 v7, v2, 0x8

    .line 260
    invoke-virtual {p0}, Lorg/ton/cell/CellSliceByteBackedBitString;->getData()[B

    move-result-object v4

    const/4 v6, 0x0

    add-int v8, v7, v0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v5, v3

    invoke-static/range {v4 .. v10}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    mul-int/lit8 v4, v2, 0x8

    .line 263
    invoke-virtual {p0, v4}, Lorg/ton/cell/CellSliceByteBackedBitString;->getByte(I)B

    move-result v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x8

    .line 267
    invoke-virtual {p0, v0, v1}, Lorg/ton/cell/CellSliceByteBackedBitString;->getBits(II)B

    move-result v0

    rsub-int/lit8 v1, v1, 0x8

    shl-int/2addr v0, v1

    .line 268
    invoke-static {v3}, Lkotlin/collections/ArraysKt;->getLastIndex([B)I

    move-result v1

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    .line 10
    :cond_3
    sget-object v0, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-virtual {v0, v3, p1}, Lorg/ton/bitstring/BitString$Companion;->of([BI)Lorg/ton/bitstring/BitString;

    move-result-object p1

    return-object p1
.end method

.method public preloadInt(I)Ljava/math/BigInteger;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 295
    invoke-static {p1}, Lorg/ton/bigint/BigIntJvmKt;->toBigInt(I)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    if-le p1, v0, :cond_1

    .line 296
    invoke-super {p0, p1}, Lorg/ton/cell/CellSliceImpl;->preloadInt(I)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {p0, p1}, Lorg/ton/cell/CellSliceByteBackedBitString;->getLong-I7RO_PI(I)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-int/lit8 p1, p1, -0x1

    shl-long/2addr v2, p1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    const/4 p1, 0x2

    int-to-long v4, p1

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 301
    invoke-static {v0, v1}, Lorg/ton/bigint/BigIntJvmKt;->toBigInt(J)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    .line 303
    :cond_2
    invoke-static {v0, v1}, Lorg/ton/bigint/BigIntJvmKt;->toBigInt(J)Ljava/math/BigInteger;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public preloadTinyInt(I)J
    .locals 6

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    if-gt p1, v0, :cond_2

    .line 313
    invoke-virtual {p0, p1}, Lorg/ton/cell/CellSliceByteBackedBitString;->getLong-I7RO_PI(I)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-int/lit8 p1, p1, -0x1

    shl-long/2addr v2, p1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    const/4 p1, 0x2

    int-to-long v4, p1

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    :cond_1
    :goto_0
    return-wide v0

    .line 322
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected length in 0..64, actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public preloadUInt(I)Ljava/math/BigInteger;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 275
    invoke-static {v0}, Lorg/ton/bigint/BigIntJvmKt;->toBigInt(I)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    if-le p1, v1, :cond_1

    .line 276
    invoke-super {p0, p1}, Lorg/ton/cell/CellSliceImpl;->preloadUInt(I)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    .line 278
    invoke-virtual {p0, v0}, Lorg/ton/cell/CellSliceByteBackedBitString;->getByte(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    .line 279
    invoke-static {p1}, Lorg/ton/bigint/BigIntJvmKt;->toBigInt(I)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {p0, p1}, Lorg/ton/cell/CellSliceByteBackedBitString;->getLong-I7RO_PI(I)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    .line 284
    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/text/UStringsKt$$ExternalSyntheticBackport2;->m(JJ)I

    move-result p1

    if-lez p1, :cond_3

    .line 285
    new-instance p1, Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lorg/ton/cell/CellSliceByteBackedBitString$$ExternalSyntheticBackport0;->m(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 287
    :cond_3
    invoke-static {v0, v1}, Lorg/ton/bigint/BigIntJvmKt;->toBigInt(J)Ljava/math/BigInteger;

    move-result-object p1

    :goto_0
    return-object p1
.end method
