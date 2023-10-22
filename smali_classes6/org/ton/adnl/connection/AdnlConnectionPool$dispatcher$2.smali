.class final Lorg/ton/adnl/connection/AdnlConnectionPool$dispatcher$2;
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
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/adnl/connection/AdnlConnectionPool$dispatcher$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/adnl/connection/AdnlConnectionPool$dispatcher$2;

    invoke-direct {v0}, Lorg/ton/adnl/connection/AdnlConnectionPool$dispatcher$2;-><init>()V

    sput-object v0, Lorg/ton/adnl/connection/AdnlConnectionPool$dispatcher$2;->INSTANCE:Lorg/ton/adnl/connection/AdnlConnectionPool$dispatcher$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/ton/adnl/connection/AdnlConnectionPool$dispatcher$2;->invoke()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .locals 2

    const/4 v0, 0x2

    const-string v1, "adnl-dispatcher"

    .line 13
    invoke-static {v0, v1}, Lkotlinx/coroutines/ThreadPoolDispatcherKt;->newFixedThreadPoolContext(ILjava/lang/String;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method
