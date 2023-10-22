.class public final Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;
.super Ljava/lang/Object;
.source "WalletTokenBalanceDb.kt"


# instance fields
.field private final address:Ljava/lang/String;

.field private final avatarUrl:Ljava/lang/String;

.field private final decimals:I

.field private final isCoin:Z

.field private final name:Ljava/lang/String;

.field private final networkId:Ljava/lang/String;

.field private final ratePercentageChange24h:D

.field private final rateToFiatSymbol:Ljava/lang/String;

.field private final rateToFiatTicker:Ljava/lang/String;

.field private final rateToFiatValue:D

.field private final tgUserId:J

.field private final ticker:Ljava/lang/String;

.field private final total:D

.field private final totalInFiatSymbol:Ljava/lang/String;

.field private final totalInFiatTicker:Ljava/lang/String;

.field private final totalInFiatValue:D

.field private final website:Ljava/lang/String;


# direct methods
.method public constructor <init>(JDDLjava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p11

    move-object/from16 v4, p12

    move-object/from16 v5, p15

    move-object/from16 v6, p16

    move-object/from16 v7, p17

    move-object/from16 v8, p19

    move-object/from16 v9, p21

    move-object/from16 v10, p22

    const-string v11, "totalInFiatSymbol"

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "totalInFiatTicker"

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "rateToFiatSymbol"

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "rateToFiatTicker"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "address"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "networkId"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "avatarUrl"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "ticker"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "name"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "website"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v11, p1

    .line 7
    iput-wide v11, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->tgUserId:J

    move-wide/from16 v11, p3

    .line 8
    iput-wide v11, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->total:D

    move-wide/from16 v11, p5

    .line 9
    iput-wide v11, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInFiatValue:D

    .line 10
    iput-object v1, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInFiatSymbol:Ljava/lang/String;

    .line 11
    iput-object v2, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInFiatTicker:Ljava/lang/String;

    move-wide/from16 v1, p9

    .line 12
    iput-wide v1, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToFiatValue:D

    .line 13
    iput-object v3, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToFiatSymbol:Ljava/lang/String;

    .line 14
    iput-object v4, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToFiatTicker:Ljava/lang/String;

    move-wide/from16 v1, p13

    .line 15
    iput-wide v1, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->ratePercentageChange24h:D

    .line 16
    iput-object v5, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->address:Ljava/lang/String;

    .line 17
    iput-object v6, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->networkId:Ljava/lang/String;

    .line 18
    iput-object v7, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->avatarUrl:Ljava/lang/String;

    move/from16 v1, p18

    .line 19
    iput v1, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->decimals:I

    .line 20
    iput-object v8, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->ticker:Ljava/lang/String;

    move/from16 v1, p20

    .line 21
    iput-boolean v1, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->isCoin:Z

    .line 22
    iput-object v9, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->name:Ljava/lang/String;

    .line 23
    iput-object v10, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->website:Ljava/lang/String;

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
    iget-wide v3, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->total:D

    iget-wide v5, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->total:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInFiatValue:D

    iget-wide v5, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInFiatValue:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInFiatSymbol:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInFiatSymbol:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInFiatTicker:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInFiatTicker:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToFiatValue:D

    iget-wide v5, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToFiatValue:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToFiatSymbol:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToFiatSymbol:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToFiatTicker:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToFiatTicker:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->ratePercentageChange24h:D

    iget-wide v5, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->ratePercentageChange24h:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->address:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->address:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->networkId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->networkId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->avatarUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->avatarUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->decimals:I

    iget v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->decimals:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->ticker:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->ticker:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->isCoin:Z

    iget-boolean v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->isCoin:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->website:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->website:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDecimals()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->decimals:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->networkId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRatePercentageChange24h()D
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->ratePercentageChange24h:D

    return-wide v0
.end method

.method public final getRateToFiatSymbol()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToFiatSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public final getRateToFiatTicker()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToFiatTicker:Ljava/lang/String;

    return-object v0
.end method

.method public final getRateToFiatValue()D
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToFiatValue:D

    return-wide v0
.end method

.method public final getTgUserId()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->tgUserId:J

    return-wide v0
.end method

.method public final getTicker()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->ticker:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotal()D
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->total:D

    return-wide v0
.end method

.method public final getTotalInFiatSymbol()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInFiatSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalInFiatTicker()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInFiatTicker:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalInFiatValue()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInFiatValue:D

    return-wide v0
.end method

.method public final getWebsite()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->website:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->tgUserId:J

    invoke-static {v0, v1}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->total:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInFiatValue:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInFiatSymbol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInFiatTicker:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToFiatValue:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToFiatSymbol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToFiatTicker:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->ratePercentageChange24h:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->networkId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->decimals:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->ticker:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->isCoin:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->website:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isCoin()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->isCoin:Z

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

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->total:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", totalInFiatValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInFiatValue:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", totalInFiatSymbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInFiatSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalInFiatTicker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->totalInFiatTicker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rateToFiatValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToFiatValue:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", rateToFiatSymbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToFiatSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rateToFiatTicker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->rateToFiatTicker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ratePercentageChange24h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->ratePercentageChange24h:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->networkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", avatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", decimals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->decimals:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ticker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->ticker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isCoin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->isCoin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", website="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->website:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
