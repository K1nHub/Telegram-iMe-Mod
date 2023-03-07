.class public final Lcom/smedialink/storage/domain/model/catalog/Campaign;
.super Ljava/lang/Object;
.source "Campaign.kt"


# instance fields
.field private final category:Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

.field private final channel:Lcom/smedialink/storage/domain/model/catalog/Channel;

.field private final countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/ChannelCountry;",
            ">;"
        }
    .end annotation
.end field

.field private final createdAt:Ljava/lang/String;

.field private final id:J

.field private final invalidReason:Ljava/lang/String;

.field private final language:Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;

.field private final status:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/ChannelTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;Lcom/smedialink/storage/domain/model/catalog/Channel;Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;",
            "Lcom/smedialink/storage/domain/model/catalog/Channel;",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/ChannelCountry;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;",
            "Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/ChannelTag;",
            ">;)V"
        }
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countries"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invalidReason"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->category:Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    .line 5
    iput-object p2, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->channel:Lcom/smedialink/storage/domain/model/catalog/Channel;

    .line 6
    iput-object p3, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->countries:Ljava/util/List;

    .line 7
    iput-object p4, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->createdAt:Ljava/lang/String;

    .line 8
    iput-wide p5, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->id:J

    .line 9
    iput-object p7, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->invalidReason:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->language:Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;

    .line 11
    iput-object p9, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->status:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    .line 12
    iput-object p10, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->tags:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/catalog/Campaign;Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;Lcom/smedialink/storage/domain/model/catalog/Channel;Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;Ljava/util/List;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/catalog/Campaign;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->category:Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->channel:Lcom/smedialink/storage/domain/model/catalog/Channel;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->countries:Ljava/util/List;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->createdAt:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->id:J

    goto :goto_4

    :cond_4
    move-wide/from16 v6, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->invalidReason:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->language:Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->status:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->tags:Ljava/util/List;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p10

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-wide/from16 p5, v6

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/smedialink/storage/domain/model/catalog/Campaign;->copy(Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;Lcom/smedialink/storage/domain/model/catalog/Channel;Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;Ljava/util/List;)Lcom/smedialink/storage/domain/model/catalog/Campaign;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->category:Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    return-object v0
.end method

.method public final component2()Lcom/smedialink/storage/domain/model/catalog/Channel;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->channel:Lcom/smedialink/storage/domain/model/catalog/Channel;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/ChannelCountry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->countries:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->id:J

    return-wide v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->invalidReason:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->language:Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;

    return-object v0
.end method

.method public final component8()Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->status:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    return-object v0
.end method

.method public final component9()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/ChannelTag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;Lcom/smedialink/storage/domain/model/catalog/Channel;Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;Ljava/util/List;)Lcom/smedialink/storage/domain/model/catalog/Campaign;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;",
            "Lcom/smedialink/storage/domain/model/catalog/Channel;",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/ChannelCountry;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;",
            "Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/ChannelTag;",
            ">;)",
            "Lcom/smedialink/storage/domain/model/catalog/Campaign;"
        }
    .end annotation

    const-string v0, "category"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countries"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invalidReason"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/catalog/Campaign;

    move-object v1, v0

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v11}, Lcom/smedialink/storage/domain/model/catalog/Campaign;-><init>(Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;Lcom/smedialink/storage/domain/model/catalog/Channel;Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/catalog/Campaign;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/catalog/Campaign;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->category:Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/catalog/Campaign;->category:Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->channel:Lcom/smedialink/storage/domain/model/catalog/Channel;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/catalog/Campaign;->channel:Lcom/smedialink/storage/domain/model/catalog/Channel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->countries:Ljava/util/List;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/catalog/Campaign;->countries:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->createdAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/catalog/Campaign;->createdAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->id:J

    iget-wide v5, p1, Lcom/smedialink/storage/domain/model/catalog/Campaign;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->invalidReason:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/catalog/Campaign;->invalidReason:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->language:Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/catalog/Campaign;->language:Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->status:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/catalog/Campaign;->status:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->tags:Ljava/util/List;

    iget-object p1, p1, Lcom/smedialink/storage/domain/model/catalog/Campaign;->tags:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getCategory()Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->category:Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    return-object v0
.end method

.method public final getChannel()Lcom/smedialink/storage/domain/model/catalog/Channel;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->channel:Lcom/smedialink/storage/domain/model/catalog/Channel;

    return-object v0
.end method

.method public final getCountries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/ChannelCountry;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->countries:Ljava/util/List;

    return-object v0
.end method

.method public final getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->id:J

    return-wide v0
.end method

.method public final getInvalidReason()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->invalidReason:Ljava/lang/String;

    return-object v0
.end method

.method public final getLanguage()Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->language:Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;

    return-object v0
.end method

.method public final getStatus()Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->status:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    return-object v0
.end method

.method public final getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/ChannelTag;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->tags:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->category:Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->channel:Lcom/smedialink/storage/domain/model/catalog/Channel;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/catalog/Channel;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->countries:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->createdAt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->id:J

    invoke-static {v1, v2}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->invalidReason:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->language:Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->status:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->tags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Campaign(category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->category:Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->channel:Lcom/smedialink/storage/domain/model/catalog/Channel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", countries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->countries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", invalidReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->invalidReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->language:Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->status:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;->tags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
