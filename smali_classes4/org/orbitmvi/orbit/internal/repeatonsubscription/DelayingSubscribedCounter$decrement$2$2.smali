.class final Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DelayingSubscribedCounter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->decrement(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter$decrement$2$2"
    f = "DelayingSubscribedCounter.kt"
    l = {
        0x28
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;


# direct methods
.method constructor <init>(Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$2$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$2$2;->this$0:Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$2$2;

    iget-object v0, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$2$2;->this$0:Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;

    invoke-direct {p1, v0, p2}, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$2$2;-><init>(Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$2$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$2$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$2$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 39
    iget v1, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$2$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    iget-object p1, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$2$2;->this$0:Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;

    invoke-static {p1}, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->access$getRepeatOnSubscribedStopTimeout$p(Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;)J

    move-result-wide v3

    iput v2, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$2$2;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 41
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$2$2;->this$0:Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;

    invoke-static {p1}, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->access$get_subscribed$p(Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    sget-object v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;->Unsubscribed:Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 42
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
