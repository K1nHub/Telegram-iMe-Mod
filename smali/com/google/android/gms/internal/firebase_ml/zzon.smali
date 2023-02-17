.class public Lcom/google/android/gms/internal/firebase_ml/zzon;
.super Ljava/lang/Object;


# static fields
.field private static final zzass:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field private final zzaup:Lcom/google/android/gms/internal/firebase_ml/zzpk;

.field public final zzauq:Lcom/google/android/gms/internal/firebase_ml/zzoj;

.field private final zzaur:Lcom/google/android/gms/internal/firebase_ml/zzop;

.field protected zzaus:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 74
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelLoader"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzpk;Lcom/google/android/gms/internal/firebase_ml/zzoj;Lcom/google/android/gms/internal/firebase_ml/zzop;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/google/android/gms/internal/firebase_ml/zzos;->zzauz:I

    iput v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzaus:I

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "At least one of RemoteModelLoader or LocalModelLoader must be non-null."

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzaup:Lcom/google/android/gms/internal/firebase_ml/zzpk;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzauq:Lcom/google/android/gms/internal/firebase_ml/zzoj;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzaur:Lcom/google/android/gms/internal/firebase_ml/zzop;

    return-void
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/internal/firebase_ml/zzoq;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_ml/zzoq;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_ml/zzmc;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzaup:Lcom/google/android/gms/internal/firebase_ml/zzpk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 41
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzpk;->load()Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_1
    .catch Lcom/google/firebase/ml/common/FirebaseMLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 48
    :try_start_2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzoq;->zza(Ljava/nio/MappedByteBuffer;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :try_start_3
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p2, "ModelLoader"

    const-string v0, "Remote model source is loaded successfully"

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p1, 0x1

    .line 54
    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    .line 51
    :try_start_4
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafm:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    throw p1

    .line 55
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v0, "ModelLoader"

    const-string v1, "Remote model source can NOT be loaded, try local model."

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafo:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_1
    move-exception p1

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelLoader"

    const-string v2, "Remote model source can NOT be loaded, try local model."

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafn:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 57
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzb(Lcom/google/android/gms/internal/firebase_ml/zzoq;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_ml/zzoq;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_ml/zzmc;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzauq:Lcom/google/android/gms/internal/firebase_ml/zzoj;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzoj;->load()Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 61
    :try_start_1
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzoq;->zza(Ljava/nio/MappedByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :try_start_2
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p2, "ModelLoader"

    const-string v0, "Local model source is loaded successfully"

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    .line 67
    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    .line 64
    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafl:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    const/4 p1, 0x0

    .line 68
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final zzlx()Ljava/lang/String;
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzauq:Lcom/google/android/gms/internal/firebase_ml/zzoj;

    const-string v1, "unspecified"

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzoj;->zzlv()Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->getModelName()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzaup:Lcom/google/android/gms/internal/firebase_ml/zzpk;

    if-nez v2, :cond_1

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase_ml/zzpk;->zzmp()Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUniqueModelNameForPersist()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "Local model name: %s. Remote model name: %s. "

    .line 73
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/firebase_ml/zzoq;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    monitor-enter p0

    .line 13
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 14
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzon;->zza(Lcom/google/android/gms/internal/firebase_ml/zzoq;Ljava/util/List;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v2

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v4, v3

    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    .line 18
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzaur:Lcom/google/android/gms/internal/firebase_ml/zzop;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzop;->zze(Ljava/util/List;)V

    .line 19
    sget p1, Lcom/google/android/gms/internal/firebase_ml/zzos;->zzava:I

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzaus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    .line 21
    :cond_0
    :try_start_3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzoq;Ljava/util/List;)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    if-eqz v1, :cond_1

    .line 25
    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzaur:Lcom/google/android/gms/internal/firebase_ml/zzop;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzop;->zze(Ljava/util/List;)V

    .line 26
    sget p1, Lcom/google/android/gms/internal/firebase_ml/zzos;->zzavb:I

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzaus:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 28
    :cond_1
    :try_start_5
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafk:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzaur:Lcom/google/android/gms/internal/firebase_ml/zzop;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzop;->zze(Ljava/util/List;)V

    .line 30
    sget p1, Lcom/google/android/gms/internal/firebase_ml/zzos;->zzauz:I

    iput p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzaus:I

    const/16 p1, 0xe

    if-eqz v4, :cond_3

    .line 32
    new-instance v0, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v1, "Remote model load failed with the model options: "

    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzlx()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_2
    invoke-direct {v0, v1, p1, v4}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    :cond_3
    if-eqz v2, :cond_5

    .line 35
    new-instance v0, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v1, "Local model load failed with the model options: "

    .line 36
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzlx()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    :goto_3
    invoke-direct {v0, v1, p1, v2}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    .line 37
    :cond_5
    new-instance v0, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v1, "Cannot load any model with the model options: "

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzlx()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_4
    invoke-direct {v0, v1, p1}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzlw()Z
    .locals 2

    monitor-enter p0

    .line 39
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzon;->zzaus:I

    sget v1, Lcom/google/android/gms/internal/firebase_ml/zzos;->zzava:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
