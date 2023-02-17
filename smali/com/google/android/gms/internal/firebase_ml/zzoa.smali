.class public final Lcom/google/android/gms/internal/firebase_ml/zzoa;
.super Ljava/lang/Object;


# static fields
.field private static final zzasz:Lcom/google/android/gms/common/internal/GmsLogger;

.field private static zzatz:Lcom/google/android/gms/internal/firebase_ml/zzoa;


# instance fields
.field private final zzatu:Lcom/google/android/gms/internal/firebase_ml/zznn;

.field private final zzatv:Ljava/util/concurrent/atomic/AtomicLong;

.field private final zzatw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/firebase_ml/zznx;",
            ">;"
        }
    .end annotation
.end field

.field private final zzatx:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/firebase_ml/zznx;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaty:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Lcom/google/android/gms/internal/firebase_ml/zznx;",
            "Lcom/google/android/gms/internal/firebase_ml/zzoc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelResourceManager"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzasz:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zznn;->zzlk()Lcom/google/android/gms/internal/firebase_ml/zznn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzatu:Lcom/google/android/gms/internal/firebase_ml/zznn;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v1, 0x493e0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzatv:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzatw:Ljava/util/Set;

    .line 8
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzatx:Ljava/util/Set;

    .line 9
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzaty:Lj$/util/concurrent/ConcurrentHashMap;

    .line 10
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->initialize(Landroid/app/Application;)V

    goto :goto_0

    .line 14
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzasz:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelResourceManager"

    const-string v2, "No valid Application available and auto-manage cannot work"

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :goto_0
    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->getInstance()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zznz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/firebase_ml/zznz;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzoa;)V

    .line 16
    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->addListener(Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;)V

    .line 17
    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->getInstance()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    move-result-object p1

    const/4 v1, 0x1

    .line 18
    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->readCurrentStateIfPossible(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x7d0

    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_1
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzoa;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzatv:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public static declared-synchronized zzb(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase_ml/zzoa;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/firebase_ml/zzoa;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzatz:Lcom/google/android/gms/internal/firebase_ml/zzoa;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzoa;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/firebase_ml/zzoa;-><init>(Lcom/google/firebase/FirebaseApp;)V

    sput-object v1, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzatz:Lcom/google/android/gms/internal/firebase_ml/zzoa;

    .line 3
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzatz:Lcom/google/android/gms/internal/firebase_ml/zzoa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final declared-synchronized zzb(Lcom/google/android/gms/internal/firebase_ml/zznx;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 31
    monitor-exit p0

    return-void

    .line 32
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzatu:Lcom/google/android/gms/internal/firebase_ml/zznn;

    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzoc;

    const-string v2, "OPERATION_LOAD"

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzoc;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzoa;Lcom/google/android/gms/internal/firebase_ml/zznx;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zznn;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzatw:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzc(Lcom/google/android/gms/internal/firebase_ml/zznx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase_ml/zzoa;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzlp()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/firebase_ml/zzoa;)Ljava/util/Set;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzatx:Ljava/util/Set;

    return-object p0
.end method

.method private final declared-synchronized zzc(Lcom/google/android/gms/internal/firebase_ml/zznx;)V
    .locals 6

    monitor-enter p0

    .line 40
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zze(Lcom/google/android/gms/internal/firebase_ml/zznx;)Lcom/google/android/gms/internal/firebase_ml/zzoc;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzatu:Lcom/google/android/gms/internal/firebase_ml/zznn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zznn;->zzb(Ljava/util/concurrent/Callable;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzatv:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 43
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzasz:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v3, "ModelResourceManager"

    const/16 v4, 0x3e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Rescheduling modelResource release after: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/common/internal/GmsLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzatu:Lcom/google/android/gms/internal/firebase_ml/zznn;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zznn;->zza(Ljava/util/concurrent/Callable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final zze(Lcom/google/android/gms/internal/firebase_ml/zznx;)Lcom/google/android/gms/internal/firebase_ml/zzoc;
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzaty:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zzoc;

    const-string v2, "OPERATION_RELEASE"

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzoc;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzoa;Lcom/google/android/gms/internal/firebase_ml/zznx;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzaty:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzoc;

    return-object p1
.end method

.method private final declared-synchronized zzlp()V
    .locals 2

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzatw:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase_ml/zznx;

    .line 37
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzc(Lcom/google/android/gms/internal/firebase_ml/zznx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 39
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic zzlq()Lcom/google/android/gms/common/internal/GmsLogger;
    .locals 1

    .line 62
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzasz:Lcom/google/android/gms/common/internal/GmsLogger;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/firebase_ml/zznx;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "Model source can not be null"

    .line 22
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzasz:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelResourceManager"

    const-string v2, "Add auto-managed model resource"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzatw:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "ModelResourceManager"

    const-string v1, "The model resource is already registered."

    .line 25
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    return-void

    .line 27
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzatw:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzb(Lcom/google/android/gms/internal/firebase_ml/zznx;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzd(Lcom/google/android/gms/internal/firebase_ml/zznx;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 47
    monitor-exit p0

    return-void

    .line 48
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zze(Lcom/google/android/gms/internal/firebase_ml/zznx;)Lcom/google/android/gms/internal/firebase_ml/zzoc;

    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzatu:Lcom/google/android/gms/internal/firebase_ml/zznn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zznn;->zzb(Ljava/util/concurrent/Callable;)V

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzatu:Lcom/google/android/gms/internal/firebase_ml/zznn;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zznn;->zza(Ljava/util/concurrent/Callable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final zzf(Lcom/google/android/gms/internal/firebase_ml/zznx;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzatx:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase_ml/zznx;->zzln()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzatx:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception p1

    .line 59
    new-instance v0, Lcom/google/firebase/ml/common/FirebaseMLException;

    const/16 v1, 0xd

    const-string v2, "The load task failed"

    invoke-direct {v0, v2, v1, p1}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0
.end method
