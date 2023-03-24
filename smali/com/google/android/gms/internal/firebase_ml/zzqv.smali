.class public final Lcom/google/android/gms/internal/firebase_ml/zzqv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzno;
.implements Lcom/google/android/gms/internal/firebase_ml/zznx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase_ml/zzno<",
        "Ljava/util/List<",
        "Lcom/google/firebase/ml/vision/label/FirebaseVisionImageLabel;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzqp;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zznx;"
    }
.end annotation


# static fields
.field private static zzazs:Z = true

.field private static volatile zzbcx:Ljava/lang/Boolean;


# instance fields
.field private final zzauh:Landroid/content/Context;

.field private final zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;

.field private final zzbcy:Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceImageLabelerOptions;

.field private zzbcz:Lcom/google/android/gms/vision/label/ImageLabeler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceImageLabelerOptions;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context can not be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FirebaseVisionOnDeviceImageLabelerOptions can not be null"

    .line 3
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zzauh:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zzbcy:Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceImageLabelerOptions;

    const/4 p2, 0x1

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/firebase/FirebaseApp;I)Lcom/google/android/gms/internal/firebase_ml/zznv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;

    return-void
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/internal/firebase_ml/zzqp;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_ml/zzqp;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/ml/vision/label/FirebaseVisionImageLabel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    monitor-enter p0

    .line 8
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zzbcx:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zzauh:Landroid/content/Context;

    const-string v2, "com.google.android.gms.vision.dynamite.ica"

    .line 10
    invoke-static {v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-gtz v2, :cond_1

    const-string v2, "com.google.android.gms.vision.dynamite.imagelabel"

    .line 11
    invoke-static {v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    .line 12
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zzbcx:Ljava/lang/Boolean;

    .line 13
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zzbcx:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v2, 0xe

    if-nez v0, :cond_7

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zzbcz:Lcom/google/android/gms/vision/label/ImageLabeler;

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/vision/label/ImageLabeler;->isOperational()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zzbcz:Lcom/google/android/gms/vision/label/ImageLabeler;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase_ml/zzqp;->zzbay:Lcom/google/android/gms/vision/Frame;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/vision/label/ImageLabeler;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object v0

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_4

    move v5, v1

    .line 25
    :goto_3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 26
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 27
    new-instance v7, Lcom/google/firebase/ml/vision/label/FirebaseVisionImageLabel;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/vision/label/ImageLabel;

    invoke-direct {v7, v6}, Lcom/google/firebase/ml/vision/label/FirebaseVisionImageLabel;-><init>(Lcom/google/android/gms/vision/label/ImageLabel;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 29
    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaet:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    invoke-direct {p0, v0, v3, v4, p1}, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;JLcom/google/android/gms/internal/firebase_ml/zzqp;)V

    .line 30
    sput-boolean v1, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zzazs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-object v2

    .line 20
    :cond_5
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafc:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    invoke-direct {p0, v0, v3, v4, p1}, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;JLcom/google/android/gms/internal/firebase_ml/zzqp;)V

    .line 21
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v0, "Waiting for the label detection model to be downloaded. Please wait."

    invoke-direct {p1, v0, v2}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 17
    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaft:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    invoke-direct {p0, v0, v3, v4, p1}, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;JLcom/google/android/gms/internal/firebase_ml/zzqp;)V

    .line 18
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v0, "Model source is unavailable. Please load the model resource first."

    const/16 v1, 0xd

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 14
    :cond_7
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v0, "No model is bundled. Please check your app setup to includefirebase-ml-vision-image-label-model dependency."

    invoke-direct {p1, v0, v2}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;JLcom/google/android/gms/internal/firebase_ml/zzqp;)V
    .locals 7

    .line 43
    new-instance v6, Lcom/google/android/gms/internal/firebase_ml/zzqu;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase_ml/zzqu;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzqv;JLcom/google/android/gms/internal/firebase_ml/zzmc;Lcom/google/android/gms/internal/firebase_ml/zzqp;)V

    .line 44
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;

    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzmd;->zzagf:Lcom/google/android/gms/internal/firebase_ml/zzmd;

    invoke-virtual {p1, v6, p2}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzny;Lcom/google/android/gms/internal/firebase_ml/zzmd;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zzbcz:Lcom/google/android/gms/vision/label/ImageLabeler;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/vision/label/ImageLabeler;->release()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zzbcz:Lcom/google/android/gms/vision/label/ImageLabeler;

    :cond_0
    const/4 v0, 0x1

    .line 41
    sput-boolean v0, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zzazs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final synthetic zza(JLcom/google/android/gms/internal/firebase_ml/zzmc;Lcom/google/android/gms/internal/firebase_ml/zzqp;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;
    .locals 2

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac;->zzkh()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac$zza;

    move-result-object p1

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzjp()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p2

    .line 50
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzk(J)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p2

    .line 51
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzd(Lcom/google/android/gms/internal/firebase_ml/zzmc;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p2

    sget-boolean p3, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zzazs:Z

    .line 52
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzp(Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p2

    const/4 p3, 0x1

    .line 53
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzq(Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p2

    .line 54
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzr(Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac$zza;->zzf(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac$zza;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zzbcy:Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceImageLabelerOptions;

    .line 56
    invoke-virtual {p2}, Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceImageLabelerOptions;->zznr()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac$zza;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzad;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac$zza;

    move-result-object p1

    .line 57
    invoke-static {p4}, Lcom/google/android/gms/internal/firebase_ml/zzqm;->zzc(Lcom/google/android/gms/internal/firebase_ml/zzqp;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac$zza;->zze(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac$zza;

    move-result-object p1

    .line 58
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs;->zzjl()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p2

    .line 59
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzac$zza;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzns;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 46
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzqp;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzqp;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zzll()Lcom/google/android/gms/internal/firebase_ml/zznx;
    .locals 0

    return-object p0
.end method

.method public final declared-synchronized zzln()V
    .locals 2

    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zzbcz:Lcom/google/android/gms/vision/label/ImageLabeler;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/google/android/gms/vision/label/ImageLabeler$Builder;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zzauh:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/vision/label/ImageLabeler$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zzbcy:Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceImageLabelerOptions;

    .line 35
    invoke-virtual {v1}, Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceImageLabelerOptions;->getConfidenceThreshold()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/label/ImageLabeler$Builder;->setScoreThreshold(F)Lcom/google/android/gms/vision/label/ImageLabeler$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/vision/label/ImageLabeler$Builder;->build()Lcom/google/android/gms/vision/label/ImageLabeler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqv;->zzbcz:Lcom/google/android/gms/vision/label/ImageLabeler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
