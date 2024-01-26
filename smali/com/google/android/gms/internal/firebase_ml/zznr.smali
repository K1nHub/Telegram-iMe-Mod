.class public final Lcom/google/android/gms/internal/firebase_ml/zznr;
.super Ljava/lang/Object;


# static fields
.field private static final zzasz:Lcom/google/android/gms/common/internal/GmsLogger;

.field private static zzata:Lcom/google/android/gms/internal/firebase_ml/zznr;


# instance fields
.field private final zzatb:Lcom/google/android/gms/internal/firebase_ml/zzoa;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "MLTaskManager"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zznr;->zzasz:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzb(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase_ml/zzoa;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zznr;->zzatb:Lcom/google/android/gms/internal/firebase_ml/zzoa;

    return-void
.end method

.method public static declared-synchronized zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase_ml/zznr;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/firebase_ml/zznr;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zznr;->zzata:Lcom/google/android/gms/internal/firebase_ml/zznr;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zznr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/firebase_ml/zznr;-><init>(Lcom/google/firebase/FirebaseApp;)V

    sput-object v1, Lcom/google/android/gms/internal/firebase_ml/zznr;->zzata:Lcom/google/android/gms/internal/firebase_ml/zznr;

    .line 6
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/firebase_ml/zznr;->zzata:Lcom/google/android/gms/internal/firebase_ml/zznr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zznr;)Lcom/google/android/gms/internal/firebase_ml/zzoa;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase_ml/zznr;->zzatb:Lcom/google/android/gms/internal/firebase_ml/zzoa;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/firebase_ml/zzno;Lcom/google/android/gms/internal/firebase_ml/zzns;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Lcom/google/android/gms/internal/firebase_ml/zzns;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_ml/zzno<",
            "TT;TS;>;TS;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "Operation can not be null"

    .line 21
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Input can not be null"

    .line 22
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zznr;->zzasz:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "MLTaskManager"

    const-string v2, "Execute task"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase_ml/zzno;->zzll()Lcom/google/android/gms/internal/firebase_ml/zznx;

    move-result-object v0

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zznn;->zzlk()Lcom/google/android/gms/internal/firebase_ml/zznn;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/firebase_ml/zznt;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zznt;-><init>(Lcom/google/android/gms/internal/firebase_ml/zznr;Lcom/google/android/gms/internal/firebase_ml/zznx;Lcom/google/android/gms/internal/firebase_ml/zzno;Lcom/google/android/gms/internal/firebase_ml/zzns;)V

    .line 26
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zznn;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/firebase_ml/zznx;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_ml/zznx;",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "Operation can not be null"

    .line 15
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Model resource can not be null"

    .line 16
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zznr;->zzasz:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "MLTaskManager"

    const-string v2, "Execute task"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zznn;->zzlk()Lcom/google/android/gms/internal/firebase_ml/zznn;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase_ml/zznu;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zznu;-><init>(Lcom/google/android/gms/internal/firebase_ml/zznr;Lcom/google/android/gms/internal/firebase_ml/zznx;Ljava/util/concurrent/Callable;)V

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zznn;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zzno;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Lcom/google/android/gms/internal/firebase_ml/zzns;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_ml/zzno<",
            "TT;TS;>;)V"
        }
    .end annotation

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase_ml/zzno;->zzll()Lcom/google/android/gms/internal/firebase_ml/zznx;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zznr;->zzatb:Lcom/google/android/gms/internal/firebase_ml/zzoa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zza(Lcom/google/android/gms/internal/firebase_ml/zznx;)V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/firebase_ml/zzno;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Lcom/google/android/gms/internal/firebase_ml/zzns;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_ml/zzno<",
            "TT;TS;>;)V"
        }
    .end annotation

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase_ml/zzno;->zzll()Lcom/google/android/gms/internal/firebase_ml/zznx;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zznr;->zzatb:Lcom/google/android/gms/internal/firebase_ml/zzoa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzd(Lcom/google/android/gms/internal/firebase_ml/zznx;)V

    :cond_0
    return-void
.end method
