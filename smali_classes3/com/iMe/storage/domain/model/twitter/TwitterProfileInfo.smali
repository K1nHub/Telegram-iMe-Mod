.class public final Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;
.super Ljava/lang/Object;
.source "TwitterProfileInfo.kt"


# instance fields
.field private final isUnlinked:Z

.field private final telegramUserId:J

.field private final twitterUserId:J

.field private final twitterUserIdInDatabase:J

.field private final twitterUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJJLjava/lang/String;Z)V
    .locals 1

    const-string v0, "twitterUserName"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserId:J

    .line 5
    iput-wide p3, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserIdInDatabase:J

    .line 6
    iput-wide p5, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->telegramUserId:J

    .line 7
    iput-object p7, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserName:Ljava/lang/String;

    .line 8
    iput-boolean p8, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->isUnlinked:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;JJJLjava/lang/String;ZILjava/lang/Object;)Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserId:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserIdInDatabase:J

    goto :goto_1

    :cond_1
    move-wide v3, p3

    :goto_1
    and-int/lit8 v5, p9, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->telegramUserId:J

    goto :goto_2

    :cond_2
    move-wide v5, p5

    :goto_2
    and-int/lit8 v7, p9, 0x8

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserName:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v7, p7

    :goto_3
    and-int/lit8 v8, p9, 0x10

    if-eqz v8, :cond_4

    iget-boolean v8, v0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->isUnlinked:Z

    goto :goto_4

    :cond_4
    move/from16 v8, p8

    :goto_4
    move-wide p1, v1

    move-wide p3, v3

    move-wide p5, v5

    move-object/from16 p7, v7

    move/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->copy(JJJLjava/lang/String;Z)Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserId:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserIdInDatabase:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->telegramUserId:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserName:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->isUnlinked:Z

    return v0
.end method

.method public final copy(JJJLjava/lang/String;Z)Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;
    .locals 10

    const-string v0, "twitterUserName"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;-><init>(JJJLjava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;

    iget-wide v3, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserId:J

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserIdInDatabase:J

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserIdInDatabase:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->telegramUserId:J

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->telegramUserId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserName:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->isUnlinked:Z

    iget-boolean p1, p1, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->isUnlinked:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getTelegramUserId()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->telegramUserId:J

    return-wide v0
.end method

.method public final getTwitterUserId()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserId:J

    return-wide v0
.end method

.method public final getTwitterUserIdInDatabase()J
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserIdInDatabase:J

    return-wide v0
.end method

.method public final getTwitterUserName()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserId:J

    invoke-static {v0, v1}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserIdInDatabase:J

    invoke-static {v1, v2}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->telegramUserId:J

    invoke-static {v1, v2}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->isUnlinked:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isUnlinked()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->isUnlinked:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TwitterProfileInfo(twitterUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", twitterUserIdInDatabase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserIdInDatabase:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", telegramUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->telegramUserId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", twitterUserName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->twitterUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isUnlinked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->isUnlinked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
