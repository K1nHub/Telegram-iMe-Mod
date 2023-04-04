.class public final Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;
.super Ljava/lang/Object;
.source "BinanceAuthTokens.kt"


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final accessTokenExpiresIn:J

.field private final authType:Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

.field private final refreshToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;)V
    .locals 1

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->accessToken:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->refreshToken:Ljava/lang/String;

    .line 6
    iput-wide p3, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->accessTokenExpiresIn:J

    .line 7
    iput-object p5, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->authType:Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;Ljava/lang/String;Ljava/lang/String;JLcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->accessToken:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->refreshToken:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-wide p3, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->accessTokenExpiresIn:J

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p5, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->authType:Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    :cond_3
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-wide p5, v0

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->copy(Ljava/lang/String;Ljava/lang/String;JLcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;)Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->accessTokenExpiresIn:J

    return-wide v0
.end method

.method public final component4()Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->authType:Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;)Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;
    .locals 7

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->accessToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->accessToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->refreshToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->refreshToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->accessTokenExpiresIn:J

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->accessTokenExpiresIn:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->authType:Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->authType:Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getAccessTokenExpiresIn()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->accessTokenExpiresIn:J

    return-wide v0
.end method

.method public final getAuthType()Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->authType:Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    return-object v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->accessToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->refreshToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->accessTokenExpiresIn:J

    invoke-static {v1, v2}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->authType:Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BinanceAuthTokens(accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", accessTokenExpiresIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->accessTokenExpiresIn:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", authType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;->authType:Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
