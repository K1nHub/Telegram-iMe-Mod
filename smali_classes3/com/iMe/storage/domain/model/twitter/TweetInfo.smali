.class public final Lcom/iMe/storage/domain/model/twitter/TweetInfo;
.super Ljava/lang/Object;
.source "TweetInfo.kt"


# instance fields
.field private final authorName:Ljava/lang/String;

.field private final authorNickname:Ljava/lang/String;

.field private final avatarUrl:Ljava/lang/String;

.field private final createdAt:J

.field private final id:J

.field private final isLiked:Z

.field private final likesCount:I

.field private final quotesCount:I

.field private final retweetsCount:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;JZ)V
    .locals 1

    const-string v0, "authorName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorNickname"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarUrl"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->id:J

    .line 5
    iput-object p3, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->authorName:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->authorNickname:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->avatarUrl:Ljava/lang/String;

    .line 8
    iput p6, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->likesCount:I

    .line 9
    iput p7, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->quotesCount:I

    .line 10
    iput p8, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->retweetsCount:I

    .line 11
    iput-object p9, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->text:Ljava/lang/String;

    .line 12
    iput-wide p10, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->createdAt:J

    .line 13
    iput-boolean p12, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->isLiked:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/twitter/TweetInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;JZILjava/lang/Object;)Lcom/iMe/storage/domain/model/twitter/TweetInfo;
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->id:J

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->authorName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->authorNickname:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->avatarUrl:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->likesCount:I

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget v8, v0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->quotesCount:I

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget v9, v0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->retweetsCount:I

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->text:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-wide v11, v0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->createdAt:J

    goto :goto_8

    :cond_8
    move-wide/from16 v11, p10

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->isLiked:Z

    goto :goto_9

    :cond_9
    move/from16 v1, p12

    :goto_9
    move-wide p1, v2

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-wide/from16 p10, v11

    move/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;JZ)Lcom/iMe/storage/domain/model/twitter/TweetInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->id:J

    return-wide v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->isLiked:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->authorNickname:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->likesCount:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->quotesCount:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->retweetsCount:I

    return v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->createdAt:J

    return-wide v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;JZ)Lcom/iMe/storage/domain/model/twitter/TweetInfo;
    .locals 14

    const-string v0, "authorName"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorNickname"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarUrl"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;

    move-object v1, v0

    move-wide v2, p1

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v11, p10

    move/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;JZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/twitter/TweetInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/twitter/TweetInfo;

    iget-wide v3, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->id:J

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->authorName:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->authorName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->authorNickname:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->authorNickname:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->avatarUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->avatarUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->likesCount:I

    iget v3, p1, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->likesCount:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->quotesCount:I

    iget v3, p1, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->quotesCount:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->retweetsCount:I

    iget v3, p1, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->retweetsCount:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->createdAt:J

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->createdAt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->isLiked:Z

    iget-boolean p1, p1, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->isLiked:Z

    if-eq v1, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getAuthorName()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorNickname()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->authorNickname:Ljava/lang/String;

    return-object v0
.end method

.method public final getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreatedAt()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->createdAt:J

    return-wide v0
.end method

.method public final getId()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->id:J

    return-wide v0
.end method

.method public final getLikesCount()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->likesCount:I

    return v0
.end method

.method public final getQuotesCount()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->quotesCount:I

    return v0
.end method

.method public final getRetweetsCount()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->retweetsCount:I

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->id:J

    invoke-static {v0, v1}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->authorName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->authorNickname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->likesCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->quotesCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->retweetsCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->createdAt:J

    invoke-static {v1, v2}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->isLiked:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isLiked()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->isLiked:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TweetInfo(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", authorName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->authorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authorNickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->authorNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", avatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", likesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->likesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", quotesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->quotesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retweetsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->retweetsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->createdAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isLiked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->isLiked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
