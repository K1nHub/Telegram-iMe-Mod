.class public final Lcom/iMe/fork/models/backup/TopicBackup;
.super Ljava/lang/Object;
.source "TopicBackup.kt"


# instance fields
.field private final databaseDialogs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private icon:Lcom/iMe/storage/data/repository/topics/Topic;

.field private final isHidden:Z

.field private final name:Ljava/lang/String;

.field private order:I

.field private presets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final topicId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/iMe/storage/data/repository/topics/Topic;IZLjava/util/Set;Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/data/repository/topics/Topic;",
            "IZ",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "presets"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "databaseDialogs"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/fork/models/backup/TopicBackup;->name:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/iMe/fork/models/backup/TopicBackup;->icon:Lcom/iMe/storage/data/repository/topics/Topic;

    .line 8
    iput p3, p0, Lcom/iMe/fork/models/backup/TopicBackup;->order:I

    .line 9
    iput-boolean p4, p0, Lcom/iMe/fork/models/backup/TopicBackup;->isHidden:Z

    .line 10
    iput-object p5, p0, Lcom/iMe/fork/models/backup/TopicBackup;->presets:Ljava/util/Set;

    .line 11
    iput-object p6, p0, Lcom/iMe/fork/models/backup/TopicBackup;->databaseDialogs:Ljava/util/Set;

    .line 12
    iput-object p7, p0, Lcom/iMe/fork/models/backup/TopicBackup;->topicId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/iMe/storage/data/repository/topics/Topic;IZLjava/util/Set;Ljava/util/Set;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 5
    invoke-direct/range {v1 .. v8}, Lcom/iMe/fork/models/backup/TopicBackup;-><init>(Ljava/lang/String;Lcom/iMe/storage/data/repository/topics/Topic;IZLjava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/fork/models/backup/TopicBackup;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/fork/models/backup/TopicBackup;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/TopicBackup;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/TopicBackup;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/fork/models/backup/TopicBackup;->icon:Lcom/iMe/storage/data/repository/topics/Topic;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/TopicBackup;->icon:Lcom/iMe/storage/data/repository/topics/Topic;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/iMe/fork/models/backup/TopicBackup;->order:I

    iget v3, p1, Lcom/iMe/fork/models/backup/TopicBackup;->order:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/iMe/fork/models/backup/TopicBackup;->isHidden:Z

    iget-boolean v3, p1, Lcom/iMe/fork/models/backup/TopicBackup;->isHidden:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/fork/models/backup/TopicBackup;->presets:Ljava/util/Set;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/TopicBackup;->presets:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/fork/models/backup/TopicBackup;->databaseDialogs:Ljava/util/Set;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/TopicBackup;->databaseDialogs:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/fork/models/backup/TopicBackup;->topicId:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/fork/models/backup/TopicBackup;->topicId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getDatabaseDialogs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/iMe/fork/models/backup/TopicBackup;->databaseDialogs:Ljava/util/Set;

    return-object v0
.end method

.method public final getIcon()Lcom/iMe/storage/data/repository/topics/Topic;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/fork/models/backup/TopicBackup;->icon:Lcom/iMe/storage/data/repository/topics/Topic;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/fork/models/backup/TopicBackup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrder()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/fork/models/backup/TopicBackup;->order:I

    return v0
.end method

.method public final getPresets()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/iMe/fork/models/backup/TopicBackup;->presets:Ljava/util/Set;

    return-object v0
.end method

.method public final getTopicId()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/fork/models/backup/TopicBackup;->topicId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/fork/models/backup/TopicBackup;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/TopicBackup;->icon:Lcom/iMe/storage/data/repository/topics/Topic;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/iMe/fork/models/backup/TopicBackup;->order:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/iMe/fork/models/backup/TopicBackup;->isHidden:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/TopicBackup;->presets:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/TopicBackup;->databaseDialogs:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/fork/models/backup/TopicBackup;->topicId:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final isHidden()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/iMe/fork/models/backup/TopicBackup;->isHidden:Z

    return v0
.end method

.method public final setIcon(Lcom/iMe/storage/data/repository/topics/Topic;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/iMe/fork/models/backup/TopicBackup;->icon:Lcom/iMe/storage/data/repository/topics/Topic;

    return-void
.end method

.method public final setPresets(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/iMe/fork/models/backup/TopicBackup;->presets:Ljava/util/Set;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TopicBackup(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/TopicBackup;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/TopicBackup;->icon:Lcom/iMe/storage/data/repository/topics/Topic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/fork/models/backup/TopicBackup;->order:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/fork/models/backup/TopicBackup;->isHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", presets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/TopicBackup;->presets:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", databaseDialogs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/TopicBackup;->databaseDialogs:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topicId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/TopicBackup;->topicId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
