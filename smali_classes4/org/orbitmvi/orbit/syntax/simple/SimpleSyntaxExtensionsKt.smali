.class public final Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;
.super Ljava/lang/Object;
.source "SimpleSyntaxExtensions.kt"


# direct methods
.method public static final intent(Lorg/orbitmvi/orbit/ContainerHost;ZLkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<STATE:",
            "Ljava/lang/Object;",
            "SIDE_EFFECT:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/orbitmvi/orbit/ContainerHost<",
            "TSTATE;TSIDE_EFFECT;>;Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax<",
            "TSTATE;TSIDE_EFFECT;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transformer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt$intent$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt$intent$1;-><init>(Lorg/orbitmvi/orbit/ContainerHost;ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lorg/orbitmvi/orbit/internal/BlockingKt;->runBlocking(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic intent$default(Lorg/orbitmvi/orbit/ContainerHost;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p1, p4

    .line 67
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->intent(Lorg/orbitmvi/orbit/ContainerHost;ZLkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final postSideEffect(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "SE:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax<",
            "TS;TSE;>;TSE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;->getContainerContext()Lorg/orbitmvi/orbit/syntax/ContainerContext;

    move-result-object p0

    invoke-virtual {p0}, Lorg/orbitmvi/orbit/syntax/ContainerContext;->getPostSideEffect()Lkotlin/jvm/functions/Function2;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final reduce(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "SE:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax<",
            "TS;TSE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/orbitmvi/orbit/syntax/simple/SimpleContext<",
            "TS;>;+TS;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt$reduce$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt$reduce$1;

    iget v1, v0, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt$reduce$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt$reduce$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt$reduce$1;

    invoke-direct {v0, p2}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt$reduce$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt$reduce$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 40
    iget v2, v0, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt$reduce$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt$reduce$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lorg/orbitmvi/orbit/syntax/ContainerContext;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;->getContainerContext()Lorg/orbitmvi/orbit/syntax/ContainerContext;

    move-result-object p0

    .line 42
    invoke-virtual {p0}, Lorg/orbitmvi/orbit/syntax/ContainerContext;->getReduce()Lkotlin/jvm/functions/Function2;

    move-result-object p2

    new-instance v2, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt$reduce$2$1;

    invoke-direct {v2, p1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt$reduce$2$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object p0, v0, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt$reduce$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt$reduce$1;->label:I

    invoke-interface {p2, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    .line 46
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
