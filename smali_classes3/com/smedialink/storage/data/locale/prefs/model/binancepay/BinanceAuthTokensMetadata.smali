.class public final Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;
.super Ljava/lang/Object;
.source "BinanceAuthTokensMetadata.kt"


# instance fields
.field private final authTokens:Lcom/smedialink/storage/domain/model/binancepay/BinanceAuthTokens;

.field private final updateTimestamp:J


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/model/binancepay/BinanceAuthTokens;J)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;->authTokens:Lcom/smedialink/storage/domain/model/binancepay/BinanceAuthTokens;

    .line 7
    iput-wide p2, p0, Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;->updateTimestamp:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;

    iget-object v1, p0, Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;->authTokens:Lcom/smedialink/storage/domain/model/binancepay/BinanceAuthTokens;

    iget-object v3, p1, Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;->authTokens:Lcom/smedialink/storage/domain/model/binancepay/BinanceAuthTokens;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;->updateTimestamp:J

    iget-wide v5, p1, Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;->updateTimestamp:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAuthTokens()Lcom/smedialink/storage/domain/model/binancepay/BinanceAuthTokens;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;->authTokens:Lcom/smedialink/storage/domain/model/binancepay/BinanceAuthTokens;

    return-object v0
.end method

.method public final getUpdateTimestamp()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;->updateTimestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;->authTokens:Lcom/smedialink/storage/domain/model/binancepay/BinanceAuthTokens;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceAuthTokens;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;->updateTimestamp:J

    invoke-static {v1, v2}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BinanceAuthTokensMetadata(authTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;->authTokens:Lcom/smedialink/storage/domain/model/binancepay/BinanceAuthTokens;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updateTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;->updateTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
