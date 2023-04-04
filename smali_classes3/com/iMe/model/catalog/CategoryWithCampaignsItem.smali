.class public final Lcom/iMe/model/catalog/CategoryWithCampaignsItem;
.super Lcom/iMe/model/common/NoChildNode;
.source "CategoryWithCampaignsItem.kt"


# instance fields
.field private final campaigns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/catalog/CampaignItem;",
            ">;"
        }
    .end annotation
.end field

.field private final category:Lcom/iMe/storage/domain/model/catalog/CatalogCategory;

.field private final isEndReached:Z


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/catalog/CatalogCategory;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/catalog/CatalogCategory;",
            "Ljava/util/List<",
            "Lcom/iMe/model/catalog/CampaignItem;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "campaigns"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/iMe/model/common/NoChildNode;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->category:Lcom/iMe/storage/domain/model/catalog/CatalogCategory;

    .line 8
    iput-object p2, p0, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->campaigns:Ljava/util/List;

    .line 9
    iput-boolean p3, p0, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->isEndReached:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/catalog/CategoryWithCampaignsItem;Lcom/iMe/storage/domain/model/catalog/CatalogCategory;Ljava/util/List;ZILjava/lang/Object;)Lcom/iMe/model/catalog/CategoryWithCampaignsItem;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->category:Lcom/iMe/storage/domain/model/catalog/CatalogCategory;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->campaigns:Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->isEndReached:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->copy(Lcom/iMe/storage/domain/model/catalog/CatalogCategory;Ljava/util/List;Z)Lcom/iMe/model/catalog/CategoryWithCampaignsItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/catalog/CatalogCategory;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->category:Lcom/iMe/storage/domain/model/catalog/CatalogCategory;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/catalog/CampaignItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->campaigns:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->isEndReached:Z

    return v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/catalog/CatalogCategory;Ljava/util/List;Z)Lcom/iMe/model/catalog/CategoryWithCampaignsItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/catalog/CatalogCategory;",
            "Ljava/util/List<",
            "Lcom/iMe/model/catalog/CampaignItem;",
            ">;Z)",
            "Lcom/iMe/model/catalog/CategoryWithCampaignsItem;"
        }
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "campaigns"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;-><init>(Lcom/iMe/storage/domain/model/catalog/CatalogCategory;Ljava/util/List;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;

    iget-object v1, p0, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->category:Lcom/iMe/storage/domain/model/catalog/CatalogCategory;

    iget-object v3, p1, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->category:Lcom/iMe/storage/domain/model/catalog/CatalogCategory;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->campaigns:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->campaigns:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->isEndReached:Z

    iget-boolean p1, p1, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->isEndReached:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCampaigns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/catalog/CampaignItem;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->campaigns:Ljava/util/List;

    return-object v0
.end method

.method public final getCategory()Lcom/iMe/storage/domain/model/catalog/CatalogCategory;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->category:Lcom/iMe/storage/domain/model/catalog/CatalogCategory;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->category:Lcom/iMe/storage/domain/model/catalog/CatalogCategory;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/catalog/CatalogCategory;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->campaigns:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->isEndReached:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isEndReached()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->isEndReached:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CategoryWithCampaignsItem(category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->category:Lcom/iMe/storage/domain/model/catalog/CatalogCategory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", campaigns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->campaigns:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEndReached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;->isEndReached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
