.class public final Lio/ktor/network/sockets/Configurable$DefaultImpls;
.super Ljava/lang/Object;
.source "Builders.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/sockets/Configurable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static configure(Lio/ktor/network/sockets/Configurable;Lkotlin/jvm/functions/Function1;)Lio/ktor/network/sockets/Configurable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/ktor/network/sockets/Configurable<",
            "+TT;TOptions;>;Options:",
            "Lio/ktor/network/sockets/SocketOptions;",
            ">(",
            "Lio/ktor/network/sockets/Configurable<",
            "+TT;TOptions;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TOptions;",
            "Lkotlin/Unit;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-interface {p0}, Lio/ktor/network/sockets/Configurable;->getOptions()Lio/ktor/network/sockets/SocketOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/network/sockets/SocketOptions;->copy$ktor_network()Lio/ktor/network/sockets/SocketOptions;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type Options of io.ktor.network.sockets.Configurable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-interface {p0, v0}, Lio/ktor/network/sockets/Configurable;->setOptions(Lio/ktor/network/sockets/SocketOptions;)V

    const-string/jumbo p1, "null cannot be cast to non-null type T of io.ktor.network.sockets.Configurable"

    .line 64
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
