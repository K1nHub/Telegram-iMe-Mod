.class public final Lcom/iMe/storage/data/mapper/crypto/CancelMappingKt;
.super Ljava/lang/Object;
.source "CancelMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/cancel/CancelTransactionDataResponse;)Lcom/iMe/storage/domain/model/crypto/cancel/CryptoCancelMetadata;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cancel/CryptoCancelMetadata;

    .line 9
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cancel/CancelTransactionDataResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cancel/CancelTransactionDataResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cancel/CancelTransactionDataResponse;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-direct {v0, v1, v2, p0}, Lcom/iMe/storage/domain/model/crypto/cancel/CryptoCancelMetadata;-><init>(Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V

    return-object v0
.end method
