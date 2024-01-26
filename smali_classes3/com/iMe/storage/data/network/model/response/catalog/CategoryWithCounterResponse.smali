.class public final Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;
.super Ljava/lang/Object;
.source "CategoryWithCounterResponse.kt"


# instance fields
.field private final category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

.field private final total:I


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;I)V
    .locals 1

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    .line 5
    iput p2, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;->total:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;IILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;->total:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;->copy(Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;I)Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;->total:I

    return v0
.end method

.method public final copy(Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;I)Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;
    .locals 1

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;

    invoke-direct {v0, p1, p2}, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;-><init>(Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;->total:I

    iget p1, p1, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;->total:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCategory()Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    return-object v0
.end method

.method public final getTotal()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;->total:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;->total:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CategoryWithCounterResponse(category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;->category:Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/catalog/CategoryWithCounterResponse;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
