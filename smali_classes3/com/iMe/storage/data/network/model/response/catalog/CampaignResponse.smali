.class public final Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;
.super Ljava/lang/Object;
.source "CampaignResponse.kt"


# instance fields
.field private final category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

.field private final channel:Lcom/iMe/storage/data/network/model/response/catalog/ChannelResponse;

.field private final countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/catalog/ChannelCountryResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final createdAt:Ljava/lang/String;

.field private final id:J

.field private final invalidReason:Ljava/lang/String;

.field private final language:Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;

.field private final status:Ljava/lang/String;

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/catalog/ChannelTagResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;Lcom/iMe/storage/data/network/model/response/catalog/ChannelResponse;Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;",
            "Lcom/iMe/storage/data/network/model/response/catalog/ChannelResponse;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/catalog/ChannelCountryResponse;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/catalog/ChannelTagResponse;",
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

    const-string v0, "language"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    .line 5
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->channel:Lcom/iMe/storage/data/network/model/response/catalog/ChannelResponse;

    .line 6
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->countries:Ljava/util/List;

    .line 7
    iput-object p4, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->createdAt:Ljava/lang/String;

    .line 8
    iput-wide p5, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->id:J

    .line 9
    iput-object p7, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->invalidReason:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->language:Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;

    .line 11
    iput-object p9, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->status:Ljava/lang/String;

    .line 12
    iput-object p10, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->tags:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;Lcom/iMe/storage/data/network/model/response/catalog/ChannelResponse;Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->channel:Lcom/iMe/storage/data/network/model/response/catalog/ChannelResponse;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->countries:Ljava/util/List;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->createdAt:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->id:J

    goto :goto_4

    :cond_4
    move-wide/from16 v6, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->invalidReason:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->language:Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->status:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->tags:Ljava/util/List;

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

    invoke-virtual/range {p0 .. p10}, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->copy(Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;Lcom/iMe/storage/data/network/model/response/catalog/ChannelResponse;Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;Ljava/lang/String;Ljava/util/List;)Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/data/network/model/response/catalog/ChannelResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->channel:Lcom/iMe/storage/data/network/model/response/catalog/ChannelResponse;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/catalog/ChannelCountryResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->countries:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->id:J

    return-wide v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->invalidReason:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->language:Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/catalog/ChannelTagResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;Lcom/iMe/storage/data/network/model/response/catalog/ChannelResponse;Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;Ljava/lang/String;Ljava/util/List;)Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;",
            "Lcom/iMe/storage/data/network/model/response/catalog/ChannelResponse;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/catalog/ChannelCountryResponse;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/catalog/ChannelTagResponse;",
            ">;)",
            "Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;"
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

    const-string v0, "language"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;

    move-object v1, v0

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v11}, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;-><init>(Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;Lcom/iMe/storage/data/network/model/response/catalog/ChannelResponse;Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->channel:Lcom/iMe/storage/data/network/model/response/catalog/ChannelResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->channel:Lcom/iMe/storage/data/network/model/response/catalog/ChannelResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->countries:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->countries:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->createdAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->createdAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->id:J

    iget-wide v5, p1, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->invalidReason:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->invalidReason:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->language:Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->language:Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->tags:Ljava/util/List;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->tags:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getCategory()Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    return-object v0
.end method

.method public final getChannel()Lcom/iMe/storage/data/network/model/response/catalog/ChannelResponse;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->channel:Lcom/iMe/storage/data/network/model/response/catalog/ChannelResponse;

    return-object v0
.end method

.method public final getCountries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/catalog/ChannelCountryResponse;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->countries:Ljava/util/List;

    return-object v0
.end method

.method public final getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->id:J

    return-wide v0
.end method

.method public final getInvalidReason()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->invalidReason:Ljava/lang/String;

    return-object v0
.end method

.method public final getLanguage()Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->language:Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/catalog/ChannelTagResponse;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->tags:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->channel:Lcom/iMe/storage/data/network/model/response/catalog/ChannelResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/catalog/ChannelResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->countries:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->createdAt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->id:J

    invoke-static {v1, v2}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->invalidReason:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->language:Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->status:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->tags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CampaignResponse(category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->channel:Lcom/iMe/storage/data/network/model/response/catalog/ChannelResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", countries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->countries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->createdAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", invalidReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->invalidReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->language:Lcom/iMe/storage/data/network/model/response/catalog/CatalogLanguageResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;->tags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
