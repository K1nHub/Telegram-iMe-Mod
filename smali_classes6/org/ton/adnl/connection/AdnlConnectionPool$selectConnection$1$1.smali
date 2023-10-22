.class final Lorg/ton/adnl/connection/AdnlConnectionPool$selectConnection$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AdnlConnectionPool.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/adnl/connection/AdnlConnectionPool$selectConnection$1;->invoke()Lorg/ton/adnl/connection/AdnlConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $liteServerDesc:Lorg/ton/api/liteserver/LiteServerDesc;

.field final synthetic this$0:Lorg/ton/adnl/connection/AdnlConnectionPool;


# direct methods
.method constructor <init>(Lorg/ton/adnl/connection/AdnlConnectionPool;Lorg/ton/api/liteserver/LiteServerDesc;)V
    .locals 0

    iput-object p1, p0, Lorg/ton/adnl/connection/AdnlConnectionPool$selectConnection$1$1;->this$0:Lorg/ton/adnl/connection/AdnlConnectionPool;

    iput-object p2, p0, Lorg/ton/adnl/connection/AdnlConnectionPool$selectConnection$1$1;->$liteServerDesc:Lorg/ton/api/liteserver/LiteServerDesc;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/ton/adnl/connection/AdnlConnectionPool$selectConnection$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 31
    iget-object v0, p0, Lorg/ton/adnl/connection/AdnlConnectionPool$selectConnection$1$1;->this$0:Lorg/ton/adnl/connection/AdnlConnectionPool;

    invoke-static {v0}, Lorg/ton/adnl/connection/AdnlConnectionPool;->access$getConnections$p(Lorg/ton/adnl/connection/AdnlConnectionPool;)Lio/ktor/util/collections/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lorg/ton/adnl/connection/AdnlConnectionPool$selectConnection$1$1;->$liteServerDesc:Lorg/ton/api/liteserver/LiteServerDesc;

    invoke-virtual {v0, v1}, Lio/ktor/util/collections/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
