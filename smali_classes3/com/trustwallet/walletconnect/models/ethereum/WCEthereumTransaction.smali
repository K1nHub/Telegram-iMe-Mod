.class public final Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;
.super Ljava/lang/Object;
.source "WCEthereumTransaction.kt"


# instance fields
.field private final data:Ljava/lang/String;

.field private final from:Ljava/lang/String;

.field private final gas:Ljava/lang/String;

.field private final gasLimit:Ljava/lang/String;

.field private final gasPrice:Ljava/lang/String;

.field private final maxFeePerGas:Ljava/lang/String;

.field private final maxPriorityFeePerGas:Ljava/lang/String;

.field private final nonce:Ljava/lang/String;

.field private final to:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->from:Ljava/lang/String;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->from:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->to:Ljava/lang/String;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->to:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->nonce:Ljava/lang/String;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->nonce:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->gasPrice:Ljava/lang/String;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->gasPrice:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->maxFeePerGas:Ljava/lang/String;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->maxFeePerGas:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->maxPriorityFeePerGas:Ljava/lang/String;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->maxPriorityFeePerGas:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->gas:Ljava/lang/String;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->gas:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->gasLimit:Ljava/lang/String;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->gasLimit:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->value:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->data:Ljava/lang/String;

    iget-object p1, p1, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->data:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getData()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->data:Ljava/lang/String;

    return-object v0
.end method

.method public final getFrom()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->from:Ljava/lang/String;

    return-object v0
.end method

.method public final getGas()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->gas:Ljava/lang/String;

    return-object v0
.end method

.method public final getGasPrice()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->gasPrice:Ljava/lang/String;

    return-object v0
.end method

.method public final getNonce()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public final getTo()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->to:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->from:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->to:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->nonce:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->gasPrice:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->maxFeePerGas:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->maxPriorityFeePerGas:Ljava/lang/String;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->gas:Ljava/lang/String;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->gasLimit:Ljava/lang/String;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->value:Ljava/lang/String;

    if-nez v1, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WCEthereumTransaction(from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gasPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->gasPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxFeePerGas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->maxFeePerGas:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxPriorityFeePerGas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->maxPriorityFeePerGas:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->gas:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gasLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->gasLimit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
