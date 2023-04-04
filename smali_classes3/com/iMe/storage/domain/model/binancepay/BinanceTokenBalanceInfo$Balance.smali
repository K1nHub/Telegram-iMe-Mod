.class public final Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;
.super Ljava/lang/Object;
.source "BinanceTokenBalanceInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Balance"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance$Companion;


# instance fields
.field private final btcValuation:D

.field private final fiatValuation:D

.field private final free:D

.field private final freeze:D

.field private final locked:D

.field private final total:D

.field private final withdrawing:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->Companion:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance$Companion;

    return-void
.end method

.method public constructor <init>(DDDDDDD)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->total:D

    .line 21
    iput-wide p3, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->free:D

    .line 22
    iput-wide p5, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->locked:D

    .line 23
    iput-wide p7, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->freeze:D

    .line 24
    iput-wide p9, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->withdrawing:D

    .line 25
    iput-wide p11, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->btcValuation:D

    .line 26
    iput-wide p13, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->fiatValuation:D

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;DDDDDDDILjava/lang/Object;)Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;
    .locals 15

    move-object v0, p0

    and-int/lit8 v1, p15, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->total:D

    goto :goto_0

    :cond_0
    move-wide/from16 v1, p1

    :goto_0
    and-int/lit8 v3, p15, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->free:D

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p3

    :goto_1
    and-int/lit8 v5, p15, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->locked:D

    goto :goto_2

    :cond_2
    move-wide/from16 v5, p5

    :goto_2
    and-int/lit8 v7, p15, 0x8

    if-eqz v7, :cond_3

    iget-wide v7, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->freeze:D

    goto :goto_3

    :cond_3
    move-wide/from16 v7, p7

    :goto_3
    and-int/lit8 v9, p15, 0x10

    if-eqz v9, :cond_4

    iget-wide v9, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->withdrawing:D

    goto :goto_4

    :cond_4
    move-wide/from16 v9, p9

    :goto_4
    and-int/lit8 v11, p15, 0x20

    if-eqz v11, :cond_5

    iget-wide v11, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->btcValuation:D

    goto :goto_5

    :cond_5
    move-wide/from16 v11, p11

    :goto_5
    and-int/lit8 v13, p15, 0x40

    if-eqz v13, :cond_6

    iget-wide v13, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->fiatValuation:D

    goto :goto_6

    :cond_6
    move-wide/from16 v13, p13

    :goto_6
    move-wide/from16 p1, v1

    move-wide/from16 p3, v3

    move-wide/from16 p5, v5

    move-wide/from16 p7, v7

    move-wide/from16 p9, v9

    move-wide/from16 p11, v11

    move-wide/from16 p13, v13

    invoke-virtual/range {p0 .. p14}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->copy(DDDDDDD)Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->total:D

    return-wide v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->free:D

    return-wide v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->locked:D

    return-wide v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->freeze:D

    return-wide v0
.end method

.method public final component5()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->withdrawing:D

    return-wide v0
.end method

.method public final component6()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->btcValuation:D

    return-wide v0
.end method

.method public final component7()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->fiatValuation:D

    return-wide v0
.end method

.method public final copy(DDDDDDD)Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;
    .locals 16

    new-instance v15, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-object v0, v15

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;-><init>(DDDDDDD)V

    return-object v15
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    iget-wide v3, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->total:D

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->total:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->free:D

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->free:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->locked:D

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->locked:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->freeze:D

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->freeze:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->withdrawing:D

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->withdrawing:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->btcValuation:D

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->btcValuation:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->fiatValuation:D

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->fiatValuation:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getBtcValuation()D
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->btcValuation:D

    return-wide v0
.end method

.method public final getFiatValuation()D
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->fiatValuation:D

    return-wide v0
.end method

.method public final getFree()D
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->free:D

    return-wide v0
.end method

.method public final getFreeze()D
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->freeze:D

    return-wide v0
.end method

.method public final getLocked()D
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->locked:D

    return-wide v0
.end method

.method public final getTotal()D
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->total:D

    return-wide v0
.end method

.method public final getWithdrawing()D
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->withdrawing:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->total:D

    invoke-static {v0, v1}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->free:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->locked:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->freeze:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->withdrawing:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->btcValuation:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->fiatValuation:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Balance(total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->total:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", free="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->free:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", locked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->locked:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", freeze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->freeze:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", withdrawing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->withdrawing:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", btcValuation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->btcValuation:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", fiatValuation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->fiatValuation:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
