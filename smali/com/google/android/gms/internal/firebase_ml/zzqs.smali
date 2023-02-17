.class public final Lcom/google/android/gms/internal/firebase_ml/zzqs;
.super Lcom/google/android/gms/internal/firebase_ml/zzql;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzql<",
        "Ljava/util/List<",
        "Lcom/google/firebase/ml/vision/label/FirebaseVisionImageLabel;",
        ">;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceImageLabelerOptions;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzqv;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzqv;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceImageLabelerOptions;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzql;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase_ml/zzno;)V

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/firebase/FirebaseApp;I)Lcom/google/android/gms/internal/firebase_ml/zznv;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs;->zzjl()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzmd;->zzagg:Lcom/google/android/gms/internal/firebase_ml/zzmd;

    .line 4
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;Lcom/google/android/gms/internal/firebase_ml/zzmd;)V

    return-void
.end method


# virtual methods
.method public final detectInImage(Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/google/firebase/ml/vision/label/FirebaseVisionImageLabel;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzql;->zza(Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;ZZ)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
