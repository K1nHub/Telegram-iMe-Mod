.class public final Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;
.super Ljava/lang/Object;
.source "TwitterProfileResponse.kt"


# instance fields
.field private final telegramUserId:Ljava/lang/Long;

.field private final twitterUserId:J

.field private final twitterUserIdInDatabase:Ljava/lang/Long;

.field private final twitterUserName:Ljava/lang/String;

.field private final unlinked:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserId:J

    .line 5
    iput-object p3, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserIdInDatabase:Ljava/lang/Long;

    .line 6
    iput-object p4, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->telegramUserId:Ljava/lang/Long;

    .line 7
    iput-object p5, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserName:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->unlinked:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserId:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserIdInDatabase:Ljava/lang/Long;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-object p4, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->telegramUserId:Ljava/lang/Long;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget-object p5, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserName:Ljava/lang/String;

    :cond_3
    move-object v5, p5

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    iget-object p6, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->unlinked:Ljava/lang/Boolean;

    :cond_4
    move-object v6, p6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->copy(JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserId:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserIdInDatabase:Ljava/lang/Long;

    return-object v0
.end method

.method public final component3()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->telegramUserId:Ljava/lang/Long;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserName:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->unlinked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;
    .locals 8

    new-instance v7, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;

    move-object v0, v7

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;-><init>(JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;

    iget-wide v3, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserId:J

    iget-wide v5, p1, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserIdInDatabase:Ljava/lang/Long;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserIdInDatabase:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->telegramUserId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->telegramUserId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserName:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->unlinked:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->unlinked:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getTelegramUserId()Ljava/lang/Long;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->telegramUserId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getTwitterUserId()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserId:J

    return-wide v0
.end method

.method public final getTwitterUserIdInDatabase()Ljava/lang/Long;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserIdInDatabase:Ljava/lang/Long;

    return-object v0
.end method

.method public final getTwitterUserName()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserName:Ljava/lang/String;

    return-object v0
.end method

.method public final getUnlinked()Ljava/lang/Boolean;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->unlinked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserId:J

    invoke-static {v0, v1}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserIdInDatabase:Ljava/lang/Long;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->telegramUserId:Ljava/lang/Long;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserName:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->unlinked:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TwitterProfileResponse(twitterUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", twitterUserIdInDatabase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserIdInDatabase:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", telegramUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->telegramUserId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", twitterUserName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->twitterUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", unlinked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/twitter/TwitterProfileResponse;->unlinked:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
