.class public final Lio/ktor/network/sockets/Connection;
.super Ljava/lang/Object;
.source "Sockets.kt"


# instance fields
.field private final input:Lio/ktor/utils/io/ByteReadChannel;

.field private final output:Lio/ktor/utils/io/ByteWriteChannel;

.field private final socket:Lio/ktor/network/sockets/Socket;


# direct methods
.method public constructor <init>(Lio/ktor/network/sockets/Socket;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;)V
    .locals 1

    const-string/jumbo v0, "socket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lio/ktor/network/sockets/Connection;->socket:Lio/ktor/network/sockets/Socket;

    .line 134
    iput-object p2, p0, Lio/ktor/network/sockets/Connection;->input:Lio/ktor/utils/io/ByteReadChannel;

    .line 135
    iput-object p3, p0, Lio/ktor/network/sockets/Connection;->output:Lio/ktor/utils/io/ByteWriteChannel;

    return-void
.end method


# virtual methods
.method public final getInput()Lio/ktor/utils/io/ByteReadChannel;
    .locals 1

    .line 134
    iget-object v0, p0, Lio/ktor/network/sockets/Connection;->input:Lio/ktor/utils/io/ByteReadChannel;

    return-object v0
.end method

.method public final getOutput()Lio/ktor/utils/io/ByteWriteChannel;
    .locals 1

    .line 135
    iget-object v0, p0, Lio/ktor/network/sockets/Connection;->output:Lio/ktor/utils/io/ByteWriteChannel;

    return-object v0
.end method
