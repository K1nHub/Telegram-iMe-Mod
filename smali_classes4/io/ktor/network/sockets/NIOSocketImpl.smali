.class public abstract Lio/ktor/network/sockets/NIOSocketImpl;
.super Lio/ktor/network/selector/SelectableBase;
.source "NIOSocketImpl.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Lkotlinx/coroutines/DisposableHandle;
.implements Lio/ktor/network/sockets/AReadable;
.implements Lio/ktor/network/sockets/AWritable;
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/nio/channels/SelectableChannel;",
        ":",
        "Ljava/nio/channels/ByteChannel;",
        ">",
        "Lio/ktor/network/selector/SelectableBase;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNIOSocketImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NIOSocketImpl.kt\nio/ktor/network/sockets/NIOSocketImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,145:1\n1#2:146\n*E\n"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/SelectableChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final closeFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final pool:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final readerJob:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/ktor/utils/io/ReaderJob;",
            ">;"
        }
    .end annotation
.end field

.field private final selector:Lio/ktor/network/selector/SelectorManager;

.field private final socketContext:Lkotlinx/coroutines/CompletableJob;

.field private final socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

.field private final writerJob:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/ktor/utils/io/WriterJob;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/channels/SelectableChannel;Lio/ktor/network/selector/SelectorManager;Lio/ktor/utils/io/pool/ObjectPool;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lio/ktor/network/selector/SelectorManager;",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;",
            ")V"
        }
    .end annotation

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "selector"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Lio/ktor/network/selector/SelectableBase;-><init>(Ljava/nio/channels/SelectableChannel;)V

    .line 18
    iput-object p1, p0, Lio/ktor/network/sockets/NIOSocketImpl;->channel:Ljava/nio/channels/SelectableChannel;

    .line 19
    iput-object p2, p0, Lio/ktor/network/sockets/NIOSocketImpl;->selector:Lio/ktor/network/selector/SelectorManager;

    .line 20
    iput-object p3, p0, Lio/ktor/network/sockets/NIOSocketImpl;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 21
    iput-object p4, p0, Lio/ktor/network/sockets/NIOSocketImpl;->socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    .line 25
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/ktor/network/sockets/NIOSocketImpl;->closeFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/ktor/network/sockets/NIOSocketImpl;->readerJob:Ljava/util/concurrent/atomic/AtomicReference;

    .line 27
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/ktor/network/sockets/NIOSocketImpl;->writerJob:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 29
    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/network/sockets/NIOSocketImpl;->socketContext:Lkotlinx/coroutines/CompletableJob;

    return-void
.end method

.method public static final synthetic access$checkChannels(Lio/ktor/network/sockets/NIOSocketImpl;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lio/ktor/network/sockets/NIOSocketImpl;->checkChannels()V

    return-void
.end method

.method public static final synthetic access$getSocketOptions$p(Lio/ktor/network/sockets/NIOSocketImpl;)Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;
    .locals 0

    .line 17
    iget-object p0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    return-object p0
.end method

.method private final actualClose()Ljava/lang/Throwable;
    .locals 2

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lio/ktor/network/sockets/NIOSocketImpl;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V

    .line 106
    invoke-super {p0}, Lio/ktor/network/selector/SelectableBase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 111
    :goto_0
    iget-object v1, p0, Lio/ktor/network/sockets/NIOSocketImpl;->selector:Lio/ktor/network/selector/SelectorManager;

    invoke-interface {v1, p0}, Lio/ktor/network/selector/SelectorManager;->notifyClosed(Lio/ktor/network/selector/Selectable;)V

    return-object v0
.end method

.method private final attachFor(Ljava/lang/String;Lio/ktor/utils/io/ByteChannel;Ljava/util/concurrent/atomic/AtomicReference;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<J::",
            "Lkotlinx/coroutines/Job;",
            ">(",
            "Ljava/lang/String;",
            "Lio/ktor/utils/io/ByteChannel;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TJ;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TJ;>;)TJ;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->closeFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lkotlinx/coroutines/Job;

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p3, v0, p4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    .line 87
    iget-object p1, p0, Lio/ktor/network/sockets/NIOSocketImpl;->closeFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 94
    invoke-interface {p2, p4}, Lio/ktor/utils/io/ByteChannel;->attachJob(Lkotlinx/coroutines/Job;)V

    .line 96
    new-instance p1, Lio/ktor/network/sockets/NIOSocketImpl$attachFor$1;

    invoke-direct {p1, p0}, Lio/ktor/network/sockets/NIOSocketImpl$attachFor$1;-><init>(Lio/ktor/network/sockets/NIOSocketImpl;)V

    invoke-interface {p4, p1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-object p4

    .line 88
    :cond_0
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 89
    invoke-static {p4, v0, v1, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 90
    invoke-interface {p2, p1}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z

    .line 91
    throw p1

    .line 83
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " channel has already been set"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {p4, v0, v1, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 85
    throw p2

    .line 75
    :cond_2
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 76
    invoke-interface {p2, p1}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z

    .line 77
    throw p1
.end method

.method private final checkChannels()V
    .locals 3

    .line 116
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->closeFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->readerJob:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v0}, Lio/ktor/network/sockets/NIOSocketImpl;->getCompletedOrNotStarted(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->writerJob:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v0}, Lio/ktor/network/sockets/NIOSocketImpl;->getCompletedOrNotStarted(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->readerJob:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v0}, Lio/ktor/network/sockets/NIOSocketImpl;->getException(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lio/ktor/network/sockets/NIOSocketImpl;->writerJob:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v1}, Lio/ktor/network/sockets/NIOSocketImpl;->getException(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    .line 119
    invoke-direct {p0}, Lio/ktor/network/sockets/NIOSocketImpl;->actualClose()Ljava/lang/Throwable;

    move-result-object v2

    .line 121
    invoke-direct {p0, v0, v1}, Lio/ktor/network/sockets/NIOSocketImpl;->combine(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lio/ktor/network/sockets/NIOSocketImpl;->combine(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lio/ktor/network/sockets/NIOSocketImpl;->getSocketContext()Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/ktor/network/sockets/NIOSocketImpl;->getSocketContext()Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlinx/coroutines/CompletableJob;->completeExceptionally(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private final combine(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 132
    :cond_2
    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    return-object p1
.end method

.method private final getCompletedOrNotStarted(Ljava/util/concurrent/atomic/AtomicReference;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "+",
            "Lkotlinx/coroutines/Job;",
            ">;)Z"
        }
    .end annotation

    .line 138
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final getException(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "+",
            "Lkotlinx/coroutines/Job;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 142
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/Job;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 143
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/concurrent/CancellationException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final attachForReading(Lio/ktor/utils/io/ByteChannel;)Lio/ktor/utils/io/WriterJob;
    .locals 3

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->writerJob:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lio/ktor/network/sockets/NIOSocketImpl$attachForReading$1;

    invoke-direct {v1, p0, p1}, Lio/ktor/network/sockets/NIOSocketImpl$attachForReading$1;-><init>(Lio/ktor/network/sockets/NIOSocketImpl;Lio/ktor/utils/io/ByteChannel;)V

    const-string/jumbo v2, "reading"

    invoke-direct {p0, v2, p1, v0, v1}, Lio/ktor/network/sockets/NIOSocketImpl;->attachFor(Ljava/lang/String;Lio/ktor/utils/io/ByteChannel;Ljava/util/concurrent/atomic/AtomicReference;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/Job;

    move-result-object p1

    check-cast p1, Lio/ktor/utils/io/WriterJob;

    return-object p1
.end method

.method public final attachForWriting(Lio/ktor/utils/io/ByteChannel;)Lio/ktor/utils/io/ReaderJob;
    .locals 3

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->readerJob:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lio/ktor/network/sockets/NIOSocketImpl$attachForWriting$1;

    invoke-direct {v1, p0, p1}, Lio/ktor/network/sockets/NIOSocketImpl$attachForWriting$1;-><init>(Lio/ktor/network/sockets/NIOSocketImpl;Lio/ktor/utils/io/ByteChannel;)V

    const-string/jumbo v2, "writing"

    invoke-direct {p0, v2, p1, v0, v1}, Lio/ktor/network/sockets/NIOSocketImpl;->attachFor(Ljava/lang/String;Lio/ktor/utils/io/ByteChannel;Ljava/util/concurrent/atomic/AtomicReference;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/Job;

    move-result-object p1

    check-cast p1, Lio/ktor/utils/io/ReaderJob;

    return-object p1
.end method

.method public close()V
    .locals 3

    .line 61
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->closeFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->readerJob:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/ReaderJob;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/ktor/utils/io/ReaderJob;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 64
    :cond_1
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->writerJob:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/WriterJob;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 65
    :cond_2
    invoke-direct {p0}, Lio/ktor/network/sockets/NIOSocketImpl;->checkChannels()V

    return-void
.end method

.method public dispose()V
    .locals 0

    .line 57
    invoke-virtual {p0}, Lio/ktor/network/sockets/NIOSocketImpl;->close()V

    return-void
.end method

.method public getChannel()Ljava/nio/channels/SelectableChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->channel:Ljava/nio/channels/SelectableChannel;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lio/ktor/network/sockets/NIOSocketImpl;->getSocketContext()Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    return-object v0
.end method

.method public final getPool()Lio/ktor/utils/io/pool/ObjectPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    return-object v0
.end method

.method public final getSelector()Lio/ktor/network/selector/SelectorManager;
    .locals 1

    .line 19
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->selector:Lio/ktor/network/selector/SelectorManager;

    return-object v0
.end method

.method public getSocketContext()Lkotlinx/coroutines/CompletableJob;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->socketContext:Lkotlinx/coroutines/CompletableJob;

    return-object v0
.end method
