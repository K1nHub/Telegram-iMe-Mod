.class public final Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;
.super Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;
.source "SocketOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/sockets/SocketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TCPClientSocketOptions"
.end annotation


# instance fields
.field private keepAlive:Ljava/lang/Boolean;

.field private lingerSeconds:I

.field private noDelay:Z

.field private socketTimeout:J


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
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

    .line 162
    invoke-direct {p0, p1}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->noDelay:Z

    const/4 p1, -0x1

    .line 172
    iput p1, p0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->lingerSeconds:I

    const-wide v0, 0x7fffffffffffffffL

    .line 182
    iput-wide v0, p0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->socketTimeout:J

    return-void
.end method


# virtual methods
.method public bridge synthetic copy$ktor_network()Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;
    .locals 1

    .line 160
    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->copy$ktor_network()Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    move-result-object v0

    return-object v0
.end method

.method public copy$ktor_network()Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;
    .locals 3

    .line 195
    new-instance v0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketOptions;->getCustomOptions()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;-><init>(Ljava/util/Map;)V

    .line 196
    invoke-virtual {v0, p0}, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->copyCommon(Lio/ktor/network/sockets/SocketOptions;)V

    return-object v0
.end method

.method public bridge synthetic copy$ktor_network()Lio/ktor/network/sockets/SocketOptions;
    .locals 1

    .line 160
    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->copy$ktor_network()Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    move-result-object v0

    return-object v0
.end method

.method protected copyCommon(Lio/ktor/network/sockets/SocketOptions;)V
    .locals 1

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-super {p0, p1}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->copyCommon(Lio/ktor/network/sockets/SocketOptions;)V

    .line 187
    instance-of v0, p1, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    if-eqz v0, :cond_0

    .line 188
    check-cast p1, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    iget-boolean v0, p1, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->noDelay:Z

    iput-boolean v0, p0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->noDelay:Z

    .line 189
    iget v0, p1, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->lingerSeconds:I

    iput v0, p0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->lingerSeconds:I

    .line 190
    iget-object p1, p1, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->keepAlive:Ljava/lang/Boolean;

    iput-object p1, p0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->keepAlive:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public final getKeepAlive()Ljava/lang/Boolean;
    .locals 1

    .line 177
    iget-object v0, p0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->keepAlive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLingerSeconds()I
    .locals 1

    .line 172
    iget v0, p0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->lingerSeconds:I

    return v0
.end method

.method public final getNoDelay()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->noDelay:Z

    return v0
.end method

.method public final getSocketTimeout()J
    .locals 2

    .line 182
    iget-wide v0, p0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->socketTimeout:J

    return-wide v0
.end method

.method public final setNoDelay(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->noDelay:Z

    return-void
.end method
