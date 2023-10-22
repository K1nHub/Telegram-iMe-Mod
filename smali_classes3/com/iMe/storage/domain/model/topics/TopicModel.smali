.class public final Lcom/iMe/storage/domain/model/topics/TopicModel;
.super Ljava/lang/Object;
.source "TopicModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/topics/TopicModel$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/storage/domain/model/topics/TopicModel$Companion;


# instance fields
.field private final dialogs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final filterArchivedDialogs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final filterDialogs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private icon:Lcom/iMe/storage/data/repository/topics/Topic;

.field private isHidden:Z

.field private name:Ljava/lang/String;

.field private order:I

.field private final presets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private topicId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/domain/model/topics/TopicModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/topics/TopicModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/topics/TopicModel;->Companion:Lcom/iMe/storage/domain/model/topics/TopicModel$Companion;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/iMe/storage/data/repository/topics/Topic;IZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/data/repository/topics/Topic;",
            "IZ",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "presets"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogs"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterDialogs"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterArchivedDialogs"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->topicId:J

    .line 8
    iput-object p3, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->name:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->icon:Lcom/iMe/storage/data/repository/topics/Topic;

    .line 10
    iput p5, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->order:I

    .line 11
    iput-boolean p6, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->isHidden:Z

    .line 12
    iput-object p7, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->presets:Ljava/util/Set;

    .line 13
    iput-object p8, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->dialogs:Ljava/util/Set;

    .line 14
    iput-object p9, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->filterDialogs:Ljava/util/Set;

    .line 15
    iput-object p10, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->filterArchivedDialogs:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Lcom/iMe/storage/data/repository/topics/Topic;IZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p11

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    .line 14
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v11, v1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p9

    :goto_0
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v12, v0

    goto :goto_1

    :cond_1
    move-object/from16 v12, p10

    :goto_1
    move-object v2, p0

    move-wide v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 6
    invoke-direct/range {v2 .. v12}, Lcom/iMe/storage/domain/model/topics/TopicModel;-><init>(JLjava/lang/String;Lcom/iMe/storage/data/repository/topics/Topic;IZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/topics/TopicModel;JLjava/lang/String;Lcom/iMe/storage/data/repository/topics/Topic;IZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/topics/TopicModel;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/iMe/storage/domain/model/topics/TopicModel;->topicId:J

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/iMe/storage/domain/model/topics/TopicModel;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/iMe/storage/domain/model/topics/TopicModel;->icon:Lcom/iMe/storage/data/repository/topics/Topic;

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget v6, v0, Lcom/iMe/storage/domain/model/topics/TopicModel;->order:I

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-boolean v7, v0, Lcom/iMe/storage/domain/model/topics/TopicModel;->isHidden:Z

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/iMe/storage/domain/model/topics/TopicModel;->presets:Ljava/util/Set;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/iMe/storage/domain/model/topics/TopicModel;->dialogs:Ljava/util/Set;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/iMe/storage/domain/model/topics/TopicModel;->filterDialogs:Ljava/util/Set;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/iMe/storage/domain/model/topics/TopicModel;->filterArchivedDialogs:Ljava/util/Set;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p10

    :goto_8
    move-wide p1, v2

    move-object p3, v4

    move-object p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/iMe/storage/domain/model/topics/TopicModel;->copy(JLjava/lang/String;Lcom/iMe/storage/data/repository/topics/Topic;IZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->topicId:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/data/repository/topics/Topic;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->icon:Lcom/iMe/storage/data/repository/topics/Topic;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->order:I

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->isHidden:Z

    return v0
.end method

.method public final component6()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->presets:Ljava/util/Set;

    return-object v0
.end method

.method public final component7()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->dialogs:Ljava/util/Set;

    return-object v0
.end method

.method public final component8()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->filterDialogs:Ljava/util/Set;

    return-object v0
.end method

.method public final component9()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->filterArchivedDialogs:Ljava/util/Set;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Lcom/iMe/storage/data/repository/topics/Topic;IZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lcom/iMe/storage/domain/model/topics/TopicModel;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/data/repository/topics/Topic;",
            "IZ",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/iMe/storage/domain/model/topics/TopicModel;"
        }
    .end annotation

    const-string v0, "presets"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogs"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterDialogs"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterArchivedDialogs"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v11}, Lcom/iMe/storage/domain/model/topics/TopicModel;-><init>(JLjava/lang/String;Lcom/iMe/storage/data/repository/topics/Topic;IZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/topics/TopicModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/topics/TopicModel;

    iget-wide v3, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->topicId:J

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/topics/TopicModel;->topicId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/topics/TopicModel;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->icon:Lcom/iMe/storage/data/repository/topics/Topic;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/topics/TopicModel;->icon:Lcom/iMe/storage/data/repository/topics/Topic;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->order:I

    iget v3, p1, Lcom/iMe/storage/domain/model/topics/TopicModel;->order:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->isHidden:Z

    iget-boolean v3, p1, Lcom/iMe/storage/domain/model/topics/TopicModel;->isHidden:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->presets:Ljava/util/Set;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/topics/TopicModel;->presets:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->dialogs:Ljava/util/Set;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/topics/TopicModel;->dialogs:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->filterDialogs:Ljava/util/Set;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/topics/TopicModel;->filterDialogs:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->filterArchivedDialogs:Ljava/util/Set;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/topics/TopicModel;->filterArchivedDialogs:Ljava/util/Set;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getDialogs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->dialogs:Ljava/util/Set;

    return-object v0
.end method

.method public final getFilterArchivedDialogs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->filterArchivedDialogs:Ljava/util/Set;

    return-object v0
.end method

.method public final getFilterDialogs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->filterDialogs:Ljava/util/Set;

    return-object v0
.end method

.method public final getIcon()Lcom/iMe/storage/data/repository/topics/Topic;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->icon:Lcom/iMe/storage/data/repository/topics/Topic;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrder()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->order:I

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

    .line 12
    iget-object v0, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->presets:Ljava/util/Set;

    return-object v0
.end method

.method public final getTopicId()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->topicId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->topicId:J

    invoke-static {v0, v1}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->name:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->icon:Lcom/iMe/storage/data/repository/topics/Topic;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->order:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->isHidden:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->presets:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->dialogs:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->filterDialogs:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->filterArchivedDialogs:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isAutoTopic()Z
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isUserTopic()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->icon:Lcom/iMe/storage/data/repository/topics/Topic;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isHidden()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->isHidden:Z

    return v0
.end method

.method public final isUserTopic()Z
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setHidden(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->isHidden:Z

    return-void
.end method

.method public final setIcon(Lcom/iMe/storage/data/repository/topics/Topic;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->icon:Lcom/iMe/storage/data/repository/topics/Topic;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->name:Ljava/lang/String;

    return-void
.end method

.method public final setOrder(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->order:I

    return-void
.end method

.method public final setTopicId(J)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->topicId:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TopicModel(topicId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->topicId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->icon:Lcom/iMe/storage/data/repository/topics/Topic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->order:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->isHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", presets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->presets:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dialogs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->dialogs:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filterDialogs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->filterDialogs:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filterArchivedDialogs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/topics/TopicModel;->filterArchivedDialogs:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
