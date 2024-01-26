.class public final Lcom/google/android/gms/internal/mlkit_common/zzss;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.10.0"


# static fields
.field private static zza:Lcom/google/android/gms/internal/mlkit_common/zzaq;

.field private static final zzb:Lcom/google/android/gms/internal/mlkit_common/zzat;


# instance fields
.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/internal/mlkit_common/zzsk;

.field private final zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

.field private final zzg:Lcom/google/android/gms/tasks/Task;

.field private final zzh:Lcom/google/android/gms/tasks/Task;

.field private final zzi:Ljava/lang/String;

.field private final zzj:I

.field private final zzk:Ljava/util/Map;

.field private final zzl:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "optional-module-barcode"

    const-string v1, "com.google.android.gms.vision.barcode"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzat;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzat;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_common/zzsk;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzk:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzl:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzc:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzd:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zze:Lcom/google/android/gms/internal/mlkit_common/zzsk;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zztg;->zza()Lcom/google/android/gms/internal/mlkit_common/zztg;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzi:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzsp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzsp;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzss;)V

    .line 7
    invoke-virtual {p3, v0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 8
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzsq;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/mlkit_common/zzsq;-><init>(Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;)V

    invoke-virtual {p3, v0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzh:Lcom/google/android/gms/tasks/Task;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzat;

    .line 9
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_common/zzat;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 10
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_common/zzat;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 11
    invoke-static {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzj:I

    return-void
.end method

.method private static declared-synchronized zzh()Lcom/google/android/gms/internal/mlkit_common/zzaq;
    .locals 5

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzss;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzss;->zza:Lcom/google/android/gms/internal/mlkit_common/zzaq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzan;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_common/zzan;-><init>()V

    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-virtual {v1}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 3
    invoke-virtual {v1, v3}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v4

    .line 4
    invoke-static {v4}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->languageTagFromLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_common/zzan;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzan;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_common/zzan;->zzc()Lcom/google/android/gms/internal/mlkit_common/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/mlkit_common/zzss;->zza:Lcom/google/android/gms/internal/mlkit_common/zzaq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzre;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzre;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzre;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzre;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzre;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzd:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzre;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzre;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzh()Lcom/google/android/gms/internal/mlkit_common/zzaq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzre;->zzh(Lcom/google/android/gms/internal/mlkit_common/zzaq;)Lcom/google/android/gms/internal/mlkit_common/zzre;

    .line 4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzre;->zzg(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_common/zzre;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzre;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzre;

    .line 6
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_common/zzre;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzre;

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzh:Lcom/google/android/gms/tasks/Task;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzh:Lcom/google/android/gms/tasks/Task;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    .line 9
    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->getMlSdkInstanceId()Ljava/lang/String;

    move-result-object p1

    .line 10
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzre;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzre;

    const/16 p1, 0xa

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzre;->zzd(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_common/zzre;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzj:I

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzre;->zzk(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_common/zzre;

    return-object v0
.end method

.method private final zzj()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzg:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzi:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/internal/LibraryVersion;->getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final synthetic zza()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/internal/LibraryVersion;->getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/mlkit_common/zzsj;Lcom/google/android/gms/internal/mlkit_common/zzng;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzsj;->zza(Lcom/google/android/gms/internal/mlkit_common/zzng;)Lcom/google/android/gms/internal/mlkit_common/zzsj;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_common/zzsj;->zzd()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzre;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzsj;->zzc(Lcom/google/android/gms/internal/mlkit_common/zzre;)Lcom/google/android/gms/internal/mlkit_common/zzsj;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zze:Lcom/google/android/gms/internal/mlkit_common/zzsk;

    .line 3
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/mlkit_common/zzsk;->zza(Lcom/google/android/gms/internal/mlkit_common/zzsj;)V

    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/mlkit_common/zzsj;Lcom/google/android/gms/internal/mlkit_common/zzsu;Lcom/google/mlkit/common/model/RemoteModel;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzng;->zzaW:Lcom/google/android/gms/internal/mlkit_common/zzng;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzsj;->zza(Lcom/google/android/gms/internal/mlkit_common/zzng;)Lcom/google/android/gms/internal/mlkit_common/zzsj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/zzsu;->zze()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzj()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzre;

    move-result-object v0

    .line 4
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzsj;->zzc(Lcom/google/android/gms/internal/mlkit_common/zzre;)Lcom/google/android/gms/internal/mlkit_common/zzsj;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzf:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    .line 5
    invoke-static {p3, v0, p2}, Lcom/google/android/gms/internal/mlkit_common/zzte;->zza(Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_common/zzsu;)Lcom/google/android/gms/internal/mlkit_common/zznn;

    move-result-object p2

    .line 6
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzsj;->zzb(Lcom/google/android/gms/internal/mlkit_common/zznn;)Lcom/google/android/gms/internal/mlkit_common/zzsj;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzss;->zze:Lcom/google/android/gms/internal/mlkit_common/zzsk;

    .line 7
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/mlkit_common/zzsk;->zza(Lcom/google/android/gms/internal/mlkit_common/zzsj;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_common/zzsj;Lcom/google/android/gms/internal/mlkit_common/zzng;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzj()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->workerThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzso;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_common/zzso;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzss;Lcom/google/android/gms/internal/mlkit_common/zzsj;Lcom/google/android/gms/internal/mlkit_common/zzng;Ljava/lang/String;)V

    .line 3
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/mlkit_common/zzsj;Lcom/google/mlkit/common/model/RemoteModel;ZI)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzsu;->zzh()Lcom/google/android/gms/internal/mlkit_common/zzst;

    move-result-object p3

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/mlkit_common/zzst;->zzf(Z)Lcom/google/android/gms/internal/mlkit_common/zzst;

    .line 3
    invoke-virtual {p2}, Lcom/google/mlkit/common/model/RemoteModel;->getModelType()Lcom/google/mlkit/common/sdkinternal/ModelType;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/mlkit_common/zzst;->zzd(Lcom/google/mlkit/common/sdkinternal/ModelType;)Lcom/google/android/gms/internal/mlkit_common/zzst;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zznl;->zzi:Lcom/google/android/gms/internal/mlkit_common/zznl;

    .line 4
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/mlkit_common/zzst;->zza(Lcom/google/android/gms/internal/mlkit_common/zznl;)Lcom/google/android/gms/internal/mlkit_common/zzst;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zznf;->zzo:Lcom/google/android/gms/internal/mlkit_common/zznf;

    .line 5
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/mlkit_common/zzst;->zzb(Lcom/google/android/gms/internal/mlkit_common/zznf;)Lcom/google/android/gms/internal/mlkit_common/zzst;

    .line 6
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/mlkit_common/zzst;->zzc(I)Lcom/google/android/gms/internal/mlkit_common/zzst;

    .line 7
    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_common/zzst;->zzh()Lcom/google/android/gms/internal/mlkit_common/zzsu;

    move-result-object p3

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzg(Lcom/google/android/gms/internal/mlkit_common/zzsj;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_common/zzsu;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/mlkit_common/zzsj;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_common/zznf;ZLcom/google/mlkit/common/sdkinternal/ModelType;Lcom/google/android/gms/internal/mlkit_common/zznl;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzsu;->zzh()Lcom/google/android/gms/internal/mlkit_common/zzst;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/mlkit_common/zzst;->zzf(Z)Lcom/google/android/gms/internal/mlkit_common/zzst;

    .line 3
    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/mlkit_common/zzst;->zzd(Lcom/google/mlkit/common/sdkinternal/ModelType;)Lcom/google/android/gms/internal/mlkit_common/zzst;

    .line 4
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/mlkit_common/zzst;->zzb(Lcom/google/android/gms/internal/mlkit_common/zznf;)Lcom/google/android/gms/internal/mlkit_common/zzst;

    .line 5
    invoke-virtual {v0, p6}, Lcom/google/android/gms/internal/mlkit_common/zzst;->zza(Lcom/google/android/gms/internal/mlkit_common/zznl;)Lcom/google/android/gms/internal/mlkit_common/zzst;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzst;->zzh()Lcom/google/android/gms/internal/mlkit_common/zzsu;

    move-result-object p3

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzg(Lcom/google/android/gms/internal/mlkit_common/zzsj;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_common/zzsu;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/mlkit_common/zzsj;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_common/zzsu;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->workerThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzsr;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/google/android/gms/internal/mlkit_common/zzsr;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzss;Lcom/google/android/gms/internal/mlkit_common/zzsj;Lcom/google/android/gms/internal/mlkit_common/zzsu;Lcom/google/mlkit/common/model/RemoteModel;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
