.class final Lio/ktor/network/sockets/NIOSocketImpl$attachForReading$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NIOSocketImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/sockets/NIOSocketImpl;->attachForReading(Lio/ktor/utils/io/ByteChannel;)Lio/ktor/utils/io/WriterJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/ktor/utils/io/WriterJob;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $channel:Lio/ktor/utils/io/ByteChannel;

.field final synthetic this$0:Lio/ktor/network/sockets/NIOSocketImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/network/sockets/NIOSocketImpl<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/ktor/network/sockets/NIOSocketImpl;Lio/ktor/utils/io/ByteChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/sockets/NIOSocketImpl<",
            "+TS;>;",
            "Lio/ktor/utils/io/ByteChannel;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/network/sockets/NIOSocketImpl$attachForReading$1;->this$0:Lio/ktor/network/sockets/NIOSocketImpl;

    iput-object p2, p0, Lio/ktor/network/sockets/NIOSocketImpl$attachForReading$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/ktor/utils/io/WriterJob;
    .locals 8

    .line 42
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl$attachForReading$1;->this$0:Lio/ktor/network/sockets/NIOSocketImpl;

    invoke-virtual {v0}, Lio/ktor/network/sockets/NIOSocketImpl;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lio/ktor/network/sockets/NIOSocketImpl$attachForReading$1;->this$0:Lio/ktor/network/sockets/NIOSocketImpl;

    iget-object v2, p0, Lio/ktor/network/sockets/NIOSocketImpl$attachForReading$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    invoke-virtual {v1}, Lio/ktor/network/sockets/NIOSocketImpl;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/nio/channels/ReadableByteChannel;

    iget-object v4, p0, Lio/ktor/network/sockets/NIOSocketImpl$attachForReading$1;->this$0:Lio/ktor/network/sockets/NIOSocketImpl;

    invoke-virtual {v4}, Lio/ktor/network/sockets/NIOSocketImpl;->getSelector()Lio/ktor/network/selector/SelectorManager;

    move-result-object v5

    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl$attachForReading$1;->this$0:Lio/ktor/network/sockets/NIOSocketImpl;

    invoke-virtual {v0}, Lio/ktor/network/sockets/NIOSocketImpl;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v6

    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl$attachForReading$1;->this$0:Lio/ktor/network/sockets/NIOSocketImpl;

    invoke-static {v0}, Lio/ktor/network/sockets/NIOSocketImpl;->access$getSocketOptions$p(Lio/ktor/network/sockets/NIOSocketImpl;)Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lio/ktor/network/sockets/CIOReaderKt;->attachForReadingImpl(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteChannel;Ljava/nio/channels/ReadableByteChannel;Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectorManager;Lio/ktor/utils/io/pool/ObjectPool;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;)Lio/ktor/utils/io/WriterJob;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_0
    iget-object v1, p0, Lio/ktor/network/sockets/NIOSocketImpl$attachForReading$1;->this$0:Lio/ktor/network/sockets/NIOSocketImpl;

    iget-object v2, p0, Lio/ktor/network/sockets/NIOSocketImpl$attachForReading$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    invoke-virtual {v1}, Lio/ktor/network/sockets/NIOSocketImpl;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/nio/channels/ReadableByteChannel;

    iget-object v4, p0, Lio/ktor/network/sockets/NIOSocketImpl$attachForReading$1;->this$0:Lio/ktor/network/sockets/NIOSocketImpl;

    invoke-virtual {v4}, Lio/ktor/network/sockets/NIOSocketImpl;->getSelector()Lio/ktor/network/selector/SelectorManager;

    move-result-object v5

    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl$attachForReading$1;->this$0:Lio/ktor/network/sockets/NIOSocketImpl;

    invoke-static {v0}, Lio/ktor/network/sockets/NIOSocketImpl;->access$getSocketOptions$p(Lio/ktor/network/sockets/NIOSocketImpl;)Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lio/ktor/network/sockets/CIOReaderKt;->attachForReadingDirectImpl(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteChannel;Ljava/nio/channels/ReadableByteChannel;Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;)Lio/ktor/utils/io/WriterJob;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lio/ktor/network/sockets/NIOSocketImpl$attachForReading$1;->invoke()Lio/ktor/utils/io/WriterJob;

    move-result-object v0

    return-object v0
.end method
