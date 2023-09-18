.class public final Lcom/iMe/storage/data/mapper/twitter/TwitterProfileInfoMapperKt;
.super Ljava/lang/Object;
.source "TwitterProfileInfoMapper.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/twitter/TwitterProfileResponse;)Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;

    .line 9
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/twitter/TwitterProfileResponse;->getTwitterUserId()J

    move-result-wide v2

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/twitter/TwitterProfileResponse;->getTwitterUserIdInDatabase()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Long;)J

    move-result-wide v4

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/twitter/TwitterProfileResponse;->getTelegramUserId()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Long;)J

    move-result-wide v6

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/twitter/TwitterProfileResponse;->getTwitterUserName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    move-object v8, p0

    const/4 v9, 0x0

    move-object v1, v0

    .line 8
    invoke-direct/range {v1 .. v9}, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;-><init>(JJJLjava/lang/String;Z)V

    return-object v0
.end method
