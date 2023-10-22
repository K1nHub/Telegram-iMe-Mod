.class final synthetic Lcom/google/mlkit/common/sdkinternal/zzm;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.0.0"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;

.field private final zzb:Lcom/google/android/gms/tasks/CancellationToken;

.field private final zzc:Lcom/google/android/gms/tasks/CancellationTokenSource;

.field private final zzd:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/CancellationToken;Lcom/google/android/gms/tasks/CancellationTokenSource;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzm;->zza:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/zzm;->zzb:Lcom/google/android/gms/tasks/CancellationToken;

    iput-object p3, p0, Lcom/google/mlkit/common/sdkinternal/zzm;->zzc:Lcom/google/android/gms/tasks/CancellationTokenSource;

    iput-object p4, p0, Lcom/google/mlkit/common/sdkinternal/zzm;->zzd:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/zzm;->zza:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/zzm;->zzb:Lcom/google/android/gms/tasks/CancellationToken;

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/zzm;->zzc:Lcom/google/android/gms/tasks/CancellationTokenSource;

    iget-object v3, p0, Lcom/google/mlkit/common/sdkinternal/zzm;->zzd:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/CancellationTokenSource;->cancel()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v3, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 8
    :goto_0
    throw p1
.end method
