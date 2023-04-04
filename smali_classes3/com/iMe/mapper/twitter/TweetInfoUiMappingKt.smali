.class public final Lcom/iMe/mapper/twitter/TweetInfoUiMappingKt;
.super Ljava/lang/Object;
.source "TweetInfoUiMapping.kt"


# direct methods
.method public static final mapToUi(Lcom/iMe/storage/domain/model/twitter/TweetInfo;)Lcom/chad/library/adapter/base/entity/node/BaseNode;
    .locals 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/iMe/model/twitter/TweetItem;

    .line 14
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getId()J

    move-result-wide v2

    .line 15
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getAuthorName()Ljava/lang/String;

    move-result-object v4

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x40

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getAuthorNickname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getLikesCount()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "formatWholeNumber(likesCount)"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getQuotesCount()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "formatWholeNumber(quotesCount)"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getRetweetsCount()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(I)Ljava/lang/String;

    move-result-object v9

    const-string v1, "formatWholeNumber(retweetsCount)"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/StringExtKt;->addTwitterLinks(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    .line 23
    sget-object v1, Lcom/iMe/utils/formatter/DateFormatter$DateType;->ONLY_TIME:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    .line 24
    new-instance v11, Ljava/util/Date;

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getCreatedAt()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    const/4 v12, 0x0

    const/4 v13, 0x4

    .line 22
    invoke-static {v1, v11, v12, v13, v12}, Lcom/iMe/utils/formatter/DateFormatter;->format$default(Lcom/iMe/utils/formatter/DateFormatter$DateType;Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 26
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->isLiked()Z

    move-result v12

    move-object v1, v0

    .line 13
    invoke-direct/range {v1 .. v12}, Lcom/iMe/model/twitter/TweetItem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Z)V

    return-object v0
.end method
