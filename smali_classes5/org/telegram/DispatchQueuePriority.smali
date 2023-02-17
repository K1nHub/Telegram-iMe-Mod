.class public Lorg/telegram/DispatchQueuePriority;
.super Ljava/lang/Object;
.source "DispatchQueuePriority.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/DispatchQueuePriority$PriorityRunnable;
    }
.end annotation


# instance fields
.field threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Lorg/telegram/DispatchQueuePriority$1;

    invoke-direct {v0, p0}, Lorg/telegram/DispatchQueuePriority$1;-><init>(Lorg/telegram/DispatchQueuePriority;)V

    const/16 v1, 0xa

    invoke-direct {v6, v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lorg/telegram/DispatchQueuePriority;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public cancelRunnable(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/telegram/DispatchQueuePriority;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;I)Ljava/lang/Runnable;
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lorg/telegram/DispatchQueuePriority;->postRunnable(Ljava/lang/Runnable;)V

    return-object p1

    .line 48
    :cond_0
    new-instance v0, Lorg/telegram/DispatchQueuePriority$PriorityRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lorg/telegram/DispatchQueuePriority$PriorityRunnable;-><init>(ILjava/lang/Runnable;Lorg/telegram/DispatchQueuePriority$1;)V

    .line 49
    iget-object p1, p0, Lorg/telegram/DispatchQueuePriority;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/telegram/DispatchQueuePriority;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
