.class public final Lcom/google/android/gms/internal/firebase_ml/zznv;
.super Ljava/lang/Object;


# static fields
.field private static final zzass:Lcom/google/android/gms/common/internal/GmsLogger;

.field private static final zzatg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase_ml/zznv;",
            ">;"
        }
    .end annotation
.end field

.field private static zzath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final zzati:Ljava/lang/String;

.field private final zzatj:Ljava/lang/String;

.field private final zzatk:Ljava/lang/String;

.field private final zzatl:Ljava/lang/String;

.field private final zzatm:Ljava/lang/String;

.field private final zzatn:Lcom/google/android/gms/clearcut/ClearcutLogger;

.field private final zzato:Lcom/google/android/gms/internal/firebase_ml/zzob;

.field private final zzatp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/firebase_ml/zzmd;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final zzatq:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 84
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "MlStatsLogger"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzatg:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzatp:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zznv;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzatq:I

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/FirebaseOptions;->getProjectId()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    if-nez p2, :cond_0

    move-object p2, v0

    .line 6
    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzatk:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/FirebaseOptions;->getGcmSenderId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    move-object p2, v0

    .line 8
    :cond_1
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzatl:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p2

    .line 10
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzatm:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "FIREBASE_ML_SDK"

    .line 12
    invoke-static {p2, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->anonymousLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/clearcut/ClearcutLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzatn:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 13
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzati:Ljava/lang/String;

    .line 14
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase_ml/zznm;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzatj:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase_ml/zzob;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzato:Lcom/google/android/gms/internal/firebase_ml/zzob;

    return-void
.end method

.method public static declared-synchronized zza(Lcom/google/firebase/FirebaseApp;I)Lcom/google/android/gms/internal/firebase_ml/zznv;
    .locals 4

    const-class v0, Lcom/google/android/gms/internal/firebase_ml/zznv;

    monitor-enter v0

    .line 17
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ""

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "_automl"

    goto :goto_0

    :cond_1
    const-string v1, "_model_download"

    goto :goto_0

    :cond_2
    const-string v1, "_natural_language"

    goto :goto_0

    :cond_3
    const-string v1, "_model"

    goto :goto_0

    :cond_4
    const-string v1, "_vision"

    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 30
    :goto_1
    sget-object v2, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzatg:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase_ml/zznv;

    if-nez v3, :cond_6

    .line 32
    new-instance v3, Lcom/google/android/gms/internal/firebase_ml/zznv;

    invoke-direct {v3, p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zznv;-><init>(Lcom/google/firebase/FirebaseApp;I)V

    .line 33
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_6
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final zzeu()Z
    .locals 3

    .line 77
    iget v0, p0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzatq:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzato:Lcom/google/android/gms/internal/firebase_ml/zzob;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzls()Z

    move-result v0

    return v0

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzato:Lcom/google/android/gms/internal/firebase_ml/zzob;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzob;->zzlr()Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized zzlm()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/firebase_ml/zznv;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzath:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 69
    monitor-exit v0

    return-object v1

    .line 70
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v2, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzath:Ljava/util/List;

    const/4 v2, 0x0

    .line 72
    :goto_0
    invoke-virtual {v1}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 73
    invoke-virtual {v1, v2}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v3

    .line 74
    sget-object v4, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzath:Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_ml/zznm;->zza(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzath:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;Lcom/google/android/gms/internal/firebase_ml/zzmd;)V
    .locals 4

    monitor-enter p0

    .line 35
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzeu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    sget-object p1, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p2, "MlStatsLogger"

    const-string v0, "Logging is disabled."

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 38
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;->zzjk()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzld()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NA"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, "NA"

    .line 42
    :cond_2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzmd;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p2

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam;->zzle()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzati:Ljava/lang/String;

    .line 44
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;->zzbe(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzatj:Ljava/lang/String;

    .line 45
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;->zzbf(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzatk:Ljava/lang/String;

    .line 46
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;->zzbg(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzatl:Ljava/lang/String;

    .line 47
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;->zzbj(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzatm:Ljava/lang/String;

    .line 48
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;->zzbk(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    move-result-object v1

    .line 49
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;->zzbi(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    move-result-object v0

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzlm()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;->zzr(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zznl;->zzli()Lcom/google/android/gms/internal/firebase_ml/zznl;

    move-result-object v1

    const-string v2, "firebase-ml-common"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zznl;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;->zzbh(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;

    move-result-object v0

    .line 52
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzam$zza;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrq()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs;

    .line 54
    sget-object p2, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzass:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v0, "MlStatsLogger"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Logging FirebaseMlSdkLogEvent "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzatn:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zztg;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->log()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/firebase_ml/zzny;Lcom/google/android/gms/internal/firebase_ml/zzmd;)V
    .locals 7

    monitor-enter p0

    .line 57
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzeu()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 58
    monitor-exit p0

    return-void

    .line 59
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 60
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzatp:Ljava/util/Map;

    .line 61
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzatp:Ljava/util/Map;

    .line 62
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v0, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_3

    .line 64
    monitor-exit p0

    return-void

    .line 65
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_ml/zznv;->zzatp:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase_ml/zzny;->zzlo()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zznv;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzs$zza;Lcom/google/android/gms/internal/firebase_ml/zzmd;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
