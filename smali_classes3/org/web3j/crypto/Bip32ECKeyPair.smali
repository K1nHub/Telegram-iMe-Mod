.class public Lorg/web3j/crypto/Bip32ECKeyPair;
.super Lorg/web3j/crypto/ECKeyPair;
.source "Bip32ECKeyPair.java"


# instance fields
.field private final chainCode:[B

.field private final depth:I

.field private final parentHasPrivate:Z

.field private publicKeyPoint:Lorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I[BLorg/web3j/crypto/Bip32ECKeyPair;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/web3j/crypto/ECKeyPair;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p5, :cond_0

    .line 50
    invoke-direct {p5}, Lorg/web3j/crypto/Bip32ECKeyPair;->hasPrivateKey()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lorg/web3j/crypto/Bip32ECKeyPair;->parentHasPrivate:Z

    if-nez p5, :cond_1

    goto :goto_1

    .line 52
    :cond_1
    iget p2, p5, Lorg/web3j/crypto/Bip32ECKeyPair;->depth:I

    add-int/2addr p2, p1

    :goto_1
    iput p2, p0, Lorg/web3j/crypto/Bip32ECKeyPair;->depth:I

    .line 53
    array-length p1, p4

    invoke-static {p4, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/web3j/crypto/Bip32ECKeyPair;->chainCode:[B

    if-eqz p5, :cond_2

    .line 54
    invoke-direct {p5}, Lorg/web3j/crypto/Bip32ECKeyPair;->getFingerprint()I

    :cond_2
    return-void
.end method

.method private static bigIntegerToBytes32(Ljava/math/BigInteger;)[B
    .locals 4

    .line 179
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 181
    aget-byte v2, p0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 182
    :cond_0
    array-length v2, p0

    if-eqz v1, :cond_1

    sub-int/2addr v2, v3

    :cond_1
    rsub-int/lit8 v3, v2, 0x20

    .line 185
    invoke-static {p0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static create(Ljava/math/BigInteger;[B)Lorg/web3j/crypto/Bip32ECKeyPair;
    .locals 7

    .line 58
    new-instance v6, Lorg/web3j/crypto/Bip32ECKeyPair;

    .line 59
    invoke-static {p0}, Lorg/web3j/crypto/Sign;->publicKeyFromPrivate(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/web3j/crypto/Bip32ECKeyPair;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I[BLorg/web3j/crypto/Bip32ECKeyPair;)V

    return-object v6
.end method

.method public static create([B[B)Lorg/web3j/crypto/Bip32ECKeyPair;
    .locals 0

    .line 63
    invoke-static {p0}, Lorg/web3j/utils/Numeric;->toBigInt([B)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/web3j/crypto/Bip32ECKeyPair;->create(Ljava/math/BigInteger;[B)Lorg/web3j/crypto/Bip32ECKeyPair;

    move-result-object p0

    return-object p0
.end method

.method private deriveChildKey(I)Lorg/web3j/crypto/Bip32ECKeyPair;
    .locals 12

    .line 90
    invoke-direct {p0}, Lorg/web3j/crypto/Bip32ECKeyPair;->hasPrivateKey()Z

    move-result v0

    const/16 v1, 0x40

    const/16 v2, 0x25

    const/16 v3, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lorg/web3j/crypto/Bip32ECKeyPair;->getPublicKeyPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v0

    .line 92
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 93
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 94
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {p0}, Lorg/web3j/crypto/Bip32ECKeyPair;->getChainCode()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v0, v2}, Lorg/web3j/crypto/Hash;->hmacSha512([B[B)[B

    move-result-object v0

    .line 96
    invoke-static {v0, v5, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 97
    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 98
    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 99
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 100
    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 101
    invoke-static {v0}, Lorg/web3j/crypto/Sign;->publicPointFromPrivate(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p0}, Lorg/web3j/crypto/Bip32ECKeyPair;->getPublicKeyPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 103
    new-instance v1, Lorg/web3j/crypto/Bip32ECKeyPair;

    const/4 v7, 0x0

    .line 104
    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v0

    invoke-static {v0}, Lorg/web3j/crypto/Sign;->publicFromPoint([B)Ljava/math/BigInteger;

    move-result-object v8

    move-object v6, v1

    move v9, p1

    move-object v11, p0

    invoke-direct/range {v6 .. v11}, Lorg/web3j/crypto/Bip32ECKeyPair;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I[BLorg/web3j/crypto/Bip32ECKeyPair;)V

    return-object v1

    .line 106
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 107
    invoke-static {p1}, Lorg/web3j/crypto/Bip32ECKeyPair;->isHardened(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {p0}, Lorg/web3j/crypto/Bip32ECKeyPair;->getPrivateKeyBytes33()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lorg/web3j/crypto/Bip32ECKeyPair;->getPublicKeyPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v2

    .line 111
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 113
    :goto_0
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 114
    invoke-virtual {p0}, Lorg/web3j/crypto/Bip32ECKeyPair;->getChainCode()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v2, v0}, Lorg/web3j/crypto/Hash;->hmacSha512([B[B)[B

    move-result-object v0

    .line 115
    invoke-static {v0, v5, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 116
    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 117
    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 118
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 119
    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 120
    invoke-virtual {p0}, Lorg/web3j/crypto/ECKeyPair;->getPrivateKey()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/web3j/crypto/Sign;->CURVE:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 122
    new-instance v0, Lorg/web3j/crypto/Bip32ECKeyPair;

    .line 124
    invoke-static {v7}, Lorg/web3j/crypto/Sign;->publicKeyFromPrivate(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    move-object v6, v0

    move v9, p1

    move-object v11, p0

    invoke-direct/range {v6 .. v11}, Lorg/web3j/crypto/Bip32ECKeyPair;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I[BLorg/web3j/crypto/Bip32ECKeyPair;)V

    return-object v0
.end method

.method public static deriveKeyPair(Lorg/web3j/crypto/Bip32ECKeyPair;[I)Lorg/web3j/crypto/Bip32ECKeyPair;
    .locals 3

    if-eqz p1, :cond_0

    .line 81
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 82
    invoke-direct {p0, v2}, Lorg/web3j/crypto/Bip32ECKeyPair;->deriveChildKey(I)Lorg/web3j/crypto/Bip32ECKeyPair;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static generateKeyPair([B)Lorg/web3j/crypto/Bip32ECKeyPair;
    .locals 4

    const-string v0, "Bitcoin seed"

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p0}, Lorg/web3j/crypto/Hash;->hmacSha512([B[B)[B

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x20

    .line 68
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    const/16 v3, 0x40

    .line 69
    invoke-static {p0, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 70
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 71
    invoke-static {v2, v1}, Lorg/web3j/crypto/Bip32ECKeyPair;->create([B[B)Lorg/web3j/crypto/Bip32ECKeyPair;

    move-result-object p0

    .line 72
    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 73
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    return-object p0
.end method

.method private getFingerprint()I
    .locals 3

    .line 132
    invoke-direct {p0}, Lorg/web3j/crypto/Bip32ECKeyPair;->getIdentifier()[B

    move-result-object v0

    const/4 v1, 0x3

    .line 133
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private getIdentifier()[B
    .locals 2

    .line 153
    invoke-virtual {p0}, Lorg/web3j/crypto/Bip32ECKeyPair;->getPublicKeyPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v0

    invoke-static {v0}, Lorg/web3j/crypto/Hash;->sha256hash160([B)[B

    move-result-object v0

    return-object v0
.end method

.method private hasPrivateKey()Z
    .locals 1

    .line 173
    invoke-virtual {p0}, Lorg/web3j/crypto/ECKeyPair;->getPrivateKey()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/web3j/crypto/Bip32ECKeyPair;->parentHasPrivate:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isHardened(I)Z
    .locals 1

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getChainCode()[B
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/web3j/crypto/Bip32ECKeyPair;->chainCode:[B

    return-object v0
.end method

.method public getPrivateKeyBytes33()[B
    .locals 5

    const/16 v0, 0x21

    new-array v1, v0, [B

    .line 167
    invoke-virtual {p0}, Lorg/web3j/crypto/ECKeyPair;->getPrivateKey()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lorg/web3j/crypto/Bip32ECKeyPair;->bigIntegerToBytes32(Ljava/math/BigInteger;)[B

    move-result-object v2

    .line 168
    array-length v3, v2

    sub-int/2addr v0, v3

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getPublicKeyPoint()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/web3j/crypto/Bip32ECKeyPair;->publicKeyPoint:Lorg/bouncycastle/math/ec/ECPoint;

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lorg/web3j/crypto/ECKeyPair;->getPrivateKey()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/web3j/crypto/Sign;->publicPointFromPrivate(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/web3j/crypto/Bip32ECKeyPair;->publicKeyPoint:Lorg/bouncycastle/math/ec/ECPoint;

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/web3j/crypto/Bip32ECKeyPair;->publicKeyPoint:Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method
