.class public final Lio/ktor/network/sockets/BuildersKt;
.super Ljava/lang/Object;
.source "Builders.kt"


# direct methods
.method public static final aSocket(Lio/ktor/network/selector/SelectorManager;)Lio/ktor/network/sockets/SocketBuilder;
    .locals 2

    const-string/jumbo v0, "selector"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lio/ktor/network/sockets/SocketBuilder;

    sget-object v1, Lio/ktor/network/sockets/SocketOptions;->Companion:Lio/ktor/network/sockets/SocketOptions$Companion;

    invoke-virtual {v1}, Lio/ktor/network/sockets/SocketOptions$Companion;->create$ktor_network()Lio/ktor/network/sockets/SocketOptions;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/ktor/network/sockets/SocketBuilder;-><init>(Lio/ktor/network/selector/SelectorManager;Lio/ktor/network/sockets/SocketOptions;)V

    return-object v0
.end method

.method public static final tcpNoDelay(Lio/ktor/network/sockets/Configurable;)Lio/ktor/network/sockets/Configurable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/ktor/network/sockets/Configurable<",
            "+TT;*>;>(TT;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lio/ktor/network/sockets/BuildersKt$tcpNoDelay$1;->INSTANCE:Lio/ktor/network/sockets/BuildersKt$tcpNoDelay$1;

    invoke-interface {p0, v0}, Lio/ktor/network/sockets/Configurable;->configure(Lkotlin/jvm/functions/Function1;)Lio/ktor/network/sockets/Configurable;

    move-result-object p0

    return-object p0
.end method
