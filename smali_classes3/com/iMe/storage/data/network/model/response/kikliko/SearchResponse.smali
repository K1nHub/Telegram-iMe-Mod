.class public final Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;
.super Ljava/lang/Object;
.source "SearchResponse.kt"


# instance fields
.field private final currentPage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "current_page"
    .end annotation
.end field

.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final hasNext:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "has_next"
    .end annotation
.end field

.field private final perPage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "per_page"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;",
            ">;IIZ)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->data:Ljava/util/List;

    .line 7
    iput p2, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->currentPage:I

    .line 9
    iput p3, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->perPage:I

    .line 11
    iput-boolean p4, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->hasNext:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;Ljava/util/List;IIZILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->data:Ljava/util/List;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->currentPage:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->perPage:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->hasNext:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->copy(Ljava/util/List;IIZ)Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->data:Ljava/util/List;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->currentPage:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->perPage:I

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->hasNext:Z

    return v0
.end method

.method public final copy(Ljava/util/List;IIZ)Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;",
            ">;IIZ)",
            "Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;-><init>(Ljava/util/List;IIZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->data:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->data:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->currentPage:I

    iget v3, p1, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->currentPage:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->perPage:I

    iget v3, p1, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->perPage:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->hasNext:Z

    iget-boolean p1, p1, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->hasNext:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCurrentPage()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->currentPage:I

    return v0
.end method

.method public final getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->data:Ljava/util/List;

    return-object v0
.end method

.method public final getHasNext()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->hasNext:Z

    return v0
.end method

.method public final getPerPage()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->perPage:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->data:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->currentPage:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->perPage:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->hasNext:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchResponse(data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->currentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", perPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->perPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasNext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->hasNext:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
