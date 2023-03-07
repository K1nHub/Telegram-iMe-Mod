.class public final Lcom/trustwallet/walletconnect/WCSessionStoreItem;
.super Ljava/lang/Object;
.source "WCSessionStore.kt"


# instance fields
.field private final chainId:I

.field private final date:Ljava/util/Date;

.field private final isAutoSign:Z

.field private final peerId:Ljava/lang/String;

.field private final remotePeerId:Ljava/lang/String;

.field private final remotePeerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;

.field private final session:Lcom/trustwallet/walletconnect/models/session/WCSession;


# direct methods
.method public constructor <init>(Lcom/trustwallet/walletconnect/models/session/WCSession;ILjava/lang/String;Ljava/lang/String;Lcom/trustwallet/walletconnect/models/WCPeerMeta;ZLjava/util/Date;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remotePeerId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remotePeerMeta"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->session:Lcom/trustwallet/walletconnect/models/session/WCSession;

    .line 9
    iput p2, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->chainId:I

    .line 10
    iput-object p3, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->peerId:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->remotePeerId:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->remotePeerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    .line 13
    iput-boolean p6, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->isAutoSign:Z

    .line 14
    iput-object p7, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->date:Ljava/util/Date;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/trustwallet/walletconnect/models/session/WCSession;ILjava/lang/String;Ljava/lang/String;Lcom/trustwallet/walletconnect/models/WCPeerMeta;ZLjava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    move v7, p6

    :goto_0
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_1

    .line 14
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object/from16 v8, p7

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 7
    invoke-direct/range {v1 .. v8}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;-><init>(Lcom/trustwallet/walletconnect/models/session/WCSession;ILjava/lang/String;Ljava/lang/String;Lcom/trustwallet/walletconnect/models/WCPeerMeta;ZLjava/util/Date;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->session:Lcom/trustwallet/walletconnect/models/session/WCSession;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->session:Lcom/trustwallet/walletconnect/models/session/WCSession;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->chainId:I

    iget v3, p1, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->chainId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->peerId:Ljava/lang/String;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->peerId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->remotePeerId:Ljava/lang/String;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->remotePeerId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->remotePeerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->remotePeerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->isAutoSign:Z

    iget-boolean v3, p1, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->isAutoSign:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->date:Ljava/util/Date;

    iget-object p1, p1, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->date:Ljava/util/Date;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getChainId()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->chainId:I

    return v0
.end method

.method public final getDate()Ljava/util/Date;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->date:Ljava/util/Date;

    return-object v0
.end method

.method public final getPeerId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->peerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRemotePeerId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->remotePeerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRemotePeerMeta()Lcom/trustwallet/walletconnect/models/WCPeerMeta;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->remotePeerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    return-object v0
.end method

.method public final getSession()Lcom/trustwallet/walletconnect/models/session/WCSession;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->session:Lcom/trustwallet/walletconnect/models/session/WCSession;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->session:Lcom/trustwallet/walletconnect/models/session/WCSession;

    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/models/session/WCSession;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->chainId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->peerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->remotePeerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->remotePeerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/WCPeerMeta;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->isAutoSign:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isAutoSign()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->isAutoSign:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WCSessionStoreItem(session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->session:Lcom/trustwallet/walletconnect/models/session/WCSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chainId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->chainId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", peerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->peerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remotePeerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->remotePeerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remotePeerMeta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->remotePeerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAutoSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->isAutoSign:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
