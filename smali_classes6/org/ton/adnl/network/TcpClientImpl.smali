.class public final Lorg/ton/adnl/network/TcpClientImpl;
.super Ljava/lang/Object;
.source "TcpClientImpl.kt"

# interfaces
.implements Lorg/ton/adnl/network/TcpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/adnl/network/TcpClientImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTcpClientImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TcpClientImpl.kt\norg/ton/adnl/network/TcpClientImpl\n+ 2 AtomicFU.kt\nkotlinx/atomicfu/AtomicBoolean\n*L\n1#1,43:1\n138#2,3:44\n*S KotlinDebug\n*F\n+ 1 TcpClientImpl.kt\norg/ton/adnl/network/TcpClientImpl\n*L\n12#1:44,3\n*E\n"
.end annotation


# static fields
.field private static final selectorManager:Lio/ktor/network/selector/SelectorManager;

.field private static final tcpDispatcher:Lkotlinx/coroutines/ExecutorCoroutineDispatcher;


# instance fields
.field private connection:Lio/ktor/network/sockets/Connection;

.field private final isClosed$delegate:Lkotlinx/atomicfu/AtomicBoolean;

.field private socket:Lio/ktor/network/sockets/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/adnl/network/TcpClientImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/adnl/network/TcpClientImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x2

    const-string v1, "tcp"

    .line 39
    invoke-static {v0, v1}, Lkotlinx/coroutines/ThreadPoolDispatcherKt;->newFixedThreadPoolContext(ILjava/lang/String;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    sput-object v0, Lorg/ton/adnl/network/TcpClientImpl;->tcpDispatcher:Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    .line 40
    invoke-static {v0}, Lio/ktor/network/selector/SelectorManagerKt;->SelectorManager(Lkotlin/coroutines/CoroutineContext;)Lio/ktor/network/selector/SelectorManager;

    move-result-object v0

    sput-object v0, Lorg/ton/adnl/network/TcpClientImpl;->selectorManager:Lio/ktor/network/selector/SelectorManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object v0

    iput-object v0, p0, Lorg/ton/adnl/network/TcpClientImpl;->isClosed$delegate:Lkotlinx/atomicfu/AtomicBoolean;

    return-void
.end method

.method private final isClosed()Z
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/ton/adnl/network/TcpClientImpl;->isClosed$delegate:Lkotlinx/atomicfu/AtomicBoolean;

    .line 138
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result v0

    return v0
.end method

.method private final setClosed(Z)V
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/ton/adnl/network/TcpClientImpl;->isClosed$delegate:Lkotlinx/atomicfu/AtomicBoolean;

    .line 140
    invoke-virtual {v0, p1}, Lkotlinx/atomicfu/AtomicBoolean;->setValue(Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lorg/ton/adnl/network/TcpClientImpl;->close(Ljava/lang/Throwable;)V

    return-void
.end method

.method public close(Ljava/lang/Throwable;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Lorg/ton/adnl/network/TcpClientImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lorg/ton/adnl/network/TcpClientImpl;->connection:Lio/ktor/network/sockets/Connection;

    const-string v1, "connection"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lio/ktor/network/sockets/Connection;->getInput()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/ktor/utils/io/ByteReadChannel;->cancel(Ljava/lang/Throwable;)Z

    .line 33
    iget-object v0, p0, Lorg/ton/adnl/network/TcpClientImpl;->connection:Lio/ktor/network/sockets/Connection;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0}, Lio/ktor/network/sockets/Connection;->getOutput()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z

    .line 34
    iget-object p1, p0, Lorg/ton/adnl/network/TcpClientImpl;->socket:Lio/ktor/network/sockets/Socket;

    if-nez p1, :cond_3

    const-string p1, "socket"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, p1

    :goto_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    const/4 p1, 0x1

    .line 35
    invoke-direct {p0, p1}, Lorg/ton/adnl/network/TcpClientImpl;->setClosed(Z)V

    return-void
.end method

.method public connect(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lorg/ton/adnl/network/TcpClientImpl$connect$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/ton/adnl/network/TcpClientImpl$connect$1;

    iget v1, v0, Lorg/ton/adnl/network/TcpClientImpl$connect$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ton/adnl/network/TcpClientImpl$connect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ton/adnl/network/TcpClientImpl$connect$1;

    invoke-direct {v0, p0, p3}, Lorg/ton/adnl/network/TcpClientImpl$connect$1;-><init>(Lorg/ton/adnl/network/TcpClientImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v5, v0

    iget-object p3, v5, Lorg/ton/adnl/network/TcpClientImpl$connect$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 20
    iget v1, v5, Lorg/ton/adnl/network/TcpClientImpl$connect$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v5, Lorg/ton/adnl/network/TcpClientImpl$connect$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lorg/ton/adnl/network/TcpClientImpl;

    iget-object p2, v5, Lorg/ton/adnl/network/TcpClientImpl$connect$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lorg/ton/adnl/network/TcpClientImpl;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    sget-object p3, Lorg/ton/adnl/network/TcpClientImpl;->selectorManager:Lio/ktor/network/selector/SelectorManager;

    invoke-static {p3}, Lio/ktor/network/sockets/BuildersKt;->aSocket(Lio/ktor/network/selector/SelectorManager;)Lio/ktor/network/sockets/SocketBuilder;

    move-result-object p3

    invoke-static {p3}, Lio/ktor/network/sockets/BuildersKt;->tcpNoDelay(Lio/ktor/network/sockets/Configurable;)Lio/ktor/network/sockets/Configurable;

    move-result-object p3

    check-cast p3, Lio/ktor/network/sockets/SocketBuilder;

    invoke-virtual {p3}, Lio/ktor/network/sockets/SocketBuilder;->tcp()Lio/ktor/network/sockets/TcpSocketBuilder;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    iput-object p0, v5, Lorg/ton/adnl/network/TcpClientImpl$connect$1;->L$0:Ljava/lang/Object;

    iput-object p0, v5, Lorg/ton/adnl/network/TcpClientImpl$connect$1;->L$1:Ljava/lang/Object;

    iput v2, v5, Lorg/ton/adnl/network/TcpClientImpl$connect$1;->label:I

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v7}, Lio/ktor/network/sockets/TcpSocketBuilder;->connect$default(Lio/ktor/network/sockets/TcpSocketBuilder;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_3

    return-object v0

    :cond_3
    move-object p1, p0

    move-object p2, p1

    .line 20
    :goto_1
    check-cast p3, Lio/ktor/network/sockets/Socket;

    iput-object p3, p1, Lorg/ton/adnl/network/TcpClientImpl;->socket:Lio/ktor/network/sockets/Socket;

    .line 22
    iget-object p1, p2, Lorg/ton/adnl/network/TcpClientImpl;->socket:Lio/ktor/network/sockets/Socket;

    if-nez p1, :cond_4

    const-string p1, "socket"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_4
    invoke-static {p1}, Lio/ktor/network/sockets/SocketsKt;->connection(Lio/ktor/network/sockets/Socket;)Lio/ktor/network/sockets/Connection;

    move-result-object p1

    iput-object p1, p2, Lorg/ton/adnl/network/TcpClientImpl;->connection:Lio/ktor/network/sockets/Connection;

    const/4 p1, 0x0

    .line 23
    invoke-direct {p2, p1}, Lorg/ton/adnl/network/TcpClientImpl;->setClosed(Z)V

    .line 24
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public dispose()V
    .locals 0

    .line 9
    invoke-static {p0}, Lorg/ton/adnl/network/TcpClient$DefaultImpls;->dispose(Lorg/ton/adnl/network/TcpClient;)V

    return-void
.end method

.method public getInput()Lio/ktor/utils/io/ByteReadChannel;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/ton/adnl/network/TcpClientImpl;->connection:Lio/ktor/network/sockets/Connection;

    if-nez v0, :cond_0

    const-string v0, "connection"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lio/ktor/network/sockets/Connection;->getInput()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v0

    return-object v0
.end method

.method public getOutput()Lio/ktor/utils/io/ByteWriteChannel;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/adnl/network/TcpClientImpl;->connection:Lio/ktor/network/sockets/Connection;

    if-nez v0, :cond_0

    const-string v0, "connection"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lio/ktor/network/sockets/Connection;->getOutput()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v0

    return-object v0
.end method
