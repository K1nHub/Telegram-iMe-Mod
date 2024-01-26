.class public final Lcom/google/android/gms/internal/firebase_ml/zzra;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzno;
.implements Lcom/google/android/gms/internal/firebase_ml/zznx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase_ml/zzno<",
        "Lcom/google/firebase/ml/vision/text/FirebaseVisionText;",
        "Lcom/google/android/gms/internal/firebase_ml/zzqp;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zznx;"
    }
.end annotation


# static fields
.field static zzazs:Z = true


# instance fields
.field private final zzauh:Landroid/content/Context;

.field private final zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;

.field private zzazv:Lcom/google/android/gms/internal/firebase_ml/zzqk;

.field private zzbdx:Lcom/google/android/gms/vision/text/TextRecognizer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzqk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzqk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzra;->zzazv:Lcom/google/android/gms/internal/firebase_ml/zzqk;

    const-string v0, "Firebase App can not be null"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzra;->zzauh:Landroid/content/Context;

    const/4 v0, 0x1

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/firebase/FirebaseApp;I)Lcom/google/android/gms/internal/firebase_ml/zznv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzra;->zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;JLcom/google/android/gms/internal/firebase_ml/zzqp;)V
    .locals 1

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzrd;

    invoke-direct {v0, p2, p3, p1, p4}, Lcom/google/android/gms/internal/firebase_ml/zzrd;-><init>(JLcom/google/android/gms/internal/firebase_ml/zzmc;Lcom/google/android/gms/internal/firebase_ml/zzqp;)V

    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzra;->zzavr:Lcom/google/android/gms/internal/firebase_ml/zznv;

    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzmd;->zzafz:Lcom/google/android/gms/internal/firebase_ml/zzmd;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzny;Lcom/google/android/gms/internal/firebase_ml/zzmd;)V

    return-void
.end method

.method private final declared-synchronized zzd(Lcom/google/android/gms/internal/firebase_ml/zzqp;)Lcom/google/firebase/ml/vision/text/FirebaseVisionText;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    monitor-enter p0

    .line 15
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzra;->zzbdx:Lcom/google/android/gms/vision/text/TextRecognizer;

    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/vision/text/TextRecognizer;->isOperational()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzra;->zzazv:Lcom/google/android/gms/internal/firebase_ml/zzqk;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/firebase_ml/zzqk;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzqp;)V

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzra;->zzbdx:Lcom/google/android/gms/vision/text/TextRecognizer;

    iget-object v3, p1, Lcom/google/android/gms/internal/firebase_ml/zzqp;->zzbay:Lcom/google/android/gms/vision/Frame;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/vision/text/TextRecognizer;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object v2

    .line 24
    sget-object v3, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaet:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    invoke-direct {p0, v3, v0, v1, p1}, Lcom/google/android/gms/internal/firebase_ml/zzra;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;JLcom/google/android/gms/internal/firebase_ml/zzqp;)V

    const/4 p1, 0x0

    .line 25
    sput-boolean p1, Lcom/google/android/gms/internal/firebase_ml/zzra;->zzazs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    .line 26
    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    new-instance p1, Lcom/google/firebase/ml/vision/text/FirebaseVisionText;

    invoke-direct {p1, v2}, Lcom/google/firebase/ml/vision/text/FirebaseVisionText;-><init>(Landroid/util/SparseArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 20
    :cond_1
    :try_start_2
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafc:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/google/android/gms/internal/firebase_ml/zzra;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;JLcom/google/android/gms/internal/firebase_ml/zzqp;)V

    .line 21
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v0, "Waiting for the text recognition model to be downloaded. Please wait."

    const/16 v1, 0xe

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 17
    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaft:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/google/android/gms/internal/firebase_ml/zzra;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;JLcom/google/android/gms/internal/firebase_ml/zzqp;)V

    .line 18
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v0, "Model source is unavailable. Please load the model resource first."

    const/16 v1, 0xd

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzra;->zzbdx:Lcom/google/android/gms/vision/text/TextRecognizer;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/vision/text/TextRecognizer;->release()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzra;->zzbdx:Lcom/google/android/gms/vision/text/TextRecognizer;

    :cond_0
    const/4 v0, 0x1

    .line 13
    sput-boolean v0, Lcom/google/android/gms/internal/firebase_ml/zzra;->zzazs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzns;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 31
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzqp;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzra;->zzd(Lcom/google/android/gms/internal/firebase_ml/zzqp;)Lcom/google/firebase/ml/vision/text/FirebaseVisionText;

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

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzra;->zzbdx:Lcom/google/android/gms/vision/text/TextRecognizer;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzra;->zzauh:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;->build()Lcom/google/android/gms/vision/text/TextRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzra;->zzbdx:Lcom/google/android/gms/vision/text/TextRecognizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
