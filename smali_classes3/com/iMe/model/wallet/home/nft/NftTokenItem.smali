.class public final Lcom/iMe/model/wallet/home/nft/NftTokenItem;
.super Lcom/iMe/model/common/NoChildNode;
.source "NftTokenItem.kt"


# instance fields
.field private final itemIndex:I

.field private final nftType:Lcom/iMe/model/wallet/home/nft/NftType;

.field private final token:Lcom/iMe/storage/domain/model/crypto/nft/NftToken;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/crypto/nft/NftToken;ILcom/iMe/model/wallet/home/nft/NftType;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nftType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/iMe/model/common/NoChildNode;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->token:Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    .line 8
    iput p2, p0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->itemIndex:I

    .line 9
    iput-object p3, p0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->nftType:Lcom/iMe/model/wallet/home/nft/NftType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/home/nft/NftTokenItem;Lcom/iMe/storage/domain/model/crypto/nft/NftToken;ILcom/iMe/model/wallet/home/nft/NftType;ILjava/lang/Object;)Lcom/iMe/model/wallet/home/nft/NftTokenItem;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->token:Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->itemIndex:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->nftType:Lcom/iMe/model/wallet/home/nft/NftType;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->copy(Lcom/iMe/storage/domain/model/crypto/nft/NftToken;ILcom/iMe/model/wallet/home/nft/NftType;)Lcom/iMe/model/wallet/home/nft/NftTokenItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/crypto/nft/NftToken;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->token:Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->itemIndex:I

    return v0
.end method

.method public final component3()Lcom/iMe/model/wallet/home/nft/NftType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->nftType:Lcom/iMe/model/wallet/home/nft/NftType;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/crypto/nft/NftToken;ILcom/iMe/model/wallet/home/nft/NftType;)Lcom/iMe/model/wallet/home/nft/NftTokenItem;
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nftType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/model/wallet/home/nft/NftTokenItem;-><init>(Lcom/iMe/storage/domain/model/crypto/nft/NftToken;ILcom/iMe/model/wallet/home/nft/NftType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/home/nft/NftTokenItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/home/nft/NftTokenItem;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->token:Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    iget-object v3, p1, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->token:Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->itemIndex:I

    iget v3, p1, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->itemIndex:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->nftType:Lcom/iMe/model/wallet/home/nft/NftType;

    iget-object p1, p1, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->nftType:Lcom/iMe/model/wallet/home/nft/NftType;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getItemIndex()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->itemIndex:I

    return v0
.end method

.method public final getNftType()Lcom/iMe/model/wallet/home/nft/NftType;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->nftType:Lcom/iMe/model/wallet/home/nft/NftType;

    return-object v0
.end method

.method public final getToken()Lcom/iMe/storage/domain/model/crypto/nft/NftToken;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->token:Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->token:Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/nft/NftToken;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->itemIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->nftType:Lcom/iMe/model/wallet/home/nft/NftType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

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

    iget-object v1, p0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->token:Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", itemIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->itemIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nftType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->nftType:Lcom/iMe/model/wallet/home/nft/NftType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
