.class public final Lcom/iMe/storage/twitter_test/mapper/TweetInfoMapperKt;
.super Ljava/lang/Object;
.source "TweetInfoMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTweetInfoMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TweetInfoMapper.kt\ncom/iMe/storage/twitter_test/mapper/TweetInfoMapperKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,22:1\n1549#2:23\n1620#2,3:24\n*S KotlinDebug\n*F\n+ 1 TweetInfoMapper.kt\ncom/iMe/storage/twitter_test/mapper/TweetInfoMapperKt\n*L\n8#1:23\n8#1:24,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;)Lcom/iMe/storage/domain/model/twitter/TweetInfo;
    .locals 14

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/iMe/storage/domain/model/twitter/TweetInfo;

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;->getId()J

    move-result-wide v2

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;->getUserFullName()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;->getUserName()Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;->getAvatarUrl()Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;->getLikes()I

    move-result v7

    .line 17
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;->getQuotes()I

    move-result v8

    .line 18
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;->getRetweets()I

    move-result v9

    .line 19
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;->getText()Ljava/lang/String;

    move-result-object v10

    .line 20
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;->getCreatedAt()J

    move-result-wide v11

    .line 21
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;->getLikedByMe()Z

    move-result v13

    move-object v1, v0

    .line 11
    invoke-direct/range {v1 .. v13}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;JZ)V

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

    .line 8
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

    .line 8
    invoke-static {v1}, Lcom/iMe/storage/twitter_test/mapper/TweetInfoMapperKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/twitter/TweetResponse;)Lcom/iMe/storage/domain/model/twitter/TweetInfo;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
