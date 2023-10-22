.class public final Lio/ktor/network/util/Timeout;
.super Ljava/lang/Object;
.source "Utils.kt"


# instance fields
.field private final clock:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field volatile synthetic isStarted:I

.field volatile synthetic lastActivityTime:J

.field private final name:Ljava/lang/String;

.field private final onTimeout:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final timeoutMs:J

.field private workerJob:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scope"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onTimeout"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/ktor/network/util/Timeout;->name:Ljava/lang/String;

    .line 20
    iput-wide p2, p0, Lio/ktor/network/util/Timeout;->timeoutMs:J

    .line 21
    iput-object p4, p0, Lio/ktor/network/util/Timeout;->clock:Lkotlin/jvm/functions/Function0;

    .line 22
    iput-object p5, p0, Lio/ktor/network/util/Timeout;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 23
    iput-object p6, p0, Lio/ktor/network/util/Timeout;->onTimeout:Lkotlin/jvm/functions/Function1;

    const-wide/16 p1, 0x0

    .line 26
    iput-wide p1, p0, Lio/ktor/network/util/Timeout;->lastActivityTime:J

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lio/ktor/network/util/Timeout;->isStarted:I

    .line 29
    invoke-direct {p0}, Lio/ktor/network/util/Timeout;->initTimeoutJob()Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/network/util/Timeout;->workerJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getClock$p(Lio/ktor/network/util/Timeout;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 18
    iget-object p0, p0, Lio/ktor/network/util/Timeout;->clock:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getOnTimeout$p(Lio/ktor/network/util/Timeout;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 18
    iget-object p0, p0, Lio/ktor/network/util/Timeout;->onTimeout:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getTimeoutMs$p(Lio/ktor/network/util/Timeout;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lio/ktor/network/util/Timeout;->timeoutMs:J

    return-wide v0
.end method

.method private final initTimeoutJob()Lkotlinx/coroutines/Job;
    .locals 8

    .line 45
    iget-wide v0, p0, Lio/ktor/network/util/Timeout;->timeoutMs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 46
    :cond_0
    iget-object v2, p0, Lio/ktor/network/util/Timeout;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v3, Lkotlinx/coroutines/CoroutineName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/ktor/network/util/Timeout;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lio/ktor/network/util/Timeout$initTimeoutJob$1;

    invoke-direct {v5, p0, v1}, Lio/ktor/network/util/Timeout$initTimeoutJob$1;-><init>(Lio/ktor/network/util/Timeout;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final finish()V
    .locals 3

    .line 41
    iget-object v0, p0, Lio/ktor/network/util/Timeout;->workerJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final start()V
    .locals 2

    .line 32
    iget-object v0, p0, Lio/ktor/network/util/Timeout;->clock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lio/ktor/network/util/Timeout;->lastActivityTime:J

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lio/ktor/network/util/Timeout;->isStarted:I

    return-void
.end method

.method public final stop()V
    .locals 1

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lio/ktor/network/util/Timeout;->isStarted:I

    return-void
.end method
