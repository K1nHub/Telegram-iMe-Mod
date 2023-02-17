.class public final Lcom/smedialink/storage/data/mapper/crypto/CancelMappingKt;
.super Ljava/lang/Object;
.source "CancelMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;)Lcom/smedialink/storage/domain/model/crypto/cancel/CryptoCancelMetadata;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/cancel/CryptoCancelMetadata;

    .line 9
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->getTransactionParams()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;)Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v1

    .line 10
    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/cancel/GetCancelTransactionDataResponse;->getValue()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    .line 8
    :cond_0
    invoke-direct {v0, v1, v2, p0}, Lcom/smedialink/storage/domain/model/crypto/cancel/CryptoCancelMetadata;-><init>(Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)V

    return-object v0
.end method
