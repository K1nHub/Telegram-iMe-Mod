.class public final Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;
.super Lorg/ton/crypto/kdf/PBEParametersGenerator;
.source "PKCSS2ParametersGenerator.kt"


# instance fields
.field private final hMac:Lorg/ton/crypto/mac/hmac/HMac;

.field private final state:[B


# direct methods
.method public constructor <init>(Lorg/ton/crypto/digest/Digest;)V
    .locals 3

    const-string v0, "digest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v1, v0, [B

    new-array v2, v0, [B

    .line 20
    invoke-direct {p0, p1, v1, v2, v0}, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;-><init>(Lorg/ton/crypto/digest/Digest;[B[BI)V

    return-void
.end method

.method public constructor <init>(Lorg/ton/crypto/digest/Digest;[B[BI)V
    .locals 1

    const-string v0, "digest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "salt"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lorg/ton/crypto/mac/hmac/HMac;

    invoke-direct {v0, p1}, Lorg/ton/crypto/mac/hmac/HMac;-><init>(Lorg/ton/crypto/digest/Digest;)V

    .line 12
    invoke-direct {p0, v0, p2, p3, p4}, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;-><init>(Lorg/ton/crypto/mac/hmac/HMac;[B[BI)V

    return-void
.end method

.method public constructor <init>(Lorg/ton/crypto/mac/hmac/HMac;)V
    .locals 3

    const-string v0, "hMac"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v1, v0, [B

    new-array v2, v0, [B

    .line 19
    invoke-direct {p0, p1, v1, v2, v0}, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;-><init>(Lorg/ton/crypto/mac/hmac/HMac;[B[BI)V

    return-void
.end method

.method public constructor <init>(Lorg/ton/crypto/mac/hmac/HMac;[B[BI)V
    .locals 1

    const-string v0, "hMac"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "salt"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p2, p3, p4}, Lorg/ton/crypto/kdf/PBEParametersGenerator;-><init>([B[BI)V

    .line 7
    iput-object p1, p0, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;->hMac:Lorg/ton/crypto/mac/hmac/HMac;

    .line 22
    invoke-virtual {p1}, Lorg/ton/crypto/mac/hmac/HMac;->getMacSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;->state:[B

    return-void
.end method

.method private final f([BI[B[BI)V
    .locals 10

    .line 57
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;->hMac:Lorg/ton/crypto/mac/hmac/HMac;

    invoke-virtual {v0, p1}, Lorg/ton/crypto/mac/hmac/HMac;->update([B)V

    .line 60
    :cond_1
    iget-object p1, p0, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;->hMac:Lorg/ton/crypto/mac/hmac/HMac;

    invoke-virtual {p1, p3}, Lorg/ton/crypto/mac/hmac/HMac;->update([B)V

    .line 61
    iget-object p1, p0, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;->hMac:Lorg/ton/crypto/mac/hmac/HMac;

    iget-object p3, p0, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;->state:[B

    invoke-virtual {p1, p3}, Lorg/ton/crypto/mac/hmac/HMac;->build([B)[B

    .line 63
    iget-object v3, p0, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;->state:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v4, p4

    move v5, p5

    invoke-static/range {v3 .. v9}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    :goto_1
    if-ge v2, p2, :cond_3

    .line 66
    iget-object p1, p0, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;->hMac:Lorg/ton/crypto/mac/hmac/HMac;

    iget-object p3, p0, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;->state:[B

    invoke-virtual {p1, p3}, Lorg/ton/crypto/mac/hmac/HMac;->update([B)V

    .line 67
    iget-object p1, p0, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;->hMac:Lorg/ton/crypto/mac/hmac/HMac;

    iget-object p3, p0, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;->state:[B

    invoke-virtual {p1, p3}, Lorg/ton/crypto/mac/hmac/HMac;->build([B)[B

    .line 68
    iget-object p1, p0, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;->state:[B

    array-length p1, p1

    move p3, v1

    :goto_2
    if-ge p3, p1, :cond_2

    add-int v0, p5, p3

    .line 69
    aget-byte v3, p4, v0

    iget-object v4, p0, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;->state:[B

    aget-byte v4, v4, p3

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private final generateDerivedKey(I)[B
    .locals 13

    .line 31
    iget-object v0, p0, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;->hMac:Lorg/ton/crypto/mac/hmac/HMac;

    invoke-virtual {v0}, Lorg/ton/crypto/mac/hmac/HMac;->getMacSize()I

    move-result v0

    add-int/2addr p1, v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 32
    div-int/2addr p1, v0

    const/4 v2, 0x4

    new-array v2, v2, [B

    mul-int v3, p1, v0

    .line 34
    new-array v9, v3, [B

    .line 37
    iget-object v3, p0, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;->hMac:Lorg/ton/crypto/mac/hmac/HMac;

    invoke-virtual {p0}, Lorg/ton/crypto/kdf/PBEParametersGenerator;->getPassword()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/ton/crypto/mac/hmac/HMac;->init([B)Lorg/ton/crypto/mac/hmac/HMac;

    if-gt v1, p1, :cond_0

    const/4 v10, 0x0

    move v11, v1

    move v12, v10

    :goto_0
    ushr-int/lit8 v3, v11, 0x18

    int-to-byte v3, v3

    aput-byte v3, v2, v10

    ushr-int/lit8 v3, v11, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/4 v3, 0x2

    ushr-int/lit8 v4, v11, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    int-to-byte v4, v11

    aput-byte v4, v2, v3

    .line 43
    invoke-virtual {p0}, Lorg/ton/crypto/kdf/PBEParametersGenerator;->getSalt()[B

    move-result-object v4

    invoke-virtual {p0}, Lorg/ton/crypto/kdf/PBEParametersGenerator;->getIterationCount()I

    move-result v5

    move-object v3, p0

    move-object v6, v2

    move-object v7, v9

    move v8, v12

    invoke-direct/range {v3 .. v8}, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;->f([BI[B[BI)V

    add-int/2addr v12, v0

    if-eq v11, p1, :cond_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    return-object v9
.end method


# virtual methods
.method public generateDerivedParameters(I)[B
    .locals 0

    .line 25
    div-int/lit8 p1, p1, 0x8

    invoke-direct {p0, p1}, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object p1

    return-object p1
.end method
