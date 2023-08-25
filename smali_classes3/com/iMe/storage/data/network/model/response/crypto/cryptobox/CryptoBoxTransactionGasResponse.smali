.class public final Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;
.super Ljava/lang/Object;
.source "CryptoBoxTransactionGasResponse.kt"


# instance fields
.field private final duration:I

.field private final token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

.field private final value:Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxValuesResponse;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxValuesResponse;I)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    .line 7
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->value:Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxValuesResponse;

    .line 8
    iput p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->duration:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxValuesResponse;IILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->value:Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxValuesResponse;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->duration:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->copy(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxValuesResponse;I)Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxValuesResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->value:Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxValuesResponse;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->duration:I

    return v0
.end method

.method public final copy(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxValuesResponse;I)Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;-><init>(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxValuesResponse;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->value:Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxValuesResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->value:Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxValuesResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->duration:I

    iget p1, p1, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->duration:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDuration()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->duration:I

    return v0
.end method

.method public final getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-object v0
.end method

.method public final getValue()Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxValuesResponse;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->value:Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxValuesResponse;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->value:Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxValuesResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxValuesResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->duration:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoBoxTransactionGasResponse(token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->value:Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxValuesResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
