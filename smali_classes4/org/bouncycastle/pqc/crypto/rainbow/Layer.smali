.class public Lorg/bouncycastle/pqc/crypto/rainbow/Layer;
.super Ljava/lang/Object;


# instance fields
.field private coeff_alpha:[[[S

.field private coeff_beta:[[[S

.field private coeff_eta:[S

.field private coeff_gamma:[[S

.field private oi:I

.field private vi:I

.field private viNext:I


# direct methods
.method public constructor <init>(BB[[[S[[[S[[S[S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->viNext:I

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_alpha:[[[S

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_beta:[[[S

    iput-object p5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_gamma:[[S

    iput-object p6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_eta:[S

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getVi()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->viNext:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getViNext()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getOi()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_alpha:[[[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getCoeffAlpha()[[[S

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([[[S[[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_beta:[[[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getCoeffBeta()[[[S

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([[[S[[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_gamma:[[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getCoeffGamma()[[S

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([[S[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_eta:[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getCoeffEta()[S

    move-result-object p1

    invoke-static {v1, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([S[S)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getCoeffAlpha()[[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_alpha:[[[S

    return-object v0
.end method

.method public getCoeffBeta()[[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_beta:[[[S

    return-object v0
.end method

.method public getCoeffEta()[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_eta:[S

    return-object v0
.end method

.method public getCoeffGamma()[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_gamma:[[S

    return-object v0
.end method

.method public getOi()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    return v0
.end method

.method public getVi()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    return v0
.end method

.method public getViNext()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->viNext:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->vi:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->viNext:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->oi:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_alpha:[[[S

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([[[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_beta:[[[S

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([[[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_gamma:[[S

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->coeff_eta:[S

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([S)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
