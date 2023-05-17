.class public final Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;
.super Ljava/lang/Object;
.source "LazyCreateContainerDecorator.kt"

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
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyCreateContainerDecorator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyCreateContainerDecorator.kt\norg/orbitmvi/orbit/internal/LazyCreateContainerDecorator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,55:1\n1#2:56\n*E\n"
.end annotation


# static fields
.field private static final synthetic created$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final actual:Lorg/orbitmvi/orbit/Container;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/orbitmvi/orbit/Container<",
            "TSTATE;TSIDE_EFFECT;>;"
        }
    .end annotation
.end field

.field private volatile synthetic created:I

.field private final onCreate:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TSTATE;",
            "Lkotlin/Unit;",
            ">;"
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;

    const-string v1, "created"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;->created$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lorg/orbitmvi/orbit/Container;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/orbitmvi/orbit/Container<",
            "TSTATE;TSIDE_EFFECT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TSTATE;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "actual"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCreate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;->actual:Lorg/orbitmvi/orbit/Container;

    .line 34
    iput-object p2, p0, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;->onCreate:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;->created:I

    .line 38
    invoke-virtual {p0}, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;->getActual()Lorg/orbitmvi/orbit/Container;

    move-result-object p1

    invoke-interface {p1}, Lorg/orbitmvi/orbit/Container;->getStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    new-instance p2, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator$stateFlow$1;

    invoke-direct {p2, p0}, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator$stateFlow$1;-><init>(Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;)V

    invoke-static {p1, p2}, Lorg/orbitmvi/orbit/internal/StateFlowExtensionsKt;->onSubscribe(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;->stateFlow:Lkotlinx/coroutines/flow/StateFlow;

    .line 40
    new-instance p1, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator$sideEffectFlow$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator$sideEffectFlow$1;-><init>(Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;->sideEffectFlow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method public static final synthetic access$runOnCreate(Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;->runOnCreate()V

    return-void
.end method

.method private final runOnCreate()V
    .locals 3

    .line 46
    sget-object v0, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;->created$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;->onCreate:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;->getActual()Lorg/orbitmvi/orbit/Container;

    move-result-object v1

    invoke-interface {v1}, Lorg/orbitmvi/orbit/Container;->getStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public getActual()Lorg/orbitmvi/orbit/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/orbitmvi/orbit/Container<",
            "TSTATE;TSIDE_EFFECT;>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;->actual:Lorg/orbitmvi/orbit/Container;

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

    .line 40
    iget-object v0, p0, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;->sideEffectFlow:Lkotlinx/coroutines/flow/Flow;

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

    .line 38
    iget-object v0, p0, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;->stateFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public orbit(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p2, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator$orbit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator$orbit$1;

    iget v1, v0, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator$orbit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator$orbit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator$orbit$1;

    invoke-direct {v0, p0, p2}, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator$orbit$1;-><init>(Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator$orbit$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 51
    iget v2, v0, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator$orbit$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator$orbit$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/Unit;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    invoke-direct {p0}, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;->runOnCreate()V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0}, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;->getActual()Lorg/orbitmvi/orbit/Container;

    move-result-object v2

    iput-object p2, v0, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator$orbit$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator$orbit$1;->label:I

    invoke-interface {v2, p1, v0}, Lorg/orbitmvi/orbit/Container;->orbit(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 53
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
