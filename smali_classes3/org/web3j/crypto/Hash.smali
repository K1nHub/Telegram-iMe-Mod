.class public Lorg/web3j/crypto/Hash;
.super Ljava/lang/Object;
.source "Hash.java"


# direct methods
.method public static hmacSha512([B[B)[B
    .locals 2

    .line 112
    new-instance v0, Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 113
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 114
    array-length p0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    const/16 p0, 0x40

    new-array p0, p0, [B

    .line 116
    invoke-virtual {v0, p0, v1}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    return-object p0
.end method

.method public static sha256([B)[B
    .locals 2

    :try_start_0
    const-string v0, "SHA-256"

    .line 104
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Couldn\'t find a SHA-256 provider"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static sha256hash160([B)[B
    .locals 3

    .line 121
    invoke-static {p0}, Lorg/web3j/crypto/Hash;->sha256([B)[B

    move-result-object p0

    .line 122
    new-instance v0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    .line 123
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->update([BII)V

    const/16 p0, 0x14

    new-array p0, p0, [B

    .line 125
    invoke-virtual {v0, p0, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->doFinal([BI)I

    return-object p0
.end method

.method public static sha3(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-static {p0}, Lorg/web3j/utils/Numeric;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    .line 57
    invoke-static {p0}, Lorg/web3j/crypto/Hash;->sha3([B)[B

    move-result-object p0

    .line 58
    invoke-static {p0}, Lorg/web3j/utils/Numeric;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha3([B)[B
    .locals 2

    .line 82
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/web3j/crypto/Hash;->sha3([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha3([BII)[B
    .locals 1

    .line 70
    new-instance v0, Lorg/bouncycastle/jcajce/provider/digest/Keccak$Digest256;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/digest/Keccak$Digest256;-><init>()V

    .line 71
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 72
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0
.end method

.method public static sha3String(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 92
    sget-object v0, Lorg/web3j/compat/Compat;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/web3j/crypto/Hash;->sha3([B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/web3j/utils/Numeric;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
