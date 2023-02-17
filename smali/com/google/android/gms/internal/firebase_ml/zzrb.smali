.class public final Lcom/google/android/gms/internal/firebase_ml/zzrb;
.super Lcom/google/android/gms/internal/firebase_ml/zzql;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzql<",
        "Lcom/google/firebase/ml/vision/text/FirebaseVisionText;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static final zzatg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase_ml/zzrb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzrb;->zzatg:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 2

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzra;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzra;-><init>(Lcom/google/firebase/FirebaseApp;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzql;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase_ml/zzno;)V

    const/4 v0, 0x1

    .line 11
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/firebase/FirebaseApp;I)Lcom/google/android/gms/internal/firebase_ml/zznv;

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs;->zzjl()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object v0

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzak;->zzla()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzak;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzak;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzmd;->zzaga:Lcom/google/android/gms/internal/firebase_ml/zzmd;

    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;Lcom/google/android/gms/internal/firebase_ml/zzmd;)V

    return-void
.end method

.method public static declared-synchronized zze(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase_ml/zzrb;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/firebase_ml/zzrb;

    monitor-enter v0

    :try_start_0
    const-string v1, "FirebaseApp can not be null."

    .line 1
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Firebase app name must not be null"

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzrb;->zzatg:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase_ml/zzrb;

    if-nez v2, :cond_0

    .line 7
    new-instance v2, Lcom/google/android/gms/internal/firebase_ml/zzrb;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/firebase_ml/zzrb;-><init>(Lcom/google/firebase/FirebaseApp;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final processImage(Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;)Lcom/google/android/gms/tasks/Task;
    .locals 2
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 17
    invoke-super {p0, p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzql;->zza(Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;ZZ)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
