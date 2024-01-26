.class final Lcom/google/android/gms/internal/firebase_ml/zznz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;


# instance fields
.field private final synthetic zzatt:Lcom/google/android/gms/internal/firebase_ml/zzoa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzoa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zznz;->zzatt:Lcom/google/android/gms/internal/firebase_ml/zzoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackgroundStateChanged(Z)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzlq()Lcom/google/android/gms/common/internal/GmsLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Background state changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ModelResourceManager"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zznz;->zzatt:Lcom/google/android/gms/internal/firebase_ml/zzoa;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzoa;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x7d0

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x493e0

    .line 7
    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zznz;->zzatt:Lcom/google/android/gms/internal/firebase_ml/zzoa;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzoa;)V

    return-void
.end method
