.class public final Lcom/smedialink/model/catalog/CampaignItem;
.super Lcom/smedialink/model/common/NoChildNode;
.source "CampaignItem.kt"


# instance fields
.field private final category:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final id:J

.field private final isVerified:Z

.field private final language:Ljava/lang/String;

.field private final membersCount:J

.field private final photo:Ljava/lang/String;

.field private final shortname:Ljava/lang/String;

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "photo"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shortname"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/smedialink/model/common/NoChildNode;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/smedialink/model/catalog/CampaignItem;->category:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/smedialink/model/catalog/CampaignItem;->description:Ljava/lang/String;

    .line 8
    iput-wide p3, p0, Lcom/smedialink/model/catalog/CampaignItem;->id:J

    .line 9
    iput-boolean p5, p0, Lcom/smedialink/model/catalog/CampaignItem;->isVerified:Z

    .line 10
    iput-object p6, p0, Lcom/smedialink/model/catalog/CampaignItem;->language:Ljava/lang/String;

    .line 11
    iput-wide p7, p0, Lcom/smedialink/model/catalog/CampaignItem;->membersCount:J

    .line 12
    iput-object p9, p0, Lcom/smedialink/model/catalog/CampaignItem;->photo:Ljava/lang/String;

    .line 13
    iput-object p10, p0, Lcom/smedialink/model/catalog/CampaignItem;->shortname:Ljava/lang/String;

    .line 14
    iput-object p11, p0, Lcom/smedialink/model/catalog/CampaignItem;->tags:Ljava/util/List;

    .line 15
    iput-object p12, p0, Lcom/smedialink/model/catalog/CampaignItem;->title:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/catalog/CampaignItem;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/smedialink/model/catalog/CampaignItem;
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/smedialink/model/catalog/CampaignItem;->category:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/smedialink/model/catalog/CampaignItem;->description:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/smedialink/model/catalog/CampaignItem;->id:J

    goto :goto_2

    :cond_2
    move-wide/from16 v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lcom/smedialink/model/catalog/CampaignItem;->isVerified:Z

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/smedialink/model/catalog/CampaignItem;->language:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-wide v8, v0, Lcom/smedialink/model/catalog/CampaignItem;->membersCount:J

    goto :goto_5

    :cond_5
    move-wide/from16 v8, p7

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/smedialink/model/catalog/CampaignItem;->photo:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Lcom/smedialink/model/catalog/CampaignItem;->shortname:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-object v12, v0, Lcom/smedialink/model/catalog/CampaignItem;->tags:Ljava/util/List;

    goto :goto_8

    :cond_8
    move-object/from16 v12, p11

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/smedialink/model/catalog/CampaignItem;->title:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p12

    :goto_9
    move-object p1, v2

    move-object p2, v3

    move-wide/from16 p3, v4

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-wide/from16 p7, v8

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/smedialink/model/catalog/CampaignItem;->copy(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/smedialink/model/catalog/CampaignItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/catalog/CampaignItem;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/catalog/CampaignItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/catalog/CampaignItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/model/catalog/CampaignItem;->id:J

    return-wide v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/smedialink/model/catalog/CampaignItem;->isVerified:Z

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/catalog/CampaignItem;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/model/catalog/CampaignItem;->membersCount:J

    return-wide v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/catalog/CampaignItem;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/catalog/CampaignItem;->shortname:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/smedialink/model/catalog/CampaignItem;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/smedialink/model/catalog/CampaignItem;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/smedialink/model/catalog/CampaignItem;"
        }
    .end annotation

    const-string v0, "category"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "photo"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shortname"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/model/catalog/CampaignItem;

    move-object v1, v0

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v13}, Lcom/smedialink/model/catalog/CampaignItem;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/model/catalog/CampaignItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/model/catalog/CampaignItem;

    iget-object v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->category:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/catalog/CampaignItem;->category:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/catalog/CampaignItem;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/smedialink/model/catalog/CampaignItem;->id:J

    iget-wide v5, p1, Lcom/smedialink/model/catalog/CampaignItem;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->isVerified:Z

    iget-boolean v3, p1, Lcom/smedialink/model/catalog/CampaignItem;->isVerified:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/catalog/CampaignItem;->language:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/smedialink/model/catalog/CampaignItem;->membersCount:J

    iget-wide v5, p1, Lcom/smedialink/model/catalog/CampaignItem;->membersCount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->photo:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/catalog/CampaignItem;->photo:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->shortname:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/catalog/CampaignItem;->shortname:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->tags:Ljava/util/List;

    iget-object v3, p1, Lcom/smedialink/model/catalog/CampaignItem;->tags:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/smedialink/model/catalog/CampaignItem;->title:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/smedialink/model/catalog/CampaignItem;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/model/catalog/CampaignItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/smedialink/model/catalog/CampaignItem;->id:J

    return-wide v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/smedialink/model/catalog/CampaignItem;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final getMembersCount()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/smedialink/model/catalog/CampaignItem;->membersCount:J

    return-wide v0
.end method

.method public final getPhoto()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/smedialink/model/catalog/CampaignItem;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public final getShortname()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/smedialink/model/catalog/CampaignItem;->shortname:Ljava/lang/String;

    return-object v0
.end method

.method public final getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/smedialink/model/catalog/CampaignItem;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/smedialink/model/catalog/CampaignItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/smedialink/model/catalog/CampaignItem;->category:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->id:J

    invoke-static {v1, v2}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->isVerified:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->membersCount:J

    invoke-static {v1, v2}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->photo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->shortname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->tags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isVerified()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/smedialink/model/catalog/CampaignItem;->isVerified:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CampaignItem(category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isVerified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->isVerified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", membersCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->membersCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", photo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->photo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shortname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->shortname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->tags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/catalog/CampaignItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
