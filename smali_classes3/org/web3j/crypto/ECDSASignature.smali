.class public Lorg/web3j/crypto/ECDSASignature;
.super Ljava/lang/Object;
.source "ECDSASignature.java"


# instance fields
.field public final r:Ljava/math/BigInteger;

.field public final s:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/web3j/crypto/ECDSASignature;->r:Ljava/math/BigInteger;

    .line 24
    iput-object p2, p0, Lorg/web3j/crypto/ECDSASignature;->s:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public isCanonical()Z
    .locals 2

    .line 34
    iget-object v0, p0, Lorg/web3j/crypto/ECDSASignature;->s:Ljava/math/BigInteger;

    sget-object v1, Lorg/web3j/crypto/Sign;->HALF_CURVE_ORDER:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toCanonicalised()Lorg/web3j/crypto/ECDSASignature;
    .locals 4

    .line 48
    invoke-virtual {p0}, Lorg/web3j/crypto/ECDSASignature;->isCanonical()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lorg/web3j/crypto/ECDSASignature;

    iget-object v1, p0, Lorg/web3j/crypto/ECDSASignature;->r:Ljava/math/BigInteger;

    sget-object v2, Lorg/web3j/crypto/Sign;->CURVE:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/web3j/crypto/ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/web3j/crypto/ECDSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    return-object p0
.end method
