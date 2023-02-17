.class final Lcom/google/android/gms/internal/firebase_ml/zznu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final synthetic val$callable:Ljava/util/concurrent/Callable;

.field private final synthetic zzatc:Lcom/google/android/gms/internal/firebase_ml/zznx;

.field private final synthetic zzatf:Lcom/google/android/gms/internal/firebase_ml/zznr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zznr;Lcom/google/android/gms/internal/firebase_ml/zznx;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zznu;->zzatf:Lcom/google/android/gms/internal/firebase_ml/zznr;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zznu;->zzatc:Lcom/google/android/gms/internal/firebase_ml/zznx;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zznu;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zznu;->zzatf:Lcom/google/android/gms/internal/firebase_ml/zznr;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zznr;->zza(Lcom/google/android/gms/internal/firebase_ml/zznr;)Lcom/google/android/gms/internal/firebase_ml/zzoa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zznu;->zzatc:Lcom/google/android/gms/internal/firebase_ml/zznx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzf(Lcom/google/android/gms/internal/firebase_ml/zznx;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zznu;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
