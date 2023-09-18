.class public final Lorg/orbitmvi/orbit/internal/StateFlowExtensionsKt;
.super Ljava/lang/Object;
.source "StateFlowExtensions.kt"


# direct methods
.method public static final onSubscribe(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lorg/orbitmvi/orbit/internal/StateFlowExtensionsKt$onSubscribe$1;

    invoke-direct {v0, p0, p1}, Lorg/orbitmvi/orbit/internal/StateFlowExtensionsKt$onSubscribe$1;-><init>(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method
