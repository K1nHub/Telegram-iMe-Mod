.class public final Lcom/iMe/storage/data/mapper/cryptobox/CryptoBoxParticipationResultMappingKt;
.super Ljava/lang/Object;
.source "CryptoBoxParticipationResultMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;

    .line 8
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;->getQueued()Z

    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;->getExpectedDurationSec()J

    move-result-wide v2

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;-><init>(ZJ)V

    return-object v0
.end method
