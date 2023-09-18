.class public final Lcom/iMe/mapper/cryptobox/CryptoBoxActionUiMappingKt;
.super Ljava/lang/Object;
.source "CryptoBoxActionUiMapping.kt"


# direct methods
.method public static final mapToUi(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;)Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;
    .locals 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    .line 9
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;->getId()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;->getTokenAmount()Ljava/math/BigDecimal;

    move-result-object v3

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;->getType()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;

    move-result-object v4

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;->getStatus()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    move-result-object v5

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;->getIssuedAt()Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;->getTxHash()Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;->getTxUrl()Ljava/lang/String;

    move-result-object v8

    .line 16
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v9

    .line 17
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;->getFeeAmount()Ljava/math/BigDecimal;

    move-result-object v10

    .line 18
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v11

    move-object v1, v0

    .line 8
    invoke-direct/range {v1 .. v11}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/math/BigDecimal;Lcom/iMe/model/wallet/crypto/TokenItem;)V

    return-object v0
.end method
