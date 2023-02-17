.class public final Lcom/google/android/gms/internal/firebase_ml/zzqa;
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
        "Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zzqp;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zznx;"
    }
.end annotation


# static fields
.field private static zzazs:Z = true


# instance fields
.field private final zzauh:Landroid/content/Context;

.field private final zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;

.field private final zzazt:Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetectorOptions;

.field private zzazu:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

.field private zzazv:Lcom/google/android/gms/internal/firebase_ml/zzqk;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetectorOptions;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzqk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzqk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zzazv:Lcom/google/android/gms/internal/firebase_ml/zzqk;

    const-string v0, "FirebaseApp can not be null"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FirebaseVisionBarcodeDetectorOptions can not be null"

    .line 4
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zzauh:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zzazt:Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetectorOptions;

    const/4 p2, 0x1

    .line 7
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/firebase/FirebaseApp;I)Lcom/google/android/gms/internal/firebase_ml/zznv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;

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
            "Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    monitor-enter p0

    .line 19
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zzazu:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->isOperational()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zzazv:Lcom/google/android/gms/internal/firebase_ml/zzqk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzqk;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzqp;)V

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zzazu:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase_ml/zzqp;->zzbay:Lcom/google/android/gms/vision/Frame;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object v0

    .line 28
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 29
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 30
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 31
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/vision/barcode/Barcode;

    if-eqz v4, :cond_0

    .line 33
    new-instance v5, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;

    invoke-direct {v5, v4}, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;-><init>(Lcom/google/android/gms/vision/barcode/Barcode;)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaet:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    move-object v0, p0

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;JLcom/google/android/gms/internal/firebase_ml/zzqp;Ljava/util/List;)V

    .line 36
    sput-boolean v7, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zzazs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-object v6

    .line 24
    :cond_2
    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafc:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;JLcom/google/android/gms/internal/firebase_ml/zzqp;Ljava/util/List;)V

    .line 25
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v0, "Waiting for the barcode detection model to be downloaded. Please wait."

    const/16 v1, 0xe

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 21
    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaft:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;JLcom/google/android/gms/internal/firebase_ml/zzqp;Ljava/util/List;)V

    .line 22
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v0, "Model source is unavailable. Please load the model resource first."

    const/16 v1, 0xd

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;JLcom/google/android/gms/internal/firebase_ml/zzqp;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_ml/zzmc;",
            "J",
            "Lcom/google/android/gms/internal/firebase_ml/zzqp;",
            "Ljava/util/List<",
            "Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;",
            ">;)V"
        }
    .end annotation

    .line 39
    new-instance v7, Lcom/google/android/gms/internal/firebase_ml/zzqb;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase_ml/zzqb;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzqa;JLcom/google/android/gms/internal/firebase_ml/zzmc;Lcom/google/android/gms/internal/firebase_ml/zzqp;Ljava/util/List;)V

    .line 40
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;

    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzmd;->zzagc:Lcom/google/android/gms/internal/firebase_ml/zzmd;

    invoke-virtual {p1, v7, p2}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzny;Lcom/google/android/gms/internal/firebase_ml/zzmd;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zzazu:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->release()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zzazu:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    :cond_0
    const/4 v0, 0x1

    .line 17
    sput-boolean v0, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zzazs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final synthetic zza(JLcom/google/android/gms/internal/firebase_ml/zzmc;Lcom/google/android/gms/internal/firebase_ml/zzqp;Ljava/util/List;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;
    .locals 2

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa;->zzkd()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzc;

    move-result-object p1

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu;->zzjp()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p2

    .line 46
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzk(J)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p2

    .line 47
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzd(Lcom/google/android/gms/internal/firebase_ml/zzmc;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p2

    sget-boolean p3, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zzazs:Z

    .line 48
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzp(Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p2

    const/4 p3, 0x1

    .line 49
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzq(Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p2

    .line 50
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;->zzr(Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;

    move-result-object p2

    .line 51
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzc;->zzd(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzu$zza;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzc;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zzazt:Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetectorOptions;

    .line 52
    invoke-virtual {p2}, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetectorOptions;->zzni()Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzc;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzrl$zza;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzc;

    move-result-object p1

    .line 53
    invoke-static {p4}, Lcom/google/android/gms/internal/firebase_ml/zzqm;->zzc(Lcom/google/android/gms/internal/firebase_ml/zzqp;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzc;->zzc(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzc;

    move-result-object p1

    if-eqz p5, :cond_1

    .line 55
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;

    .line 58
    invoke-virtual {p5}, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;->zznf()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zza;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p5}, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcode;->zzng()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzb;

    move-result-object p5

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzc;->zzn(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzc;

    move-result-object p2

    .line 63
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzc;->zzo(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzc;

    .line 64
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs;->zzjl()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p2

    .line 65
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzaa$zzc;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

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

    .line 42
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzqp;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zza(Lcom/google/android/gms/internal/firebase_ml/zzqp;)Ljava/util/List;

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

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zzazu:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zzauh:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zzazt:Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetectorOptions;

    .line 11
    invoke-virtual {v1}, Lcom/google/firebase/ml/vision/barcode/FirebaseVisionBarcodeDetectorOptions;->zznh()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->setBarcodeFormats(I)Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->build()Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqa;->zzazu:Lcom/google/android/gms/vision/barcode/BarcodeDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
