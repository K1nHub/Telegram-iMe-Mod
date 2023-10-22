.class final Lorg/ton/adnl/connection/AdnlConnectionPool$coroutineContext$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AdnlConnectionPool.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/adnl/connection/AdnlConnectionPool;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/coroutines/CoroutineContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ton/adnl/connection/AdnlConnectionPool;


# direct methods
.method constructor <init>(Lorg/ton/adnl/connection/AdnlConnectionPool;)V
    .locals 0

    iput-object p1, p0, Lorg/ton/adnl/connection/AdnlConnectionPool$coroutineContext$2;->this$0:Lorg/ton/adnl/connection/AdnlConnectionPool;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lorg/ton/adnl/connection/AdnlConnectionPool$coroutineContext$2;->invoke()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/coroutines/CoroutineContext;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 17
    invoke-static {v0, v1, v0}, Lio/ktor/util/CoroutinesUtilsKt;->SilentSupervisor$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iget-object v1, p0, Lorg/ton/adnl/connection/AdnlConnectionPool$coroutineContext$2;->this$0:Lorg/ton/adnl/connection/AdnlConnectionPool;

    invoke-static {v1}, Lorg/ton/adnl/connection/AdnlConnectionPool;->access$getDispatcher(Lorg/ton/adnl/connection/AdnlConnectionPool;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/CoroutineName;

    const-string v2, "AdnlConnectionPool"

    invoke-direct {v1, v2}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method
