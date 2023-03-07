.class public Lorg/telegram/messenger/DispatchQueuePool;
.super Ljava/lang/Object;
.source "DispatchQueuePool.java"


# instance fields
.field private busyQueues:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/telegram/messenger/DispatchQueue;",
            ">;"
        }
    .end annotation
.end field

.field private busyQueuesMap:Landroid/util/SparseIntArray;

.field private cleanupRunnable:Ljava/lang/Runnable;

.field private cleanupScheduled:Z

.field private createdCount:I

.field private guid:I

.field private maxCount:I

.field private queues:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/telegram/messenger/DispatchQueue;",
            ">;"
        }
    .end annotation
.end field

.field private totalTasksCount:I


# direct methods
.method public static synthetic $r8$lambda$m5eLbje0n5qVJs5aAmm5TI0McwQ(Lorg/telegram/messenger/DispatchQueuePool;Lorg/telegram/messenger/DispatchQueue;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/DispatchQueuePool;->lambda$execute$0(Lorg/telegram/messenger/DispatchQueue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sn7lOpYbASbyAuKvtPJrPcwodv4(Lorg/telegram/messenger/DispatchQueuePool;Ljava/lang/Runnable;Lorg/telegram/messenger/DispatchQueue;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/DispatchQueuePool;->lambda$execute$1(Ljava/lang/Runnable;Lorg/telegram/messenger/DispatchQueue;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->queues:Ljava/util/LinkedList;

    .line 13
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueuesMap:Landroid/util/SparseIntArray;

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueues:Ljava/util/LinkedList;

    .line 21
    new-instance v0, Lorg/telegram/messenger/DispatchQueuePool$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/DispatchQueuePool$1;-><init>(Lorg/telegram/messenger/DispatchQueuePool;)V

    iput-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->cleanupRunnable:Ljava/lang/Runnable;

    .line 47
    iput p1, p0, Lorg/telegram/messenger/DispatchQueuePool;->maxCount:I

    .line 48
    sget-object p1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Ljava/security/SecureRandom;->nextInt()I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/DispatchQueuePool;->guid:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/DispatchQueuePool;)Ljava/util/LinkedList;
    .locals 0

    .line 10
    iget-object p0, p0, Lorg/telegram/messenger/DispatchQueuePool;->queues:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$110(Lorg/telegram/messenger/DispatchQueuePool;)I
    .locals 2

    .line 10
    iget v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->createdCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/DispatchQueuePool;->createdCount:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/DispatchQueuePool;)Ljava/util/LinkedList;
    .locals 0

    .line 10
    iget-object p0, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueues:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/DispatchQueuePool;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lorg/telegram/messenger/DispatchQueuePool;->cleanupScheduled:Z

    return p1
.end method

.method private synthetic lambda$execute$0(Lorg/telegram/messenger/DispatchQueue;)V
    .locals 2

    .line 74
    iget v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->totalTasksCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->totalTasksCount:I

    .line 75
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueuesMap:Landroid/util/SparseIntArray;

    iget v1, p1, Lorg/telegram/messenger/DispatchQueue;->index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueuesMap:Landroid/util/SparseIntArray;

    iget v1, p1, Lorg/telegram/messenger/DispatchQueue;->index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 78
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueues:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->queues:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueuesMap:Landroid/util/SparseIntArray;

    iget p1, p1, Lorg/telegram/messenger/DispatchQueue;->index:I

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$execute$1(Ljava/lang/Runnable;Lorg/telegram/messenger/DispatchQueue;)V
    .locals 0

    .line 72
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 73
    new-instance p1, Lorg/telegram/messenger/DispatchQueuePool$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lorg/telegram/messenger/DispatchQueuePool$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/DispatchQueuePool;Lorg/telegram/messenger/DispatchQueue;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 6

    .line 54
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueues:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->totalTasksCount:I

    div-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueues:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->queues:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->createdCount:I

    iget v3, p0, Lorg/telegram/messenger/DispatchQueuePool;->maxCount:I

    if-lt v0, v3, :cond_1

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueues:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DispatchQueue;

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->queues:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DispatchQueuePool"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/telegram/messenger/DispatchQueuePool;->guid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xa

    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 59
    iget v3, p0, Lorg/telegram/messenger/DispatchQueuePool;->createdCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/messenger/DispatchQueuePool;->createdCount:I

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool;->queues:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DispatchQueue;

    .line 63
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/messenger/DispatchQueuePool;->cleanupScheduled:Z

    if-nez v3, :cond_3

    .line 64
    iget-object v3, p0, Lorg/telegram/messenger/DispatchQueuePool;->cleanupRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 65
    iput-boolean v2, p0, Lorg/telegram/messenger/DispatchQueuePool;->cleanupScheduled:Z

    .line 67
    :cond_3
    iget v3, p0, Lorg/telegram/messenger/DispatchQueuePool;->totalTasksCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/messenger/DispatchQueuePool;->totalTasksCount:I

    .line 68
    iget-object v3, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueues:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v3, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueuesMap:Landroid/util/SparseIntArray;

    iget v4, v0, Lorg/telegram/messenger/DispatchQueue;->index:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 70
    iget-object v3, p0, Lorg/telegram/messenger/DispatchQueuePool;->busyQueuesMap:Landroid/util/SparseIntArray;

    iget v4, v0, Lorg/telegram/messenger/DispatchQueue;->index:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 71
    new-instance v1, Lorg/telegram/messenger/DispatchQueuePool$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/messenger/DispatchQueuePool$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/DispatchQueuePool;Ljava/lang/Runnable;Lorg/telegram/messenger/DispatchQueue;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
