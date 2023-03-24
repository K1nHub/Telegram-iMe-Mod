.class public Lorg/telegram/messenger/DispatchQueue;
.super Ljava/lang/Thread;
.source "DispatchQueue.java"


# static fields
.field private static indexPointer:I


# instance fields
.field private volatile handler:Landroid/os/Handler;

.field public final index:I

.field private lastTaskTime:J

.field private syncLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public static synthetic $r8$lambda$bRKQ5b5tx0aDGsnknY5JEofaSxw(Lorg/telegram/messenger/DispatchQueue;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/DispatchQueue;->lambda$run$0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lorg/telegram/messenger/DispatchQueue;->handler:Landroid/os/Handler;

    .line 21
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/DispatchQueue;->syncLatch:Ljava/util/concurrent/CountDownLatch;

    .line 24
    sget v0, Lorg/telegram/messenger/DispatchQueue;->indexPointer:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/messenger/DispatchQueue;->indexPointer:I

    iput v0, p0, Lorg/telegram/messenger/DispatchQueue;->index:I

    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$run$0(Landroid/os/Message;)Z
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/DispatchQueue;->handleMessage(Landroid/os/Message;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public cancelRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 52
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueue;->syncLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 53
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueue;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 55
    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :goto_0
    return-void
.end method

.method public cancelRunnables([Ljava/lang/Runnable;)V
    .locals 4

    const/4 v0, 0x0

    .line 61
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/DispatchQueue;->syncLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    move v1, v0

    .line 62
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 63
    iget-object v2, p0, Lorg/telegram/messenger/DispatchQueue;->handler:Landroid/os/Handler;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 66
    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method

.method public cleanupQueue()V
    .locals 2

    .line 90
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueue;->syncLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 91
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueue;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 93
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :goto_0
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueue;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getLastTaskTime()J
    .locals 2

    .line 102
    iget-wide v0, p0, Lorg/telegram/messenger/DispatchQueue;->lastTaskTime:J

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public isReady()Z
    .locals 4

    .line 121
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueue;->syncLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public postRunnable(Ljava/lang/Runnable;)Z
    .locals 2

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/DispatchQueue;->lastTaskTime:J

    const-wide/16 v0, 0x0

    .line 72
    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public postRunnable(Ljava/lang/Runnable;J)Z
    .locals 2

    .line 77
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueue;->syncLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 79
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 82
    iget-object p2, p0, Lorg/telegram/messenger/DispatchQueue;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueue;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public recycle()V
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueue;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public run()V
    .locals 3

    .line 111
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/DispatchQueue$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/DispatchQueue$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/DispatchQueue;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/telegram/messenger/DispatchQueue;->handler:Landroid/os/Handler;

    .line 116
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueue;->syncLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 117
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public sendMessage(Landroid/os/Message;I)V
    .locals 3

    .line 39
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueue;->syncLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    if-gtz p2, :cond_0

    .line 41
    iget-object p2, p0, Lorg/telegram/messenger/DispatchQueue;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueue;->handler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
