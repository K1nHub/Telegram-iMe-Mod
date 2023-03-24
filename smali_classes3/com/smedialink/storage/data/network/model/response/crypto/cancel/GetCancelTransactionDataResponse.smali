.class public final Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;
.super Ljava/lang/Object;
.source "GetCancelTransactionDataResponse.kt"


# instance fields
.field private final feeTokenCode:Ljava/lang/String;

.field private final transactionParams:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "transactionParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeTokenCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->transactionParams:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    .line 7
    iput-object p2, p0, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->feeTokenCode:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->value:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->transactionParams:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->feeTokenCode:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->value:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->copy(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->transactionParams:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->feeTokenCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;
    .locals 1

    const-string v0, "transactionParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeTokenCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;-><init>(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->transactionParams:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->transactionParams:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->feeTokenCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->feeTokenCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->value:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getFeeTokenCode()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->feeTokenCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransactionParams()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->transactionParams:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->transactionParams:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->feeTokenCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetCancelTransactionDataResponse(transactionParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->transactionParams:Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feeTokenCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->feeTokenCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
