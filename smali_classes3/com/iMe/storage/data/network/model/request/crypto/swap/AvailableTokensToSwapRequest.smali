.class public final Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;
.super Ljava/lang/Object;
.source "AvailableTokensToSwapRequest.kt"


# instance fields
.field private final cursor:Ljava/lang/String;

.field private final defiProtocol:Ljava/lang/String;

.field private final direction:Ljava/lang/String;

.field private final networkType:Ljava/lang/String;

.field private final query:Ljava/lang/String;

.field private final size:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "defiProtocol"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->defiProtocol:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->networkType:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->query:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->direction:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->cursor:Ljava/lang/String;

    .line 9
    iput-object p6, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->size:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->defiProtocol:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->networkType:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->query:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->direction:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->cursor:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->size:Ljava/lang/Integer;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->defiProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->query:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->direction:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->cursor:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->size:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;
    .locals 8

    const-string v0, "defiProtocol"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->defiProtocol:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->defiProtocol:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->networkType:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->networkType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->query:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->query:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->direction:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->direction:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->cursor:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->cursor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->size:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->size:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCursor()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->cursor:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefiProtocol()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->defiProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public final getDirection()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->direction:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->query:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()Ljava/lang/Integer;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->size:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->defiProtocol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->networkType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->query:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->direction:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->cursor:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->size:Ljava/lang/Integer;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AvailableTokensToSwapRequest(defiProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->defiProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->networkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->direction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->cursor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;->size:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
