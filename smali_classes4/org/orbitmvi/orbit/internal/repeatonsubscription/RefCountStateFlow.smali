.class final Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow;
.super Ljava/lang/Object;
.source "RefCountStateFlow.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/StateFlow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/StateFlow<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final subscribedCounter:Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;

.field private final upStream:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;Lkotlinx/coroutines/flow/StateFlow;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "+TT;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "subscribedCounter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "upStream"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow;->subscribedCounter:Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;

    .line 8
    iput-object p2, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow;->upStream:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow$collect$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow$collect$1;

    iget v1, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow$collect$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow$collect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow$collect$1;

    invoke-direct {v0, p0, p2}, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow$collect$1;-><init>(Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow$collect$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 17
    iget v2, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow$collect$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    .line 22
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1
    iget-object p1, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow$collect$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    iget-object p1, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow$collect$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    goto :goto_3

    :cond_3
    iget-object p1, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow$collect$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow$collect$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p2, p1

    move-object p1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19
    :try_start_2
    iget-object p2, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow;->subscribedCounter:Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;

    iput-object p0, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow$collect$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow$collect$1;->L$1:Ljava/lang/Object;

    iput v6, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow$collect$1;->label:I

    invoke-interface {p2, v0}, Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;->increment(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object p2, p1

    move-object p1, p0

    .line 20
    :goto_1
    :try_start_3
    iget-object v2, p1, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow;->upStream:Lkotlinx/coroutines/flow/StateFlow;

    iput-object p1, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow$collect$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow$collect$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow$collect$1;->label:I

    invoke-interface {v2, p2, v0}, Lkotlinx/coroutines/flow/SharedFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    new-instance p2, Lkotlin/KotlinNothingValueException;

    invoke-direct {p2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_2
    move-exception p1

    move-object v2, p0

    .line 22
    :goto_3
    iget-object p2, v2, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow;->subscribedCounter:Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;

    iput-object p1, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow$collect$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow$collect$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow$collect$1;->label:I

    invoke-interface {p2, v0}, Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;->decrement(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    :goto_4
    throw p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow;->upStream:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
