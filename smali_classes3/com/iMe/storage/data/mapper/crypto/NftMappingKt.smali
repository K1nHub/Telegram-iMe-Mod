.class public final Lcom/iMe/storage/data/mapper/crypto/NftMappingKt;
.super Ljava/lang/Object;
.source "NftMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;)Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;->getId()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;->getNetwork()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;->getName()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;->getSymbol()Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;->getSize()I

    move-result v7

    .line 18
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 19
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/StringExtKt;->convertIpfsIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 20
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;->getTokensOwned()Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v10

    move-object v1, v0

    .line 11
    invoke-direct/range {v1 .. v10}, Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;)Lcom/iMe/storage/domain/model/crypto/nft/NftToken;
    .locals 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    .line 25
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->getId()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->getCollectionId()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->getTokenId()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->getTokenURI()Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->getOwner()Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 31
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->getMetadata()Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v8, ""

    if-nez v1, :cond_0

    move-object v9, v8

    goto :goto_0

    :cond_0
    move-object v9, v1

    .line 32
    :goto_0
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->getMetadata()Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v10, v8

    goto :goto_1

    :cond_1
    move-object v10, v1

    .line 33
    :goto_1
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->getMetadata()Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;->getImage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v8

    :cond_2
    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/StringExtKt;->convertIpfsIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 34
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->getMetadata()Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;->getExternalUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v12, v8

    goto :goto_2

    :cond_3
    move-object v12, v1

    .line 35
    :goto_2
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->getCollection()Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/storage/data/mapper/crypto/NftMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;)Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;

    move-result-object p0

    move-object v1, v0

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, p0

    .line 24
    invoke-direct/range {v1 .. v12}, Lcom/iMe/storage/domain/model/crypto/nft/NftToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;)V

    return-object v0
.end method
