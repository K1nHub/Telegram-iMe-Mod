.class public Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;
.super Lio/ktor/network/sockets/SocketOptions;
.source "SocketOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/sockets/SocketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerSocketOptions"
.end annotation


# instance fields
.field private receiveBufferSize:I

.field private sendBufferSize:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "customOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0}, Lio/ktor/network/sockets/SocketOptions;-><init>(Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, -0x1

    .line 96
    iput p1, p0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->sendBufferSize:I

    .line 101
    iput p1, p0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->receiveBufferSize:I

    return-void
.end method


# virtual methods
.method public copy$ktor_network()Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;
    .locals 3

    .line 113
    new-instance v0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketOptions;->getCustomOptions()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;-><init>(Ljava/util/Map;)V

    .line 114
    invoke-virtual {v0, p0}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->copyCommon(Lio/ktor/network/sockets/SocketOptions;)V

    return-object v0
.end method

.method public bridge synthetic copy$ktor_network()Lio/ktor/network/sockets/SocketOptions;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->copy$ktor_network()Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    move-result-object v0

    return-object v0
.end method

.method protected copyCommon(Lio/ktor/network/sockets/SocketOptions;)V
    .locals 1

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-super {p0, p1}, Lio/ktor/network/sockets/SocketOptions;->copyCommon(Lio/ktor/network/sockets/SocketOptions;)V

    .line 106
    instance-of v0, p1, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    if-eqz v0, :cond_0

    .line 107
    check-cast p1, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    iget v0, p1, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->sendBufferSize:I

    iput v0, p0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->sendBufferSize:I

    .line 108
    iget p1, p1, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->receiveBufferSize:I

    iput p1, p0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->receiveBufferSize:I

    :cond_0
    return-void
.end method

.method public final getReceiveBufferSize()I
    .locals 1

    .line 101
    iget v0, p0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->receiveBufferSize:I

    return v0
.end method

.method public final getSendBufferSize()I
    .locals 1

    .line 96
    iget v0, p0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->sendBufferSize:I

    return v0
.end method

.method public final tcp$ktor_network()Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;
    .locals 3

    .line 119
    new-instance v0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketOptions;->getCustomOptions()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;-><init>(Ljava/util/Map;)V

    .line 120
    invoke-virtual {p0, p0}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->copyCommon(Lio/ktor/network/sockets/SocketOptions;)V

    return-object v0
.end method
