.class public final Lcom/iMe/storage/data/mapper/topics/TopicMappingKt;
.super Ljava/lang/Object;
.source "TopicMapping.kt"


# direct methods
.method public static final mapToDb(Lcom/iMe/storage/domain/model/topics/TopicModel;J)Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;
    .locals 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;

    .line 21
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v2

    .line 22
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getName()Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v5, v1

    .line 24
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getOrder()I

    move-result v6

    .line 25
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isHidden()Z

    move-result v7

    .line 26
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v8

    .line 27
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v9

    move-object v1, v0

    move-wide v10, p1

    .line 20
    invoke-direct/range {v1 .. v11}, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;-><init>(JLjava/lang/String;Ljava/lang/String;IZLjava/util/List;Ljava/util/List;J)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;)Lcom/iMe/storage/domain/model/topics/TopicModel;
    .locals 14

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 9
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;->getTopicId()J

    move-result-wide v2

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;->getName()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;->getIcon()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/repository/topics/Topic;->valueOf(Ljava/lang/String;)Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v5, v1

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;->getOrder()I

    move-result v6

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;->isHidden()Z

    move-result v7

    .line 14
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;->getPresets()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    .line 15
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;->getDialogs()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x180

    const/4 v13, 0x0

    move-object v1, v0

    .line 8
    invoke-direct/range {v1 .. v13}, Lcom/iMe/storage/domain/model/topics/TopicModel;-><init>(JLjava/lang/String;Lcom/iMe/storage/data/repository/topics/Topic;IZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
