.class public final Lcom/iMe/mapper/wallet/FoundTokenUiMappingKt;
.super Ljava/lang/Object;
.source "FoundTokenUiMapping.kt"


# direct methods
.method public static final mapToIndexedToken(Lcom/iMe/model/wallet/home/FoundTokenItem;)Lcom/iMe/storage/domain/model/wallet/token/Token;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/Token;

    .line 23
    invoke-virtual {p0}, Lcom/iMe/model/wallet/home/FoundTokenItem;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {p0}, Lcom/iMe/model/wallet/home/FoundTokenItem;->getNetworkId()Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-direct {v0, v1, p0}, Lcom/iMe/storage/domain/model/wallet/token/Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToUi(Lcom/iMe/storage/domain/model/wallet/token/FoundToken;)Lcom/iMe/model/wallet/home/FoundTokenItem;
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/iMe/model/wallet/home/FoundTokenItem;

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getName()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAvatarUrl()Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network;->getLogoUrl()Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->isEnabled()Z

    move-result v8

    .line 17
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->isCustom()Z

    move-result v9

    .line 18
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->isCoin()Z

    move-result p0

    xor-int/lit8 v10, p0, 0x1

    move-object v1, v0

    .line 9
    invoke-direct/range {v1 .. v10}, Lcom/iMe/model/wallet/home/FoundTokenItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v0
.end method
