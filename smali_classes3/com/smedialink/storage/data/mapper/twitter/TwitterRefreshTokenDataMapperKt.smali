.class public final Lcom/smedialink/storage/data/mapper/twitter/TwitterRefreshTokenDataMapperKt;
.super Ljava/lang/Object;
.source "TwitterRefreshTokenDataMapper.kt"


# direct methods
.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/twitter/RefreshTokenResponse;)Lcom/smedialink/storage/domain/model/twitter/TwitterRefreshTokenData;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/smedialink/storage/domain/model/twitter/TwitterRefreshTokenData;

    .line 8
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/twitter/RefreshTokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/twitter/RefreshTokenResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/twitter/RefreshTokenResponse;->getExpiresIn()J

    move-result-wide v3

    .line 7
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smedialink/storage/domain/model/twitter/TwitterRefreshTokenData;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method
