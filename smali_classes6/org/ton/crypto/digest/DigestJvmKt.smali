.class public final Lorg/ton/crypto/digest/DigestJvmKt;
.super Ljava/lang/Object;
.source "DigestJvm.kt"


# direct methods
.method public static final Digest(Ljava/lang/String;)Lorg/ton/crypto/digest/Digest;
    .locals 1

    const-string v0, "algorithm"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    const-string v0, "getInstance(algorithm)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lorg/ton/crypto/digest/DigestImpl;->constructor-impl(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-static {p0}, Lorg/ton/crypto/digest/DigestImpl;->box-impl(Ljava/security/MessageDigest;)Lorg/ton/crypto/digest/DigestImpl;

    move-result-object p0

    return-object p0
.end method

.method public static final sha256([B)[B
    .locals 1

    const-string v0, "bytes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SHA-256"

    .line 7
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const-string v0, "getInstance(\"SHA-256\").digest(bytes)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
