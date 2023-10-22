.class public final Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;
.super Ljava/lang/Object;
.source "TokenBuyCoordinatorArgs.kt"


# instance fields
.field private final fromToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final networkId:Ljava/lang/String;

.field private final swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

.field private final tokenTo:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->fromToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 8
    iput-object p2, p0, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->tokenTo:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 9
    iput-object p3, p0, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 10
    iput-object p4, p0, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->networkId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    iget-object v1, p0, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->fromToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    iget-object v3, p1, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->fromToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->tokenTo:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    iget-object v3, p1, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->tokenTo:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    iget-object v3, p1, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->networkId:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->networkId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getFromToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->fromToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final getNetworkId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->networkId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSwapProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    return-object v0
.end method

.method public final getTokenTo()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->tokenTo:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->fromToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->tokenTo:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->networkId:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenBuyCoordinatorArgs(fromToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->fromToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->tokenTo:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", swapProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", networkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->networkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
