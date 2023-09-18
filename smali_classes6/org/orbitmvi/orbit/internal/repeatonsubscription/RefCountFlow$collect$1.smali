.class final Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountFlow$collect$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "RefCountFlow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.orbitmvi.orbit.internal.repeatonsubscription.RefCountFlow"
    f = "RefCountFlow.kt"
    l = {
        0xd,
        0xe,
        0x10,
        0x10
    }
    m = "collect"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountFlow<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountFlow;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountFlow<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountFlow$collect$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountFlow$collect$1;->this$0:Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountFlow;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountFlow$collect$1;->result:Ljava/lang/Object;

    iget p1, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountFlow$collect$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountFlow$collect$1;->label:I

    iget-object p1, p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountFlow$collect$1;->this$0:Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountFlow;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lorg/orbitmvi/orbit/internal/repeatonsubscription/RefCountFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
