.class public final Lorg/orbitmvi/orbit/internal/TestContainerDecorator;
.super Ljava/lang/Object;
.source "TestContainerDecorator.kt"

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


# instance fields
.field private final actual:Lorg/orbitmvi/orbit/Container;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/orbitmvi/orbit/Container<",
            "TSTATE;TSIDE_EFFECT;>;"
        }
    .end annotation
.end field

.field private volatile synthetic delegate:Ljava/lang/Object;

.field private final originalInitialState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSTATE;"
        }
    .end annotation
.end field

.field private final parentScope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/orbitmvi/orbit/internal/TestContainerDecorator;

    const-class v1, Ljava/lang/Object;

    const-string v2, "delegate"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;Lorg/orbitmvi/orbit/Container;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lorg/orbitmvi/orbit/Container<",
            "TSTATE;TSIDE_EFFECT;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "originalInitialState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "parentScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actual"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/TestContainerDecorator;->originalInitialState:Ljava/lang/Object;

    .line 30
    iput-object p2, p0, Lorg/orbitmvi/orbit/internal/TestContainerDecorator;->parentScope:Lkotlinx/coroutines/CoroutineScope;

    .line 31
    iput-object p3, p0, Lorg/orbitmvi/orbit/internal/TestContainerDecorator;->actual:Lorg/orbitmvi/orbit/Container;

    .line 34
    invoke-virtual {p0}, Lorg/orbitmvi/orbit/internal/TestContainerDecorator;->getActual()Lorg/orbitmvi/orbit/Container;

    move-result-object p1

    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/TestContainerDecorator;->delegate:Ljava/lang/Object;

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

    .line 31
    iget-object v0, p0, Lorg/orbitmvi/orbit/internal/TestContainerDecorator;->actual:Lorg/orbitmvi/orbit/Container;

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

    .line 46
    iget-object v0, p0, Lorg/orbitmvi/orbit/internal/TestContainerDecorator;->delegate:Ljava/lang/Object;

    check-cast v0, Lorg/orbitmvi/orbit/Container;

    invoke-interface {v0}, Lorg/orbitmvi/orbit/Container;->getSideEffectFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

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

    .line 43
    iget-object v0, p0, Lorg/orbitmvi/orbit/internal/TestContainerDecorator;->delegate:Ljava/lang/Object;

    check-cast v0, Lorg/orbitmvi/orbit/Container;

    invoke-interface {v0}, Lorg/orbitmvi/orbit/Container;->getStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

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

    .line 49
    iget-object v0, p0, Lorg/orbitmvi/orbit/internal/TestContainerDecorator;->delegate:Ljava/lang/Object;

    check-cast v0, Lorg/orbitmvi/orbit/Container;

    invoke-interface {v0, p1, p2}, Lorg/orbitmvi/orbit/Container;->orbit(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
