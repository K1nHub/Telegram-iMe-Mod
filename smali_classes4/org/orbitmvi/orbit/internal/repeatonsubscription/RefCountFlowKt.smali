.class public final Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountFlowKt;
.super Ljava/lang/Object;
.source "RefCountFlow.kt"


# direct methods
.method public static final refCount(Lkotlinx/coroutines/flow/Flow;Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subscribedCounter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountFlow;

    invoke-direct {v0, p1, p0}, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountFlow;-><init>(Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;Lkotlinx/coroutines/flow/Flow;)V

    return-object v0
.end method
