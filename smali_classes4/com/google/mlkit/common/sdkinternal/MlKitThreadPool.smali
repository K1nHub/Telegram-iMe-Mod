.class public Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;
.super Lcom/google/android/gms/internal/mlkit_common/zzal;
.source "com.google.mlkit:common@@17.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final zzd:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Deque<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/util/concurrent/ExecutorService;

.field private final zzb:Ljava/util/concurrent/ThreadFactory;

.field private final zzc:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Thread;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/google/mlkit/common/sdkinternal/zzj;

    invoke-direct {v0}, Lcom/google/mlkit/common/sdkinternal/zzj;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzd:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzal;-><init>()V

    .line 2
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/google/mlkit/common/sdkinternal/zzi;

    invoke-direct {v7, p0}, Lcom/google/mlkit/common/sdkinternal/zzi;-><init>(Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;)V

    const/4 v1, 0x0

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zza:Ljava/util/concurrent/ExecutorService;

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzb:Ljava/util/concurrent/ThreadFactory;

    .line 5
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzc:Ljava/util/WeakHashMap;

    return-void
.end method

.method static final synthetic zza(Ljava/lang/Runnable;)V
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzc(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzb:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzc:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzc:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static zzd(Ljava/lang/Runnable;)V
    .locals 3

    .line 20
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzd:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    .line 21
    invoke-interface {v0, p0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 25
    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 26
    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    if-nez p0, :cond_0

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzc:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzc:Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 16
    invoke-static {p1}, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzd(Ljava/lang/Runnable;)V

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zza:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/mlkit/common/sdkinternal/zzh;

    invoke-direct {v1, p1}, Lcom/google/mlkit/common/sdkinternal/zzh;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected final synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzal;->zzb()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzc(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method

.method protected final zzb()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zza:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
