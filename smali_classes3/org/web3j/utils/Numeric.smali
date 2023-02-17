.class public final Lorg/web3j/utils/Numeric;
.super Ljava/lang/Object;
.source "Numeric.java"


# direct methods
.method public static cleanHexPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 88
    invoke-static {p0}, Lorg/web3j/utils/Numeric;->containsHexPrefix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 89
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static containsHexPrefix(Ljava/lang/String;)Z
    .locals 4

    .line 104
    invoke-static {p0}, Lorg/web3j/utils/Strings;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 106
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x30

    if-ne v0, v3, :cond_0

    .line 107
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x78

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    .line 201
    invoke-static {p0}, Lorg/web3j/utils/Numeric;->cleanHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 203
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [B

    return-object p0

    .line 211
    :cond_0
    rem-int/lit8 v2, v0, 0x2

    const/16 v3, 0x10

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 212
    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v4

    new-array v2, v2, [B

    .line 213
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    const/4 v1, 0x1

    goto :goto_0

    .line 216
    :cond_1
    div-int/lit8 v2, v0, 0x2

    new-array v2, v2, [B

    :goto_0
    if-ge v1, v0, :cond_2

    add-int/lit8 v4, v1, 0x1

    .line 221
    div-int/lit8 v5, v4, 0x2

    .line 223
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    .line 224
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v6, v4

    int-to-byte v4, v6

    aput-byte v4, v2, v5

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static prependHexPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 96
    invoke-static {p0}, Lorg/web3j/utils/Numeric;->containsHexPrefix(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static toBigInt(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 0

    .line 119
    invoke-static {p0}, Lorg/web3j/utils/Numeric;->cleanHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 120
    invoke-static {p0}, Lorg/web3j/utils/Numeric;->toBigIntNoPrefix(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static toBigInt([B)Ljava/math/BigInteger;
    .locals 2

    .line 115
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static toBigIntNoPrefix(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 2

    .line 124
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static toBytesPadded(Ljava/math/BigInteger;I)[B
    .locals 4

    .line 178
    new-array v0, p1, [B

    .line 179
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/4 v1, 0x0

    .line 183
    aget-byte v2, p0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 184
    array-length v1, p0

    sub-int/2addr v1, v3

    goto :goto_0

    .line 187
    :cond_0
    array-length v2, p0

    move v1, v2

    const/4 v3, 0x0

    :goto_0
    if-gt v1, p1, :cond_1

    sub-int/2addr p1, v1

    .line 196
    invoke-static {p0, v3, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 192
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Input is too large to put in byte array of size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 3

    .line 242
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lorg/web3j/utils/Numeric;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHexString([BIIZ)Ljava/lang/String;
    .locals 4

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_0

    const-string p3, "0x"

    .line 232
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move p3, p1

    :goto_0
    add-int v1, p1, p2

    if-ge p3, v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 235
    aget-byte v3, p0, p3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%02x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHexStringNoPrefix(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    .line 132
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHexStringNoPrefix([B)Ljava/lang/String;
    .locals 2

    .line 136
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lorg/web3j/utils/Numeric;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHexStringWithPrefixZeroPadded(Ljava/math/BigInteger;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 140
    invoke-static {p0, p1, v0}, Lorg/web3j/utils/Numeric;->toHexStringZeroPadded(Ljava/math/BigInteger;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toHexStringZeroPadded(Ljava/math/BigInteger;IZ)Ljava/lang/String;
    .locals 2

    .line 156
    invoke-static {p0}, Lorg/web3j/utils/Numeric;->toHexStringNoPrefix(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p1, :cond_3

    .line 162
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-ltz p0, :cond_2

    if-ge v1, p1, :cond_0

    .line 167
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr p1, v1

    invoke-static {p1}, Lorg/web3j/utils/Strings;->zeros(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 171
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    .line 163
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Value cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 160
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "is larger then length "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
