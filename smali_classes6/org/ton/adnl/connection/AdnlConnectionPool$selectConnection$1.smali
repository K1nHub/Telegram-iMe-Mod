.class final Lorg/ton/adnl/connection/AdnlConnectionPool$selectConnection$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AdnlConnectionPool.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/adnl/connection/AdnlConnectionPool;->selectConnection(Lorg/ton/api/liteserver/LiteServerDesc;)Lorg/ton/adnl/connection/AdnlConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/ton/adnl/connection/AdnlConnection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $liteServerDesc:Lorg/ton/api/liteserver/LiteServerDesc;

.field final synthetic this$0:Lorg/ton/adnl/connection/AdnlConnectionPool;


# direct methods
.method constructor <init>(Lorg/ton/api/liteserver/LiteServerDesc;Lorg/ton/adnl/connection/AdnlConnectionPool;)V
    .locals 0

    iput-object p1, p0, Lorg/ton/adnl/connection/AdnlConnectionPool$selectConnection$1;->$liteServerDesc:Lorg/ton/api/liteserver/LiteServerDesc;

    iput-object p2, p0, Lorg/ton/adnl/connection/AdnlConnectionPool$selectConnection$1;->this$0:Lorg/ton/adnl/connection/AdnlConnectionPool;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lorg/ton/adnl/connection/AdnlConnectionPool$selectConnection$1;->invoke()Lorg/ton/adnl/connection/AdnlConnection;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/ton/adnl/connection/AdnlConnection;
    .locals 7

    .line 27
    new-instance v0, Lorg/ton/adnl/connection/AdnlConnection;

    .line 28
    iget-object v1, p0, Lorg/ton/adnl/connection/AdnlConnectionPool$selectConnection$1;->$liteServerDesc:Lorg/ton/api/liteserver/LiteServerDesc;

    .line 29
    iget-object v2, p0, Lorg/ton/adnl/connection/AdnlConnectionPool$selectConnection$1;->this$0:Lorg/ton/adnl/connection/AdnlConnectionPool;

    invoke-static {v2}, Lorg/ton/adnl/connection/AdnlConnectionPool;->access$getConnectionFactory$p(Lorg/ton/adnl/connection/AdnlConnectionPool;)Lorg/ton/adnl/connection/AdnlConnectionFactory;

    move-result-object v2

    .line 30
    iget-object v3, p0, Lorg/ton/adnl/connection/AdnlConnectionPool$selectConnection$1;->this$0:Lorg/ton/adnl/connection/AdnlConnectionPool;

    invoke-virtual {v3}, Lorg/ton/adnl/connection/AdnlConnectionPool;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 31
    new-instance v4, Lorg/ton/adnl/connection/AdnlConnectionPool$selectConnection$1$1;

    iget-object v5, p0, Lorg/ton/adnl/connection/AdnlConnectionPool$selectConnection$1;->this$0:Lorg/ton/adnl/connection/AdnlConnectionPool;

    iget-object v6, p0, Lorg/ton/adnl/connection/AdnlConnectionPool$selectConnection$1;->$liteServerDesc:Lorg/ton/api/liteserver/LiteServerDesc;

    invoke-direct {v4, v5, v6}, Lorg/ton/adnl/connection/AdnlConnectionPool$selectConnection$1$1;-><init>(Lorg/ton/adnl/connection/AdnlConnectionPool;Lorg/ton/api/liteserver/LiteServerDesc;)V

    .line 27
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/ton/adnl/connection/AdnlConnection;-><init>(Lorg/ton/api/liteserver/LiteServerDesc;Lorg/ton/adnl/connection/AdnlConnectionFactory;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method
