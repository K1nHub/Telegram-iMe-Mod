.class public final Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;
.super Ljava/lang/Object;
.source "OutputConvertToken.kt"


# instance fields
.field private final maxLimit:D

.field private final minLimit:D

.field private final tokenInfo:Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;DD)V
    .locals 1

    const-string v0, "tokenInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->tokenInfo:Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;

    .line 5
    iput-wide p2, p0, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->minLimit:D

    .line 6
    iput-wide p4, p0, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->maxLimit:D

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;DDILjava/lang/Object;)Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;
    .locals 2

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->tokenInfo:Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-wide p2, p0, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->minLimit:D

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-wide p4, p0, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->maxLimit:D

    :cond_2
    move-wide p6, p4

    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    invoke-virtual/range {p2 .. p7}, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->copy(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;DD)Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->tokenInfo:Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;

    return-object v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->minLimit:D

    return-wide v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->maxLimit:D

    return-wide v0
.end method

.method public final copy(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;DD)Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;
    .locals 7

    const-string v0, "tokenInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;-><init>(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;DD)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->tokenInfo:Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->tokenInfo:Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->minLimit:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->minLimit:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->maxLimit:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->maxLimit:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getMaxLimit()D
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->maxLimit:D

    return-wide v0
.end method

.method public final getMinLimit()D
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->minLimit:D

    return-wide v0
.end method

.method public final getTokenInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->tokenInfo:Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->tokenInfo:Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->minLimit:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->maxLimit:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OutputConvertToken(tokenInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->tokenInfo:Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->minLimit:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", maxLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;->maxLimit:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
