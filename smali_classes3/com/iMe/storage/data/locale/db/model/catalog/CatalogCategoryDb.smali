.class public final Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;
.super Ljava/lang/Object;
.source "CatalogCategoryDb.kt"


# instance fields
.field private final id:J

.field private final title:Ljava/lang/String;

.field private final total:I


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 1

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->id:J

    .line 10
    iput-object p3, p0, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->title:Ljava/lang/String;

    .line 11
    iput p4, p0, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->total:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;

    iget-wide v3, p0, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->id:J

    iget-wide v5, p1, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->total:I

    iget p1, p1, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->total:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getId()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->id:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotal()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->total:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->id:J

    invoke-static {v0, v1}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->total:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CatalogCategoryDb(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
