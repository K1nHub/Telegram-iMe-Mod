.class public final Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;
.super Ljava/lang/Object;
.source "DelayingSubscribedCounter.kt"

# interfaces
.implements Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelayingSubscribedCounter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DelayingSubscribedCounter.kt\norg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,47:1\n107#2,10:48\n107#2,8:58\n116#2:70\n115#2:71\n371#3,4:66\n*S KotlinDebug\n*F\n+ 1 DelayingSubscribedCounter.kt\norg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter\n*L\n30#1:48,10\n36#1:58,8\n36#1:70\n36#1:71\n37#1:66,4\n*E\n"
.end annotation


# static fields
.field private static final synthetic counter$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic job$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private final _subscribed:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private volatile synthetic counter:I

.field private volatile synthetic job:Ljava/lang/Object;

.field private mutex:Lkotlinx/coroutines/sync/Mutex;

.field private final repeatOnSubscribedStopTimeout:J

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final subscribed:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;

    const-string v1, "counter"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->counter$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v1, Ljava/lang/Object;

    const-string v2, "job"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->job$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;J)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 19
    iput-wide p2, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->repeatOnSubscribedStopTimeout:J

    .line 22
    sget-object p1, Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;->Unsubscribed:Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->_subscribed:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 24
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->subscribed:Lkotlinx/coroutines/flow/Flow;

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->counter:I

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 27
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 28
    iput-object p3, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->job:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getRepeatOnSubscribedStopTimeout$p(Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;)J
    .locals 2

    .line 17
    iget-wide v0, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->repeatOnSubscribedStopTimeout:J

    return-wide v0
.end method

.method public static final synthetic access$get_subscribed$p(Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 17
    iget-object p0, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->_subscribed:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method


# virtual methods
.method public decrement(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$1;

    iget v1, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$1;

    invoke-direct {v0, p0, p1}, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$1;-><init>(Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 36
    iget v2, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v1, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 112
    iput-object p0, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$1;->label:I

    invoke-interface {p1, v3, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    .line 67
    :cond_4
    :goto_1
    :try_start_0
    iget p1, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->counter:I

    if-lez p1, :cond_5

    add-int/lit8 v2, p1, -0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 69
    :goto_2
    sget-object v5, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->counter$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v5, v0, p1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    if-ne p1, v4, :cond_7

    .line 38
    sget-object p1, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->job$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 39
    iget-object v5, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$2$2;

    invoke-direct {v8, v0, v3}, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$2$2;-><init>(Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v2

    .line 38
    invoke-virtual {p1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/Job;

    if-nez p1, :cond_6

    goto :goto_3

    .line 43
    :cond_6
    invoke-static {p1, v3, v4, v3}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 45
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-interface {v1, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v1, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public increment(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$increment$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$increment$1;

    iget v1, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$increment$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$increment$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$increment$1;

    invoke-direct {v0, p0, p1}, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$increment$1;-><init>(Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$increment$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 30
    iget v2, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$increment$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$increment$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$increment$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 34
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 112
    iput-object p0, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$increment$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$increment$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$increment$1;->label:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    .line 31
    :goto_1
    :try_start_0
    sget-object p1, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->counter$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 32
    sget-object p1, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->job$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/Job;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p1, v4, v3, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 33
    :goto_2
    iget-object p1, v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->_subscribed:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;->Subscribed:Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 34
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
