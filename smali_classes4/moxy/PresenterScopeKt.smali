.class public final Lmoxy/PresenterScopeKt;
.super Ljava/lang/Object;
.source "PresenterScope.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPresenterScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PresenterScope.kt\nmoxy/PresenterScopeKt\n*L\n1#1,30:1\n*E\n"
.end annotation


# direct methods
.method public static final getPresenterScope(Lmoxy/MvpPresenter;)Lkotlinx/coroutines/CoroutineScope;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmoxy/MvpPresenter<",
            "*>;)",
            "Lkotlinx/coroutines/CoroutineScope;"
        }
    .end annotation

    const-string v0, "$this$presenterScope"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lmoxy/MvpPresenter;->coroutineScope:Lmoxy/OnDestroyListener;

    instance-of v1, v0, Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    if-eqz v1, :cond_1

    return-object v1

    .line 22
    :cond_1
    sget-object v1, Lmoxy/OnDestroyListener;->EMPTY:Lmoxy/OnDestroyListener;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    .line 23
    invoke-static {v2, p0, v2}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    invoke-static {v0, v2, p0, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    return-object p0

    .line 25
    :cond_2
    new-instance v0, Lmoxy/PresenterCoroutineScope;

    invoke-direct {v0}, Lmoxy/PresenterCoroutineScope;-><init>()V

    iput-object v0, p0, Lmoxy/MvpPresenter;->coroutineScope:Lmoxy/OnDestroyListener;

    return-object v0
.end method
