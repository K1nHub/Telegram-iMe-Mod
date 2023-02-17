.class public final Lcom/google/android/gms/internal/firebase_ml/zzqz;
.super Lcom/google/android/gms/internal/firebase_ml/zzqd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzqd<",
        "Lcom/google/firebase/ml/vision/text/FirebaseVisionText;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzatg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/firebase_ml/zznw<",
            "Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;",
            ">;",
            "Lcom/google/android/gms/internal/firebase_ml/zzqz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbdw:Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzqz;->zzatg:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;)V
    .locals 4

    .line 14
    invoke-virtual {p2}, Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;->getModelType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "TEXT_DETECTION"

    goto :goto_0

    :cond_0
    const-string v0, "DOCUMENT_TEXT_DETECTION"

    .line 16
    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/firebase_ml/zzjh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase_ml/zzjh;-><init>()V

    .line 17
    invoke-virtual {p2}, Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;->isEnforceCertFingerprintMatch()Z

    move-result v3

    .line 18
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzqd;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzjh;Z)V

    .line 19
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzqz;->zzbdw:Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzmd;->zzahx:Lcom/google/android/gms/internal/firebase_ml/zzmd;

    .line 21
    invoke-virtual {p2}, Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;->getModelType()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzmd;->zzahf:Lcom/google/android/gms/internal/firebase_ml/zzmd;

    .line 23
    :cond_1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/firebase/FirebaseApp;I)Lcom/google/android/gms/internal/firebase_ml/zznv;

    move-result-object p1

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs;->zzjl()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;Lcom/google/android/gms/internal/firebase_ml/zzmd;)V

    return-void
.end method

.method public static declared-synchronized zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;)Lcom/google/android/gms/internal/firebase_ml/zzqz;
    .locals 4

    const-class v0, Lcom/google/android/gms/internal/firebase_ml/zzqz;

    monitor-enter v0

    :try_start_0
    const-string v1, "FirebaseApp must not be null"

    .line 1
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Firebase app name must not be null"

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Options must not be null"

    .line 5
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/firebase_ml/zznw;->zzj(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zznw;

    move-result-object v1

    .line 8
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzqz;->zzatg:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase_ml/zzqz;

    if-nez v3, :cond_0

    .line 10
    new-instance v3, Lcom/google/android/gms/internal/firebase_ml/zzqz;

    invoke-direct {v3, p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzqz;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;)V

    .line 11
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_0
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final processImage(Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/ml/vision/text/FirebaseVisionText;",
            ">;"
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzmd;->zzahy:Lcom/google/android/gms/internal/firebase_ml/zzmd;

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqz;->zzbdw:Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;

    invoke-virtual {v1}, Lcom/google/firebase/ml/vision/text/FirebaseVisionCloudTextRecognizerOptions;->getModelType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzmd;->zzahg:Lcom/google/android/gms/internal/firebase_ml/zzmd;

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqd;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/firebase/FirebaseApp;I)Lcom/google/android/gms/internal/firebase_ml/zznv;

    move-result-object v1

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs;->zzjl()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;Lcom/google/android/gms/internal/firebase_ml/zzmd;)V

    .line 31
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzqd;->zza(Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzit;F)Ljava/lang/Object;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p2

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzit;->zzhe()Lcom/google/android/gms/internal/firebase_ml/zzjw;

    move-result-object p1

    .line 38
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzrc;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzjw;F)Lcom/google/firebase/ml/vision/text/FirebaseVisionText;

    move-result-object p1

    return-object p1
.end method

.method protected final zznj()I
    .locals 1

    const/16 v0, 0x400

    return v0
.end method

.method protected final zznk()I
    .locals 1

    const/16 v0, 0x300

    return v0
.end method
