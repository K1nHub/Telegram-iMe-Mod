.class public Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;
.super Ljava/lang/Object;


# static fields
.field private static final zzatg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzawp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;",
            ">;"
        }
    .end annotation
.end field

.field private final zzawr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 74
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "FirebaseModelManager"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;->zzatg:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;->zzawp:Ljava/util/Map;

    .line 11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 12
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;->zzawr:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;
    .locals 2

    const-class v0, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;
    .locals 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const-class v0, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "Please provide a valid FirebaseApp"

    .line 2
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;->zzatg:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 6
    :cond_0
    :try_start_1
    new-instance v3, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;

    invoke-direct {v3, p0}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;-><init>(Lcom/google/firebase/FirebaseApp;)V

    .line 7
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized getLocalModel(Ljava/lang/String;)Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;->zzawr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getNonBaseRemoteModel(Ljava/lang/String;)Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;->zzawp:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
