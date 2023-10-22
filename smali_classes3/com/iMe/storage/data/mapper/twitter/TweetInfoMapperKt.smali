.class public final Lcom/iMe/storage/data/mapper/twitter/TweetInfoMapperKt;
.super Ljava/lang/Object;
.source "TweetInfoMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTweetInfoMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TweetInfoMapper.kt\ncom/iMe/storage/data/mapper/twitter/TweetInfoMapperKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n1549#2:43\n1620#2,3:44\n1549#2:47\n1620#2,3:48\n*S KotlinDebug\n*F\n+ 1 TweetInfoMapper.kt\ncom/iMe/storage/data/mapper/twitter/TweetInfoMapperKt\n*L\n11#1:43\n11#1:44,3\n25#1:47\n25#1:48,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/twitter/MediaInfo;)Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;

    .line 30
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/twitter/MediaInfo;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-static {v1}, Lcom/iMe/storage/data/mapper/twitter/TweetInfoMapperKt;->stringToMediaType(Ljava/lang/String;)Lcom/iMe/storage/domain/model/twitter/MediaType;

    move-result-object v1

    .line 31
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/twitter/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p0

    .line 29
    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;-><init>(Lcom/iMe/storage/domain/model/twitter/MediaType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;)Lcom/iMe/storage/domain/model/twitter/TweetInfo;
    .locals 18

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    :goto_0
    move-wide v5, v2

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;->getUserFullName()Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;->getUserName()Ljava/lang/String;

    move-result-object v8

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;->getAvatarUrl()Ljava/lang/String;

    move-result-object v9

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;->getLikes()I

    move-result v10

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;->getQuotes()I

    move-result v11

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;->getRetweets()I

    move-result v12

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;->getText()Ljava/lang/String;

    move-result-object v13

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;->getCreatedAt()J

    move-result-wide v14

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;->getLikedByMe()Z

    move-result v16

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;->getMediaInfo()Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/storage/data/network/model/response/twitter/MediaInfo;

    .line 25
    invoke-static {v2}, Lcom/iMe/storage/data/mapper/twitter/TweetInfoMapperKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/twitter/MediaInfo;)Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_1
    new-instance v0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;

    move-object v4, v0

    move-object/from16 v17, v1

    invoke-direct/range {v4 .. v17}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;JZLjava/util/List;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/twitter/TwitterFeedResponse;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/twitter/TwitterFeedResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/twitter/TweetInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/twitter/TwitterFeedResponse;->getTweets()Ljava/util/List;

    move-result-object p0

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;

    .line 11
    invoke-static {v1}, Lcom/iMe/storage/data/mapper/twitter/TweetInfoMapperKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;)Lcom/iMe/storage/domain/model/twitter/TweetInfo;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final stringToMediaType(Ljava/lang/String;)Lcom/iMe/storage/domain/model/twitter/MediaType;
    .locals 2

    const-string v0, "typeString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x65b3e32

    if-eq v0, v1, :cond_4

    const v1, 0x6b0147b

    if-eq v0, v1, :cond_2

    const v1, 0x3e835f28

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "animated_gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    sget-object p0, Lcom/iMe/storage/domain/model/twitter/MediaType;->ANIMATED_GIF:Lcom/iMe/storage/domain/model/twitter/MediaType;

    goto :goto_1

    :cond_2
    const-string v0, "video"

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 38
    :cond_3
    sget-object p0, Lcom/iMe/storage/domain/model/twitter/MediaType;->VIDEO:Lcom/iMe/storage/domain/model/twitter/MediaType;

    goto :goto_1

    :cond_4
    const-string v0, "photo"

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 39
    :goto_0
    sget-object p0, Lcom/iMe/storage/domain/model/twitter/MediaType;->UNKNOWN:Lcom/iMe/storage/domain/model/twitter/MediaType;

    goto :goto_1

    .line 37
    :cond_5
    sget-object p0, Lcom/iMe/storage/domain/model/twitter/MediaType;->PHOTO:Lcom/iMe/storage/domain/model/twitter/MediaType;

    :goto_1
    return-object p0
.end method
