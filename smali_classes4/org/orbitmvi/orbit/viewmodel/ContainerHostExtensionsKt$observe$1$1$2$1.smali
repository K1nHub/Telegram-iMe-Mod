.class final Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ContainerHostExtensions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "org.orbitmvi.orbit.viewmodel.ContainerHostExtensionsKt$observe$1$1$2$1"
    f = "ContainerHostExtensions.kt"
    l = {
        0x34
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $sideEffect:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TSIDE_EFFECT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_observe:Lorg/orbitmvi/orbit/ContainerHost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/orbitmvi/orbit/ContainerHost<",
            "TSTATE;TSIDE_EFFECT;>;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Lorg/orbitmvi/orbit/ContainerHost;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/orbitmvi/orbit/ContainerHost<",
            "TSTATE;TSIDE_EFFECT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TSIDE_EFFECT;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1$2$1;->$this_observe:Lorg/orbitmvi/orbit/ContainerHost;

    iput-object p2, p0, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1$2$1;->$sideEffect:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1$2$1;

    iget-object v0, p0, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1$2$1;->$this_observe:Lorg/orbitmvi/orbit/ContainerHost;

    iget-object v1, p0, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1$2$1;->$sideEffect:Lkotlin/jvm/functions/Function2;

    invoke-direct {p1, v0, v1, p2}, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1$2$1;-><init>(Lorg/orbitmvi/orbit/ContainerHost;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 52
    iget v1, p0, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1$2$1;->$this_observe:Lorg/orbitmvi/orbit/ContainerHost;

    invoke-interface {p1}, Lorg/orbitmvi/orbit/ContainerHost;->getContainer()Lorg/orbitmvi/orbit/Container;

    move-result-object p1

    invoke-interface {p1}, Lorg/orbitmvi/orbit/Container;->getSideEffectFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v1, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1$2$1$1;

    iget-object v3, p0, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1$2$1;->$sideEffect:Lkotlin/jvm/functions/Function2;

    invoke-direct {v1, v3}, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1$2$1$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    iput v2, p0, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1$2$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
