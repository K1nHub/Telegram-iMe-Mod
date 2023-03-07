.class public final Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;
.super Ljava/lang/Object;
.source "GetWalletTransactionsRequest.kt"


# instance fields
.field private final filterByToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "filter"
    .end annotation
.end field

.field private final lastItemId:Ljava/lang/String;

.field private final limit:I

.field private final networkType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "networkType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->lastItemId:Ljava/lang/String;

    .line 7
    iput p2, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->limit:I

    .line 8
    iput-object p3, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->networkType:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->filterByToken:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->lastItemId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->limit:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->networkType:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->filterByToken:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->lastItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->limit:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->filterByToken:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;
    .locals 1

    const-string v0, "networkType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->lastItemId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->lastItemId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->limit:I

    iget v3, p1, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->limit:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->networkType:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->networkType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->filterByToken:Ljava/lang/String;

    iget-object p1, p1, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->filterByToken:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getFilterByToken()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->filterByToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastItemId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->lastItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLimit()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->limit:I

    return v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->lastItemId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->limit:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->networkType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->filterByToken:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetWalletTransactionsRequest(lastItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->lastItemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->networkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filterByToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/wallet/GetWalletTransactionsRequest;->filterByToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
