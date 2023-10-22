.class public final Lcom/iMe/mapper/twitter/TweetInfoUiMappingKt;
.super Ljava/lang/Object;
.source "TweetInfoUiMapping.kt"


# direct methods
.method public static final mapToUi(Lcom/iMe/storage/domain/model/twitter/TweetInfo;)Lcom/chad/library/adapter/base/entity/node/BaseNode;
    .locals 17

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/iMe/model/twitter/TweetItem;

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getId()J

    move-result-wide v2

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getAuthorName()Ljava/lang/String;

    move-result-object v4

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getAuthorNickname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getLikesCount()I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "formatWholeNumber(likesCount)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getQuotesCount()I

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "formatWholeNumber(quotesCount)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getRetweetsCount()I

    move-result v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "formatWholeNumber(retweetsCount)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getText()Ljava/lang/String;

    move-result-object v10

    .line 22
    sget-object v11, Lcom/iMe/utils/formatter/DateFormatter$DateType;->ONLY_TIME:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    .line 23
    new-instance v12, Ljava/util/Date;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getCreatedAt()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xc

    const/16 v16, 0x0

    .line 21
    invoke-static/range {v11 .. v16}, Lcom/iMe/utils/formatter/DateFormatter;->format$default(Lcom/iMe/utils/formatter/DateFormatter$DateType;Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->isLiked()Z

    move-result v12

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getMediaInfo()Ljava/util/List;

    move-result-object v13

    move-object v1, v0

    .line 12
    invoke-direct/range {v1 .. v13}, Lcom/iMe/model/twitter/TweetItem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    return-object v0
.end method
