.class public final Lorg/ton/crypto/Crc32JvmKt;
.super Ljava/lang/Object;
.source "crc32.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ncrc32.kt\nKotlin\n*S Kotlin\n*F\n+ 1 crc32.kt\norg/ton/crypto/Crc32JvmKt\n+ 2 crc32.kt\norg/ton/crypto/Crc32Kt\n*L\n1#1,15:1\n68#2,24:16\n54#2,5:40\n*S KotlinDebug\n*F\n+ 1 crc32.kt\norg/ton/crypto/Crc32JvmKt\n*L\n14#1:16,24\n14#1:40,5\n*E\n"
.end annotation


# direct methods
.method public static final crc32([BII)I
    .locals 1

    const-string v0, "bytes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 9
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 10
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static synthetic crc32$default([BIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    .line 15
    array-length p2, p0

    sub-int/2addr p2, p1

    .line 8
    :cond_1
    invoke-static {p0, p1, p2}, Lorg/ton/crypto/Crc32JvmKt;->crc32([BII)I

    move-result p0

    return p0
.end method

.method public static final crc32c([BII)I
    .locals 13

    const-string v0, "bytes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lorg/ton/crypto/Crc32Kt;->getCASTAGNOLI_TABLE()[[I

    move-result-object v0

    sub-int v1, p2, p1

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    const/4 v1, -0x1

    add-int v4, p1, p2

    and-int/lit8 v4, v4, -0x8

    :goto_0
    if-ge p1, v4, :cond_0

    add-int/lit8 v5, p1, 0x1

    .line 75
    aget-byte p1, p0, p1

    add-int/lit8 v6, v5, 0x1

    .line 76
    aget-byte v5, p0, v5

    add-int/lit8 v7, v6, 0x1

    .line 77
    aget-byte v6, p0, v6

    add-int/lit8 v8, v7, 0x1

    .line 78
    aget-byte v7, p0, v7

    add-int/lit8 v9, v8, 0x1

    .line 79
    aget-byte v8, p0, v8

    add-int/lit8 v10, v9, 0x1

    .line 80
    aget-byte v9, p0, v9

    add-int/lit8 v11, v10, 0x1

    .line 81
    aget-byte v10, p0, v10

    add-int/lit8 v12, v11, 0x1

    .line 82
    aget-byte v11, p0, v11

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr p1, v5

    shl-int/lit8 v5, v6, 0x10

    or-int/2addr p1, v5

    shl-int/lit8 v5, v7, 0x18

    or-int/2addr p1, v5

    xor-int/2addr p1, v1

    .line 84
    aget-object v1, v0, v3

    aget v1, v1, v11

    const/4 v5, 0x1

    aget-object v5, v0, v5

    aget v5, v5, v10

    xor-int/2addr v1, v5

    const/4 v5, 0x2

    aget-object v5, v0, v5

    aget v5, v5, v9

    xor-int/2addr v1, v5

    const/4 v5, 0x3

    aget-object v5, v0, v5

    aget v5, v5, v8

    xor-int/2addr v1, v5

    const/4 v5, 0x4

    .line 85
    aget-object v5, v0, v5

    ushr-int/lit8 v6, p1, 0x18

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    xor-int/2addr v1, v5

    const/4 v5, 0x5

    aget-object v5, v0, v5

    ushr-int/lit8 v6, p1, 0x10

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    xor-int/2addr v1, v5

    const/4 v5, 0x6

    .line 86
    aget-object v5, v0, v5

    ushr-int/lit8 v6, p1, 0x8

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    xor-int/2addr v1, v5

    const/4 v5, 0x7

    aget-object v5, v0, v5

    and-int/lit16 p1, p1, 0xff

    aget p1, v5, p1

    xor-int/2addr v1, p1

    move p1, v12

    goto :goto_0

    :cond_0
    not-int v1, v1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-ne p1, p2, :cond_2

    goto :goto_3

    .line 91
    :cond_2
    aget-object v0, v0, v3

    not-int v1, v1

    :goto_2
    if-ge p1, p2, :cond_3

    .line 56
    aget-byte v2, p0, p1

    xor-int/2addr v2, v1

    and-int/lit16 v2, v2, 0xff

    aget v2, v0, v2

    ushr-int/lit8 v1, v1, 0x8

    xor-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    not-int v1, v1

    :goto_3
    return v1
.end method

.method public static synthetic crc32c$default([BIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    .line 15
    array-length p2, p0

    sub-int/2addr p2, p1

    .line 13
    :cond_1
    invoke-static {p0, p1, p2}, Lorg/ton/crypto/Crc32JvmKt;->crc32c([BII)I

    move-result p0

    return p0
.end method
