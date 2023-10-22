.class public final Lio/github/andreypfau/curve25519/internal/BinaryKt;
.super Ljava/lang/Object;
.source "binary.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nbinary.kt\nKotlin\n*S Kotlin\n*F\n+ 1 binary.kt\nio/github/andreypfau/curve25519/internal/BinaryKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,41:1\n32#1,6:43\n1#2:42\n*S KotlinDebug\n*F\n+ 1 binary.kt\nio/github/andreypfau/curve25519/internal/BinaryKt\n*L\n26#1:43,6\n*E\n"
.end annotation


# direct methods
.method public static final getLongLE([BI)J
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    aget-byte v0, p0, p1

    invoke-static {v0}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    .line 5
    aget-byte v4, p0, v4

    invoke-static {v4}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    .line 6
    aget-byte v4, p0, v4

    invoke-static {v4}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    .line 7
    aget-byte v4, p0, v4

    invoke-static {v4}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    .line 8
    aget-byte v4, p0, v4

    invoke-static {v4}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    .line 9
    aget-byte v4, p0, v4

    invoke-static {v4}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    .line 10
    aget-byte v4, p0, v4

    invoke-static {v4}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    .line 11
    aget-byte p0, p0, p1

    invoke-static {p0}, Lkotlin/UByte;->constructor-impl(B)B

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static final getULongLE([BI)J
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p0, p1}, Lio/github/andreypfau/curve25519/internal/BinaryKt;->getLongLE([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final hex(Ljava/lang/String;)[B
    .locals 15

    const-string v0, "hexString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_e

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    move v3, v2

    .line 25
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_d

    .line 26
    div-int/lit8 v4, v3, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    const/16 v7, 0x30

    if-gt v7, v5, :cond_1

    if-ge v5, v6, :cond_1

    move v8, v1

    goto :goto_2

    :cond_1
    move v8, v2

    :goto_2
    const-string v9, "\' is not a valid hex character"

    const/16 v10, 0x27

    const/16 v11, 0x67

    const/16 v12, 0x47

    const/16 v13, 0x61

    const/16 v14, 0x41

    if-eqz v8, :cond_2

    add-int/lit8 v5, v5, -0x30

    goto :goto_6

    :cond_2
    if-gt v14, v5, :cond_3

    if-ge v5, v12, :cond_3

    move v8, v1

    goto :goto_3

    :cond_3
    move v8, v2

    :goto_3
    if-eqz v8, :cond_4

    add-int/lit8 v5, v5, -0x41

    :goto_4
    add-int/lit8 v5, v5, 0xa

    goto :goto_6

    :cond_4
    if-gt v13, v5, :cond_5

    if-ge v5, v11, :cond_5

    move v8, v1

    goto :goto_5

    :cond_5
    move v8, v2

    :goto_5
    if-eqz v8, :cond_c

    add-int/lit8 v5, v5, -0x61

    goto :goto_4

    :goto_6
    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-gt v7, v8, :cond_6

    if-ge v8, v6, :cond_6

    move v6, v1

    goto :goto_7

    :cond_6
    move v6, v2

    :goto_7
    if-eqz v6, :cond_7

    add-int/lit8 v8, v8, -0x30

    goto :goto_b

    :cond_7
    if-gt v14, v8, :cond_8

    if-ge v8, v12, :cond_8

    move v6, v1

    goto :goto_8

    :cond_8
    move v6, v2

    :goto_8
    if-eqz v6, :cond_9

    add-int/lit8 v8, v8, -0x41

    :goto_9
    add-int/lit8 v8, v8, 0xa

    goto :goto_b

    :cond_9
    if-gt v13, v8, :cond_a

    if-ge v8, v11, :cond_a

    move v6, v1

    goto :goto_a

    :cond_a
    move v6, v2

    :goto_a
    if-eqz v6, :cond_b

    add-int/lit8 v8, v8, -0x61

    goto :goto_9

    :goto_b
    add-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 36
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    return-object v0

    .line 22
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
