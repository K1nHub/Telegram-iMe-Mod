.class public final Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;
.super Ljava/lang/Object;
.source "WalletConnectSessionItem.kt"


# instance fields
.field private final date:Ljava/lang/String;

.field private final itemType:I

.field private final network:Ljava/lang/String;

.field private final peerIconUrl:Ljava/lang/String;

.field private final peerName:Ljava/lang/String;

.field private final peerUrl:Ljava/lang/String;

.field private final sessionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sessionKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerIconUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->sessionKey:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerName:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerUrl:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerIconUrl:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->date:Ljava/lang/String;

    .line 12
    iput-object p6, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->network:Ljava/lang/String;

    .line 15
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->WALLET_CONNECT_SESSION:I

    iput p1, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->itemType:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->sessionKey:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerName:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerUrl:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerIconUrl:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->date:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->network:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->sessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->date:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->network:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;
    .locals 8

    const-string v0, "sessionKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerIconUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->sessionKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->sessionKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerName:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerIconUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerIconUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->date:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->date:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->network:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->network:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getDate()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->itemType:I

    return v0
.end method

.method public final getNetwork()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->network:Ljava/lang/String;

    return-object v0
.end method

.method public final getPeerIconUrl()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPeerName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPeerUrl()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionKey()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->sessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerIconUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->date:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->network:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WalletConnectSessionItem(sessionKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", peerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", peerUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", peerIconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->peerIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->network:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
