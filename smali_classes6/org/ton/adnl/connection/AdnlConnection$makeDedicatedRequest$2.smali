.class final Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AdnlConnection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/adnl/connection/AdnlConnection;->makeDedicatedRequest(Lorg/ton/adnl/connection/AdnlRequestData;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.field final synthetic $connection:Lorg/ton/adnl/network/TcpClient;


# direct methods
.method constructor <init>(Lorg/ton/adnl/network/TcpClient;)V
    .locals 0

    iput-object p1, p0, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$2;->$connection:Lorg/ton/adnl/network/TcpClient;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1

    .line 63
    :try_start_0
    iget-object v0, p0, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$2;->$connection:Lorg/ton/adnl/network/TcpClient;

    invoke-interface {v0, p1}, Lorg/ton/adnl/network/TcpClient;->close(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
