.class public final Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;
.super Ljava/lang/Object;
.source "TokenBalanceResponse.kt"


# instance fields
.field private final ratePercentageChange24h:Ljava/lang/Double;

.field private final rateToFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

.field private final token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

.field private final total:D

.field private final totalInFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;


# direct methods
.method public constructor <init>(DLcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;Ljava/lang/Double;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)V
    .locals 1

    const-string v0, "totalInFiat"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rateToFiat"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->total:D

    .line 5
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->totalInFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    .line 6
    iput-object p4, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->rateToFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    .line 7
    iput-object p5, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->ratePercentageChange24h:Ljava/lang/Double;

    .line 8
    iput-object p6, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;DLcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;Ljava/lang/Double;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->total:D

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->totalInFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-object p4, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->rateToFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget-object p5, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->ratePercentageChange24h:Ljava/lang/Double;

    :cond_3
    move-object v5, p5

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    iget-object p6, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    :cond_4
    move-object v6, p6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->copy(DLcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;Ljava/lang/Double;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->total:D

    return-wide v0
.end method

.method public final component2()Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->totalInFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->rateToFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    return-object v0
.end method

.method public final component4()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->ratePercentageChange24h:Ljava/lang/Double;

    return-object v0
.end method

.method public final component5()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-object v0
.end method

.method public final copy(DLcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;Ljava/lang/Double;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;
    .locals 8

    const-string v0, "totalInFiat"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rateToFiat"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;-><init>(DLcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;Ljava/lang/Double;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;

    iget-wide v3, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->total:D

    iget-wide v5, p1, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->total:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->totalInFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->totalInFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->rateToFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->rateToFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->ratePercentageChange24h:Ljava/lang/Double;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->ratePercentageChange24h:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getRatePercentageChange24h()Ljava/lang/Double;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->ratePercentageChange24h:Ljava/lang/Double;

    return-object v0
.end method

.method public final getRateToFiat()Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->rateToFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    return-object v0
.end method

.method public final getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-object v0
.end method

.method public final getTotal()D
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->total:D

    return-wide v0
.end method

.method public final getTotalInFiat()Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->totalInFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->total:D

    invoke-static {v0, v1}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->totalInFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->rateToFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->ratePercentageChange24h:Ljava/lang/Double;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenBalanceResponse(total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->total:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", totalInFiat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->totalInFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rateToFiat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->rateToFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ratePercentageChange24h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->ratePercentageChange24h:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
