.class public Lorg/web3j/crypto/Sign$SignatureData;
.super Ljava/lang/Object;
.source "Sign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/web3j/crypto/Sign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignatureData"
.end annotation


# instance fields
.field private final r:[B

.field private final s:[B

.field private final v:[B


# direct methods
.method public constructor <init>([B[B[B)V
    .locals 0

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lorg/web3j/crypto/Sign$SignatureData;->v:[B

    .line 317
    iput-object p2, p0, Lorg/web3j/crypto/Sign$SignatureData;->r:[B

    .line 318
    iput-object p3, p0, Lorg/web3j/crypto/Sign$SignatureData;->s:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 338
    const-class v1, Lorg/web3j/crypto/Sign$SignatureData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 342
    :cond_1
    check-cast p1, Lorg/web3j/crypto/Sign$SignatureData;

    .line 344
    iget-object v1, p0, Lorg/web3j/crypto/Sign$SignatureData;->v:[B

    iget-object v2, p1, Lorg/web3j/crypto/Sign$SignatureData;->v:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 347
    :cond_2
    iget-object v1, p0, Lorg/web3j/crypto/Sign$SignatureData;->r:[B

    iget-object v2, p1, Lorg/web3j/crypto/Sign$SignatureData;->r:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 350
    :cond_3
    iget-object v0, p0, Lorg/web3j/crypto/Sign$SignatureData;->s:[B

    iget-object p1, p1, Lorg/web3j/crypto/Sign$SignatureData;->s:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public getR()[B
    .locals 1

    .line 326
    iget-object v0, p0, Lorg/web3j/crypto/Sign$SignatureData;->r:[B

    return-object v0
.end method

.method public getS()[B
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/web3j/crypto/Sign$SignatureData;->s:[B

    return-object v0
.end method

.method public getV()[B
    .locals 1

    .line 322
    iget-object v0, p0, Lorg/web3j/crypto/Sign$SignatureData;->v:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 355
    iget-object v0, p0, Lorg/web3j/crypto/Sign$SignatureData;->v:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 356
    iget-object v1, p0, Lorg/web3j/crypto/Sign$SignatureData;->r:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 357
    iget-object v1, p0, Lorg/web3j/crypto/Sign$SignatureData;->s:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
