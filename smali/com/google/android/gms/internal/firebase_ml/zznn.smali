.class public final Lcom/google/android/gms/internal/firebase_ml/zznn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final lock:Ljava/lang/Object;

.field private static zzasv:Lcom/google/android/gms/internal/firebase_ml/zznn;


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zznn;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzf;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/firebase_ml/zzf;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zznn;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zznn;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase_ml/zznn;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static zza(Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TResultT;>;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TResultT;>;)V"
        }
    .end annotation

    .line 30
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/firebase/ml/common/FirebaseMLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    .line 36
    new-instance v0, Lcom/google/firebase/ml/common/FirebaseMLException;

    const/16 v1, 0xd

    const-string v2, "Internal error has occurred when executing Firebase ML tasks"

    invoke-direct {v0, v2, v1, p0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception p0

    .line 33
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public static zzlj()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zznp;->zzasw:Lcom/google/android/gms/internal/firebase_ml/zznp;

    return-object v0
.end method

.method public static zzlk()Lcom/google/android/gms/internal/firebase_ml/zznn;
    .locals 4

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zznn;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zznn;->zzasv:Lcom/google/android/gms/internal/firebase_ml/zznn;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "FirebaseMLHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 6
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/google/android/gms/internal/firebase_ml/zznn;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zznn;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/google/android/gms/internal/firebase_ml/zznn;->zzasv:Lcom/google/android/gms/internal/firebase_ml/zznn;

    .line 9
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zznn;->zzasv:Lcom/google/android/gms/internal/firebase_ml/zznn;

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


# virtual methods
.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zznn;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 23
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 24
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/Callable;

    .line 25
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "MLTaskExecutor"

    const-string v0, "Exception when executing the delayed Callable"

    .line 28
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method public final zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .locals 3
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
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zznn;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/firebase_ml/zznq;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zznq;-><init>(Lcom/google/android/gms/internal/firebase_ml/zznn;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/util/concurrent/Callable;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TResultT;>;J)V"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zznn;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 19
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final zzb(Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TResultT;>;)V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zznn;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method
