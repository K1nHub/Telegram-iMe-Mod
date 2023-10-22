.class final Lio/ktor/network/sockets/NIOSocketImpl$attachForWriting$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NIOSocketImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/sockets/NIOSocketImpl;->attachForWriting(Lio/ktor/utils/io/ByteChannel;)Lio/ktor/utils/io/ReaderJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/ktor/utils/io/ReaderJob;",
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

    iput-object p1, p0, Lio/ktor/network/sockets/NIOSocketImpl$attachForWriting$1;->this$0:Lio/ktor/network/sockets/NIOSocketImpl;

    iput-object p2, p0, Lio/ktor/network/sockets/NIOSocketImpl$attachForWriting$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/ktor/utils/io/ReaderJob;
    .locals 6

    .line 52
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl$attachForWriting$1;->this$0:Lio/ktor/network/sockets/NIOSocketImpl;

    iget-object v1, p0, Lio/ktor/network/sockets/NIOSocketImpl$attachForWriting$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    invoke-virtual {v0}, Lio/ktor/network/sockets/NIOSocketImpl;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/WritableByteChannel;

    iget-object v3, p0, Lio/ktor/network/sockets/NIOSocketImpl$attachForWriting$1;->this$0:Lio/ktor/network/sockets/NIOSocketImpl;

    invoke-virtual {v3}, Lio/ktor/network/sockets/NIOSocketImpl;->getSelector()Lio/ktor/network/selector/SelectorManager;

    move-result-object v4

    iget-object v5, p0, Lio/ktor/network/sockets/NIOSocketImpl$attachForWriting$1;->this$0:Lio/ktor/network/sockets/NIOSocketImpl;

    invoke-static {v5}, Lio/ktor/network/sockets/NIOSocketImpl;->access$getSocketOptions$p(Lio/ktor/network/sockets/NIOSocketImpl;)Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lio/ktor/network/sockets/CIOWriterKt;->attachForWritingDirectImpl(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteChannel;Ljava/nio/channels/WritableByteChannel;Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;)Lio/ktor/utils/io/ReaderJob;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lio/ktor/network/sockets/NIOSocketImpl$attachForWriting$1;->invoke()Lio/ktor/utils/io/ReaderJob;

    move-result-object v0

    return-object v0
.end method
