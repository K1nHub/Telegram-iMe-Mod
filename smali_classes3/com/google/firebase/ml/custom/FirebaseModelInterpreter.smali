.class public final Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static zzatg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/firebase_ml/zznw<",
            "Lcom/google/firebase/ml/custom/FirebaseModelOptions;",
            ">;",
            "Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaxd:Lcom/google/android/gms/internal/firebase_ml/zznr;

.field private final zzaxe:Lcom/google/android/gms/internal/firebase_ml/zzpr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;->zzatg:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/custom/FirebaseModelOptions;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p2}, Lcom/google/firebase/ml/custom/FirebaseModelOptions;->zzmv()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/firebase/ml/custom/FirebaseModelOptions;->zzmw()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "FirebaseModelOptions should be set with at least one Model"

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase_ml/zzob;

    .line 8
    invoke-static {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;

    move-result-object v0

    .line 9
    invoke-virtual {p2}, Lcom/google/firebase/ml/custom/FirebaseModelOptions;->zzmv()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p2}, Lcom/google/firebase/ml/custom/FirebaseModelOptions;->zzmw()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v1, :cond_2

    move-object v4, v3

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v0, v1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;->getLocalModel(Ljava/lang/String;)Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    move-result-object v4

    :goto_2
    if-nez v2, :cond_3

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {v0, v2}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;->getNonBaseRemoteModel(Ljava/lang/String;)Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;

    move-result-object v3

    :goto_3
    const/4 v0, 0x3

    if-eqz v1, :cond_5

    if-nez v4, :cond_5

    .line 14
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafq:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    invoke-static {v1, p1, v3, v4}, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;)V

    .line 15
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v1, "Local model is not registered: "

    .line 16
    invoke-virtual {p2}, Lcom/google/firebase/ml/custom/FirebaseModelOptions;->zzmv()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_4
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-direct {p1, p2, v0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    if-eqz v2, :cond_9

    if-nez v3, :cond_7

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafq:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    invoke-static {v1, p1, v3, v4}, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;)V

    .line 20
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string v1, "Remote model is not registered: "

    .line 21
    invoke-virtual {p2}, Lcom/google/firebase/ml/custom/FirebaseModelOptions;->zzmw()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_6
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-direct {p1, p2, v0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 22
    :cond_7
    invoke-virtual {v3}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->isBaseModel()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_6

    .line 23
    :cond_8
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzafr:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    invoke-static {p2, p1, v3, v4}, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;)V

    .line 24
    new-instance p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    const-string p2, "You are trying to use a Base Model as a Custom model. Please make sure you passed in the correct model name."

    invoke-direct {p1, p2, v0}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 25
    :cond_9
    :goto_6
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzpr;

    .line 26
    invoke-virtual {p2}, Lcom/google/firebase/ml/custom/FirebaseModelOptions;->zzmx()Z

    move-result p2

    invoke-direct {v0, p1, v4, v3, p2}, Lcom/google/android/gms/internal/firebase_ml/zzpr;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Z)V

    iput-object v0, p0, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;->zzaxe:Lcom/google/android/gms/internal/firebase_ml/zzpr;

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zznr;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase_ml/zznr;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;->zzaxd:Lcom/google/android/gms/internal/firebase_ml/zznr;

    .line 28
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zznr;->zza(Lcom/google/android/gms/internal/firebase_ml/zzno;)V

    .line 29
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzmc;->zzaet:Lcom/google/android/gms/internal/firebase_ml/zzmc;

    invoke-static {p2, p1, v3, v4}, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/google/firebase/ml/custom/FirebaseModelOptions;)Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    const-class v0, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;

    monitor-enter v0

    .line 31
    :try_start_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/custom/FirebaseModelOptions;)Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/custom/FirebaseModelOptions;)Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    const-class v0, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;

    monitor-enter v0

    :try_start_0
    const-string v1, "Please provide a valid FirebaseApp"

    .line 32
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Please provide a valid FirebaseModelOptions"

    .line 33
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/firebase_ml/zznw;->zzj(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zznw;

    move-result-object v1

    .line 36
    sget-object v2, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;->zzatg:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    sget-object p0, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;->zzatg:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 38
    :cond_0
    :try_start_1
    new-instance v2, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;

    invoke-direct {v2, p0, p1}, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/custom/FirebaseModelOptions;)V

    .line 39
    sget-object p0, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;->zzatg:Ljava/util/Map;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase_ml/zzmc;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;)V
    .locals 1

    .line 53
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzjx()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 55
    sget-object p3, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzauw:Lcom/google/android/gms/internal/firebase_ml/zzor;

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzox;->zza(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/android/gms/internal/firebase_ml/zzor;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 57
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzauw:Lcom/google/android/gms/internal/firebase_ml/zzor;

    invoke-virtual {p3, p2}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;->zza(Lcom/google/android/gms/internal/firebase_ml/zzor;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    move-result-object v0

    .line 58
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzo;->zzja()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzo$zza;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzo$zza;->zzg(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzo$zza;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzo$zza;->zzc(Lcom/google/android/gms/internal/firebase_ml/zzmc;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzo$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrq()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    check-cast p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzo;

    const/4 p2, 0x2

    .line 59
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/firebase/FirebaseApp;I)Lcom/google/android/gms/internal/firebase_ml/zznv;

    move-result-object p1

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs;->zzjl()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p2

    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzle()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    move-result-object p3

    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzpr;->zzaxq:Ljava/lang/String;

    .line 62
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;->zzbi(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    move-result-object p3

    .line 63
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p2

    .line 64
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzo;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p0

    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zzmd;->zzaie:Lcom/google/android/gms/internal/firebase_ml/zzmd;

    .line 65
    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;Lcom/google/android/gms/internal/firebase_ml/zzmd;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;->zzaxd:Lcom/google/android/gms/internal/firebase_ml/zznr;

    iget-object v1, p0, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;->zzaxe:Lcom/google/android/gms/internal/firebase_ml/zzpr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zznr;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzno;)V

    return-void
.end method

.method public final run(Lcom/google/firebase/ml/custom/FirebaseModelInputs;Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/ml/custom/FirebaseModelInputs;",
            "Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/ml/custom/FirebaseModelOutputs;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    const-string v0, "Please provide valid (non-null) inputs"

    .line 44
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Please provide valid (non-null) input and output options"

    .line 45
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;->zzaxd:Lcom/google/android/gms/internal/firebase_ml/zznr;

    iget-object v1, p0, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;->zzaxe:Lcom/google/android/gms/internal/firebase_ml/zzpr;

    new-instance v2, Lcom/google/android/gms/internal/firebase_ml/zzpn;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzpn;-><init>(Lcom/google/firebase/ml/custom/FirebaseModelInputs;Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zznr;->zza(Lcom/google/android/gms/internal/firebase_ml/zzno;Lcom/google/android/gms/internal/firebase_ml/zzns;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
