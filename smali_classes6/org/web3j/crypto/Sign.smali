.class public Lorg/web3j/crypto/Sign;
.super Ljava/lang/Object;
.source "Sign.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/web3j/crypto/Sign$SignatureData;
    }
.end annotation


# static fields
.field static final CURVE:Lorg/bouncycastle/crypto/params/ECDomainParameters;

.field public static final CURVE_PARAMS:Lorg/bouncycastle/asn1/x9/X9ECParameters;

.field static final HALF_CURVE_ORDER:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "secp256k1"

    .line 41
    invoke-static {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    sput-object v0, Lorg/web3j/crypto/Sign;->CURVE_PARAMS:Lorg/bouncycastle/asn1/x9/X9ECParameters;

    .line 42
    new-instance v1, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    .line 44
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 45
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 46
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 47
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sput-object v1, Lorg/web3j/crypto/Sign;->CURVE:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    .line 48
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/web3j/crypto/Sign;->HALF_CURVE_ORDER:Ljava/math/BigInteger;

    return-void
.end method

.method private static decompressKey(Ljava/math/BigInteger;Z)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 3

    .line 189
    new-instance v0, Lorg/bouncycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    .line 190
    sget-object v1, Lorg/web3j/crypto/Sign;->CURVE:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, p0, v2}, Lorg/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    int-to-byte p1, p1

    const/4 v0, 0x0

    .line 191
    aput-byte p1, p0, v0

    .line 192
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method static getEthereumMessageHash([B)[B
    .locals 4

    .line 57
    array-length v0, p0

    invoke-static {v0}, Lorg/web3j/crypto/Sign;->getEthereumMessagePrefix(I)[B

    move-result-object v0

    .line 59
    array-length v1, v0

    array-length v2, p0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 60
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    array-length v0, v0

    array-length v2, p0

    invoke-static {p0, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    invoke-static {v1}, Lorg/web3j/crypto/Hash;->sha3([B)[B

    move-result-object p0

    return-object p0
.end method

.method static getEthereumMessagePrefix(I)[B
    .locals 1

    .line 53
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u0019Ethereum Signed Message:\n"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static publicFromPoint([B)Ljava/math/BigInteger;
    .locals 3

    .line 303
    new-instance v0, Ljava/math/BigInteger;

    array-length v1, p0

    const/4 v2, 0x1

    invoke-static {p0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {v0, v2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static publicKeyFromPrivate(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3

    .line 273
    invoke-static {p0}, Lorg/web3j/crypto/Sign;->publicPointFromPrivate(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p0

    .line 276
    new-instance v0, Ljava/math/BigInteger;

    array-length v1, p0

    const/4 v2, 0x1

    invoke-static {p0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {v0, v2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static publicPointFromPrivate(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 3

    .line 290
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    sget-object v1, Lorg/web3j/crypto/Sign;->CURVE:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 291
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 293
    :cond_0
    new-instance v0, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/bouncycastle/math/ec/AbstractECMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public static recoverFromSignature(ILorg/web3j/crypto/ECDSASignature;[B)Ljava/math/BigInteger;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "recId must be positive"

    .line 130
    invoke-static {v2, v3}, Lorg/web3j/utils/Assertions;->verifyPrecondition(ZLjava/lang/String;)V

    .line 131
    iget-object v2, p1, Lorg/web3j/crypto/ECDSASignature;->r:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "r must be positive"

    invoke-static {v2, v3}, Lorg/web3j/utils/Assertions;->verifyPrecondition(ZLjava/lang/String;)V

    .line 132
    iget-object v2, p1, Lorg/web3j/crypto/ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-ltz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const-string v3, "s must be positive"

    invoke-static {v2, v3}, Lorg/web3j/utils/Assertions;->verifyPrecondition(ZLjava/lang/String;)V

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    const-string v3, "message cannot be null"

    .line 133
    invoke-static {v2, v3}, Lorg/web3j/utils/Assertions;->verifyPrecondition(ZLjava/lang/String;)V

    .line 137
    sget-object v2, Lorg/web3j/crypto/Sign;->CURVE:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    int-to-long v4, p0

    const-wide/16 v6, 0x2

    .line 138
    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 139
    iget-object v5, p1, Lorg/web3j/crypto/ECDSASignature;->r:Ljava/math/BigInteger;

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 147
    sget-object v5, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Curve;->q:Ljava/math/BigInteger;

    .line 148
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    const/4 v6, 0x0

    if-ltz v5, :cond_4

    return-object v6

    :cond_4
    and-int/2addr p0, v1

    if-ne p0, v1, :cond_5

    const/4 p0, 0x1

    goto :goto_4

    :cond_5
    const/4 p0, 0x0

    .line 154
    :goto_4
    invoke-static {v4, p0}, Lorg/web3j/crypto/Sign;->decompressKey(Ljava/math/BigInteger;Z)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .line 157
    invoke-virtual {p0, v3}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v4

    if-nez v4, :cond_6

    return-object v6

    .line 161
    :cond_6
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 176
    sget-object p2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 177
    iget-object v4, p1, Lorg/web3j/crypto/ECDSASignature;->r:Ljava/math/BigInteger;

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 178
    iget-object p1, p1, Lorg/web3j/crypto/ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 179
    invoke-virtual {v4, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 180
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {v2, p2, p0, p1}, Lorg/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .line 182
    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p0

    .line 184
    new-instance p1, Ljava/math/BigInteger;

    array-length p2, p0

    invoke-static {p0, v1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {p1, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p1
.end method

.method public static signMessage([BLorg/web3j/crypto/ECKeyPair;)Lorg/web3j/crypto/Sign$SignatureData;
    .locals 1

    const/4 v0, 0x1

    .line 71
    invoke-static {p0, p1, v0}, Lorg/web3j/crypto/Sign;->signMessage([BLorg/web3j/crypto/ECKeyPair;Z)Lorg/web3j/crypto/Sign$SignatureData;

    move-result-object p0

    return-object p0
.end method

.method public static signMessage([BLorg/web3j/crypto/ECKeyPair;Z)Lorg/web3j/crypto/Sign$SignatureData;
    .locals 4

    .line 75
    invoke-virtual {p1}, Lorg/web3j/crypto/ECKeyPair;->getPublicKey()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 78
    invoke-static {p0}, Lorg/web3j/crypto/Hash;->sha3([B)[B

    move-result-object p0

    .line 83
    :cond_0
    invoke-virtual {p1, p0}, Lorg/web3j/crypto/ECKeyPair;->sign([B)Lorg/web3j/crypto/ECDSASignature;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    const/4 v3, -0x1

    if-ge v1, v2, :cond_2

    .line 87
    invoke-static {v1, p1, p0}, Lorg/web3j/crypto/Sign;->recoverFromSignature(ILorg/web3j/crypto/ECDSASignature;[B)Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 88
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_1
    if-eq v1, v3, :cond_3

    add-int/lit8 v1, v1, 0x1b

    const/4 p0, 0x1

    new-array p0, p0, [B

    int-to-byte v0, v1

    aput-byte v0, p0, p2

    .line 102
    iget-object p2, p1, Lorg/web3j/crypto/ECDSASignature;->r:Ljava/math/BigInteger;

    const/16 v0, 0x20

    invoke-static {p2, v0}, Lorg/web3j/utils/Numeric;->toBytesPadded(Ljava/math/BigInteger;I)[B

    move-result-object p2

    .line 103
    iget-object p1, p1, Lorg/web3j/crypto/ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-static {p1, v0}, Lorg/web3j/utils/Numeric;->toBytesPadded(Ljava/math/BigInteger;I)[B

    move-result-object p1

    .line 105
    new-instance v0, Lorg/web3j/crypto/Sign$SignatureData;

    invoke-direct {v0, p0, p2, p1}, Lorg/web3j/crypto/Sign$SignatureData;-><init>([B[B[B)V

    return-object v0

    .line 94
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not construct a recoverable key. Are your credentials valid?"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static signPrefixedMessage([BLorg/web3j/crypto/ECKeyPair;)Lorg/web3j/crypto/Sign$SignatureData;
    .locals 1

    .line 67
    invoke-static {p0}, Lorg/web3j/crypto/Sign;->getEthereumMessageHash([B)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/web3j/crypto/Sign;->signMessage([BLorg/web3j/crypto/ECKeyPair;Z)Lorg/web3j/crypto/Sign$SignatureData;

    move-result-object p0

    return-object p0
.end method
