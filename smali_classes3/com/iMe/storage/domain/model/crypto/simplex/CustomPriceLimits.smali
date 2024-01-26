.class public final Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;
.super Ljava/lang/Object;
.source "CustomPriceLimits.kt"


# instance fields
.field private final maxCryptoAmount:F

.field private final maxFiatAmount:F

.field private final minCryptoAmount:F

.field private final minFiatAmount:F


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->minFiatAmount:F

    .line 5
    iput p2, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->minCryptoAmount:F

    .line 6
    iput p3, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->maxFiatAmount:F

    .line 7
    iput p4, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->maxCryptoAmount:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    .line 3
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;-><init>(FFFF)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;FFFFILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->minFiatAmount:F

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->minCryptoAmount:F

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->maxFiatAmount:F

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->maxCryptoAmount:F

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->copy(FFFF)Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->minFiatAmount:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->minCryptoAmount:F

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->maxFiatAmount:F

    return v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->maxCryptoAmount:F

    return v0
.end method

.method public final copy(FFFF)Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;-><init>(FFFF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->minFiatAmount:F

    iget v3, p1, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->minFiatAmount:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->minCryptoAmount:F

    iget v3, p1, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->minCryptoAmount:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->maxFiatAmount:F

    iget v3, p1, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->maxFiatAmount:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->maxCryptoAmount:F

    iget p1, p1, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->maxCryptoAmount:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getMaxCryptoAmount()F
    .locals 1

    .line 7
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->maxCryptoAmount:F

    return v0
.end method

.method public final getMaxFiatAmount()F
    .locals 1

    .line 6
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->maxFiatAmount:F

    return v0
.end method

.method public final getMinCryptoAmount()F
    .locals 1

    .line 5
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->minCryptoAmount:F

    return v0
.end method

.method public final getMinFiatAmount()F
    .locals 1

    .line 4
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->minFiatAmount:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->minFiatAmount:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->minCryptoAmount:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->maxFiatAmount:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->maxCryptoAmount:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomPriceLimits(minFiatAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->minFiatAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minCryptoAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->minCryptoAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxFiatAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->maxFiatAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxCryptoAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->maxCryptoAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
