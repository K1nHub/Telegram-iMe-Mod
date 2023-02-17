.class public Lorg/web3j/rlp/RlpEncoder;
.super Ljava/lang/Object;
.source "RlpEncoder.java"


# direct methods
.method private static concat([B[B)[B
    .locals 3

    .line 99
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 100
    array-length p0, p0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static encode(Lorg/web3j/rlp/RlpType;)[B
    .locals 1

    .line 30
    instance-of v0, p0, Lorg/web3j/rlp/RlpString;

    if-eqz v0, :cond_0

    .line 31
    check-cast p0, Lorg/web3j/rlp/RlpString;

    invoke-static {p0}, Lorg/web3j/rlp/RlpEncoder;->encodeString(Lorg/web3j/rlp/RlpString;)[B

    move-result-object p0

    return-object p0

    .line 33
    :cond_0
    check-cast p0, Lorg/web3j/rlp/RlpList;

    invoke-static {p0}, Lorg/web3j/rlp/RlpEncoder;->encodeList(Lorg/web3j/rlp/RlpList;)[B

    move-result-object p0

    return-object p0
.end method

.method private static encode([BI)[B
    .locals 6

    .line 38
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    sget v0, Lorg/web3j/rlp/RlpDecoder;->OFFSET_SHORT_STRING:I

    if-ne p1, v0, :cond_0

    aget-byte v0, p0, v2

    if-ltz v0, :cond_0

    aget-byte v0, p0, v2

    const/16 v3, 0x7f

    if-gt v0, v3, :cond_0

    return-object p0

    .line 43
    :cond_0
    array-length v0, p0

    const/16 v3, 0x37

    if-gt v0, v3, :cond_1

    .line 44
    array-length v0, p0

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 45
    array-length v3, p0

    add-int/2addr p1, v3

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    .line 46
    array-length p1, p0

    invoke-static {p0, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 49
    :cond_1
    array-length v0, p0

    invoke-static {v0}, Lorg/web3j/rlp/RlpEncoder;->toMinimalByteArray(I)[B

    move-result-object v0

    .line 50
    array-length v4, p0

    array-length v5, v0

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    new-array v4, v4, [B

    add-int/2addr p1, v3

    .line 52
    array-length v3, v0

    add-int/2addr p1, v3

    int-to-byte p1, p1

    aput-byte p1, v4, v2

    .line 53
    array-length p1, v0

    invoke-static {v0, v2, v4, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    array-length p1, v0

    add-int/2addr p1, v1

    array-length v0, p0

    invoke-static {p0, v2, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4
.end method

.method static encodeList(Lorg/web3j/rlp/RlpList;)[B
    .locals 2

    .line 86
    invoke-virtual {p0}, Lorg/web3j/rlp/RlpList;->getValues()Ljava/util/List;

    move-result-object p0

    .line 87
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [B

    .line 88
    sget v0, Lorg/web3j/rlp/RlpDecoder;->OFFSET_SHORT_LIST:I

    invoke-static {p0, v0}, Lorg/web3j/rlp/RlpEncoder;->encode([BI)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-array v0, v1, [B

    .line 91
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/web3j/rlp/RlpType;

    .line 92
    invoke-static {v1}, Lorg/web3j/rlp/RlpEncoder;->encode(Lorg/web3j/rlp/RlpType;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/web3j/rlp/RlpEncoder;->concat([B[B)[B

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_1
    sget p0, Lorg/web3j/rlp/RlpDecoder;->OFFSET_SHORT_LIST:I

    invoke-static {v0, p0}, Lorg/web3j/rlp/RlpEncoder;->encode([BI)[B

    move-result-object p0

    return-object p0
.end method

.method static encodeString(Lorg/web3j/rlp/RlpString;)[B
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/web3j/rlp/RlpString;->getBytes()[B

    move-result-object p0

    sget v0, Lorg/web3j/rlp/RlpDecoder;->OFFSET_SHORT_STRING:I

    invoke-static {p0, v0}, Lorg/web3j/rlp/RlpEncoder;->encode([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private static toByteArray(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method

.method private static toMinimalByteArray(I)[B
    .locals 3

    .line 65
    invoke-static {p0}, Lorg/web3j/rlp/RlpEncoder;->toByteArray(I)[B

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 68
    aget-byte v2, p0, v1

    if-eqz v2, :cond_0

    .line 69
    array-length v0, p0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v0, [B

    return-object p0
.end method
