.class public final Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;
.super Ljava/lang/Object;
.source "CryptoWalletInfoResponse.kt"


# instance fields
.field private final bitcoinWalletAddress:Ljava/lang/String;

.field private final isEtherWalletAddressOpened:Z

.field private final myEtherWalletAddress:Ljava/lang/String;

.field private final tonWalletAddress:Ljava/lang/String;

.field private final tronWalletAddress:Ljava/lang/String;

.field private final usersWithAccessToEtherWalletAddress:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "usersWithAccessToEtherWalletAddress"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->myEtherWalletAddress:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->tonWalletAddress:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->tronWalletAddress:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->bitcoinWalletAddress:Ljava/lang/String;

    .line 8
    iput-boolean p5, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->isEtherWalletAddressOpened:Z

    .line 9
    iput-object p6, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->usersWithAccessToEtherWalletAddress:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->myEtherWalletAddress:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->tonWalletAddress:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->tronWalletAddress:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->bitcoinWalletAddress:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->isEtherWalletAddressOpened:Z

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->usersWithAccessToEtherWalletAddress:Ljava/util/List;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->myEtherWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->tonWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->tronWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->bitcoinWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->isEtherWalletAddressOpened:Z

    return v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->usersWithAccessToEtherWalletAddress:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;"
        }
    .end annotation

    const-string v0, "usersWithAccessToEtherWalletAddress"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->myEtherWalletAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->myEtherWalletAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->tonWalletAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->tonWalletAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->tronWalletAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->tronWalletAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->bitcoinWalletAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->bitcoinWalletAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->isEtherWalletAddressOpened:Z

    iget-boolean v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->isEtherWalletAddressOpened:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->usersWithAccessToEtherWalletAddress:Ljava/util/List;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->usersWithAccessToEtherWalletAddress:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getBitcoinWalletAddress()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->bitcoinWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getMyEtherWalletAddress()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->myEtherWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getTonWalletAddress()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->tonWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getTronWalletAddress()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->tronWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsersWithAccessToEtherWalletAddress()Ljava/util/List;
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
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->usersWithAccessToEtherWalletAddress:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->myEtherWalletAddress:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->tonWalletAddress:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->tronWalletAddress:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->bitcoinWalletAddress:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->isEtherWalletAddressOpened:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->usersWithAccessToEtherWalletAddress:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isEtherWalletAddressOpened()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->isEtherWalletAddressOpened:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoWalletInfoResponse(myEtherWalletAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->myEtherWalletAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tonWalletAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->tonWalletAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tronWalletAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->tronWalletAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bitcoinWalletAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->bitcoinWalletAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isEtherWalletAddressOpened="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->isEtherWalletAddressOpened:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", usersWithAccessToEtherWalletAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->usersWithAccessToEtherWalletAddress:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
