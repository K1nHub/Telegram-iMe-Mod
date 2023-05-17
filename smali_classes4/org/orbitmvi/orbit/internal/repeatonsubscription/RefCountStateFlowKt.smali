.class public final Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlowKt;
.super Ljava/lang/Object;
.source "RefCountStateFlow.kt"


# direct methods
.method public static final refCount(Lkotlinx/coroutines/flow/StateFlow;Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;)Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "+TT;>;",
            "Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;",
            ")",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subscribedCounter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow;

    invoke-direct {v0, p1, p0}, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountStateFlow;-><init>(Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;Lkotlinx/coroutines/flow/StateFlow;)V

    return-object v0
.end method
