.class public final Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;
.super Ljava/lang/Object;
.source "CategoryPreviewResponse.kt"


# instance fields
.field private final category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final meta:Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;

.field private final total:I


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;Ljava/util/List;Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;",
            ">;",
            "Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;",
            "I)V"
        }
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "meta"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    .line 5
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->items:Ljava/util/List;

    .line 6
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->meta:Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;

    .line 7
    iput p4, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->total:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;Ljava/util/List;Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;IILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->items:Ljava/util/List;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->meta:Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->total:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->copy(Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;Ljava/util/List;Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;I)Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->items:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->meta:Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->total:I

    return v0
.end method

.method public final copy(Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;Ljava/util/List;Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;I)Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;",
            ">;",
            "Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;",
            "I)",
            "Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;"
        }
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "meta"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;-><init>(Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;Ljava/util/List;Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->items:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->items:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->meta:Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->meta:Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->total:I

    iget p1, p1, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->total:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCategory()Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    return-object v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getMeta()Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->meta:Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;

    return-object v0
.end method

.method public final getTotal()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->total:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->items:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->meta:Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->total:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CategoryPreviewResponse(category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", meta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->meta:Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
