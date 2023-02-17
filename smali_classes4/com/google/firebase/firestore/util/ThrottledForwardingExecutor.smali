.class Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor;
.super Ljava/lang/Object;
.source "ThrottledForwardingExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final availableSlots:Ljava/util/concurrent/Semaphore;

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$MfIJbVuxZtLwosAgPzPA-cU66Ko(Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor;->lambda$execute$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, p1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor;->availableSlots:Ljava/util/concurrent/Semaphore;

    .line 39
    iput-object p2, p0, Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic lambda$execute$0(Ljava/lang/Runnable;)V
    .locals 0

    .line 54
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 55
    iget-object p1, p0, Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor;->availableSlots:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor;->availableSlots:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/util/ThrottledForwardingExecutor;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
