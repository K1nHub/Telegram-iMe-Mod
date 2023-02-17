.class public final Lorg/bouncycastle/crypto/util/DigestFactory;
.super Ljava/lang/Object;


# direct methods
.method public static createSHA1()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    return-object v0
.end method

.method public static createSHA224()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA224Digest;-><init>()V

    return-object v0
.end method

.method public static createSHA256()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    return-object v0
.end method

.method public static createSHA384()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA384Digest;-><init>()V

    return-object v0
.end method

.method public static createSHA512()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    return-object v0
.end method
