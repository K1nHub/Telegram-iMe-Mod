.class public final Lcom/smedialink/storage/data/mapper/crypto/DonationMappingKt;
.super Ljava/lang/Object;
.source "DonationMapping.kt"


# direct methods
.method public static final mapToCryptoMetadata(Lcom/smedialink/storage/domain/model/crypto/donations/DonationTransferMetadata;)Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/donations/DonationTransferMetadata;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/donations/DonationTransferMetadata;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/donations/DonationTransferMetadata;->getContractAddress()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;-><init>(Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;)Lcom/smedialink/storage/domain/model/crypto/donations/DonationTransferMetadata;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/donations/DonationTransferMetadata;

    .line 10
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->getTransactionParams()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;)Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    .line 11
    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    .line 12
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->getContractAddress()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->getRecipientAddress()Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/smedialink/storage/domain/model/crypto/donations/DonationTransferMetadata;-><init>(Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
