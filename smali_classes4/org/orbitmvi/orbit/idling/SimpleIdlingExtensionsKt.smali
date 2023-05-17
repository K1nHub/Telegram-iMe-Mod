.class public final Lorg/orbitmvi/orbit/idling/SimpleIdlingExtensionsKt;
.super Ljava/lang/Object;
.source "SimpleIdlingExtensions.kt"


# direct methods
.method public static final withIdling(Lorg/orbitmvi/orbit/syntax/ContainerContext;ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<STATE:",
            "Ljava/lang/Object;",
            "SIDE_EFFECT:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/orbitmvi/orbit/syntax/ContainerContext<",
            "TSTATE;TSIDE_EFFECT;>;Z",
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

    instance-of v0, p3, Lorg/orbitmvi/orbit/idling/SimpleIdlingExtensionsKt$withIdling$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/orbitmvi/orbit/idling/SimpleIdlingExtensionsKt$withIdling$1;

    iget v1, v0, Lorg/orbitmvi/orbit/idling/SimpleIdlingExtensionsKt$withIdling$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/orbitmvi/orbit/idling/SimpleIdlingExtensionsKt$withIdling$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/orbitmvi/orbit/idling/SimpleIdlingExtensionsKt$withIdling$1;

    invoke-direct {v0, p3}, Lorg/orbitmvi/orbit/idling/SimpleIdlingExtensionsKt$withIdling$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lorg/orbitmvi/orbit/idling/SimpleIdlingExtensionsKt$withIdling$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 25
    iget v2, v0, Lorg/orbitmvi/orbit/idling/SimpleIdlingExtensionsKt$withIdling$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Lorg/orbitmvi/orbit/idling/SimpleIdlingExtensionsKt$withIdling$1;->Z$0:Z

    iget-object p0, v0, Lorg/orbitmvi/orbit/idling/SimpleIdlingExtensionsKt$withIdling$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lorg/orbitmvi/orbit/syntax/ContainerContext;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 30
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    .line 29
    invoke-virtual {p0}, Lorg/orbitmvi/orbit/syntax/ContainerContext;->getSettings()Lorg/orbitmvi/orbit/Container$Settings;

    move-result-object p3

    invoke-virtual {p3}, Lorg/orbitmvi/orbit/Container$Settings;->getIdlingRegistry()Lorg/orbitmvi/orbit/idling/IdlingResource;

    move-result-object p3

    invoke-interface {p3}, Lorg/orbitmvi/orbit/idling/IdlingResource;->increment()V

    .line 30
    :cond_3
    iput-object p0, v0, Lorg/orbitmvi/orbit/idling/SimpleIdlingExtensionsKt$withIdling$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, v0, Lorg/orbitmvi/orbit/idling/SimpleIdlingExtensionsKt$withIdling$1;->Z$0:Z

    iput v3, v0, Lorg/orbitmvi/orbit/idling/SimpleIdlingExtensionsKt$withIdling$1;->label:I

    invoke-interface {p2, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 31
    :cond_4
    :goto_1
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lorg/orbitmvi/orbit/syntax/ContainerContext;->getSettings()Lorg/orbitmvi/orbit/Container$Settings;

    move-result-object p0

    invoke-virtual {p0}, Lorg/orbitmvi/orbit/Container$Settings;->getIdlingRegistry()Lorg/orbitmvi/orbit/idling/IdlingResource;

    move-result-object p0

    invoke-interface {p0}, Lorg/orbitmvi/orbit/idling/IdlingResource;->decrement()V

    :cond_5
    return-object p2
.end method
