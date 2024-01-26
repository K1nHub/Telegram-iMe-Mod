.class final Lorg/ton/crypto/digest/DigestImpl;
.super Ljava/lang/Object;
.source "DigestJvm.kt"

# interfaces
.implements Lorg/ton/crypto/digest/Digest;


# instance fields
.field private final digest:Ljava/security/MessageDigest;


# direct methods
.method private synthetic constructor <init>(Ljava/security/MessageDigest;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ton/crypto/digest/DigestImpl;->digest:Ljava/security/MessageDigest;

    return-void
.end method

.method public static final synthetic box-impl(Ljava/security/MessageDigest;)Lorg/ton/crypto/digest/DigestImpl;
    .locals 1

    new-instance v0, Lorg/ton/crypto/digest/DigestImpl;

    invoke-direct {v0, p0}, Lorg/ton/crypto/digest/DigestImpl;-><init>(Ljava/security/MessageDigest;)V

    return-object v0
.end method

.method public static build-impl(Ljava/security/MessageDigest;[BI)[B
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-virtual {p0, p1, p2, v0}, Ljava/security/MessageDigest;->digest([BII)I

    return-object p1
.end method

.method public static constructor-impl(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "digest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static equals-impl(Ljava/security/MessageDigest;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/ton/crypto/digest/DigestImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/ton/crypto/digest/DigestImpl;

    invoke-virtual {p1}, Lorg/ton/crypto/digest/DigestImpl;->unbox-impl()Ljava/security/MessageDigest;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static getAlgorithmName-impl(Ljava/security/MessageDigest;)Ljava/lang/String;
    .locals 1

    .line 16
    invoke-virtual {p0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    const-string v0, "digest.algorithm"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getDigestSize-impl(Ljava/security/MessageDigest;)I
    .locals 0

    .line 18
    invoke-virtual {p0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result p0

    return p0
.end method

.method public static hashCode-impl(Ljava/security/MessageDigest;)I
    .locals 0

    invoke-virtual {p0}, Ljava/security/MessageDigest;->hashCode()I

    move-result p0

    return p0
.end method

.method public static reset-impl(Ljava/security/MessageDigest;)V
    .locals 0

    .line 30
    invoke-virtual {p0}, Ljava/security/MessageDigest;->reset()V

    return-void
.end method

.method public static toString-impl(Ljava/security/MessageDigest;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DigestImpl(digest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static update-impl(Ljava/security/MessageDigest;[BII)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method


# virtual methods
.method public build()[B
    .locals 1

    .line 11
    invoke-static {p0}, Lorg/ton/crypto/digest/Digest$DefaultImpls;->build(Lorg/ton/crypto/digest/Digest;)[B

    move-result-object v0

    return-object v0
.end method

.method public build([B)[B
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lorg/ton/crypto/digest/Digest$DefaultImpls;->build(Lorg/ton/crypto/digest/Digest;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public build([BI)[B
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lorg/ton/crypto/digest/DigestImpl;->digest:Ljava/security/MessageDigest;

    invoke-static {v0, p1, p2}, Lorg/ton/crypto/digest/DigestImpl;->build-impl(Ljava/security/MessageDigest;[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/ton/crypto/digest/DigestImpl;->digest:Ljava/security/MessageDigest;

    invoke-static {v0, p1}, Lorg/ton/crypto/digest/DigestImpl;->equals-impl(Ljava/security/MessageDigest;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/ton/crypto/digest/DigestImpl;->digest:Ljava/security/MessageDigest;

    invoke-static {v0}, Lorg/ton/crypto/digest/DigestImpl;->getAlgorithmName-impl(Ljava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/crypto/digest/DigestImpl;->digest:Ljava/security/MessageDigest;

    invoke-static {v0}, Lorg/ton/crypto/digest/DigestImpl;->getDigestSize-impl(Ljava/security/MessageDigest;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/ton/crypto/digest/DigestImpl;->digest:Ljava/security/MessageDigest;

    invoke-static {v0}, Lorg/ton/crypto/digest/DigestImpl;->hashCode-impl(Ljava/security/MessageDigest;)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/ton/crypto/digest/DigestImpl;->digest:Ljava/security/MessageDigest;

    invoke-static {v0}, Lorg/ton/crypto/digest/DigestImpl;->reset-impl(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ton/crypto/digest/DigestImpl;->digest:Ljava/security/MessageDigest;

    invoke-static {v0}, Lorg/ton/crypto/digest/DigestImpl;->toString-impl(Ljava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()Ljava/security/MessageDigest;
    .locals 1

    iget-object v0, p0, Lorg/ton/crypto/digest/DigestImpl;->digest:Ljava/security/MessageDigest;

    return-object v0
.end method

.method public update([B)V
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lorg/ton/crypto/digest/Digest$DefaultImpls;->update(Lorg/ton/crypto/digest/Digest;[B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lorg/ton/crypto/digest/DigestImpl;->digest:Ljava/security/MessageDigest;

    invoke-static {v0, p1, p2, p3}, Lorg/ton/crypto/digest/DigestImpl;->update-impl(Ljava/security/MessageDigest;[BII)V

    return-void
.end method
