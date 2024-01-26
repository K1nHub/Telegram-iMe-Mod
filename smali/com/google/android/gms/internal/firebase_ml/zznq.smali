.class final Lcom/google/android/gms/internal/firebase_ml/zznq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$callable:Ljava/util/concurrent/Callable;

.field private final synthetic zzasy:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zznn;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zznq;->val$callable:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zznq;->zzasy:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zznq;->val$callable:Ljava/util/concurrent/Callable;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zznq;->zzasy:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zznn;->zza(Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
