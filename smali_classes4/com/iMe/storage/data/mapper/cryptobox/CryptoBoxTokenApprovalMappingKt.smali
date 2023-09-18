.class public final Lcom/iMe/storage/data/mapper/cryptobox/CryptoBoxTokenApprovalMappingKt;
.super Ljava/lang/Object;
.source "CryptoBoxTokenApprovalMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTokenApprovalResponse;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalInfo;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalInfo;

    .line 9
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTokenApprovalResponse;->getStatus()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTokenApprovalResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p0

    .line 8
    invoke-direct {v0, v1, p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalInfo;-><init>(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-object v0
.end method
