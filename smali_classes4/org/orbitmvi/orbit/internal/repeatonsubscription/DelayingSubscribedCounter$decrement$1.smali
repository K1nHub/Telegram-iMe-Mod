.class final Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "DelayingSubscribedCounter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->decrement(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter"
    f = "DelayingSubscribedCounter.kt"
    l = {
        0x35
    }
    m = "decrement"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

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
            "Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$1;->this$0:Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$1;->result:Ljava/lang/Object;

    iget p1, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$1;->label:I

    iget-object p1, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter$decrement$1;->this$0:Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;

    invoke-virtual {p1, p0}, Lorg/orbitmvi/orbit/internal/repeatonsubscription/DelayingSubscribedCounter;->decrement(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
