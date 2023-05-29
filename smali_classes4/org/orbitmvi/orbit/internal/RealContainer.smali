.class public final Lorg/orbitmvi/orbit/internal/RealContainer;
.super Ljava/lang/Object;
.source "RealContainer.kt"

# interfaces
.implements Lorg/orbitmvi/orbit/Container;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<STATE:",
        "Ljava/lang/Object;",
        "SIDE_EFFECT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/orbitmvi/orbit/Container<",
        "TSTATE;TSIDE_EFFECT;>;"
    }
.end annotation


# static fields
.field private static final synthetic initialised$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final dispatchChannel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lkotlin/jvm/functions/Function2<",
            "Lorg/orbitmvi/orbit/syntax/ContainerContext<",
            "TSTATE;TSIDE_EFFECT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile synthetic initialised:I

.field private final internalStateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "TSTATE;>;"
        }
    .end annotation
.end field

.field private final mutex:Lkotlinx/coroutines/sync/Mutex;

.field private final pluginContext:Lorg/orbitmvi/orbit/syntax/ContainerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/orbitmvi/orbit/syntax/ContainerContext<",
            "TSTATE;TSIDE_EFFECT;>;"
        }
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final settings:Lorg/orbitmvi/orbit/Container$Settings;

.field private final sideEffectChannel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "TSIDE_EFFECT;>;"
        }
    .end annotation
.end field

.field private final sideEffectFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "TSIDE_EFFECT;>;"
        }
    .end annotation
.end field

.field private final stateFlow:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "TSTATE;>;"
        }
    .end annotation
.end field

.field private final subscribedCounter:Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/orbitmvi/orbit/internal/RealContainer;

    const-string v1, "initialised"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/orbitmvi/orbit/internal/RealContainer;->initialised$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;Lorg/orbitmvi/orbit/Container$Settings;Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lorg/orbitmvi/orbit/Container$Settings;",
            "Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;",
            ")V"
        }
    .end annotation

    const-string v0, "initialState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "settings"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p3, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->settings:Lorg/orbitmvi/orbit/Container$Settings;

    .line 52
    invoke-virtual {p0}, Lorg/orbitmvi/orbit/internal/RealContainer;->getSettings()Lorg/orbitmvi/orbit/Container$Settings;

    move-result-object p3

    invoke-virtual {p3}, Lorg/orbitmvi/orbit/Container$Settings;->getIntentDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    iput-object p2, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->scope:Lkotlinx/coroutines/CoroutineScope;

    const p3, 0x7fffffff

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 53
    invoke-static {p3, v0, v0, v1, v0}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p3

    iput-object p3, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->dispatchChannel:Lkotlinx/coroutines/channels/Channel;

    const/4 p3, 0x0

    const/4 v2, 0x1

    .line 54
    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v2

    iput-object v2, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 55
    iput p3, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->initialised:I

    if-nez p4, :cond_0

    .line 57
    new-instance p4, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;

    invoke-virtual {p0}, Lorg/orbitmvi/orbit/internal/RealContainer;->getSettings()Lorg/orbitmvi/orbit/Container$Settings;

    move-result-object p3

    invoke-virtual {p3}, Lorg/orbitmvi/orbit/Container$Settings;->getRepeatOnSubscribedStopTimeout()J

    move-result-wide v2

    invoke-direct {p4, p2, v2, v3}, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;-><init>(Lkotlinx/coroutines/CoroutineScope;J)V

    :cond_0
    move-object v9, p4

    iput-object v9, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->subscribedCounter:Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;

    .line 59
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->internalStateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 61
    invoke-static {p1, v9}, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlowKt;->refCount(Lkotlinx/coroutines/flow/StateFlow;Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->stateFlow:Lkotlinx/coroutines/flow/StateFlow;

    .line 63
    invoke-virtual {p0}, Lorg/orbitmvi/orbit/internal/RealContainer;->getSettings()Lorg/orbitmvi/orbit/Container$Settings;

    move-result-object p1

    invoke-virtual {p1}, Lorg/orbitmvi/orbit/Container$Settings;->getSideEffectBufferSize()I

    move-result p1

    invoke-static {p1, v0, v0, v1, v0}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->sideEffectChannel:Lkotlinx/coroutines/channels/Channel;

    .line 65
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->receiveAsFlow(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1, v9}, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountFlowKt;->refCount(Lkotlinx/coroutines/flow/Flow;Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->sideEffectFlow:Lkotlinx/coroutines/flow/Flow;

    .line 67
    new-instance p1, Lorg/orbitmvi/orbit/syntax/ContainerContext;

    .line 68
    invoke-virtual {p0}, Lorg/orbitmvi/orbit/internal/RealContainer;->getSettings()Lorg/orbitmvi/orbit/Container$Settings;

    move-result-object v5

    .line 69
    new-instance v6, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$1;

    invoke-direct {v6, p0, v0}, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$1;-><init>(Lorg/orbitmvi/orbit/internal/RealContainer;Lkotlin/coroutines/Continuation;)V

    .line 70
    new-instance v7, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$2;

    invoke-direct {v7, p0}, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$2;-><init>(Lorg/orbitmvi/orbit/internal/RealContainer;)V

    .line 73
    new-instance v8, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;

    invoke-direct {v8, p0, v0}, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$3;-><init>(Lorg/orbitmvi/orbit/internal/RealContainer;Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    .line 67
    invoke-direct/range {v4 .. v9}, Lorg/orbitmvi/orbit/syntax/ContainerContext;-><init>(Lorg/orbitmvi/orbit/Container$Settings;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;)V

    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->pluginContext:Lorg/orbitmvi/orbit/syntax/ContainerContext;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;Lorg/orbitmvi/orbit/Container$Settings;Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 46
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/orbitmvi/orbit/internal/RealContainer;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;Lorg/orbitmvi/orbit/Container$Settings;Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;)V

    return-void
.end method

.method public static final synthetic access$getDispatchChannel$p(Lorg/orbitmvi/orbit/internal/RealContainer;)Lkotlinx/coroutines/channels/Channel;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->dispatchChannel:Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method

.method public static final synthetic access$getInternalStateFlow$p(Lorg/orbitmvi/orbit/internal/RealContainer;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->internalStateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$getMutex$p(Lorg/orbitmvi/orbit/internal/RealContainer;)Lkotlinx/coroutines/sync/Mutex;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-object p0
.end method

.method public static final synthetic access$getScope$p(Lorg/orbitmvi/orbit/internal/RealContainer;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getSideEffectChannel$p(Lorg/orbitmvi/orbit/internal/RealContainer;)Lkotlinx/coroutines/channels/Channel;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->sideEffectChannel:Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method

.method private final initialiseIfNeeded()V
    .locals 13

    .line 87
    sget-object v0, Lorg/orbitmvi/orbit/internal/RealContainer;->initialised$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$1;-><init>(Lorg/orbitmvi/orbit/internal/RealContainer;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    .line 94
    iget-object v7, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;

    invoke-direct {v10, p0, v0}, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$2;-><init>(Lorg/orbitmvi/orbit/internal/RealContainer;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getPluginContext$orbit_core()Lorg/orbitmvi/orbit/syntax/ContainerContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/orbitmvi/orbit/syntax/ContainerContext<",
            "TSTATE;TSIDE_EFFECT;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->pluginContext:Lorg/orbitmvi/orbit/syntax/ContainerContext;

    return-object v0
.end method

.method public getSettings()Lorg/orbitmvi/orbit/Container$Settings;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->settings:Lorg/orbitmvi/orbit/Container$Settings;

    return-object v0
.end method

.method public getSideEffectFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "TSIDE_EFFECT;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->sideEffectFlow:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public getStateFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "TSTATE;>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->stateFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public orbit(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lorg/orbitmvi/orbit/syntax/ContainerContext<",
            "TSTATE;TSIDE_EFFECT;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lorg/orbitmvi/orbit/internal/RealContainer;->initialiseIfNeeded()V

    .line 83
    iget-object v0, p0, Lorg/orbitmvi/orbit/internal/RealContainer;->dispatchChannel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
