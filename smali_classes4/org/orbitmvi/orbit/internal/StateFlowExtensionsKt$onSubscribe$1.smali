.class public final Lorg/orbitmvi/orbit/internal/StateFlowExtensionsKt$onSubscribe$1;
.super Ljava/lang/Object;
.source "StateFlowExtensions.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/StateFlow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/orbitmvi/orbit/internal/StateFlowExtensionsKt;->onSubscribe(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/StateFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/StateFlow<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_onSubscribe:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/StateFlowExtensionsKt$onSubscribe$1;->$this_onSubscribe:Lkotlinx/coroutines/flow/StateFlow;

    iput-object p2, p0, Lorg/orbitmvi/orbit/internal/StateFlowExtensionsKt$onSubscribe$1;->$block:Lkotlin/jvm/functions/Function0;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p2, Lorg/orbitmvi/orbit/internal/StateFlowExtensionsKt$onSubscribe$1$collect$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/orbitmvi/orbit/internal/StateFlowExtensionsKt$onSubscribe$1$collect$1;

    iget v1, v0, Lorg/orbitmvi/orbit/internal/StateFlowExtensionsKt$onSubscribe$1$collect$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/orbitmvi/orbit/internal/StateFlowExtensionsKt$onSubscribe$1$collect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/orbitmvi/orbit/internal/StateFlowExtensionsKt$onSubscribe$1$collect$1;

    invoke-direct {v0, p0, p2}, Lorg/orbitmvi/orbit/internal/StateFlowExtensionsKt$onSubscribe$1$collect$1;-><init>(Lorg/orbitmvi/orbit/internal/StateFlowExtensionsKt$onSubscribe$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lorg/orbitmvi/orbit/internal/StateFlowExtensionsKt$onSubscribe$1$collect$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 14
    iget v2, v0, Lorg/orbitmvi/orbit/internal/StateFlowExtensionsKt$onSubscribe$1$collect$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    .line 16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    iget-object p2, p0, Lorg/orbitmvi/orbit/internal/StateFlowExtensionsKt$onSubscribe$1;->$block:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 16
    iget-object p2, p0, Lorg/orbitmvi/orbit/internal/StateFlowExtensionsKt$onSubscribe$1;->$this_onSubscribe:Lkotlinx/coroutines/flow/StateFlow;

    iput v3, v0, Lorg/orbitmvi/orbit/internal/StateFlowExtensionsKt$onSubscribe$1$collect$1;->label:I

    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/SharedFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lorg/orbitmvi/orbit/internal/StateFlowExtensionsKt$onSubscribe$1;->$this_onSubscribe:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
