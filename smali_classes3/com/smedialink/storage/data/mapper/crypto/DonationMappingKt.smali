.class public final Lcom/smedialink/storage/data/mapper/crypto/DonationMappingKt;
.super Ljava/lang/Object;
.source "DonationMapping.kt"


# direct methods
.method public static final mapToCryptoMetadata(Lcom/smedialink/storage/domain/model/crypto/donations/DonationTransferMetadata;)Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/donations/DonationTransferMetadata;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/donations/DonationTransferMetadata;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/donations/DonationTransferMetadata;->getContractAddress()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;-><init>(Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;)Lcom/smedialink/storage/domain/model/crypto/donations/DonationTransferMetadata;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/DataForCryptoTransferResponse;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->getTransactionParams()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->getContractAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/DataForCryptoTransferResponse;-><init>(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smedialink/storage/data/mapper/crypto/TransferMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/DataForCryptoTransferResponse;)Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/smedialink/storage/domain/model/crypto/donations/DonationTransferMetadata;

    .line 12
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v2

    .line 13
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    .line 14
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->getRecipientAddress()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-direct {v1, v2, v3, v0, p0}, Lcom/smedialink/storage/domain/model/crypto/donations/DonationTransferMetadata;-><init>(Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
