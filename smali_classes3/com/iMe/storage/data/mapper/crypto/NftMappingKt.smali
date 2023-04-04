.class public final Lcom/iMe/storage/data/mapper/crypto/NftMappingKt;
.super Ljava/lang/Object;
.source "NftMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse$NftCollectionResponse;)Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftCollection;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse$NftCollectionResponse;->getId()J

    move-result-wide v2

    .line 24
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse$NftCollectionResponse;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 25
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftCollectionStatus;->Companion:Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftCollectionStatus$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse$NftCollectionResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftCollectionStatus$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftCollectionStatus;

    move-result-object v7

    .line 26
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse$NftCollectionResponse;->getContractAddress()Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse$NftCollectionResponse;->getTransactionHash()Ljava/lang/String;

    move-result-object v6

    .line 22
    new-instance p0, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftCollection;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftCollection;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftCollectionStatus;)V

    return-object p0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse;)Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse;->getId()J

    move-result-wide v2

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse;->getTokenId()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse;->getOwner()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse;->getImage()Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse;->getMeta()Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 16
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse;->getDescription()Ljava/lang/String;

    move-result-object v9

    .line 17
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse;->getCollection()Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse$NftCollectionResponse;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/storage/data/mapper/crypto/NftMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/nft/avatar/NftAvatarResponse$NftCollectionResponse;)Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftCollection;

    move-result-object v10

    move-object v1, v0

    .line 9
    invoke-direct/range {v1 .. v10}, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftCollection;)V

    return-object v0
.end method
