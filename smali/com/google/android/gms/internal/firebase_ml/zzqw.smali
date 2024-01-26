.class public final Lcom/google/android/gms/internal/firebase_ml/zzqw;
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
.field private static final zzaxr:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final zzaui:Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

.field private final zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

.field private final zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;

.field private final zzaxu:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzbda:Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceAutoMLImageLabelerOptions;

.field private zzbdb:Lcom/google/firebase/ml/vision/automl/internal/IOnDeviceAutoMLImageLabeler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzaxr:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceAutoMLImageLabelerOptions;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzaxu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzbda:Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceAutoMLImageLabelerOptions;

    const/4 v0, 0x5

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/firebase/FirebaseApp;I)Lcom/google/android/gms/internal/firebase_ml/zznv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;

    .line 6
    invoke-static {}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;->getInstance()Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;

    move-result-object p1

    .line 7
    invoke-virtual {p2}, Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceAutoMLImageLabelerOptions;->zzmw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceAutoMLImageLabelerOptions;->zzmw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;->getNonBaseRemoteModel(Ljava/lang/String;)Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    goto :goto_0

    .line 9
    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    .line 10
    :goto_0
    invoke-virtual {p2}, Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceAutoMLImageLabelerOptions;->zzmv()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p2}, Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceAutoMLImageLabelerOptions;->zzmv()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;->getLocalModel(Ljava/lang/String;)Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzaui:Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    return-void

    .line 12
    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzaui:Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    return-void
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/internal/firebase_ml/zzqp;)Ljava/util/List;
    .locals 16
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

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    monitor-enter p0

    :try_start_0
    const-string v0, "Mobile vision input can not be null"

    .line 14
    invoke-static {v6, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, v6, Lcom/google/android/gms/internal/firebase_ml/zzqp;->zzbay:Lcom/google/android/gms/vision/Frame;

    const-string v1, "Input frame can not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, v7, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzaxu:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 18
    iget-object v0, v7, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzbdb:Lcom/google/firebase/ml/vision/automl/internal/IOnDeviceAutoMLImageLabeler;

    if-eqz v0, :cond_3

    .line 22
    iget-object v0, v6, Lcom/google/android/gms/internal/firebase_ml/zzqp;->zzbay:Lcom/google/android/gms/vision/Frame;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Frame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 26
    :try_start_1
    iget-object v0, v6, Lcom/google/android/gms/internal/firebase_ml/zzqp;->zzbay:Lcom/google/android/gms/vision/Frame;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Frame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    .line 27
    iget-object v1, v7, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzbdb:Lcom/google/firebase/ml/vision/automl/internal/IOnDeviceAutoMLImageLabeler;

    iget-object v2, v6, Lcom/google/android/gms/internal/firebase_ml/zzqp;->zzbay:Lcom/google/android/gms/vision/Frame;

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v2

    .line 29
    new-instance v15, Lcom/google/firebase/ml/vision/automl/internal/zzh;

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/vision/Frame$Metadata;->getWidth()I

    move-result v10

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/vision/Frame$Metadata;->getHeight()I

    move-result v11

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/vision/Frame$Metadata;->getId()I

    move-result v12

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/vision/Frame$Metadata;->getTimestampMillis()J

    move-result-wide v13

    .line 34
    invoke-virtual {v2}, Lcom/google/android/gms/vision/Frame$Metadata;->getRotation()I

    move-result v2

    move-object v9, v15

    move-object v8, v15

    move v15, v2

    invoke-direct/range {v9 .. v15}, Lcom/google/firebase/ml/vision/automl/internal/zzh;-><init>(IIIJI)V

    .line 35
    invoke-interface {v1, v0, v8}, Lcom/google/firebase/ml/vision/automl/internal/IOnDeviceAutoMLImageLabeler;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/ml/vision/automl/internal/zzh;)[Lcom/google/firebase/ml/vision/automl/internal/zzf;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :try_start_2
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaet:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;JZLcom/google/android/gms/internal/firebase_ml/zzqp;)V

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlh;->zzih()Lcom/google/android/gms/internal/firebase_ml/zzlh;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 44
    :cond_0
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 46
    invoke-static {v5}, Lcom/google/firebase/ml/vision/label/FirebaseVisionImageLabel;->zza(Lcom/google/firebase/ml/vision/automl/internal/zzf;)Lcom/google/firebase/ml/vision/label/FirebaseVisionImageLabel;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 48
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzaxr:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    .line 38
    :try_start_4
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaft:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;JZLcom/google/android/gms/internal/firebase_ml/zzqp;)V

    const-string v1, "ODAutoMLImgLabelerTask"

    const-string v2, "Error calling on device auto ml inference."

    .line 39
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    new-instance v1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v2, "Cannot run on device automl image labeler."

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3, v0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    :cond_2
    const-string v0, "ODAutoMLImgLabelerTask"

    const-string v1, "No image data found."

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v1, "No image data found."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 19
    :cond_3
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaft:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;JZLcom/google/android/gms/internal/firebase_ml/zzqp;)V

    const-string v0, "ODAutoMLImgLabelerTask"

    const-string v1, "On device AutoML Image Labeler is not initialized."

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v0, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v1, "Image labeler not initialized."

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;JZLcom/google/android/gms/internal/firebase_ml/zzqp;)V
    .locals 8

    .line 88
    new-instance v7, Lcom/google/android/gms/internal/firebase_ml/zzqy;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p1

    move-object v5, p5

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzqy;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzqw;JLcom/google/android/gms/internal/firebase_ml/zzmc;Lcom/google/android/gms/internal/firebase_ml/zzqp;Z)V

    .line 89
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;

    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzmd;->zzaih:Lcom/google/android/gms/internal/firebase_ml/zzmd;

    invoke-virtual {p1, v7, p2}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzny;Lcom/google/android/gms/internal/firebase_ml/zzmd;)V

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 3

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzbdb:Lcom/google/firebase/ml/vision/automl/internal/IOnDeviceAutoMLImageLabeler;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0}, Lcom/google/firebase/ml/vision/automl/internal/IOnDeviceAutoMLImageLabeler;->close()V

    .line 83
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzaxr:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ODAutoMLImgLabelerTask"

    const-string v2, "Error closing on device AutoML Image Labeler"

    .line 86
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method final synthetic zza(JLcom/google/android/gms/internal/firebase_ml/zzmc;Lcom/google/android/gms/internal/firebase_ml/zzqp;Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;
    .locals 2

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 93
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzb;->zzil()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzb$zza;

    move-result-object p1

    .line 94
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzjp()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p2

    .line 95
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzk(J)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p2

    .line 96
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzd(Lcom/google/android/gms/internal/firebase_ml/zzmc;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p2

    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzaxr:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzp(Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p2

    const/4 p3, 0x1

    .line 98
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzq(Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p2

    .line 99
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzr(Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p2

    .line 100
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzb$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzb$zza;

    move-result-object p1

    .line 101
    invoke-static {p4}, Lcom/google/android/gms/internal/firebase_ml/zzqm;->zzc(Lcom/google/android/gms/internal/firebase_ml/zzqp;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzb$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzb$zza;

    move-result-object p1

    if-eqz p5, :cond_0

    .line 102
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzavo:Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    if-eqz p2, :cond_0

    .line 103
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzauv:Lcom/google/android/gms/internal/firebase_ml/zzor;

    .line 104
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzox;->zza(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/android/gms/internal/firebase_ml/zzor;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    move-result-object p2

    .line 105
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzb$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzb$zza;

    goto :goto_0

    .line 106
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzaui:Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    if-eqz p2, :cond_1

    .line 107
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzauv:Lcom/google/android/gms/internal/firebase_ml/zzor;

    invoke-virtual {p2, p3}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->zza(Lcom/google/android/gms/internal/firebase_ml/zzor;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzb$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzb$zza;

    .line 108
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs;->zzjl()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p2

    .line 109
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzb$zza;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

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

    .line 91
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzqp;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zza(Lcom/google/android/gms/internal/firebase_ml/zzqp;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zzll()Lcom/google/android/gms/internal/firebase_ml/zznx;
    .locals 0

    return-object p0
.end method

.method public final declared-synchronized zzln()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    monitor-enter p0

    const/16 v0, 0xe

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzbdb:Lcom/google/firebase/ml/vision/automl/internal/IOnDeviceAutoMLImageLabeler;

    if-nez v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 53
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v3, "com.google.firebase.ml.vision.dynamite.automl"

    .line 54
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    const-string v2, "com.google.firebase.ml.vision.automl.OnDeviceAutoMLImageLabelerCreator"

    .line 56
    invoke-virtual {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/google/firebase/ml/vision/automl/internal/zzd;->asInterface(Landroid/os/IBinder;)Lcom/google/firebase/ml/vision/automl/internal/zza;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 62
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzbda:Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceAutoMLImageLabelerOptions;

    .line 63
    new-instance v4, Lcom/google/firebase/ml/vision/automl/internal/OnDeviceAutoMLImageLabelerOptionsParcel;

    .line 64
    invoke-virtual {v3}, Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceAutoMLImageLabelerOptions;->getConfidenceThreshold()F

    move-result v5

    .line 65
    invoke-virtual {v3}, Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceAutoMLImageLabelerOptions;->zzmv()Ljava/lang/String;

    move-result-object v6

    .line 66
    invoke-virtual {v3}, Lcom/google/firebase/ml/vision/label/FirebaseVisionOnDeviceAutoMLImageLabelerOptions;->zzmw()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcom/google/firebase/ml/vision/automl/internal/OnDeviceAutoMLImageLabelerOptionsParcel;-><init>(FLjava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-interface {v1, v2, v4}, Lcom/google/firebase/ml/vision/automl/internal/zza;->newOnDeviceAutoMLImageLabeler(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/ml/vision/automl/internal/OnDeviceAutoMLImageLabelerOptionsParcel;)Lcom/google/firebase/ml/vision/automl/internal/IOnDeviceAutoMLImageLabeler;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzbdb:Lcom/google/firebase/ml/vision/automl/internal/IOnDeviceAutoMLImageLabeler;

    goto :goto_0

    :cond_0
    const-string v1, "ODAutoMLImgLabelerTask"

    const-string v2, "Error when creating on device AutoML Image Labeler creator."

    .line 59
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v2, "Can not create on device AutoML Image Labeler."

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzbdb:Lcom/google/firebase/ml/vision/automl/internal/IOnDeviceAutoMLImageLabeler;

    invoke-interface {v1}, Lcom/google/firebase/ml/vision/automl/internal/IOnDeviceAutoMLImageLabeler;->zzln()V

    .line 76
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzaxu:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzqw;->zzbdb:Lcom/google/firebase/ml/vision/automl/internal/IOnDeviceAutoMLImageLabeler;

    invoke-interface {v2}, Lcom/google/firebase/ml/vision/automl/internal/IOnDeviceAutoMLImageLabeler;->zzlw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "ODAutoMLImgLabelerTask"

    const-string v3, "Error while loading the AutoML image labeling model."

    .line 79
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    new-instance v2, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v3, "Cannot load the AutoML image labeling model."

    invoke-direct {v2, v3, v0, v1}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "ODAutoMLImgLabelerTask"

    const-string v3, "Error when creating on device AutoML Image Labeler."

    .line 73
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    new-instance v2, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v3, "Can not create on device AutoML Image Labeler."

    invoke-direct {v2, v3, v0, v1}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v1

    const-string v2, "ODAutoMLImgLabelerTask"

    const-string v3, "Error when loading automl module."

    .line 70
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    new-instance v1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v2, "Cannot load automl module. Please add dependency firebase-ml-vision-automl."

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    throw v0
.end method
