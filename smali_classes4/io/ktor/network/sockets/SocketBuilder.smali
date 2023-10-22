.class public final Lio/ktor/network/sockets/SocketBuilder;
.super Ljava/lang/Object;
.source "Builders.kt"

# interfaces
.implements Lio/ktor/network/sockets/Configurable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/network/sockets/Configurable<",
        "Lio/ktor/network/sockets/SocketBuilder;",
        "Lio/ktor/network/sockets/SocketOptions;",
        ">;"
    }
.end annotation


# instance fields
.field private options:Lio/ktor/network/sockets/SocketOptions;

.field private final selector:Lio/ktor/network/selector/SelectorManager;


# direct methods
.method public constructor <init>(Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketOptions;)V
    .locals 1

    const-string/jumbo v0, "selector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lio/ktor/network/sockets/SocketBuilder;->selector:Lio/ktor/network/selector/SelectorManager;

    .line 19
    iput-object p2, p0, Lio/ktor/network/sockets/SocketBuilder;->options:Lio/ktor/network/sockets/SocketOptions;

    return-void
.end method


# virtual methods
.method public bridge synthetic configure(Lkotlin/jvm/functions/Function1;)Lio/ktor/network/sockets/Configurable;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lio/ktor/network/sockets/SocketBuilder;->configure(Lkotlin/jvm/functions/Function1;)Lio/ktor/network/sockets/SocketBuilder;

    move-result-object p1

    return-object p1
.end method

.method public configure(Lkotlin/jvm/functions/Function1;)Lio/ktor/network/sockets/SocketBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/network/sockets/SocketOptions;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/network/sockets/SocketBuilder;"
        }
    .end annotation

    .line 16
    invoke-static {p0, p1}, Lio/ktor/network/sockets/Configurable$DefaultImpls;->configure(Lio/ktor/network/sockets/Configurable;Lkotlin/jvm/functions/Function1;)Lio/ktor/network/sockets/Configurable;

    move-result-object p1

    check-cast p1, Lio/ktor/network/sockets/SocketBuilder;

    return-object p1
.end method

.method public getOptions()Lio/ktor/network/sockets/SocketOptions;
    .locals 1

    .line 19
    iget-object v0, p0, Lio/ktor/network/sockets/SocketBuilder;->options:Lio/ktor/network/sockets/SocketOptions;

    return-object v0
.end method

.method public setOptions(Lio/ktor/network/sockets/SocketOptions;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lio/ktor/network/sockets/SocketBuilder;->options:Lio/ktor/network/sockets/SocketOptions;

    return-void
.end method

.method public final tcp()Lio/ktor/network/sockets/TcpSocketBuilder;
    .locals 3

    .line 25
    new-instance v0, Lio/ktor/network/sockets/TcpSocketBuilder;

    iget-object v1, p0, Lio/ktor/network/sockets/SocketBuilder;->selector:Lio/ktor/network/selector/SelectorManager;

    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketBuilder;->getOptions()Lio/ktor/network/sockets/SocketOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/network/sockets/SocketOptions;->peer$ktor_network()Lio/ktor/network/sockets/SocketOptions$PeerSocketOptions;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/ktor/network/sockets/TcpSocketBuilder;-><init>(Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketOptions;)V

    return-object v0
.end method
