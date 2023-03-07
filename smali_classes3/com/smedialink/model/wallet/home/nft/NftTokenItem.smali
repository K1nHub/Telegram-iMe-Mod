.class public final Lcom/smedialink/model/wallet/home/nft/NftTokenItem;
.super Lcom/smedialink/model/common/NoChildNode;
.source "NftTokenItem.kt"


# instance fields
.field private final collection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;",
            ">;"
        }
    .end annotation
.end field

.field private final token:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;",
            ">;)V"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/smedialink/model/common/NoChildNode;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;->token:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

    .line 8
    iput-object p2, p0, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;->collection:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/wallet/home/nft/NftTokenItem;Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;Ljava/util/List;ILjava/lang/Object;)Lcom/smedialink/model/wallet/home/nft/NftTokenItem;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;->token:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;->collection:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;->copy(Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;Ljava/util/List;)Lcom/smedialink/model/wallet/home/nft/NftTokenItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;->token:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;->collection:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;Ljava/util/List;)Lcom/smedialink/model/wallet/home/nft/NftTokenItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;",
            ">;)",
            "Lcom/smedialink/model/wallet/home/nft/NftTokenItem;"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;-><init>(Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;

    iget-object v1, p0, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;->token:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

    iget-object v3, p1, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;->token:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;->collection:Ljava/util/List;

    iget-object p1, p1, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;->collection:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCollection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;->collection:Ljava/util/List;

    return-object v0
.end method

.method public final getToken()Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;->token:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;->token:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;->collection:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NftTokenItem(token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;->token:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", collection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/home/nft/NftTokenItem;->collection:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
