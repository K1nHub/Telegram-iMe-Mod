.class public final Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;
.super Ljava/lang/Object;
.source "NftItemResponse.kt"


# instance fields
.field private final address:Ljava/lang/String;

.field private final collection:Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;

.field private final collectionId:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final metadata:Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;

.field private final owner:Ljava/lang/String;

.field private final tokenId:Ljava/lang/String;

.field private final tokenURI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectionId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenURI"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collection"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->id:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->collectionId:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->tokenId:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->tokenURI:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->owner:Ljava/lang/String;

    .line 9
    iput-object p6, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->address:Ljava/lang/String;

    .line 10
    iput-object p7, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->metadata:Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;

    .line 11
    iput-object p8, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->collection:Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->collectionId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->tokenId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->tokenURI:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->owner:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->address:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->metadata:Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->collection:Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;)Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->collectionId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->tokenId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->tokenURI:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->metadata:Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;

    return-object v0
.end method

.method public final component8()Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->collection:Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;)Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;
    .locals 10

    const-string v0, "id"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectionId"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenId"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenURI"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collection"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->collectionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->collectionId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->tokenId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->tokenId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->tokenURI:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->tokenURI:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->owner:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->owner:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->address:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->address:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->metadata:Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->metadata:Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->collection:Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->collection:Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getCollection()Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->collection:Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;

    return-object v0
.end method

.method public final getCollectionId()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->collectionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetadata()Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->metadata:Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;

    return-object v0
.end method

.method public final getOwner()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokenId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->tokenId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokenURI()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->tokenURI:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->collectionId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->tokenId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->tokenURI:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->owner:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->metadata:Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->collection:Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NftItemResponse(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", collectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->collectionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->tokenId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->tokenURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->owner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->metadata:Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemMetadataResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", collection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/nft/NftItemResponse;->collection:Lcom/iMe/storage/data/network/model/response/crypto/nft/NftCollectionResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
