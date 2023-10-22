.class public final Lorg/ton/bitstring/ByteBackedBitStringKt;
.super Ljava/lang/Object;
.source "ByteBackedBitString.kt"


# direct methods
.method public static final synthetic access$appendAugmentTag([BI)[B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/ton/bitstring/ByteBackedBitStringKt;->appendAugmentTag([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private static final appendAugmentTag([BI)[B
    .locals 4

    .line 201
    rem-int/lit8 v0, p1, 0x8

    const-string v1, "copyOf(this, newSize)"

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 202
    array-length v3, p0

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    .line 207
    :cond_1
    div-int/lit8 p1, p1, 0x8

    add-int/2addr p1, v2

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->getLastIndex([B)I

    move-result p1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    rsub-int/lit8 v3, v0, 0x7

    shr-int/2addr p1, v3

    :cond_2
    or-int/2addr p1, v2

    if-eq v0, v1, :cond_3

    sub-int/2addr v1, v0

    shl-int/2addr p1, v1

    .line 216
    :cond_3
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->getLastIndex([B)I

    move-result v0

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    return-object p0

    .line 203
    :cond_4
    :goto_1
    div-int/lit8 p1, p1, 0x8

    add-int/2addr p1, v2

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->getLastIndex([B)I

    move-result p1

    const/16 v0, -0x80

    aput-byte v0, p0, p1

    return-object p0
.end method
