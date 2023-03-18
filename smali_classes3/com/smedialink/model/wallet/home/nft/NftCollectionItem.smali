.class public final Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;
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

.field private final collection:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;

.field private final tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/home/nft/NftTokenItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/home/nft/NftTokenItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "collection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokens"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;->collection:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;

    .line 10
    iput-object p2, p0, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;->tokens:Ljava/util/List;

    .line 14
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;->childNode:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;Ljava/util/List;ILjava/lang/Object;)Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;->collection:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;->tokens:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;->copy(Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;Ljava/util/List;)Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;->collection:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/home/nft/NftTokenItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;->tokens:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;Ljava/util/List;)Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/home/nft/NftTokenItem;",
            ">;)",
            "Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;"
        }
    .end annotation

    const-string v0, "collection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokens"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;-><init>(Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 20
    :cond_0
    const-class v1, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;

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
    const-string v1, "null cannot be cast to non-null type com.smedialink.model.wallet.home.nft.NftCollectionItem"

    .line 21
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;

    .line 22
    iget-object v1, p0, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;->collection:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;

    iget-object v3, p1, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;->collection:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;->tokens:Ljava/util/List;

    iget-object v3, p1, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;->tokens:Ljava/util/List;

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
    const/4 v0, 0x0

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

    .line 14
    iget-object v0, p0, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;->childNode:Ljava/util/List;

    return-object v0
.end method

.method public final getCollection()Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;->collection:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;

    return-object v0
.end method

.method public final getTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/home/nft/NftTokenItem;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;->tokens:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    iget-object v1, p0, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;->collection:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;->tokens:Ljava/util/List;

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

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NftCollectionItem(collection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;->collection:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftCollection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/home/nft/NftCollectionItem;->tokens:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
