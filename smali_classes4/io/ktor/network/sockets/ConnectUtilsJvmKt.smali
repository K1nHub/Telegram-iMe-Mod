.class public final Lio/ktor/network/sockets/ConnectUtilsJvmKt;
.super Ljava/lang/Object;
.source "ConnectUtilsJvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectUtilsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectUtilsJvm.kt\nio/ktor/network/sockets/ConnectUtilsJvmKt\n+ 2 SelectorManager.kt\nio/ktor/network/selector/SelectorManagerKt\n*L\n1#1,64:1\n51#2,8:65\n51#2,8:73\n*S KotlinDebug\n*F\n+ 1 ConnectUtilsJvm.kt\nio/ktor/network/sockets/ConnectUtilsJvmKt\n*L\n16#1:65,8\n29#1:73,8\n*E\n"
.end annotation


# direct methods
.method public static final connect(Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketAddress;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/SelectorManager;",
            "Lio/ktor/network/sockets/SocketAddress;",
            "Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/sockets/Socket;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;

    iget v1, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;

    invoke-direct {v0, p3}, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 12
    iget v2, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lio/ktor/network/sockets/SocketImpl;

    iget-object p1, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    invoke-interface {p0}, Lio/ktor/network/selector/SelectorManager;->getProvider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object p3

    .line 16
    invoke-static {p3, p1}, Lio/ktor/network/sockets/ConnectUtilsJvmKt;->openSocketChannelFor(Ljava/nio/channels/spi/SelectorProvider;Lio/ktor/network/sockets/SocketAddress;)Ljava/nio/channels/SocketChannel;

    move-result-object p3

    .line 17
    :try_start_1
    instance-of v2, p1, Lio/ktor/network/sockets/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v4, "connect$lambda$2"

    if-eqz v2, :cond_3

    :try_start_2
    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p2}, Lio/ktor/network/sockets/JavaSocketOptionsKt;->assignOptions(Ljava/nio/channels/SelectableChannel;Lio/ktor/network/sockets/SocketOptions;)V

    .line 18
    :cond_3
    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lio/ktor/network/sockets/JavaSocketOptionsKt;->nonBlocking(Ljava/nio/channels/SelectableChannel;)V

    .line 20
    new-instance v2, Lio/ktor/network/sockets/SocketImpl;

    invoke-direct {v2, p3, p0, p2}, Lio/ktor/network/sockets/SocketImpl;-><init>(Ljava/nio/channels/SocketChannel;Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;)V

    .line 21
    invoke-static {p1}, Lio/ktor/network/sockets/JavaSocketAddressUtilsKt;->toJavaAddress(Lio/ktor/network/sockets/SocketAddress;)Ljava/net/SocketAddress;

    move-result-object p0

    iput-object p3, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/network/sockets/ConnectUtilsJvmKt$connect$1;->label:I

    invoke-virtual {v2, p0, v0}, Lio/ktor/network/sockets/SocketImpl;->connect$ktor_network(Ljava/net/SocketAddress;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    move-object p0, v2

    :goto_1
    return-object p0

    :catchall_1
    move-exception p0

    move-object p1, p3

    .line 57
    :goto_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 58
    throw p0
.end method

.method public static final openSocketChannelFor(Ljava/nio/channels/spi/SelectorProvider;Lio/ktor/network/sockets/SocketAddress;)Ljava/nio/channels/SocketChannel;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    instance-of p1, p1, Lio/ktor/network/sockets/InetSocketAddress;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/nio/channels/spi/SelectorProvider;->openSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object p0

    return-object p0

    .line 49
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
