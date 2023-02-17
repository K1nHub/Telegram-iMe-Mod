.class public final Lcom/smedialink/storage/data/mapper/topics/TopicMappingKt;
.super Ljava/lang/Object;
.source "TopicMapping.kt"


# direct methods
.method public static final mapToDb(Lcom/smedialink/storage/domain/model/topics/TopicModel;J)Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getIcon()Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v5, v1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getOrder()I

    move-result v6

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v8

    move-object v1, v0

    move-wide v9, p1

    invoke-direct/range {v1 .. v10}, Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;-><init>(JLjava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;J)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;)Lcom/smedialink/storage/domain/model/topics/TopicModel;
    .locals 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;->getTopicId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;->getIcon()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/storage/data/repository/topics/Topic;->valueOf(Ljava/lang/String;)Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v5, v1

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;->getOrder()I

    move-result v6

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;->getPresets()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;->getDialogs()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xc0

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/smedialink/storage/domain/model/topics/TopicModel;-><init>(JLjava/lang/String;Lcom/smedialink/storage/data/repository/topics/Topic;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
