.class public final Lcom/google/android/gms/internal/firebase_ml/zzqx;
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


# instance fields
.field private final zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceAutoMLImageLabelerOptions;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzqw;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzqw;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceAutoMLImageLabelerOptions;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzql;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase_ml/zzno;)V

    const/4 v0, 0x5

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/firebase/FirebaseApp;I)Lcom/google/android/gms/internal/firebase_ml/zznv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqx;->zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;

    .line 3
    invoke-virtual {p2}, Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceAutoMLImageLabelerOptions;->zzmw()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    if-eqz p1, :cond_3

    .line 4
    invoke-static {}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;->getInstance()Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceAutoMLImageLabelerOptions;->zzmw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;->getNonBaseRemoteModel(Ljava/lang/String;)Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafq:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzqx;->zzi(Lcom/google/android/gms/internal/firebase_ml/zzmc;)V

    .line 7
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v1, "Remote model is not registered: "

    .line 8
    invoke-virtual {p2}, Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceAutoMLImageLabelerOptions;->zzmw()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p2, v0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->isBaseModel()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafr:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzqx;->zzi(Lcom/google/android/gms/internal/firebase_ml/zzmc;)V

    .line 11
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string p2, "You are trying to use a Base Model as an AutoML model. Please make sure you passed in the correct model name."

    invoke-direct {p1, p2, v0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 12
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceAutoMLImageLabelerOptions;->zzmv()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 13
    invoke-static {}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;->getInstance()Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceAutoMLImageLabelerOptions;->zzmv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;->getLocalModel(Ljava/lang/String;)Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    move-result-object p1

    if-nez p1, :cond_5

    .line 15
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafq:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzqx;->zzi(Lcom/google/android/gms/internal/firebase_ml/zzmc;)V

    .line 16
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v1, "Local model is not registered: "

    .line 17
    invoke-virtual {p2}, Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceAutoMLImageLabelerOptions;->zzmv()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_4
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p1, p2, v0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 18
    :cond_5
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaet:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzqx;->zzi(Lcom/google/android/gms/internal/firebase_ml/zzmc;)V

    return-void
.end method

.method private final zzi(Lcom/google/android/gms/internal/firebase_ml/zzmc;)V
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqx;->zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs;->zzjl()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object v1

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;->zzij()Lcom/google/android/gms/internal/firebase_ml/zzlu$zza$zza;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zza$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrq()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;

    .line 24
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zza;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzmd;->zzaii:Lcom/google/android/gms/internal/firebase_ml/zzmd;

    .line 25
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;Lcom/google/android/gms/internal/firebase_ml/zzmd;)V

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

    .line 20
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzql;->zza(Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;ZZ)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
