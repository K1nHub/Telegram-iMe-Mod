.class public final Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;
.super Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse;
.source "CryptoTransferDataResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TRON"
.end annotation


# instance fields
.field private final estimateFees:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

.field private final feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

.field private final token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

.field private final transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;)V
    .locals 1

    const-string v0, "feeToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "estimateFees"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse;-><init>(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    .line 20
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    .line 21
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;

    .line 22
    iput-object p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->estimateFees:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object p1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object p2

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;

    move-result-object p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->estimateFees:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->copy(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;)Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->estimateFees:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;)Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;
    .locals 1

    const-string v0, "feeToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "estimateFees"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;-><init>(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->estimateFees:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->estimateFees:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getEstimateFees()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->estimateFees:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    return-object v0
.end method

.method public getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-object v0
.end method

.method public getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-object v0
.end method

.method public getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;

    return-object v0
.end method

.method public bridge synthetic getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->estimateFees:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TRON(feeToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transactionParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", estimateFees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->estimateFees:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
