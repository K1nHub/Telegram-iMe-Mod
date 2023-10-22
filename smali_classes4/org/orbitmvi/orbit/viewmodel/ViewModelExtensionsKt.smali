.class public final Lorg/orbitmvi/orbit/viewmodel/ViewModelExtensionsKt;
.super Ljava/lang/Object;
.source "ViewModelExtensions.kt"


# direct methods
.method public static final container(Landroidx/lifecycle/ViewModel;Ljava/lang/Object;Lorg/orbitmvi/orbit/Container$Settings;Lkotlin/jvm/functions/Function1;)Lorg/orbitmvi/orbit/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<STATE:",
            "Ljava/lang/Object;",
            "SIDE_EFFECT:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/ViewModel;",
            "TSTATE;",
            "Lorg/orbitmvi/orbit/Container$Settings;",
            "Lkotlin/jvm/functions/Function1<",
            "-TSTATE;",
            "Lkotlin/Unit;",
            ">;)",
            "Lorg/orbitmvi/orbit/Container<",
            "TSTATE;TSIDE_EFFECT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "settings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lorg/orbitmvi/orbit/CoroutineScopeExtensionsKt;->container(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Object;Lorg/orbitmvi/orbit/Container$Settings;Lkotlin/jvm/functions/Function1;)Lorg/orbitmvi/orbit/Container;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic container$default(Landroidx/lifecycle/ViewModel;Ljava/lang/Object;Lorg/orbitmvi/orbit/Container$Settings;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/orbitmvi/orbit/Container;
    .locals 9

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 43
    new-instance p2, Lorg/orbitmvi/orbit/Container$Settings;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lorg/orbitmvi/orbit/Container$Settings;-><init>(ILorg/orbitmvi/orbit/idling/IdlingResource;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineExceptionHandler;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 41
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lorg/orbitmvi/orbit/viewmodel/ViewModelExtensionsKt;->container(Landroidx/lifecycle/ViewModel;Ljava/lang/Object;Lorg/orbitmvi/orbit/Container$Settings;Lkotlin/jvm/functions/Function1;)Lorg/orbitmvi/orbit/Container;

    move-result-object p0

    return-object p0
.end method
