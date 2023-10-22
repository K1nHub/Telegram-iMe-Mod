.class public final Lio/github/andreypfau/curve25519/internal/Sha512Kt;
.super Ljava/lang/Object;
.source "sha512.kt"


# direct methods
.method public static final sha512([BII[BII)[B
    .locals 1

    const-string/jumbo v0, "rawData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SHA-512"

    .line 13
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 15
    invoke-virtual {v0, p3, p4, p5}, Ljava/security/MessageDigest;->digest([BII)I

    return-object p3
.end method

.method public static synthetic sha512$default([BII[BIIILjava/lang/Object;)[B
    .locals 2

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    .line 7
    array-length p2, p0

    sub-int/2addr p2, p1

    :cond_1
    and-int/lit8 p7, p6, 0x8

    const/16 v1, 0x40

    if-eqz p7, :cond_2

    new-array p3, v1, [B

    :cond_2
    and-int/lit8 p7, p6, 0x10

    if-eqz p7, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x20

    if-eqz p6, :cond_4

    move p5, v1

    .line 5
    :cond_4
    invoke-static/range {p0 .. p5}, Lio/github/andreypfau/curve25519/internal/Sha512Kt;->sha512([BII[BII)[B

    move-result-object p0

    return-object p0
.end method
