.class final synthetic Lcom/google/mlkit/common/sdkinternal/zzg;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Ljava/util/concurrent/Callable;

.field private final zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzg;->zza:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/zzg;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/zzg;->zza:Ljava/util/concurrent/Callable;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/zzg;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v1}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zza(Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
