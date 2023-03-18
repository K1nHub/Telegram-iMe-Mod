.class public final Lcom/smedialink/storage/data/mapper/twitter/TwitterUserInfoMapperKt;
.super Ljava/lang/Object;
.source "TwitterUserInfoMapper.kt"


# direct methods
.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/twitter/TwitterUserResponse;)Lcom/smedialink/storage/domain/model/twitter/TwitterUserInfo;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/smedialink/storage/domain/model/twitter/TwitterUserInfo;

    .line 8
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterUserResponse;->getTwitterUserId()J

    move-result-wide v2

    .line 9
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterUserResponse;->getTwitterUserName()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterUserResponse;->getUserFullName()Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    if-nez v1, :cond_0

    move-object v6, v5

    goto :goto_0

    :cond_0
    move-object v6, v1

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterUserResponse;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v7, v5

    goto :goto_1

    :cond_1
    move-object v7, v1

    .line 12
    :goto_1
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterUserResponse;->getTelegramUserId()Ljava/lang/Long;

    move-result-object p0

    move-object v1, v0

    move-object v5, v6

    move-object v6, v7

    move-object v7, p0

    .line 7
    invoke-direct/range {v1 .. v7}, Lcom/smedialink/storage/domain/model/twitter/TwitterUserInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method
