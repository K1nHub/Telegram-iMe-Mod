.class public final Lio/ktor/network/sockets/JavaSocketOptionsKt;
.super Ljava/lang/Object;
.source "JavaSocketOptions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJavaSocketOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JavaSocketOptions.kt\nio/ktor/network/sockets/JavaSocketOptionsKt\n+ 2 TypeOfService.kt\nio/ktor/network/sockets/TypeOfService\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,140:1\n23#2:141\n23#2:142\n23#2:144\n23#2:145\n1#3:143\n*S KotlinDebug\n*F\n+ 1 JavaSocketOptions.kt\nio/ktor/network/sockets/JavaSocketOptionsKt\n*L\n28#1:141\n30#1:142\n98#1:144\n100#1:145\n*E\n"
.end annotation


# static fields
.field private static final java7NetworkApisAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string/jumbo v0, "java.net.StandardSocketOptions"

    .line 14
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    sput-boolean v0, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    return-void
.end method

.method public static final assignOptions(Ljava/nio/channels/SelectableChannel;Lio/ktor/network/sockets/SocketOptions;)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    instance-of v0, p0, Ljava/nio/channels/SocketChannel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    .line 26
    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getTypeOfService-zieKYfw()B

    move-result v0

    sget-object v4, Lio/ktor/network/sockets/TypeOfService;->Companion:Lio/ktor/network/sockets/TypeOfService$Companion;

    invoke-virtual {v4}, Lio/ktor/network/sockets/TypeOfService$Companion;->getUNDEFINED-zieKYfw()B

    move-result v4

    invoke-static {v0, v4}, Lio/ktor/network/sockets/TypeOfService;->equals-impl0(BB)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    sget-boolean v0, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v0, :cond_0

    .line 28
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    sget-object v4, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getTypeOfService-zieKYfw()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 23
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 28
    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/SocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;

    goto :goto_0

    .line 30
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getTypeOfService-zieKYfw()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v0, v4}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 34
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getReuseAddress()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    sget-boolean v0, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v0, :cond_2

    .line 36
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    sget-object v4, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/SocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;

    goto :goto_1

    .line 38
    :cond_2
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 41
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getReusePort()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    sget-object v0, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->INSTANCE:Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;

    move-object v4, p0

    check-cast v4, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, v4}, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->setReusePort(Ljava/nio/channels/SocketChannel;)V

    .line 45
    :cond_4
    instance-of v0, p1, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    if-eqz v0, :cond_c

    .line 46
    move-object v0, p1

    check-cast v0, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    invoke-virtual {v0}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->getReceiveBufferSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-lez v5, :cond_5

    move v5, v3

    goto :goto_2

    :cond_5
    move v5, v2

    :goto_2
    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    move-object v4, v1

    :goto_3
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 47
    sget-boolean v5, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v5, :cond_7

    .line 48
    move-object v5, p0

    check-cast v5, Ljava/nio/channels/SocketChannel;

    sget-object v6, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/nio/channels/SocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;

    goto :goto_4

    .line 50
    :cond_7
    move-object v5, p0

    check-cast v5, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v5}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 53
    :cond_8
    :goto_4
    invoke-virtual {v0}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->getSendBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-lez v4, :cond_9

    move v4, v3

    goto :goto_5

    :cond_9
    move v4, v2

    :goto_5
    if-eqz v4, :cond_a

    goto :goto_6

    :cond_a
    move-object v0, v1

    :goto_6
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 54
    sget-boolean v4, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v4, :cond_b

    .line 55
    move-object v4, p0

    check-cast v4, Ljava/nio/channels/SocketChannel;

    sget-object v5, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/nio/channels/SocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;

    goto :goto_7

    .line 57
    :cond_b
    move-object v4, p0

    check-cast v4, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 61
    :cond_c
    :goto_7
    instance-of v0, p1, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    if-eqz v0, :cond_14

    .line 62
    move-object v0, p1

    check-cast v0, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    invoke-virtual {v0}, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->getLingerSeconds()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-ltz v5, :cond_d

    move v5, v3

    goto :goto_8

    :cond_d
    move v5, v2

    :goto_8
    if-eqz v5, :cond_e

    goto :goto_9

    :cond_e
    move-object v4, v1

    :goto_9
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 63
    sget-boolean v5, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v5, :cond_f

    .line 64
    move-object v5, p0

    check-cast v5, Ljava/nio/channels/SocketChannel;

    sget-object v6, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/nio/channels/SocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;

    goto :goto_a

    .line 66
    :cond_f
    move-object v5, p0

    check-cast v5, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v5}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 69
    :cond_10
    :goto_a
    invoke-virtual {v0}, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->getKeepAlive()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 70
    sget-boolean v5, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v5, :cond_11

    .line 71
    move-object v5, p0

    check-cast v5, Ljava/nio/channels/SocketChannel;

    sget-object v6, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/nio/channels/SocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;

    goto :goto_b

    .line 73
    :cond_11
    move-object v5, p0

    check-cast v5, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v5}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 76
    :cond_12
    :goto_b
    sget-boolean v4, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v4, :cond_13

    .line 77
    move-object v4, p0

    check-cast v4, Ljava/nio/channels/SocketChannel;

    sget-object v5, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    invoke-virtual {v0}, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->getNoDelay()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/nio/channels/SocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;

    goto :goto_c

    .line 79
    :cond_13
    move-object v4, p0

    check-cast v4, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v0}, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;->getNoDelay()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 83
    :cond_14
    :goto_c
    instance-of v0, p0, Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_17

    .line 84
    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getReuseAddress()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 85
    sget-boolean v0, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v0, :cond_15

    .line 86
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    sget-object v4, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/ServerSocketChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;

    goto :goto_d

    .line 88
    :cond_15
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 91
    :cond_16
    :goto_d
    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getReusePort()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 92
    sget-object v0, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->INSTANCE:Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;

    move-object v4, p0

    check-cast v4, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0, v4}, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->setReusePort(Ljava/nio/channels/ServerSocketChannel;)V

    .line 95
    :cond_17
    instance-of v0, p0, Ljava/nio/channels/DatagramChannel;

    if-eqz v0, :cond_26

    .line 96
    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getTypeOfService-zieKYfw()B

    move-result v0

    sget-object v4, Lio/ktor/network/sockets/TypeOfService;->Companion:Lio/ktor/network/sockets/TypeOfService$Companion;

    invoke-virtual {v4}, Lio/ktor/network/sockets/TypeOfService$Companion;->getUNDEFINED-zieKYfw()B

    move-result v4

    invoke-static {v0, v4}, Lio/ktor/network/sockets/TypeOfService;->equals-impl0(BB)Z

    move-result v0

    if-nez v0, :cond_19

    .line 97
    sget-boolean v0, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v0, :cond_18

    .line 98
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    sget-object v4, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getTypeOfService-zieKYfw()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 23
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 98
    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/DatagramChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;

    goto :goto_e

    .line 100
    :cond_18
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getTypeOfService-zieKYfw()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v0, v4}, Ljava/net/DatagramSocket;->setTrafficClass(I)V

    .line 104
    :cond_19
    :goto_e
    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getReuseAddress()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 105
    sget-boolean v0, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v0, :cond_1a

    .line 106
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    sget-object v4, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/DatagramChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;

    goto :goto_f

    .line 108
    :cond_1a
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 111
    :cond_1b
    :goto_f
    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions;->getReusePort()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 112
    sget-object v0, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->INSTANCE:Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;

    move-object v4, p0

    check-cast v4, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, v4}, Lio/ktor/network/sockets/SocketOptionsPlatformCapabilities;->setReusePort(Ljava/nio/channels/DatagramChannel;)V

    .line 115
    :cond_1c
    instance-of v0, p1, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;

    if-eqz v0, :cond_1e

    .line 116
    sget-boolean v0, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v0, :cond_1d

    .line 117
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    sget-object v4, Ljava/net/StandardSocketOptions;->SO_BROADCAST:Ljava/net/SocketOption;

    move-object v5, p1

    check-cast v5, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;

    invoke-virtual {v5}, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;->getBroadcast()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/DatagramChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;

    goto :goto_10

    .line 119
    :cond_1d
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    move-object v4, p1

    check-cast v4, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;

    invoke-virtual {v4}, Lio/ktor/network/sockets/SocketOptions$UDPSocketOptions;->getBroadcast()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 122
    :cond_1e
    :goto_10
    instance-of v0, p1, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    if-eqz v0, :cond_26

    .line 123
    check-cast p1, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->getReceiveBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-lez v4, :cond_1f

    move v4, v3

    goto :goto_11

    :cond_1f
    move v4, v2

    :goto_11
    if-eqz v4, :cond_20

    goto :goto_12

    :cond_20
    move-object v0, v1

    :goto_12
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 124
    sget-boolean v4, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v4, :cond_21

    .line 125
    move-object v4, p0

    check-cast v4, Ljava/nio/channels/DatagramChannel;

    sget-object v5, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/nio/channels/DatagramChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;

    goto :goto_13

    .line 127
    :cond_21
    move-object v4, p0

    check-cast v4, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v4}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    .line 130
    :cond_22
    :goto_13
    invoke-virtual {p1}, Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;->getSendBufferSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_23

    move v2, v3

    :cond_23
    if-eqz v2, :cond_24

    move-object v1, p1

    :cond_24
    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 131
    sget-boolean v0, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    if-eqz v0, :cond_25

    .line 132
    check-cast p0, Ljava/nio/channels/DatagramChannel;

    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/nio/channels/DatagramChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;

    goto :goto_14

    .line 134
    :cond_25
    check-cast p0, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/net/DatagramSocket;->setSendBufferSize(I)V

    :cond_26
    :goto_14
    return-void
.end method

.method public static final getJava7NetworkApisAvailable()Z
    .locals 1

    .line 13
    sget-boolean v0, Lio/ktor/network/sockets/JavaSocketOptionsKt;->java7NetworkApisAvailable:Z

    return v0
.end method

.method public static final nonBlocking(Ljava/nio/channels/SelectableChannel;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    return-void
.end method
