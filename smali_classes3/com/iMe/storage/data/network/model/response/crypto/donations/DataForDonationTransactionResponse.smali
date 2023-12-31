.class public final Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;
.super Ljava/lang/Object;
.source "DataForDonationTransactionResponse.kt"


# instance fields
.field private final feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

.field private final recipientAddress:Ljava/lang/String;

.field private final token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

.field private final transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Ljava/lang/String;)V
    .locals 1

    const-string v0, "transactionParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientAddress"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    .line 8
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    .line 9
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    .line 10
    iput-object p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->recipientAddress:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->recipientAddress:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->copy(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->recipientAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;
    .locals 1

    const-string v0, "transactionParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientAddress"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;-><init>(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->recipientAddress:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->recipientAddress:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-object v0
.end method

.method public final getRecipientAddress()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->recipientAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    return-object v0
.end method

.method public final getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->recipientAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataForDonationTransactionResponse(transactionParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->transactionParams:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->token:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feeToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->feeToken:Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recipientAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->recipientAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
