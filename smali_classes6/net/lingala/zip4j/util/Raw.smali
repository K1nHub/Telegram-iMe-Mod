.class public Lnet/lingala/zip4j/util/Raw;
.super Ljava/lang/Object;
.source "Raw.java"


# direct methods
.method public static convertCharArrayToByteArray([C)[B
    .locals 3

    .line 175
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 179
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 180
    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static prepareBuffAESIVBytes([BII)V
    .locals 2

    int-to-byte p2, p1

    const/4 v0, 0x0

    .line 150
    aput-byte p2, p0, v0

    shr-int/lit8 p2, p1, 0x8

    int-to-byte p2, p2

    const/4 v1, 0x1

    .line 151
    aput-byte p2, p0, v1

    shr-int/lit8 p2, p1, 0x10

    int-to-byte p2, p2

    const/4 v1, 0x2

    .line 152
    aput-byte p2, p0, v1

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    const/4 p2, 0x3

    .line 153
    aput-byte p1, p0, p2

    const/4 p1, 0x4

    .line 154
    aput-byte v0, p0, p1

    const/4 p1, 0x5

    .line 155
    aput-byte v0, p0, p1

    const/4 p1, 0x6

    .line 156
    aput-byte v0, p0, p1

    const/4 p1, 0x7

    .line 157
    aput-byte v0, p0, p1

    const/16 p1, 0x8

    .line 158
    aput-byte v0, p0, p1

    const/16 p1, 0x9

    .line 159
    aput-byte v0, p0, p1

    const/16 p1, 0xa

    .line 160
    aput-byte v0, p0, p1

    const/16 p1, 0xb

    .line 161
    aput-byte v0, p0, p1

    const/16 p1, 0xc

    .line 162
    aput-byte v0, p0, p1

    const/16 p1, 0xd

    .line 163
    aput-byte v0, p0, p1

    const/16 p1, 0xe

    .line 164
    aput-byte v0, p0, p1

    const/16 p1, 0xf

    .line 165
    aput-byte v0, p0, p1

    return-void
.end method

.method public static readIntLittleEndian([BI)I
    .locals 2

    .line 69
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v1

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method public static readLeInt(Ljava/io/DataInput;[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 48
    :try_start_0
    invoke-interface {p0, p1, v1, v0}, Ljava/io/DataInput;->readFully([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    aget-byte p0, p1, v1

    and-int/lit16 p0, p0, 0xff

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    return p0

    :catch_0
    move-exception p0

    .line 50
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p1, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static readLongLittleEndian([BI)J
    .locals 5

    add-int/lit8 v0, p1, 0x7

    .line 28
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    or-long/2addr v0, v2

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x6

    .line 30
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    shl-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x5

    .line 32
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    shl-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x4

    .line 34
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    shl-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x3

    .line 36
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    shl-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x2

    .line 38
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    shl-long/2addr v0, v2

    add-int/lit8 v3, p1, 0x1

    .line 40
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    shl-long/2addr v0, v2

    .line 42
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static final readShortBigEndian([BI)S
    .locals 1

    .line 62
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    or-int/lit8 v0, v0, 0x0

    int-to-short v0, v0

    shl-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    add-int/lit8 p1, p1, 0x1

    .line 64
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static readShortLittleEndian([BI)I
    .locals 1

    .line 57
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method
