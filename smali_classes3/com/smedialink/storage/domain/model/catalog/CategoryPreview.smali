.class public final Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;
.super Ljava/lang/Object;
.source "CategoryPreview.kt"


# instance fields
.field private final category:Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/Campaign;",
            ">;"
        }
    .end annotation
.end field

.field private final meta:Lcom/smedialink/storage/domain/model/catalog/CursorMeta;

.field private final total:I


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;Ljava/util/List;Lcom/smedialink/storage/domain/model/catalog/CursorMeta;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/Campaign;",
            ">;",
            "Lcom/smedialink/storage/domain/model/catalog/CursorMeta;",
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
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->category:Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    .line 5
    iput-object p2, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->items:Ljava/util/List;

    .line 6
    iput-object p3, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->meta:Lcom/smedialink/storage/domain/model/catalog/CursorMeta;

    .line 7
    iput p4, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->total:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;Ljava/util/List;Lcom/smedialink/storage/domain/model/catalog/CursorMeta;IILjava/lang/Object;)Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->category:Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->items:Ljava/util/List;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->meta:Lcom/smedialink/storage/domain/model/catalog/CursorMeta;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->total:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->copy(Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;Ljava/util/List;Lcom/smedialink/storage/domain/model/catalog/CursorMeta;I)Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->category:Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/Campaign;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->items:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Lcom/smedialink/storage/domain/model/catalog/CursorMeta;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->meta:Lcom/smedialink/storage/domain/model/catalog/CursorMeta;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->total:I

    return v0
.end method

.method public final copy(Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;Ljava/util/List;Lcom/smedialink/storage/domain/model/catalog/CursorMeta;I)Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/Campaign;",
            ">;",
            "Lcom/smedialink/storage/domain/model/catalog/CursorMeta;",
            "I)",
            "Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;"
        }
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "meta"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;-><init>(Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;Ljava/util/List;Lcom/smedialink/storage/domain/model/catalog/CursorMeta;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->category:Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->category:Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->items:Ljava/util/List;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->items:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->meta:Lcom/smedialink/storage/domain/model/catalog/CursorMeta;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->meta:Lcom/smedialink/storage/domain/model/catalog/CursorMeta;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->total:I

    iget p1, p1, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->total:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCategory()Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->category:Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    return-object v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/Campaign;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getMeta()Lcom/smedialink/storage/domain/model/catalog/CursorMeta;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->meta:Lcom/smedialink/storage/domain/model/catalog/CursorMeta;

    return-object v0
.end method

.method public final getTotal()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->total:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->category:Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->items:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->meta:Lcom/smedialink/storage/domain/model/catalog/CursorMeta;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/catalog/CursorMeta;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->total:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CategoryPreview(category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->category:Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", meta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->meta:Lcom/smedialink/storage/domain/model/catalog/CursorMeta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
