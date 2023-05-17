.class public final Lorg/orbitmvi/orbit/Container$Settings;
.super Ljava/lang/Object;
.source "Container.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/orbitmvi/orbit/Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# instance fields
.field private final exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field private final idlingRegistry:Lorg/orbitmvi/orbit/idling/IdlingResource;

.field private final intentDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final repeatOnSubscribedStopTimeout:J

.field private final sideEffectBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/orbitmvi/orbit/Container$Settings;-><init>(ILorg/orbitmvi/orbit/idling/IdlingResource;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineExceptionHandler;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILorg/orbitmvi/orbit/idling/IdlingResource;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineExceptionHandler;J)V
    .locals 1

    const-string v0, "idlingRegistry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intentDispatcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lorg/orbitmvi/orbit/Container$Settings;->sideEffectBufferSize:I

    .line 86
    iput-object p2, p0, Lorg/orbitmvi/orbit/Container$Settings;->idlingRegistry:Lorg/orbitmvi/orbit/idling/IdlingResource;

    .line 87
    iput-object p3, p0, Lorg/orbitmvi/orbit/Container$Settings;->intentDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 88
    iput-object p4, p0, Lorg/orbitmvi/orbit/Container$Settings;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 89
    iput-wide p5, p0, Lorg/orbitmvi/orbit/Container$Settings;->repeatOnSubscribedStopTimeout:J

    return-void
.end method

.method public synthetic constructor <init>(ILorg/orbitmvi/orbit/idling/IdlingResource;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineExceptionHandler;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const p1, 0x7fffffff

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 86
    new-instance p2, Lorg/orbitmvi/orbit/idling/NoopIdlingResource;

    invoke-direct {p2}, Lorg/orbitmvi/orbit/idling/NoopIdlingResource;-><init>()V

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    .line 87
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    const/4 p4, 0x0

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    const-wide/16 p5, 0x64

    :cond_4
    move-wide v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-wide p7, v2

    .line 84
    invoke-direct/range {p2 .. p8}, Lorg/orbitmvi/orbit/Container$Settings;-><init>(ILorg/orbitmvi/orbit/idling/IdlingResource;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineExceptionHandler;J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/orbitmvi/orbit/Container$Settings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/orbitmvi/orbit/Container$Settings;

    iget v1, p0, Lorg/orbitmvi/orbit/Container$Settings;->sideEffectBufferSize:I

    iget v3, p1, Lorg/orbitmvi/orbit/Container$Settings;->sideEffectBufferSize:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/orbitmvi/orbit/Container$Settings;->idlingRegistry:Lorg/orbitmvi/orbit/idling/IdlingResource;

    iget-object v3, p1, Lorg/orbitmvi/orbit/Container$Settings;->idlingRegistry:Lorg/orbitmvi/orbit/idling/IdlingResource;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/orbitmvi/orbit/Container$Settings;->intentDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v3, p1, Lorg/orbitmvi/orbit/Container$Settings;->intentDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/orbitmvi/orbit/Container$Settings;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    iget-object v3, p1, Lorg/orbitmvi/orbit/Container$Settings;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lorg/orbitmvi/orbit/Container$Settings;->repeatOnSubscribedStopTimeout:J

    iget-wide v5, p1, Lorg/orbitmvi/orbit/Container$Settings;->repeatOnSubscribedStopTimeout:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getExceptionHandler()Lkotlinx/coroutines/CoroutineExceptionHandler;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/orbitmvi/orbit/Container$Settings;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    return-object v0
.end method

.method public final getIdlingRegistry()Lorg/orbitmvi/orbit/idling/IdlingResource;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/orbitmvi/orbit/Container$Settings;->idlingRegistry:Lorg/orbitmvi/orbit/idling/IdlingResource;

    return-object v0
.end method

.method public final getIntentDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/orbitmvi/orbit/Container$Settings;->intentDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public final getRepeatOnSubscribedStopTimeout()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lorg/orbitmvi/orbit/Container$Settings;->repeatOnSubscribedStopTimeout:J

    return-wide v0
.end method

.method public final getSideEffectBufferSize()I
    .locals 1

    .line 85
    iget v0, p0, Lorg/orbitmvi/orbit/Container$Settings;->sideEffectBufferSize:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/orbitmvi/orbit/Container$Settings;->sideEffectBufferSize:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/orbitmvi/orbit/Container$Settings;->idlingRegistry:Lorg/orbitmvi/orbit/idling/IdlingResource;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/orbitmvi/orbit/Container$Settings;->intentDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/orbitmvi/orbit/Container$Settings;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/orbitmvi/orbit/Container$Settings;->repeatOnSubscribedStopTimeout:J

    invoke-static {v1, v2}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings(sideEffectBufferSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/orbitmvi/orbit/Container$Settings;->sideEffectBufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", idlingRegistry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/orbitmvi/orbit/Container$Settings;->idlingRegistry:Lorg/orbitmvi/orbit/idling/IdlingResource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intentDispatcher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/orbitmvi/orbit/Container$Settings;->intentDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exceptionHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/orbitmvi/orbit/Container$Settings;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", repeatOnSubscribedStopTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/orbitmvi/orbit/Container$Settings;->repeatOnSubscribedStopTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
