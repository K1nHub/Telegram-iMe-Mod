.class public final Lcom/iMe/model/wallet/home/nft/NftCollectionItem;
.super Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;
.source "NftCollectionItem.kt"


# instance fields
.field private final childNode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation
.end field

.field private final collection:Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;

.field private final isNetworkLogoVisible:Z

.field private final networkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

.field private final tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/nft/NftTokenItem;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/iMe/model/wallet/home/nft/NftType;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;Ljava/util/List;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;ZLcom/iMe/model/wallet/home/nft/NftType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/nft/NftTokenItem;",
            ">;",
            "Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;",
            "Z",
            "Lcom/iMe/model/wallet/home/nft/NftType;",
            ")V"
        }
    .end annotation

    const-string v0, "collection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokens"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->collection:Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;

    .line 11
    iput-object p2, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->tokens:Ljava/util/List;

    .line 12
    iput-object p3, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->networkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 13
    iput-boolean p4, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->isNetworkLogoVisible:Z

    .line 14
    iput-object p5, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->type:Lcom/iMe/model/wallet/home/nft/NftType;

    .line 17
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->childNode:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/home/nft/NftCollectionItem;Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;Ljava/util/List;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;ZLcom/iMe/model/wallet/home/nft/NftType;ILjava/lang/Object;)Lcom/iMe/model/wallet/home/nft/NftCollectionItem;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->collection:Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->tokens:Ljava/util/List;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->networkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->isNetworkLogoVisible:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->type:Lcom/iMe/model/wallet/home/nft/NftType;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->copy(Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;Ljava/util/List;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;ZLcom/iMe/model/wallet/home/nft/NftType;)Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->collection:Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/nft/NftTokenItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->tokens:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->networkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->isNetworkLogoVisible:Z

    return v0
.end method

.method public final component5()Lcom/iMe/model/wallet/home/nft/NftType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->type:Lcom/iMe/model/wallet/home/nft/NftType;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;Ljava/util/List;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;ZLcom/iMe/model/wallet/home/nft/NftType;)Lcom/iMe/model/wallet/home/nft/NftCollectionItem;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/nft/NftTokenItem;",
            ">;",
            "Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;",
            "Z",
            "Lcom/iMe/model/wallet/home/nft/NftType;",
            ")",
            "Lcom/iMe/model/wallet/home/nft/NftCollectionItem;"
        }
    .end annotation

    const-string v0, "collection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokens"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;-><init>(Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;Ljava/util/List;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;ZLcom/iMe/model/wallet/home/nft/NftType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 21
    :cond_0
    const-class v1, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.iMe.model.wallet.home.nft.NftCollectionItem"

    .line 22
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    .line 23
    iget-object v1, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->collection:Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;

    iget-object v3, p1, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->collection:Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->tokens:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->tokens:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result p1

    if-ne v1, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0
.end method

.method public getChildNode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->childNode:Ljava/util/List;

    return-object v0
.end method

.method public final getCollection()Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->collection:Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;

    return-object v0
.end method

.method public final getNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->networkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    return-object v0
.end method

.method public final getTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/nft/NftTokenItem;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->tokens:Ljava/util/List;

    return-object v0
.end method

.method public final getType()Lcom/iMe/model/wallet/home/nft/NftType;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->type:Lcom/iMe/model/wallet/home/nft/NftType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    iget-object v1, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->collection:Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->tokens:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isNetworkLogoVisible()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->isNetworkLogoVisible:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NftCollectionItem(collection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->collection:Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->tokens:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", networkItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->networkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isNetworkLogoVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->isNetworkLogoVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->type:Lcom/iMe/model/wallet/home/nft/NftType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
