.class public Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor$zza;
    }
.end annotation


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;


# instance fields
.field private zzc:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zza:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzb;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zzc:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;
    .locals 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 2
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zzb:Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MLHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 6
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    invoke-direct {v2, v1}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zzb:Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    .line 9
    :cond_0
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zzb:Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static workerThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor$zza;->zza:Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor$zza;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zzc:Landroid/os/Handler;

    return-object p0
.end method

.method static final synthetic zza(Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3

    .line 26
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    .line 32
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const/16 v1, 0xd

    const-string v2, "Internal error has occurred when executing ML Kit tasks"

    invoke-direct {v0, v2, v1, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception p0

    .line 29
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TResultT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TResultT;>;"
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 15
    new-instance v1, Lcom/google/mlkit/common/sdkinternal/zzg;

    invoke-direct {v1, p1, v0}, Lcom/google/mlkit/common/sdkinternal/zzg;-><init>(Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p0, v1}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public scheduleRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 22
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->workerThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
