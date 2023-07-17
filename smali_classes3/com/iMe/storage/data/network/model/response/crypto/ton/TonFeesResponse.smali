.class public final Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;
.super Ljava/lang/Object;
.source "TonFeesResponse.kt"


# instance fields
.field private final duration:F

.field private final fee:D

.field private final feeInDollars:D


# direct methods
.method public constructor <init>(FDD)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->duration:F

    .line 5
    iput-wide p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->fee:D

    .line 6
    iput-wide p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->feeInDollars:D

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;FDDILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;
    .locals 2

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->duration:F

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-wide p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->fee:D

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-wide p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->feeInDollars:D

    :cond_2
    move-wide p6, p4

    move-object p2, p0

    move p3, p1

    move-wide p4, v0

    invoke-virtual/range {p2 .. p7}, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->copy(FDD)Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->duration:F

    return v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->fee:D

    return-wide v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->feeInDollars:D

    return-wide v0
.end method

.method public final copy(FDD)Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;
    .locals 7

    new-instance v6, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;

    move-object v0, v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;-><init>(FDD)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->duration:F

    iget v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->duration:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->fee:D

    iget-wide v5, p1, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->fee:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->feeInDollars:D

    iget-wide v5, p1, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->feeInDollars:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDuration()F
    .locals 1

    .line 4
    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->duration:F

    return v0
.end method

.method public final getFee()D
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->fee:D

    return-wide v0
.end method

.method public final getFeeInDollars()D
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->feeInDollars:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->duration:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->fee:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->feeInDollars:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TonFeesResponse(duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->duration:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->fee:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", feeInDollars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->feeInDollars:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
