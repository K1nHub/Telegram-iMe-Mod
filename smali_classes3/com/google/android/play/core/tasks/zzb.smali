.class final Lcom/google/android/play/core/tasks/zzb;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/tasks/zzg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/tasks/zzg<",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Lcom/google/android/play/core/tasks/OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/OnCompleteListener<",
            "TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnCompleteListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/play/core/tasks/OnCompleteListener<",
            "TResultT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/zzb;->zzb:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/tasks/zzb;->zza:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/play/core/tasks/zzb;->zzc:Lcom/google/android/play/core/tasks/OnCompleteListener;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/play/core/tasks/zzb;)Lcom/google/android/play/core/tasks/OnCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/tasks/zzb;->zzc:Lcom/google/android/play/core/tasks/OnCompleteListener;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/play/core/tasks/zzb;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/tasks/zzb;->zzb:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/play/core/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/Task<",
            "TResultT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzb;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/tasks/zzb;->zzc:Lcom/google/android/play/core/tasks/OnCompleteListener;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzb;->zza:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/tasks/zza;

    .line 3
    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/tasks/zza;-><init>(Lcom/google/android/play/core/tasks/zzb;Lcom/google/android/play/core/tasks/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
