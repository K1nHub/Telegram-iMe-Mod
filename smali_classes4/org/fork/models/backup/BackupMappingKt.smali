.class public final Lorg/fork/models/backup/BackupMappingKt;
.super Ljava/lang/Object;
.source "BackupMapping.kt"


# direct methods
.method public static final mapToBackup(Lorg/fork/models/MultiPanelButtonState;)Lorg/fork/models/backup/MultiPanelButtonStateBackup;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lorg/fork/models/backup/MultiPanelButtonStateBackup;

    invoke-virtual {p0}, Lorg/fork/models/MultiPanelButtonState;->getType()Lorg/fork/enums/MultiPanelButton;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/models/MultiPanelButtonState;->isEnabled()Z

    move-result v2

    invoke-virtual {p0}, Lorg/fork/models/MultiPanelButtonState;->getPosition()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lorg/fork/models/backup/MultiPanelButtonStateBackup;-><init>(Ljava/lang/String;ZI)V

    return-object v0
.end method

.method public static final mapToBackup(Lorg/fork/models/SortingTabState;)Lorg/fork/models/backup/SortingTabStateBackup;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lorg/fork/models/backup/SortingTabStateBackup;

    invoke-virtual {p0}, Lorg/fork/models/SortingTabState;->getType()Lorg/fork/enums/SortingFilter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/fork/models/SortingTabState;->getFabs()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0}, Lorg/fork/models/SortingTabState;->getPosition()I

    move-result v4

    invoke-virtual {p0}, Lorg/fork/models/SortingTabState;->isEnabled()Z

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/fork/models/backup/SortingTabStateBackup;-><init>(Ljava/lang/String;Ljava/util/Set;IZLorg/fork/models/backup/FabDataBackup;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final mapToBackup(Lcom/smedialink/storage/domain/model/topics/TopicModel;)Lorg/fork/models/backup/TopicBackup;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lorg/fork/models/backup/TopicBackup;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getIcon()Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object v3

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getOrder()I

    move-result v4

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/fork/models/backup/TopicBackup;-><init>(Ljava/lang/String;Lcom/smedialink/storage/data/repository/topics/Topic;ILjava/util/Set;Ljava/util/Set;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final mapToDb(Lorg/fork/models/backup/TopicBackup;JJ)Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;

    invoke-virtual {p0}, Lorg/fork/models/backup/TopicBackup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/fork/models/backup/TopicBackup;->getIcon()Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v5, v1

    invoke-virtual {p0}, Lorg/fork/models/backup/TopicBackup;->getOrder()I

    move-result v6

    invoke-virtual {p0}, Lorg/fork/models/backup/TopicBackup;->getPresets()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0}, Lorg/fork/models/backup/TopicBackup;->getDatabaseDialogs()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v8

    move-object v1, v0

    move-wide v2, p1

    move-wide v9, p3

    invoke-direct/range {v1 .. v10}, Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;-><init>(JLjava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;J)V

    return-object v0
.end method

.method public static final mapToDomain(Lorg/fork/models/backup/MultiPanelButtonStateBackup;)Lorg/fork/models/MultiPanelButtonState;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lorg/fork/enums/MultiPanelButton;->Companion:Lorg/fork/enums/MultiPanelButton$Companion;

    invoke-virtual {p0}, Lorg/fork/models/backup/MultiPanelButtonStateBackup;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fork/enums/MultiPanelButton$Companion;->map(Ljava/lang/String;)Lorg/fork/enums/MultiPanelButton;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 34
    :cond_0
    new-instance v1, Lorg/fork/models/MultiPanelButtonState;

    invoke-virtual {p0}, Lorg/fork/models/backup/MultiPanelButtonStateBackup;->isEnabled()Z

    move-result v2

    invoke-virtual {p0}, Lorg/fork/models/backup/MultiPanelButtonStateBackup;->getPosition()I

    move-result p0

    invoke-direct {v1, v0, v2, p0}, Lorg/fork/models/MultiPanelButtonState;-><init>(Lorg/fork/enums/MultiPanelButton;ZI)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static final mapToDomain(Lorg/fork/models/backup/SortingTabStateBackup;)Lorg/fork/models/SortingTabState;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    invoke-virtual {p0}, Lorg/fork/models/backup/SortingTabStateBackup;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fork/enums/SortingFilter$Companion;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/SortingFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v1, Lorg/fork/models/SortingTabState;

    invoke-virtual {p0}, Lorg/fork/models/backup/SortingTabStateBackup;->getFabs()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0}, Lorg/fork/models/backup/SortingTabStateBackup;->getPosition()I

    move-result v3

    invoke-virtual {p0}, Lorg/fork/models/backup/SortingTabStateBackup;->isEnabled()Z

    move-result p0

    invoke-direct {v1, v0, v2, v3, p0}, Lorg/fork/models/SortingTabState;-><init>(Lorg/fork/enums/SortingFilter;Ljava/util/Set;IZ)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
