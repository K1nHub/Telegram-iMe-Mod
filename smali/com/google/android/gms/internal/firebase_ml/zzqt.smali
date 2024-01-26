.class public final Lcom/google/android/gms/internal/firebase_ml/zzqt;
.super Lcom/google/android/gms/internal/firebase_ml/zzqd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzqd<",
        "Ljava/util/List<",
        "Lcom/google/firebase/ml/vision/label/FirebaseVisionImageLabel;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions;)V
    .locals 1

    const-string v0, "LABEL_DETECTION"

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/firebase_ml/zzqd;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/firebase/ml/vision/cloud/FirebaseVisionCloudDetectorOptions;)V

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/firebase/FirebaseApp;I)Lcom/google/android/gms/internal/firebase_ml/zznv;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs;->zzjl()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzmd;->zzahl:Lcom/google/android/gms/internal/firebase_ml/zzmd;

    .line 4
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;Lcom/google/android/gms/internal/firebase_ml/zzmd;)V

    return-void
.end method


# virtual methods
.method public final detectInImage(Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;)Lcom/google/android/gms/tasks/Task;
    .locals 3
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

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqd;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/firebase/FirebaseApp;I)Lcom/google/android/gms/internal/firebase_ml/zznv;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs;->zzjl()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzmd;->zzahm:Lcom/google/android/gms/internal/firebase_ml/zzmd;

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;Lcom/google/android/gms/internal/firebase_ml/zzmd;)V

    .line 9
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzqd;->zza(Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzit;F)Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzit;->zzhf()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzit;->zzhf()Ljava/util/List;

    move-result-object p1

    .line 16
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzjd;

    .line 18
    invoke-static {v0}, Lcom/google/firebase/ml/vision/label/FirebaseVisionImageLabel;->zza(Lcom/google/android/gms/internal/firebase_ml/zzjd;)Lcom/google/firebase/ml/vision/label/FirebaseVisionImageLabel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method protected final zznj()I
    .locals 1

    const/16 v0, 0x280

    return v0
.end method

.method protected final zznk()I
    .locals 1

    const/16 v0, 0x1e0

    return v0
.end method
