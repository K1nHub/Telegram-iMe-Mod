.class public final Lcom/iMe/storage/data/mapper/cryptobox/CryptoBoxCreationRulesMappingKt;
.super Ljava/lang/Object;
.source "CryptoBoxCreationRulesMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxCreationRulesResponse;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;

    .line 9
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxCreationRulesResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxCreationRulesResponse;->getFeePerUser()D

    move-result-wide v3

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxCreationRulesResponse;->getFeePerCryptobox()D

    move-result-wide v5

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxCreationRulesResponse;->getMinimalCapacity()I

    move-result v7

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxCreationRulesResponse;->getFactoryContractAddress()Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxCreationRulesResponse;->getFactoryContractUrl()Ljava/lang/String;

    move-result-object v9

    move-object v1, v0

    .line 8
    invoke-direct/range {v1 .. v9}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;DDILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
