.class public final Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;
.super Ljava/lang/Object;
.source "WCApproveSessionResponse.kt"


# instance fields
.field private final accounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final approved:Z

.field private final chainId:I

.field private final peerId:Ljava/lang/String;

.field private final peerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;


# direct methods
.method public constructor <init>(ZILjava/util/List;Ljava/lang/String;Lcom/trustwallet/walletconnect/models/WCPeerMeta;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/trustwallet/walletconnect/models/WCPeerMeta;",
            ")V"
        }
    .end annotation

    const-string v0, "accounts"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean p1, p0, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->approved:Z

    .line 7
    iput p2, p0, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->chainId:I

    .line 8
    iput-object p3, p0, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->accounts:Ljava/util/List;

    .line 9
    iput-object p4, p0, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->peerId:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->peerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    return-void
.end method

.method public synthetic constructor <init>(ZILjava/util/List;Ljava/lang/String;Lcom/trustwallet/walletconnect/models/WCPeerMeta;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    const/4 p7, 0x1

    and-int/2addr p6, p7

    if-eqz p6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;-><init>(ZILjava/util/List;Ljava/lang/String;Lcom/trustwallet/walletconnect/models/WCPeerMeta;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;

    iget-boolean v1, p0, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->approved:Z

    iget-boolean v3, p1, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->approved:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->chainId:I

    iget v3, p1, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->chainId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->accounts:Ljava/util/List;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->accounts:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->peerId:Ljava/lang/String;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->peerId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->peerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    iget-object p1, p1, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->peerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->approved:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->chainId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->accounts:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->peerId:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->peerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/WCPeerMeta;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WCApproveSessionResponse(approved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->approved:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", chainId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->chainId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", accounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->accounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", peerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->peerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", peerMeta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/session/WCApproveSessionResponse;->peerMeta:Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
