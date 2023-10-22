.class public abstract Lorg/ton/crypto/digest/md4/GeneralDigest;
.super Ljava/lang/Object;
.source "GeneralDigest.kt"

# interfaces
.implements Lorg/ton/crypto/digest/Digest;


# instance fields
.field private byteCount:I

.field private final xBuf:[B

.field private xBuffOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 10
    iput-object v0, p0, Lorg/ton/crypto/digest/md4/GeneralDigest;->xBuf:[B

    return-void
.end method


# virtual methods
.method public build()[B
    .locals 1

    .line 9
    invoke-static {p0}, Lorg/ton/crypto/digest/Digest$DefaultImpls;->build(Lorg/ton/crypto/digest/Digest;)[B

    move-result-object v0

    return-object v0
.end method

.method public build([B)[B
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lorg/ton/crypto/digest/Digest$DefaultImpls;->build(Lorg/ton/crypto/digest/Digest;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final finish()V
    .locals 3

    .line 53
    iget v0, p0, Lorg/ton/crypto/digest/md4/GeneralDigest;->byteCount:I

    int-to-long v0, v0

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    const/16 v2, -0x80

    .line 56
    invoke-virtual {p0, v2}, Lorg/ton/crypto/digest/md4/GeneralDigest;->update(B)V

    .line 58
    :goto_0
    iget v2, p0, Lorg/ton/crypto/digest/md4/GeneralDigest;->xBuffOff:I

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 59
    invoke-virtual {p0, v2}, Lorg/ton/crypto/digest/md4/GeneralDigest;->update(B)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/ton/crypto/digest/md4/GeneralDigest;->processLength(J)V

    .line 62
    invoke-virtual {p0}, Lorg/ton/crypto/digest/md4/GeneralDigest;->processBlock()V

    return-void
.end method

.method protected abstract processBlock()V
.end method

.method protected abstract processLength(J)V
.end method

.method protected abstract processWord([BI)V
.end method

.method public reset()V
    .locals 7

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lorg/ton/crypto/digest/md4/GeneralDigest;->byteCount:I

    .line 67
    iput v0, p0, Lorg/ton/crypto/digest/md4/GeneralDigest;->xBuffOff:I

    .line 68
    iget-object v1, p0, Lorg/ton/crypto/digest/md4/GeneralDigest;->xBuf:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt;->fill$default([BBIIILjava/lang/Object;)V

    return-void
.end method

.method public final update(B)V
    .locals 3

    .line 15
    iget-object v0, p0, Lorg/ton/crypto/digest/md4/GeneralDigest;->xBuf:[B

    iget v1, p0, Lorg/ton/crypto/digest/md4/GeneralDigest;->xBuffOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/ton/crypto/digest/md4/GeneralDigest;->xBuffOff:I

    aput-byte p1, v0, v1

    .line 16
    array-length p1, v0

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, v0, p1}, Lorg/ton/crypto/digest/md4/GeneralDigest;->processWord([BI)V

    .line 18
    iput p1, p0, Lorg/ton/crypto/digest/md4/GeneralDigest;->xBuffOff:I

    .line 20
    :cond_0
    iget p1, p0, Lorg/ton/crypto/digest/md4/GeneralDigest;->byteCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/ton/crypto/digest/md4/GeneralDigest;->byteCount:I

    return-void
.end method

.method public update([B)V
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lorg/ton/crypto/digest/Digest$DefaultImpls;->update(Lorg/ton/crypto/digest/Digest;[B)V

    return-void
.end method

.method public update([BII)V
    .locals 6

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget v0, p0, Lorg/ton/crypto/digest/md4/GeneralDigest;->xBuffOff:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    if-ge v0, p3, :cond_1

    .line 28
    iget-object v2, p0, Lorg/ton/crypto/digest/md4/GeneralDigest;->xBuf:[B

    iget v3, p0, Lorg/ton/crypto/digest/md4/GeneralDigest;->xBuffOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/ton/crypto/digest/md4/GeneralDigest;->xBuffOff:I

    add-int/lit8 v5, v0, 0x1

    add-int/2addr v0, p2

    aget-byte v0, p1, v0

    aput-byte v0, v2, v3

    const/4 v0, 0x4

    if-ne v4, v0, :cond_0

    .line 30
    invoke-virtual {p0, v2, v1}, Lorg/ton/crypto/digest/md4/GeneralDigest;->processWord([BI)V

    .line 31
    iput v1, p0, Lorg/ton/crypto/digest/md4/GeneralDigest;->xBuffOff:I

    move v1, v5

    goto :goto_1

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    :goto_1
    sub-int v0, p3, v1

    and-int/lit8 v0, v0, -0x4

    add-int/2addr v0, v1

    :goto_2
    if-ge v1, v0, :cond_3

    add-int v2, p2, v1

    .line 40
    invoke-virtual {p0, p1, v2}, Lorg/ton/crypto/digest/md4/GeneralDigest;->processWord([BI)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_2

    :cond_3
    :goto_3
    if-ge v1, p3, :cond_4

    .line 46
    iget-object v0, p0, Lorg/ton/crypto/digest/md4/GeneralDigest;->xBuf:[B

    iget v2, p0, Lorg/ton/crypto/digest/md4/GeneralDigest;->xBuffOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/ton/crypto/digest/md4/GeneralDigest;->xBuffOff:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    aput-byte v1, v0, v2

    move v1, v3

    goto :goto_3

    .line 49
    :cond_4
    iget p1, p0, Lorg/ton/crypto/digest/md4/GeneralDigest;->byteCount:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/ton/crypto/digest/md4/GeneralDigest;->byteCount:I

    return-void
.end method
