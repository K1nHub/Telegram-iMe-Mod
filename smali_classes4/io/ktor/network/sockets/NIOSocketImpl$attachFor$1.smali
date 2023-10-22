.class final Lio/ktor/network/sockets/NIOSocketImpl$attachFor$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NIOSocketImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/sockets/NIOSocketImpl;->attachFor(Ljava/lang/String;Lio/ktor/utils/io/ByteChannel;Ljava/util/concurrent/atomic/AtomicReference;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/ktor/network/sockets/NIOSocketImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/network/sockets/NIOSocketImpl<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/ktor/network/sockets/NIOSocketImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/sockets/NIOSocketImpl<",
            "+TS;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/network/sockets/NIOSocketImpl$attachFor$1;->this$0:Lio/ktor/network/sockets/NIOSocketImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 96
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/network/sockets/NIOSocketImpl$attachFor$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    .line 97
    iget-object p1, p0, Lio/ktor/network/sockets/NIOSocketImpl$attachFor$1;->this$0:Lio/ktor/network/sockets/NIOSocketImpl;

    invoke-static {p1}, Lio/ktor/network/sockets/NIOSocketImpl;->access$checkChannels(Lio/ktor/network/sockets/NIOSocketImpl;)V

    return-void
.end method
