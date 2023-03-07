.class final Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;
.super Ljava/lang/Object;
.source "FrameProcessingTaskExecutor.java"


# instance fields
.field private final futures:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final highPriorityTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/google/android/exoplayer2/effect/FrameProcessingTask;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;

.field private final shouldCancelTasks:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final singleThreadExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$CT7I4sTfoh6B1ZP7Plg1aBYsokM(Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;Lcom/google/android/exoplayer2/effect/FrameProcessingTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->lambda$wrapTaskAndSubmitToExecutorService$1(Lcom/google/android/exoplayer2/effect/FrameProcessingTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h78lWY2eHXtEHcb6Qjt1Fy9lX4c()V
    .locals 0

    invoke-static {}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->lambda$submitWithHighPriority$0()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->singleThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 55
    iput-object p2, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->listener:Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;

    .line 57
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->futures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 58
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->highPriorityTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 59
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->shouldCancelTasks:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private cancelNonStartedTasks()V
    .locals 2

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->futures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->futures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleException(Ljava/lang/Exception;)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->shouldCancelTasks:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->listener:Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/FrameProcessingException;->from(Ljava/lang/Exception;)Lcom/google/android/exoplayer2/util/FrameProcessingException;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;->onFrameProcessingError(Lcom/google/android/exoplayer2/util/FrameProcessingException;)V

    .line 147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->cancelNonStartedTasks()V

    return-void
.end method

.method private static synthetic lambda$submitWithHighPriority$0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;,
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    return-void
.end method

.method private synthetic lambda$wrapTaskAndSubmitToExecutorService$1(Lcom/google/android/exoplayer2/effect/FrameProcessingTask;)V
    .locals 1

    .line 123
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->highPriorityTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->highPriorityTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/effect/FrameProcessingTask;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/effect/FrameProcessingTask;->run()V

    goto :goto_0

    .line 126
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/effect/FrameProcessingTask;->run()V

    .line 127
    invoke-direct {p0}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->removeFinishedFutures()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/FrameProcessingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 129
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->handleException(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method private removeFinishedFutures()V
    .locals 3

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->futures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->futures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->element()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->futures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 162
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 159
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private wrapTaskAndSubmitToExecutorService(Lcom/google/android/exoplayer2/effect/FrameProcessingTask;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/effect/FrameProcessingTask;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->singleThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;Lcom/google/android/exoplayer2/effect/FrameProcessingTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public release(Lcom/google/android/exoplayer2/effect/FrameProcessingTask;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->shouldCancelTasks:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 106
    invoke-direct {p0}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->cancelNonStartedTasks()V

    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->wrapTaskAndSubmitToExecutorService(Lcom/google/android/exoplayer2/effect/FrameProcessingTask;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->singleThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->singleThreadExecutorService:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 111
    iget-object p2, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->listener:Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;

    new-instance p3, Lcom/google/android/exoplayer2/util/FrameProcessingException;

    const-string v0, "Release timed out"

    invoke-direct {p3, v0}, Lcom/google/android/exoplayer2/util/FrameProcessingException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;->onFrameProcessingError(Lcom/google/android/exoplayer2/util/FrameProcessingException;)V

    .line 113
    :cond_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 115
    iget-object p2, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->listener:Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;

    new-instance p3, Lcom/google/android/exoplayer2/util/FrameProcessingException;

    invoke-direct {p3, p1}, Lcom/google/android/exoplayer2/util/FrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, p3}, Lcom/google/android/exoplayer2/util/FrameProcessor$Listener;->onFrameProcessingError(Lcom/google/android/exoplayer2/util/FrameProcessingException;)V

    :goto_0
    return-void
.end method

.method public submit(Lcom/google/android/exoplayer2/effect/FrameProcessingTask;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->shouldCancelTasks:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->futures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->wrapTaskAndSubmitToExecutorService(Lcom/google/android/exoplayer2/effect/FrameProcessingTask;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->handleException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public submitWithHighPriority(Lcom/google/android/exoplayer2/effect/FrameProcessingTask;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->shouldCancelTasks:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->highPriorityTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object p1, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->submit(Lcom/google/android/exoplayer2/effect/FrameProcessingTask;)V

    return-void
.end method
