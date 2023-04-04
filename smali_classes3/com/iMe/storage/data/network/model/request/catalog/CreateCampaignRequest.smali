.class public final Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;
.super Ljava/lang/Object;
.source "CreateCampaignRequest.kt"


# instance fields
.field private final categoryId:I

.field private final countryIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final languageId:I

.field private final shortnameOrId:Ljava/lang/String;

.field private final tagIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "countryIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shortnameOrId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagIds"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->categoryId:I

    .line 5
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->countryIds:Ljava/util/List;

    .line 6
    iput p3, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->languageId:I

    .line 7
    iput-object p4, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->shortnameOrId:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->tagIds:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;ILjava/util/List;ILjava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->categoryId:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->countryIds:Ljava/util/List;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->languageId:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->shortnameOrId:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->tagIds:Ljava/util/List;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p7

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->copy(ILjava/util/List;ILjava/lang/String;Ljava/util/List;)Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->categoryId:I

    return v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->countryIds:Ljava/util/List;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->languageId:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->shortnameOrId:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->tagIds:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ILjava/util/List;ILjava/lang/String;Ljava/util/List;)Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;"
        }
    .end annotation

    const-string v0, "countryIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shortnameOrId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagIds"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;-><init>(ILjava/util/List;ILjava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;

    iget v1, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->categoryId:I

    iget v3, p1, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->categoryId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->countryIds:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->countryIds:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->languageId:I

    iget v3, p1, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->languageId:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->shortnameOrId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->shortnameOrId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->tagIds:Ljava/util/List;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->tagIds:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCategoryId()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->categoryId:I

    return v0
.end method

.method public final getCountryIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->countryIds:Ljava/util/List;

    return-object v0
.end method

.method public final getLanguageId()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->languageId:I

    return v0
.end method

.method public final getShortnameOrId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->shortnameOrId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTagIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->tagIds:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->categoryId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->countryIds:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->languageId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->shortnameOrId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->tagIds:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreateCampaignRequest(categoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->categoryId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countryIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->countryIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", languageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->languageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shortnameOrId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->shortnameOrId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tagIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/catalog/CreateCampaignRequest;->tagIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
