.class final Lio/ktor/network/sockets/SocketOptions$GeneralSocketOptions;
.super Lio/ktor/network/sockets/SocketOptions;
.source "SocketOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/sockets/SocketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GeneralSocketOptions"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "customOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lio/ktor/network/sockets/SocketOptions;-><init>(Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public copy$ktor_network()Lio/ktor/network/sockets/SocketOptions$GeneralSocketOptions;
    .locals 3

    .line 43
    new-instance v0, Lio/ktor/network/sockets/SocketOptions$GeneralSocketOptions;

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketOptions;->getCustomOptions()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lio/ktor/network/sockets/SocketOptions$GeneralSocketOptions;-><init>(Ljava/util/Map;)V

    .line 44
    invoke-virtual {v0, p0}, Lio/ktor/network/sockets/SocketOptions;->copyCommon(Lio/ktor/network/sockets/SocketOptions;)V

    return-object v0
.end method

.method public bridge synthetic copy$ktor_network()Lio/ktor/network/sockets/SocketOptions;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lio/ktor/network/sockets/SocketOptions$GeneralSocketOptions;->copy$ktor_network()Lio/ktor/network/sockets/SocketOptions$GeneralSocketOptions;

    move-result-object v0

    return-object v0
.end method
