.class public final Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;
.super Ljava/lang/Object;
.source "SearchResultResponse.kt"


# instance fields
.field private final data:Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;

.field private final result:Z


# direct methods
.method public constructor <init>(ZLcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;->result:Z

    .line 5
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;->data:Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;ZLcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;->result:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;->data:Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;->copy(ZLcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;)Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;->result:Z

    return v0
.end method

.method public final component2()Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;->data:Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;

    return-object v0
.end method

.method public final copy(ZLcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;)Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;
    .locals 1

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;

    invoke-direct {v0, p1, p2}, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;-><init>(ZLcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;

    iget-boolean v1, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;->result:Z

    iget-boolean v3, p1, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;->result:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;->data:Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;->data:Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getData()Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;->data:Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;

    return-object v0
.end method

.method public final getResult()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;->result:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;->result:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;->data:Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchResultResponse(result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;->result:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/kikliko/SearchResultResponse;->data:Lcom/iMe/storage/data/network/model/response/kikliko/SearchResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
