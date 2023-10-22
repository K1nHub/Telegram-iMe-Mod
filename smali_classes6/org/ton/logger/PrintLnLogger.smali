.class public final Lorg/ton/logger/PrintLnLogger;
.super Ljava/lang/Object;
.source "PrintLnLogger.kt"

# interfaces
.implements Lorg/ton/logger/Logger;


# instance fields
.field private final channel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final job:Lkotlinx/coroutines/Job;

.field private level:Lorg/ton/logger/Logger$Level;

.field private final name:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/ton/logger/Logger$Level;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lorg/ton/logger/PrintLnLogger$2;

    invoke-direct {v0, p1}, Lorg/ton/logger/PrintLnLogger$2;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/ton/logger/PrintLnLogger;-><init>(Lkotlin/jvm/functions/Function0;Lorg/ton/logger/Logger$Level;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lorg/ton/logger/Logger$Level;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 11
    sget-object p2, Lorg/ton/logger/Logger$Level;->INFO:Lorg/ton/logger/Logger$Level;

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/ton/logger/PrintLnLogger;-><init>(Ljava/lang/String;Lorg/ton/logger/Logger$Level;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lorg/ton/logger/Logger$Level;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/ton/logger/Logger$Level;",
            ")V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lorg/ton/logger/PrintLnLogger;->name:Lkotlin/jvm/functions/Function0;

    .line 9
    iput-object p2, p0, Lorg/ton/logger/PrintLnLogger;->level:Lorg/ton/logger/Logger$Level;

    const p1, 0x7fffffff

    const/4 p2, 0x0

    const/4 v0, 0x6

    .line 13
    invoke-static {p1, p2, p2, v0, p2}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/logger/PrintLnLogger;->channel:Lkotlinx/coroutines/channels/Channel;

    .line 14
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v3, Lorg/ton/logger/PrintLnLogger$job$1;

    invoke-direct {v3, p0, p2}, Lorg/ton/logger/PrintLnLogger$job$1;-><init>(Lorg/ton/logger/PrintLnLogger;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/logger/PrintLnLogger;->job:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getChannel$p(Lorg/ton/logger/PrintLnLogger;)Lkotlinx/coroutines/channels/Channel;
    .locals 0

    .line 7
    iget-object p0, p0, Lorg/ton/logger/PrintLnLogger;->channel:Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method

.method public static final synthetic access$getName$p(Lorg/ton/logger/PrintLnLogger;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 7
    iget-object p0, p0, Lorg/ton/logger/PrintLnLogger;->name:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method


# virtual methods
.method public debug(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-static {p0, p1}, Lorg/ton/logger/Logger$DefaultImpls;->debug(Lorg/ton/logger/Logger;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public getLevel()Lorg/ton/logger/Logger$Level;
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/ton/logger/PrintLnLogger;->level:Lorg/ton/logger/Logger$Level;

    return-object v0
.end method

.method public info(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-static {p0, p1}, Lorg/ton/logger/Logger$DefaultImpls;->info(Lorg/ton/logger/Logger;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public log(Lorg/ton/logger/Logger$Level;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/logger/Logger$Level;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lorg/ton/logger/PrintLnLogger;->getLevel()Lorg/ton/logger/Logger$Level;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 22
    new-instance v0, Lorg/ton/logger/PrintLnLogger$log$messageLambda$1;

    invoke-direct {v0, p1, p0, p2}, Lorg/ton/logger/PrintLnLogger$log$messageLambda$1;-><init>(Lorg/ton/logger/Logger$Level;Lorg/ton/logger/PrintLnLogger;Lkotlin/jvm/functions/Function0;)V

    .line 41
    iget-object p1, p0, Lorg/ton/logger/PrintLnLogger;->channel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public warn(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-static {p0, p1}, Lorg/ton/logger/Logger$DefaultImpls;->warn(Lorg/ton/logger/Logger;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
