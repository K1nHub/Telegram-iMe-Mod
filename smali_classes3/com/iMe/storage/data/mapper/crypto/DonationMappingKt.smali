.class public final Lcom/iMe/storage/data/mapper/crypto/DonationMappingKt;
.super Ljava/lang/Object;
.source "DonationMapping.kt"


# direct methods
.method public static final mapToCryptoMetadata(Lcom/iMe/storage/domain/model/crypto/donations/DonationTransferMetadata;)Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/donations/DonationTransferMetadata;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/donations/DonationTransferMetadata;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/donations/DonationTransferMetadata;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;-><init>(Lcom/iMe/storage/domain/model/crypto/TransactionParams;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;)Lcom/iMe/storage/domain/model/crypto/donations/DonationTransferMetadata;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/donations/DonationTransferMetadata;

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v3

    invoke-static {v3}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/donations/DataForDonationTransactionResponse;->getRecipientAddress()Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/iMe/storage/domain/model/crypto/donations/DonationTransferMetadata;-><init>(Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V

    return-object v0
.end method
