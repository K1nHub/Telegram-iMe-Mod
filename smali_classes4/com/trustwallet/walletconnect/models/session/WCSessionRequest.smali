.class public final Lcom/trustwallet/walletconnect/models/session/WCSessionRequest;
.super Ljava/lang/Object;
.source "WCSessionRequest.kt"


# instance fields
.field private final chainId:Ljava/lang/String;

.field private final peerId:Ljava/lang/String;

.field private final peerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/trustwallet/walletconnect/models/session/WCSessionRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/trustwallet/walletconnect/models/session/WCSessionRequest;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionRequest;->peerId:Ljava/lang/String;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/models/session/WCSessionRequest;->peerId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionRequest;->peerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/models/session/WCSessionRequest;->peerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionRequest;->chainId:Ljava/lang/String;

    iget-object p1, p1, Lcom/trustwallet/walletconnect/models/session/WCSessionRequest;->chainId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getChainId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionRequest;->chainId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPeerId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionRequest;->peerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPeerMeta()Lcom/trustwallet/walletconnect/models/WCPeerMeta;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionRequest;->peerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionRequest;->peerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionRequest;->peerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/WCPeerMeta;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionRequest;->chainId:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WCSessionRequest(peerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionRequest;->peerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", peerMeta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionRequest;->peerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chainId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCSessionRequest;->chainId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
