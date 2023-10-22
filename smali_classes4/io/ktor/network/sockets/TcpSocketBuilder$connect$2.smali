.class final Lio/ktor/network/sockets/TcpSocketBuilder$connect$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TcpSocketBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/sockets/TcpSocketBuilder;->connect$default(Lio/ktor/network/sockets/TcpSocketBuilder;Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/network/sockets/TcpSocketBuilder$connect$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/network/sockets/TcpSocketBuilder$connect$2;

    invoke-direct {v0}, Lio/ktor/network/sockets/TcpSocketBuilder$connect$2;-><init>()V

    sput-object v0, Lio/ktor/network/sockets/TcpSocketBuilder$connect$2;->INSTANCE:Lio/ktor/network/sockets/TcpSocketBuilder$connect$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    invoke-virtual {p0, p1}, Lio/ktor/network/sockets/TcpSocketBuilder$connect$2;->invoke(Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;)V
    .locals 1

    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
