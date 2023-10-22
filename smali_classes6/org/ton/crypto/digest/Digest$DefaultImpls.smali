.class public final Lorg/ton/crypto/digest/Digest$DefaultImpls;
.super Ljava/lang/Object;
.source "Digest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/crypto/digest/Digest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static build(Lorg/ton/crypto/digest/Digest;)[B
    .locals 1

    .line 12
    invoke-interface {p0}, Lorg/ton/crypto/digest/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-interface {p0, v0}, Lorg/ton/crypto/digest/Digest;->build([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static build(Lorg/ton/crypto/digest/Digest;[B)[B
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    invoke-interface {p0, p1, v0}, Lorg/ton/crypto/digest/Digest;->build([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static update(Lorg/ton/crypto/digest/Digest;[B)V
    .locals 2

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/ton/crypto/digest/Digest;->update([BII)V

    return-void
.end method
