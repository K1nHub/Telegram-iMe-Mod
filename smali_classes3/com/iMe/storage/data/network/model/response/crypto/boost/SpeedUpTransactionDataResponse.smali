.class public final Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;
.super Ljava/lang/Object;
.source "GetBoostTransactionDataResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;
    }
.end annotation


# instance fields
.field private final feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

.field private final oldTransactionData:Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;

.field private final transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)V
    .locals 1

    const-string v0, "transactionParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldTransactionData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    .line 9
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->oldTransactionData:Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;

    .line 10
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->oldTransactionData:Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->copy(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->oldTransactionData:Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;
    .locals 1

    const-string v0, "transactionParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldTransactionData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;-><init>(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->oldTransactionData:Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->oldTransactionData:Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-object v0
.end method

.method public final getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->oldTransactionData:Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;

    return-object v0
.end method

.method public final getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->oldTransactionData:Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpeedUpTransactionDataResponse(transactionParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", oldTransactionData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->oldTransactionData:Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feeToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
