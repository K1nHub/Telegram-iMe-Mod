.class public final Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;
.super Ljava/lang/Object;
.source "BlockchainWalletItem.kt"


# instance fields
.field private final address:Ljava/lang/String;

.field private final blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

.field private final creationDate:Ljava/lang/String;

.field private final secretWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creationDate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secretWords"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    .line 7
    iput-object p2, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->address:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->creationDate:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->secretWords:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->address:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->creationDate:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->secretWords:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->copy(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->creationDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->secretWords:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;"
        }
    .end annotation

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creationDate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secretWords"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;-><init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    iget-object v3, p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->address:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->address:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->creationDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->creationDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->secretWords:Ljava/util/List;

    iget-object p1, p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->secretWords:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-object v0
.end method

.method public final getCreationDate()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->creationDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecretWords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->secretWords:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->creationDate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->secretWords:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlockchainWalletItem(blockchainType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", creationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->creationDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", secretWords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;->secretWords:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
