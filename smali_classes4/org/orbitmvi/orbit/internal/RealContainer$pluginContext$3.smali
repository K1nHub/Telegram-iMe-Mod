.class final Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RealContainer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/orbitmvi/orbit/internal/RealContainer;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;Lorg/orbitmvi/orbit/Container$Settings;Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/jvm/functions/Function1<",
        "-TSTATE;+TSTATE;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealContainer.kt\norg/orbitmvi/orbit/internal/RealContainer$pluginContext$3\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,105:1\n107#2,10:106\n*S KotlinDebug\n*F\n+ 1 RealContainer.kt\norg/orbitmvi/orbit/internal/RealContainer$pluginContext$3\n*L\n74#1:106,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.orbitmvi.orbit.internal.RealContainer$pluginContext$3"
    f = "RealContainer.kt"
    l = {
        0x6f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

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
            "Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;->this$0:Lorg/orbitmvi/orbit/internal/RealContainer;

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

    new-instance v0, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;

    iget-object v1, p0, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;->this$0:Lorg/orbitmvi/orbit/internal/RealContainer;

    invoke-direct {v0, v1, p2}, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;-><init>(Lorg/orbitmvi/orbit/internal/RealContainer;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/jvm/functions/Function1;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;->invoke(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TSTATE;+TSTATE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 73
    iget v1, p0, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;->L$2:Ljava/lang/Object;

    check-cast v0, Lorg/orbitmvi/orbit/internal/RealContainer;

    iget-object v1, p0, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, p0, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 74
    iget-object v1, p0, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;->this$0:Lorg/orbitmvi/orbit/internal/RealContainer;

    invoke-static {v1}, Lorg/orbitmvi/orbit/internal/RealContainer;->access$getMutex$p(Lorg/orbitmvi/orbit/internal/RealContainer;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v1

    iget-object v4, p0, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;->this$0:Lorg/orbitmvi/orbit/internal/RealContainer;

    .line 111
    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;->L$2:Ljava/lang/Object;

    iput v3, p0, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;->label:I

    invoke-interface {v1, v2, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    return-object v0

    :cond_2
    move-object v3, p1

    move-object v0, v4

    .line 75
    :goto_0
    :try_start_0
    invoke-static {v0}, Lorg/orbitmvi/orbit/internal/RealContainer;->access$getInternalStateFlow$p(Lorg/orbitmvi/orbit/internal/RealContainer;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    invoke-static {v0}, Lorg/orbitmvi/orbit/internal/RealContainer;->access$getInternalStateFlow$p(Lorg/orbitmvi/orbit/internal/RealContainer;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 76
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-interface {v1, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v1, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
