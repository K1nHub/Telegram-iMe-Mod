.class public final Lcom/iMe/storage/domain/model/wallet/PriceRate;
.super Ljava/lang/Object;
.source "PriceRate.kt"


# instance fields
.field private final ratePercentageChange24h:F

.field private final rateToDollars:D


# direct methods
.method public constructor <init>(DF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/iMe/storage/domain/model/wallet/PriceRate;->rateToDollars:D

    .line 5
    iput p3, p0, Lcom/iMe/storage/domain/model/wallet/PriceRate;->ratePercentageChange24h:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/wallet/PriceRate;DFILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/PriceRate;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lcom/iMe/storage/domain/model/wallet/PriceRate;->rateToDollars:D

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget p3, p0, Lcom/iMe/storage/domain/model/wallet/PriceRate;->ratePercentageChange24h:F

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/domain/model/wallet/PriceRate;->copy(DF)Lcom/iMe/storage/domain/model/wallet/PriceRate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/wallet/PriceRate;->rateToDollars:D

    return-wide v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/PriceRate;->ratePercentageChange24h:F

    return v0
.end method

.method public final copy(DF)Lcom/iMe/storage/domain/model/wallet/PriceRate;
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/PriceRate;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/storage/domain/model/wallet/PriceRate;-><init>(DF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/wallet/PriceRate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/wallet/PriceRate;

    iget-wide v3, p0, Lcom/iMe/storage/domain/model/wallet/PriceRate;->rateToDollars:D

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/wallet/PriceRate;->rateToDollars:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/iMe/storage/domain/model/wallet/PriceRate;->ratePercentageChange24h:F

    iget p1, p1, Lcom/iMe/storage/domain/model/wallet/PriceRate;->ratePercentageChange24h:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getRatePercentageChange24h()F
    .locals 1

    .line 5
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/PriceRate;->ratePercentageChange24h:F

    return v0
.end method

.method public final getRateToDollars()D
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/wallet/PriceRate;->rateToDollars:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/wallet/PriceRate;->rateToDollars:D

    invoke-static {v0, v1}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/domain/model/wallet/PriceRate;->ratePercentageChange24h:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PriceRate(rateToDollars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/wallet/PriceRate;->rateToDollars:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", ratePercentageChange24h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/wallet/PriceRate;->ratePercentageChange24h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
