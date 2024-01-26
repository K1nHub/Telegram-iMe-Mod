.class final Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RealContainer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/orbitmvi/orbit/internal/RealContainer;->initialiseIfNeeded()V
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
    c = "org.orbitmvi.orbit.internal.RealContainer$initialiseIfNeeded$2"
    f = "RealContainer.kt"
    l = {
        0x62
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/orbitmvi/orbit/internal/RealContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/orbitmvi/orbit/internal/RealContainer<",
            "TSTATE;TSIDE_EFFECT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/orbitmvi/orbit/internal/RealContainer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/orbitmvi/orbit/internal/RealContainer<",
            "TSTATE;TSIDE_EFFECT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;->this$0:Lorg/orbitmvi/orbit/internal/RealContainer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;

    iget-object v1, p0, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;->this$0:Lorg/orbitmvi/orbit/internal/RealContainer;

    invoke-direct {v0, v1, p2}, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;-><init>(Lorg/orbitmvi/orbit/internal/RealContainer;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 94
    iget v1, p0, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, p0, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    iget-object v5, p0, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v4

    move-object v12, v5

    move-object v4, v1

    move-object v1, v0

    move-object v0, p0

    goto/16 :goto_2

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 95
    iget-object v1, p0, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;->this$0:Lorg/orbitmvi/orbit/internal/RealContainer;

    invoke-virtual {v1}, Lorg/orbitmvi/orbit/internal/RealContainer;->getSettings()Lorg/orbitmvi/orbit/Container$Settings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/orbitmvi/orbit/Container$Settings;->getExceptionHandler()Lkotlinx/coroutines/CoroutineExceptionHandler;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;->this$0:Lorg/orbitmvi/orbit/internal/RealContainer;

    invoke-static {v4}, Lorg/orbitmvi/orbit/internal/RealContainer;->access$getScope$p(Lorg/orbitmvi/orbit/internal/RealContainer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    sget-object v5, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/Job;

    invoke-static {v4}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v4

    invoke-interface {v1, v4}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 96
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    if-nez v1, :cond_3

    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_3
    invoke-virtual {v4, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 98
    iget-object v4, p0, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;->this$0:Lorg/orbitmvi/orbit/internal/RealContainer;

    invoke-static {v4}, Lorg/orbitmvi/orbit/internal/RealContainer;->access$getDispatchChannel$p(Lorg/orbitmvi/orbit/internal/RealContainer;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4

    move-object v5, p1

    move-object p1, p0

    move-object v13, v4

    move-object v4, v1

    move-object v1, v13

    :goto_1
    iput-object v5, p1, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;->L$0:Ljava/lang/Object;

    iput-object v4, p1, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;->L$1:Ljava/lang/Object;

    iput-object v1, p1, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;->L$2:Ljava/lang/Object;

    iput v3, p1, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;->label:I

    invoke-interface {v1, p1}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_4

    return-object v0

    :cond_4
    move-object v11, v4

    move-object v12, v5

    move-object v4, v1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v6

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v4}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x0

    .line 99
    new-instance v8, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2$1;

    iget-object v5, v0, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;->this$0:Lorg/orbitmvi/orbit/internal/RealContainer;

    invoke-direct {v8, p1, v5, v2}, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2$1;-><init>(Lkotlin/jvm/functions/Function2;Lorg/orbitmvi/orbit/internal/RealContainer;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v5, v12

    move-object v6, v11

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-object p1, v0

    move-object v0, v1

    move-object v1, v4

    move-object v4, v11

    goto :goto_1

    .line 101
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
