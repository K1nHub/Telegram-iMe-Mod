.class public final Lorg/ton/crypto/mac/hmac/HMac;
.super Ljava/lang/Object;
.source "HMac.kt"

# interfaces
.implements Lorg/ton/crypto/mac/Mac;


# instance fields
.field private final blockLength:I

.field private final digest:Lorg/ton/crypto/digest/Digest;

.field private final digestSize:I

.field private final inputPad:[B

.field private final outputBuf:[B


# direct methods
.method public constructor <init>(Lorg/ton/crypto/digest/Digest;)V
    .locals 1

    const-string v0, "digest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Lorg/ton/crypto/mac/hmac/HMacKt;->access$byteLength(Lorg/ton/crypto/digest/Digest;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/ton/crypto/mac/hmac/HMac;-><init>(Lorg/ton/crypto/digest/Digest;I)V

    return-void
.end method

.method private constructor <init>(Lorg/ton/crypto/digest/Digest;I)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/ton/crypto/mac/hmac/HMac;->digest:Lorg/ton/crypto/digest/Digest;

    .line 13
    iput p2, p0, Lorg/ton/crypto/mac/hmac/HMac;->blockLength:I

    .line 23
    invoke-interface {p1}, Lorg/ton/crypto/digest/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Lorg/ton/crypto/mac/hmac/HMac;->digestSize:I

    .line 24
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/ton/crypto/mac/hmac/HMac;->inputPad:[B

    add-int/2addr p2, p1

    .line 25
    new-array p1, p2, [B

    iput-object p1, p0, Lorg/ton/crypto/mac/hmac/HMac;->outputBuf:[B

    return-void
.end method


# virtual methods
.method public build([B)[B
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lorg/ton/crypto/mac/Mac$DefaultImpls;->build(Lorg/ton/crypto/mac/Mac;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public build([BI)[B
    .locals 3

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lorg/ton/crypto/mac/hmac/HMac;->digest:Lorg/ton/crypto/digest/Digest;

    iget-object v1, p0, Lorg/ton/crypto/mac/hmac/HMac;->outputBuf:[B

    iget v2, p0, Lorg/ton/crypto/mac/hmac/HMac;->blockLength:I

    invoke-interface {v0, v1, v2}, Lorg/ton/crypto/digest/Digest;->build([BI)[B

    .line 54
    iget-object v0, p0, Lorg/ton/crypto/mac/hmac/HMac;->digest:Lorg/ton/crypto/digest/Digest;

    iget-object v1, p0, Lorg/ton/crypto/mac/hmac/HMac;->outputBuf:[B

    invoke-interface {v0, v1}, Lorg/ton/crypto/digest/Digest;->update([B)V

    .line 55
    iget-object v0, p0, Lorg/ton/crypto/mac/hmac/HMac;->digest:Lorg/ton/crypto/digest/Digest;

    invoke-interface {v0, p1, p2}, Lorg/ton/crypto/digest/Digest;->build([BI)[B

    .line 56
    iget-object p2, p0, Lorg/ton/crypto/mac/hmac/HMac;->outputBuf:[B

    iget v0, p0, Lorg/ton/crypto/mac/hmac/HMac;->blockLength:I

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v1}, Lkotlin/collections/ArraysKt;->fill([BBII)V

    .line 57
    iget-object p2, p0, Lorg/ton/crypto/mac/hmac/HMac;->digest:Lorg/ton/crypto/digest/Digest;

    iget-object v0, p0, Lorg/ton/crypto/mac/hmac/HMac;->inputPad:[B

    invoke-interface {p2, v0}, Lorg/ton/crypto/digest/Digest;->update([B)V

    return-object p1
.end method

.method public getMacSize()I
    .locals 1

    .line 21
    iget v0, p0, Lorg/ton/crypto/mac/hmac/HMac;->digestSize:I

    return v0
.end method

.method public init([B)Lorg/ton/crypto/mac/hmac/HMac;
    .locals 10

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lorg/ton/crypto/mac/hmac/HMac;->digest:Lorg/ton/crypto/digest/Digest;

    invoke-interface {v0}, Lorg/ton/crypto/digest/Digest;->reset()V

    .line 29
    array-length v0, p1

    .line 31
    iget v1, p0, Lorg/ton/crypto/mac/hmac/HMac;->blockLength:I

    if-le v0, v1, :cond_0

    .line 32
    iget-object v0, p0, Lorg/ton/crypto/mac/hmac/HMac;->digest:Lorg/ton/crypto/digest/Digest;

    invoke-interface {v0, p1}, Lorg/ton/crypto/digest/Digest;->update([B)V

    .line 33
    iget-object p1, p0, Lorg/ton/crypto/mac/hmac/HMac;->digest:Lorg/ton/crypto/digest/Digest;

    iget-object v0, p0, Lorg/ton/crypto/mac/hmac/HMac;->inputPad:[B

    invoke-interface {p1, v0}, Lorg/ton/crypto/digest/Digest;->build([B)[B

    .line 34
    iget v0, p0, Lorg/ton/crypto/mac/hmac/HMac;->digestSize:I

    goto :goto_0

    .line 36
    :cond_0
    iget-object v2, p0, Lorg/ton/crypto/mac/hmac/HMac;->inputPad:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 39
    :goto_0
    iget-object p1, p0, Lorg/ton/crypto/mac/hmac/HMac;->inputPad:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lkotlin/collections/ArraysKt;->fill([BBII)V

    .line 40
    iget-object v3, p0, Lorg/ton/crypto/mac/hmac/HMac;->inputPad:[B

    iget-object v4, p0, Lorg/ton/crypto/mac/hmac/HMac;->outputBuf:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 42
    iget-object p1, p0, Lorg/ton/crypto/mac/hmac/HMac;->inputPad:[B

    iget v0, p0, Lorg/ton/crypto/mac/hmac/HMac;->blockLength:I

    const/16 v1, 0x36

    invoke-static {p1, v2, v0, v1}, Lorg/ton/crypto/mac/hmac/HMacKt;->access$xorPad([BIIB)V

    .line 43
    iget-object p1, p0, Lorg/ton/crypto/mac/hmac/HMac;->outputBuf:[B

    iget v0, p0, Lorg/ton/crypto/mac/hmac/HMac;->blockLength:I

    const/16 v1, 0x5c

    invoke-static {p1, v2, v0, v1}, Lorg/ton/crypto/mac/hmac/HMacKt;->access$xorPad([BIIB)V

    .line 45
    iget-object p1, p0, Lorg/ton/crypto/mac/hmac/HMac;->digest:Lorg/ton/crypto/digest/Digest;

    iget-object v0, p0, Lorg/ton/crypto/mac/hmac/HMac;->inputPad:[B

    invoke-interface {p1, v0}, Lorg/ton/crypto/digest/Digest;->update([B)V

    return-object p0
.end method

.method public plusAssign([B)V
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lorg/ton/crypto/mac/Mac$DefaultImpls;->plusAssign(Lorg/ton/crypto/mac/Mac;[B)V

    return-void
.end method

.method public update([B)V
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lorg/ton/crypto/mac/Mac$DefaultImpls;->update(Lorg/ton/crypto/mac/Mac;[B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lorg/ton/crypto/mac/hmac/HMac;->digest:Lorg/ton/crypto/digest/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/ton/crypto/digest/Digest;->update([BII)V

    return-void
.end method
