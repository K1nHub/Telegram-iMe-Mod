.class public final Lcom/iMe/storage/data/mapper/cryptobox/CryptoBoxParticipationDataMappingKt;
.super Ljava/lang/Object;
.source "CryptoBoxParticipationDataMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationDataResponse;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationData;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationData;

    .line 8
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationDataResponse;->getStatus()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationStatus;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationDataResponse;->getTransactionUrl()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-direct {v0, v1, p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationData;-><init>(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationStatus;Ljava/lang/String;)V

    return-object v0
.end method
