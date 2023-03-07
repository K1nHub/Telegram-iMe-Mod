.class public final Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;
.super Ljava/lang/Object;
.source "TokenBalanceResponse.kt"


# instance fields
.field private final coinCode:Ljava/lang/String;

.field private final networkType:Ljava/lang/String;

.field private final ratePercentageChange24h:Ljava/lang/Float;

.field private final rateToDollars:D

.field private final total:D

.field private final totalInDollars:F


# direct methods
.method public constructor <init>(Ljava/lang/String;DFDLjava/lang/Float;Ljava/lang/String;)V
    .locals 1

    const-string v0, "coinCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->coinCode:Ljava/lang/String;

    .line 6
    iput-wide p2, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->total:D

    .line 7
    iput p4, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->totalInDollars:F

    .line 8
    iput-wide p5, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->rateToDollars:D

    .line 9
    iput-object p7, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->ratePercentageChange24h:Ljava/lang/Float;

    .line 10
    iput-object p8, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->networkType:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;Ljava/lang/String;DFDLjava/lang/Float;Ljava/lang/String;ILjava/lang/Object;)Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->coinCode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->total:D

    goto :goto_1

    :cond_1
    move-wide v2, p2

    :goto_1
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->totalInDollars:F

    goto :goto_2

    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->rateToDollars:D

    goto :goto_3

    :cond_3
    move-wide v5, p5

    :goto_3
    and-int/lit8 v7, p9, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->ratePercentageChange24h:Ljava/lang/Float;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p7

    :goto_4
    and-int/lit8 v8, p9, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->networkType:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p8

    :goto_5
    move-object p1, v1

    move-wide p2, v2

    move p4, v4

    move-wide p5, v5

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->copy(Ljava/lang/String;DFDLjava/lang/Float;Ljava/lang/String;)Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->coinCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->total:D

    return-wide v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->totalInDollars:F

    return v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->rateToDollars:D

    return-wide v0
.end method

.method public final component5()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->ratePercentageChange24h:Ljava/lang/Float;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;DFDLjava/lang/Float;Ljava/lang/String;)Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;
    .locals 10

    const-string v0, "coinCode"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;

    move-object v1, v0

    move-wide v3, p2

    move v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;-><init>(Ljava/lang/String;DFDLjava/lang/Float;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->coinCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->coinCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->total:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->total:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->totalInDollars:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->totalInDollars:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->rateToDollars:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->rateToDollars:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->ratePercentageChange24h:Ljava/lang/Float;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->ratePercentageChange24h:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->networkType:Ljava/lang/String;

    iget-object p1, p1, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->networkType:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCoinCode()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->coinCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final getRatePercentageChange24h()Ljava/lang/Float;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->ratePercentageChange24h:Ljava/lang/Float;

    return-object v0
.end method

.method public final getRateToDollars()D
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->rateToDollars:D

    return-wide v0
.end method

.method public final getTotal()D
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->total:D

    return-wide v0
.end method

.method public final getTotalInDollars()F
    .locals 1

    .line 7
    iget v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->totalInDollars:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->coinCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->total:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->totalInDollars:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->rateToDollars:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->ratePercentageChange24h:Ljava/lang/Float;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->networkType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenBalanceResponse(coinCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->coinCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->total:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", totalInDollars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->totalInDollars:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rateToDollars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->rateToDollars:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", ratePercentageChange24h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->ratePercentageChange24h:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->networkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
