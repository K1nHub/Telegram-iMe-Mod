.class final Lorg/solovyev/android/checkout/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 94
    fill-array-data v0, :array_0

    sput-object v0, Lorg/solovyev/android/checkout/Base64;->DECODABET:[B

    return-void

    :array_0
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/solovyev/android/checkout/Base64DecoderException;
        }
    .end annotation

    .line 418
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 419
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/solovyev/android/checkout/Base64;->decode([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/solovyev/android/checkout/Base64DecoderException;
        }
    .end annotation

    .line 471
    sget-object v0, Lorg/solovyev/android/checkout/Base64;->DECODABET:[B

    invoke-static {p0, p1, p2, v0}, Lorg/solovyev/android/checkout/Base64;->decode([BII[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([BII[B)[B
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/solovyev/android/checkout/Base64DecoderException;
        }
    .end annotation

    move/from16 v0, p2

    move-object/from16 v1, p3

    mul-int/lit8 v2, v0, 0x3

    const/4 v3, 0x4

    .line 501
    div-int/2addr v2, v3

    const/4 v4, 0x2

    add-int/2addr v2, v4

    .line 502
    new-array v2, v2, [B

    new-array v5, v3, [B

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_0
    const/16 v10, 0x3d

    const/4 v11, 0x1

    if-ge v7, v0, :cond_9

    add-int v12, v7, p1

    .line 511
    aget-byte v13, p0, v12

    and-int/lit8 v13, v13, 0x7f

    int-to-byte v13, v13

    .line 512
    aget-byte v14, v1, v13

    const/4 v15, -0x5

    if-lt v14, v15, :cond_8

    const/4 v12, -0x1

    if-lt v14, v12, :cond_7

    if-ne v13, v10, :cond_5

    sub-int v12, v0, v7

    add-int/lit8 v13, v0, -0x1

    add-int v13, v13, p1

    .line 520
    aget-byte v13, p0, v13

    and-int/lit8 v13, v13, 0x7f

    int-to-byte v13, v13

    if-eqz v8, :cond_4

    if-eq v8, v11, :cond_4

    const/4 v14, 0x3

    if-ne v8, v14, :cond_0

    if-gt v12, v4, :cond_1

    :cond_0
    if-ne v8, v3, :cond_2

    if-gt v12, v11, :cond_1

    goto :goto_1

    .line 526
    :cond_1
    new-instance v0, Lorg/solovyev/android/checkout/Base64DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "padding byte \'=\' falsely signals end of encoded value at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/solovyev/android/checkout/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    if-eq v13, v10, :cond_9

    const/16 v3, 0xa

    if-ne v13, v3, :cond_3

    goto :goto_3

    .line 530
    :cond_3
    new-instance v0, Lorg/solovyev/android/checkout/Base64DecoderException;

    const-string v1, "encoded value has invalid trailing byte"

    invoke-direct {v0, v1}, Lorg/solovyev/android/checkout/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_4
    new-instance v0, Lorg/solovyev/android/checkout/Base64DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid padding byte \'=\' at byte offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/solovyev/android/checkout/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v10, v8, 0x1

    .line 536
    aput-byte v13, v5, v8

    if-ne v10, v3, :cond_6

    .line 538
    invoke-static {v5, v6, v2, v9, v1}, Lorg/solovyev/android/checkout/Base64;->decode4to3([BI[BI[B)I

    move-result v8

    add-int/2addr v9, v8

    move v8, v6

    goto :goto_2

    :cond_6
    move v8, v10

    :cond_7
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 543
    :cond_8
    new-instance v0, Lorg/solovyev/android/checkout/Base64DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad Base64 input character at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p0, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(decimal)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/solovyev/android/checkout/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_3
    if-eqz v8, :cond_b

    if-eq v8, v11, :cond_a

    .line 559
    aput-byte v10, v5, v8

    .line 560
    invoke-static {v5, v6, v2, v9, v1}, Lorg/solovyev/android/checkout/Base64;->decode4to3([BI[BI[B)I

    move-result v0

    add-int/2addr v9, v0

    goto :goto_4

    .line 556
    :cond_a
    new-instance v1, Lorg/solovyev/android/checkout/Base64DecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "single trailing character at offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, v11

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/solovyev/android/checkout/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 563
    :cond_b
    :goto_4
    new-array v0, v9, [B

    .line 564
    invoke-static {v2, v6, v0, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static decode4to3([BI[BI[B)I
    .locals 6

    add-int/lit8 v0, p1, 0x2

    .line 377
    aget-byte v1, p0, v0

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 378
    aget-byte v0, p0, p1

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x6

    add-int/2addr p1, v3

    aget-byte p0, p0, p1

    aget-byte p0, p4, p0

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 p0, p0, 0xc

    or-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    .line 382
    aput-byte p0, p2, p3

    return v3

    :cond_0
    add-int/lit8 v1, p1, 0x3

    .line 384
    aget-byte v4, p0, v1

    const/4 v5, 0x2

    if-ne v4, v2, :cond_1

    .line 386
    aget-byte v1, p0, p1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x6

    add-int/2addr p1, v3

    aget-byte p1, p0, p1

    aget-byte p1, p4, p1

    shl-int/lit8 p1, p1, 0x18

    ushr-int/lit8 p1, p1, 0xc

    or-int/2addr p1, v1

    aget-byte p0, p0, v0

    aget-byte p0, p4, p0

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 p0, p0, 0x12

    or-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x10

    int-to-byte p1, p1

    .line 391
    aput-byte p1, p2, p3

    add-int/2addr p3, v3

    ushr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    .line 392
    aput-byte p0, p2, p3

    return v5

    .line 396
    :cond_1
    aget-byte v2, p0, p1

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x6

    add-int/2addr p1, v3

    aget-byte p1, p0, p1

    aget-byte p1, p4, p1

    shl-int/lit8 p1, p1, 0x18

    ushr-int/lit8 p1, p1, 0xc

    or-int/2addr p1, v2

    aget-byte v0, p0, v0

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x12

    or-int/2addr p1, v0

    aget-byte p0, p0, v1

    aget-byte p0, p4, p0

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x10

    int-to-byte p1, p1

    .line 402
    aput-byte p1, p2, p3

    add-int/lit8 p1, p3, 0x1

    shr-int/lit8 p4, p0, 0x8

    int-to-byte p4, p4

    .line 403
    aput-byte p4, p2, p1

    add-int/2addr p3, v5

    int-to-byte p0, p0

    .line 404
    aput-byte p0, p2, p3

    const/4 p0, 0x3

    return p0
.end method
