.class public final Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;
.super Ljava/lang/Object;
.source "BinancePayGetAuthTokensResponse.kt"


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final expiresIn:J

.field private final refreshToken:Ljava/lang/String;

.field private final scope:Ljava/lang/String;

.field private final tokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->accessToken:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->refreshToken:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->scope:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->tokenType:Ljava/lang/String;

    .line 8
    iput-wide p5, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->expiresIn:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->accessToken:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->refreshToken:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->scope:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->tokenType:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-wide p5, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->expiresIn:J

    :cond_4
    move-wide v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-wide p7, v2

    invoke-virtual/range {p2 .. p8}, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->tokenType:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->expiresIn:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;
    .locals 8

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->accessToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->accessToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->refreshToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->refreshToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->scope:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->scope:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->tokenType:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->tokenType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->expiresIn:J

    iget-wide v5, p1, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->expiresIn:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiresIn()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->expiresIn:J

    return-wide v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getScope()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokenType()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->tokenType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->accessToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->refreshToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->scope:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->tokenType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->expiresIn:J

    invoke-static {v1, v2}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BinancePayGetAuthTokensResponse(accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->scope:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->tokenType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expiresIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->expiresIn:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
