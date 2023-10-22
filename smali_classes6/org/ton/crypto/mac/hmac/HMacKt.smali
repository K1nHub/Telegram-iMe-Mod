.class public final Lorg/ton/crypto/mac/hmac/HMacKt;
.super Ljava/lang/Object;
.source "HMac.kt"


# direct methods
.method public static final synthetic access$byteLength(Lorg/ton/crypto/digest/Digest;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/ton/crypto/mac/hmac/HMacKt;->byteLength(Lorg/ton/crypto/digest/Digest;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$xorPad([BIIB)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/ton/crypto/mac/hmac/HMacKt;->xorPad([BIIB)V

    return-void
.end method

.method private static final byteLength(Lorg/ton/crypto/digest/Digest;)I
    .locals 3

    .line 69
    invoke-interface {p0}, Lorg/ton/crypto/digest/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA-256"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p0, 0x40

    goto :goto_0

    :cond_0
    const-string v1, "SHA-512"

    .line 71
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x80

    :goto_0
    return p0

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/ton/crypto/digest/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final xorPad([BIIB)V
    .locals 1

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, p2, :cond_0

    .line 77
    aget-byte v0, p0, p1

    xor-int/2addr v0, p3

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
