.class final Lorg/ton/adnl/connection/AdnlConnection$timeout$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AdnlConnection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/adnl/connection/AdnlConnection;-><init>(Lorg/ton/api/liteserver/LiteServerDesc;Lorg/ton/adnl/connection/AdnlConnectionFactory;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.ton.adnl.connection.AdnlConnection$timeout$1"
    f = "AdnlConnection.kt"
    l = {
        0x25
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lorg/ton/adnl/connection/AdnlConnection;


# direct methods
.method constructor <init>(Lorg/ton/adnl/connection/AdnlConnection;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/adnl/connection/AdnlConnection;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/adnl/connection/AdnlConnection$timeout$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ton/adnl/connection/AdnlConnection$timeout$1;->this$0:Lorg/ton/adnl/connection/AdnlConnection;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lorg/ton/adnl/connection/AdnlConnection$timeout$1;

    iget-object v0, p0, Lorg/ton/adnl/connection/AdnlConnection$timeout$1;->this$0:Lorg/ton/adnl/connection/AdnlConnection;

    invoke-direct {p1, v0, p2}, Lorg/ton/adnl/connection/AdnlConnection$timeout$1;-><init>(Lorg/ton/adnl/connection/AdnlConnection;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ton/adnl/connection/AdnlConnection$timeout$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/ton/adnl/connection/AdnlConnection$timeout$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/ton/adnl/connection/AdnlConnection$timeout$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/ton/adnl/connection/AdnlConnection$timeout$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 30
    iget v1, p0, Lorg/ton/adnl/connection/AdnlConnection$timeout$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object p1, p0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :goto_0
    move-object p1, p0

    .line 33
    :cond_2
    :try_start_1
    iget-object v1, p1, Lorg/ton/adnl/connection/AdnlConnection$timeout$1;->this$0:Lorg/ton/adnl/connection/AdnlConnection;

    invoke-static {v1}, Lorg/ton/adnl/connection/AdnlConnection;->access$getLastActivity$p(Lorg/ton/adnl/connection/AdnlConnection;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/datetime/Instant;

    sget-object v3, Lorg/ton/adnl/connection/AdnlConnection;->Companion:Lorg/ton/adnl/connection/AdnlConnection$Companion;

    invoke-virtual {v3}, Lorg/ton/adnl/connection/AdnlConnection$Companion;->getMAX_IDLE_TIME-UwyO8pc()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lkotlinx/datetime/Instant;->plus-LRDsOJo(J)Lkotlinx/datetime/Instant;

    move-result-object v1

    sget-object v3, Lkotlinx/datetime/Clock$System;->INSTANCE:Lkotlinx/datetime/Clock$System;

    invoke-virtual {v3}, Lkotlinx/datetime/Clock$System;->now()Lkotlinx/datetime/Instant;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkotlinx/datetime/Instant;->minus-5sfh64U(Lkotlinx/datetime/Instant;)J

    move-result-wide v3

    .line 34
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v1

    if-gtz v1, :cond_3

    goto :goto_1

    .line 37
    :cond_3
    iput v2, p1, Lorg/ton/adnl/connection/AdnlConnection$timeout$1;->label:I

    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v1, v0, :cond_2

    return-object v0

    .line 41
    :catchall_1
    :goto_1
    iget-object p1, p1, Lorg/ton/adnl/connection/AdnlConnection$timeout$1;->this$0:Lorg/ton/adnl/connection/AdnlConnection;

    invoke-static {p1}, Lorg/ton/adnl/connection/AdnlConnection;->access$getOnDone$p(Lorg/ton/adnl/connection/AdnlConnection;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 43
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
