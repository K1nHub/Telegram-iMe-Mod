.class public final Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;
.super Ljava/lang/Object;
.source "WalletTokenBalanceDb.kt"


# instance fields
.field private final coinCode:Ljava/lang/String;

.field private final networkType:Ljava/lang/String;

.field private final ratePercentageChange24h:F

.field private final rateToDollars:D

.field private final tgUserId:J

.field private final total:D

.field private final totalInDollars:F


# direct methods
.method public constructor <init>(JLjava/lang/String;DFDFLjava/lang/String;)V
    .locals 1

    const-string v0, "coinCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->tgUserId:J

    .line 8
    iput-object p3, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->coinCode:Ljava/lang/String;

    .line 9
    iput-wide p4, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->total:D

    .line 10
    iput p6, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInDollars:F

    .line 11
    iput-wide p7, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToDollars:D

    .line 12
    iput p9, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->ratePercentageChange24h:F

    .line 13
    iput-object p10, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->networkType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;

    iget-wide v3, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->tgUserId:J

    iget-wide v5, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->tgUserId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->coinCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->coinCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->total:D

    iget-wide v5, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->total:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInDollars:F

    iget v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInDollars:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToDollars:D

    iget-wide v5, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToDollars:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->ratePercentageChange24h:F

    iget v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->ratePercentageChange24h:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->networkType:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->networkType:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getCoinCode()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->coinCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final getRatePercentageChange24h()F
    .locals 1

    .line 12
    iget v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->ratePercentageChange24h:F

    return v0
.end method

.method public final getRateToDollars()D
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToDollars:D

    return-wide v0
.end method

.method public final getTgUserId()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->tgUserId:J

    return-wide v0
.end method

.method public final getTotal()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->total:D

    return-wide v0
.end method

.method public final getTotalInDollars()F
    .locals 1

    .line 10
    iget v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInDollars:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->tgUserId:J

    invoke-static {v0, v1}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->coinCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->total:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInDollars:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToDollars:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->ratePercentageChange24h:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->networkType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WalletTokenBalanceDb(tgUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->tgUserId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", coinCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->coinCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->total:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", totalInDollars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInDollars:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rateToDollars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToDollars:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", ratePercentageChange24h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->ratePercentageChange24h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->networkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
