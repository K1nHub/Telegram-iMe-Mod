.class public final Lorg/orbitmvi/orbit/CoroutineScopeExtensionsKt;
.super Ljava/lang/Object;
.source "CoroutineScopeExtensions.kt"


# direct methods
.method public static final container(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Object;Lorg/orbitmvi/orbit/Container$Settings;Lkotlin/jvm/functions/Function1;)Lorg/orbitmvi/orbit/Container;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<STATE:",
            "Ljava/lang/Object;",
            "SIDE_EFFECT:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/CoroutineScope;",
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

    if-nez p3, :cond_0

    .line 44
    new-instance p3, Lorg/orbitmvi/orbit/internal/TestContainerDecorator;

    .line 47
    new-instance v7, Lorg/orbitmvi/orbit/internal/RealContainer;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lorg/orbitmvi/orbit/internal/RealContainer;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;Lorg/orbitmvi/orbit/Container$Settings;Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    invoke-direct {p3, p1, p0, v7}, Lorg/orbitmvi/orbit/internal/TestContainerDecorator;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;Lorg/orbitmvi/orbit/Container;)V

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Lorg/orbitmvi/orbit/internal/TestContainerDecorator;

    .line 57
    new-instance v1, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;

    .line 58
    new-instance v9, Lorg/orbitmvi/orbit/internal/RealContainer;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Lorg/orbitmvi/orbit/internal/RealContainer;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;Lorg/orbitmvi/orbit/Container$Settings;Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 57
    invoke-direct {v1, v9, p3}, Lorg/orbitmvi/orbit/internal/LazyCreateContainerDecorator;-><init>(Lorg/orbitmvi/orbit/Container;Lkotlin/jvm/functions/Function1;)V

    .line 54
    invoke-direct {v0, p1, p0, v1}, Lorg/orbitmvi/orbit/internal/TestContainerDecorator;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;Lorg/orbitmvi/orbit/Container;)V

    move-object p3, v0

    :goto_0
    return-object p3
.end method
