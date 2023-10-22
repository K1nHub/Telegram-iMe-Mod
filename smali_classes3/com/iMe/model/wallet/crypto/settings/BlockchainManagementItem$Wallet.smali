.class public final Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;
.super Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem;
.source "BlockchainManagementItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Wallet"
.end annotation


# instance fields
.field private final address:Ljava/lang/String;

.field private final blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

.field private final creationDate:Ljava/lang/String;

.field private final isLastItem:Z

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
.method public constructor <init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
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

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    iput-object p1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    .line 15
    iput-object p2, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->address:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->creationDate:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->secretWords:Ljava/util/List;

    .line 18
    iput-boolean p5, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->isLastItem:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->address:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->creationDate:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->secretWords:Ljava/util/List;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->isLastItem:Z

    :cond_4
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->copy(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->creationDate:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->secretWords:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->isLastItem:Z

    return v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;"
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

    new-instance v0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;-><init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    iget-object v3, p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->address:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->address:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->creationDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->creationDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->secretWords:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->secretWords:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->isLastItem:Z

    iget-boolean p1, p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->isLastItem:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-object v0
.end method

.method public final getCreationDate()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->creationDate:Ljava/lang/String;

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

    .line 17
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->secretWords:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->creationDate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->secretWords:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->isLastItem:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isLastItem()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->isLastItem:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wallet(blockchainType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", creationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->creationDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", secretWords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->secretWords:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLastItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;->isLastItem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
