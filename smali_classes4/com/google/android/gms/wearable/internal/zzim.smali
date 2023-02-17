.class public final Lcom/google/android/gms/wearable/internal/zzim;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# instance fields
.field private final zze:Ljava/util/concurrent/ExecutorService;

.field private final zzf:Lcom/google/android/gms/wearable/internal/zzff;

.field private final zzg:Lcom/google/android/gms/wearable/internal/zzff;

.field private final zzh:Lcom/google/android/gms/wearable/internal/zzff;

.field private final zzi:Lcom/google/android/gms/wearable/internal/zzff;

.field private final zzj:Lcom/google/android/gms/wearable/internal/zzff;

.field private final zzk:Lcom/google/android/gms/wearable/internal/zzff;

.field private final zzl:Lcom/google/android/gms/wearable/internal/zzff;

.field private final zzm:Lcom/google/android/gms/wearable/internal/zzff;

.field private final zzn:Lcom/google/android/gms/wearable/internal/zzff;

.field private final zzo:Lcom/google/android/gms/wearable/internal/zzff;

.field private final zzp:Lcom/google/android/gms/wearable/internal/zziu;

.field private final zzq:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/ClientSettings;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzh;->zza()Lcom/google/android/gms/internal/wearable/zze;

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zziu;->zza(Landroid/content/Context;)Lcom/google/android/gms/wearable/internal/zziu;

    move-result-object v1

    const/16 v5, 0xe

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p5

    move-object v7, p3

    move-object v8, p4

    .line 4
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    new-instance p2, Lcom/google/android/gms/wearable/internal/zzff;

    .line 5
    invoke-direct {p2}, Lcom/google/android/gms/wearable/internal/zzff;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzf:Lcom/google/android/gms/wearable/internal/zzff;

    new-instance p2, Lcom/google/android/gms/wearable/internal/zzff;

    .line 6
    invoke-direct {p2}, Lcom/google/android/gms/wearable/internal/zzff;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzg:Lcom/google/android/gms/wearable/internal/zzff;

    new-instance p2, Lcom/google/android/gms/wearable/internal/zzff;

    .line 7
    invoke-direct {p2}, Lcom/google/android/gms/wearable/internal/zzff;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzh:Lcom/google/android/gms/wearable/internal/zzff;

    new-instance p2, Lcom/google/android/gms/wearable/internal/zzff;

    .line 8
    invoke-direct {p2}, Lcom/google/android/gms/wearable/internal/zzff;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzi:Lcom/google/android/gms/wearable/internal/zzff;

    new-instance p2, Lcom/google/android/gms/wearable/internal/zzff;

    .line 9
    invoke-direct {p2}, Lcom/google/android/gms/wearable/internal/zzff;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzj:Lcom/google/android/gms/wearable/internal/zzff;

    new-instance p2, Lcom/google/android/gms/wearable/internal/zzff;

    .line 10
    invoke-direct {p2}, Lcom/google/android/gms/wearable/internal/zzff;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzk:Lcom/google/android/gms/wearable/internal/zzff;

    new-instance p2, Lcom/google/android/gms/wearable/internal/zzff;

    .line 11
    invoke-direct {p2}, Lcom/google/android/gms/wearable/internal/zzff;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzl:Lcom/google/android/gms/wearable/internal/zzff;

    new-instance p2, Lcom/google/android/gms/wearable/internal/zzff;

    .line 12
    invoke-direct {p2}, Lcom/google/android/gms/wearable/internal/zzff;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzm:Lcom/google/android/gms/wearable/internal/zzff;

    new-instance p2, Lcom/google/android/gms/wearable/internal/zzff;

    .line 13
    invoke-direct {p2}, Lcom/google/android/gms/wearable/internal/zzff;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzn:Lcom/google/android/gms/wearable/internal/zzff;

    new-instance p2, Lcom/google/android/gms/wearable/internal/zzff;

    .line 14
    invoke-direct {p2}, Lcom/google/android/gms/wearable/internal/zzff;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzo:Lcom/google/android/gms/wearable/internal/zzff;

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzim;->zze:Ljava/util/concurrent/ExecutorService;

    iput-object v1, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzp:Lcom/google/android/gms/wearable/internal/zziu;

    new-instance p2, Ljava/io/File;

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string p3, "wearos_assets"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    const-string p3, "streamtmp"

    .line 17
    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_0

    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    .line 20
    aget-object p5, p2, p4

    .line 21
    invoke-virtual {p5}, Ljava/io/File;->delete()Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzq:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V
    .locals 6

    const-string v0, "com.google.android.wearable.app.cn"

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzim;->requiresGooglePlayServices()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    .line 4
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "com.google.android.wearable.api.version"

    .line 5
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x8339c0

    if-ge v1, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The Wear OS app is out of date. Requires API version 8600000 but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "WearableClient"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.android.wearable.app.cn.UPDATE_ANDROID_WEAR"

    .line 10
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 12
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v5, 0x10000

    .line 13
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "market://details"

    .line 14
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "id"

    .line 16
    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 18
    invoke-direct {v4, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 13
    :goto_1
    sget v0, Lcom/google/android/gms/internal/wearable/zzd;->zza:I

    .line 19
    invoke-static {v1, v2, v4, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x6

    .line 20
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->triggerNotAvailable(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->triggerNotAvailable(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;ILandroid/app/PendingIntent;)V

    return-void

    .line 6
    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    return-void
.end method

.method protected final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/wearable/internal/zzfb;

    if-eqz v1, :cond_1

    .line 3
    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzfb;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzfb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/wearable/internal/zzfb;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/wearable/zze;->zzo:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0x8339c0

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.wearable.BIND"

    return-object v0
.end method

.method protected final getStartServicePackage()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzp:Lcom/google/android/gms/wearable/internal/zziu;

    const-string v1, "com.google.android.wearable.app.cn"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/internal/zziu;->zzb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "com.google.android.gms"

    return-object v0
.end method

.method protected final onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 3

    const-string v0, "WearableClient"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostInitHandler: statusCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzf:Lcom/google/android/gms/wearable/internal/zzff;

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/wearable/internal/zzff;->zzb(Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzg:Lcom/google/android/gms/wearable/internal/zzff;

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/wearable/internal/zzff;->zzb(Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzh:Lcom/google/android/gms/wearable/internal/zzff;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/wearable/internal/zzff;->zzb(Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzj:Lcom/google/android/gms/wearable/internal/zzff;

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/wearable/internal/zzff;->zzb(Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzk:Lcom/google/android/gms/wearable/internal/zzff;

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/wearable/internal/zzff;->zzb(Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzl:Lcom/google/android/gms/wearable/internal/zzff;

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/wearable/internal/zzff;->zzb(Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzm:Lcom/google/android/gms/wearable/internal/zzff;

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/wearable/internal/zzff;->zzb(Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzn:Lcom/google/android/gms/wearable/internal/zzff;

    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/gms/wearable/internal/zzff;->zzb(Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzo:Lcom/google/android/gms/wearable/internal/zzff;

    .line 11
    invoke-virtual {p1, p2}, Lcom/google/android/gms/wearable/internal/zzff;->zzb(Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzi:Lcom/google/android/gms/wearable/internal/zzff;

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/gms/wearable/internal/zzff;->zzb(Landroid/os/IBinder;)V

    const/4 p1, 0x0

    .line 13
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void
.end method

.method public final requiresGooglePlayServices()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzp:Lcom/google/android/gms/wearable/internal/zziu;

    const-string v1, "com.google.android.wearable.app.cn"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/internal/zziu;->zzb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final usesClientTelemetry()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzA(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/wearable/MessageApi$MessageListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzk:Lcom/google/android/gms/wearable/internal/zzff;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzff;->zzc(Lcom/google/android/gms/wearable/internal/zzim;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzB(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/wearable/MessageClient$RpcService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzl:Lcom/google/android/gms/wearable/internal/zzff;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzff;->zzc(Lcom/google/android/gms/wearable/internal/zzim;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzC(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Landroid/net/Uri;JJ)V
    .locals 12

    move-object v10, p0

    .line 1
    :try_start_0
    iget-object v0, v10, Lcom/google/android/gms/wearable/internal/zzim;->zze:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmp-long v5, p4, v1

    if-ltz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-array v2, v3, [Ljava/lang/Object;

    .line 4
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v5, "startOffset is negative: %s"

    invoke-static {v1, v5, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v1, -0x1

    cmp-long v5, p6, v1

    if-ltz v5, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-array v2, v3, [Ljava/lang/Object;

    .line 5
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "invalid length: %s"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v11, Lcom/google/android/gms/wearable/internal/zzil;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/wearable/internal/zzil;-><init>(Lcom/google/android/gms/wearable/internal/zzim;Landroid/net/Uri;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;JJ)V

    .line 6
    invoke-interface {v0, v11}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    move-object v2, p1

    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V

    .line 8
    throw v0
.end method

.method public final zzp(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;Lcom/google/android/gms/common/api/internal/ListenerHolder;[Landroid/content/IntentFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzo:Lcom/google/android/gms/wearable/internal/zzff;

    invoke-static {p3, p4}, Lcom/google/android/gms/wearable/internal/zzit;->zzk(Lcom/google/android/gms/common/api/internal/ListenerHolder;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzit;

    move-result-object p3

    .line 2
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/wearable/internal/zzff;->zza(Lcom/google/android/gms/wearable/internal/zzim;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/Object;Lcom/google/android/gms/wearable/internal/zzit;)V

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;Lcom/google/android/gms/common/api/internal/ListenerHolder;Ljava/lang/String;[Landroid/content/IntentFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p4, :cond_0

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzh:Lcom/google/android/gms/wearable/internal/zzff;

    invoke-static {p3, p5}, Lcom/google/android/gms/wearable/internal/zzit;->zzm(Lcom/google/android/gms/common/api/internal/ListenerHolder;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzit;

    move-result-object p3

    .line 2
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/google/android/gms/wearable/internal/zzff;->zza(Lcom/google/android/gms/wearable/internal/zzim;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/Object;Lcom/google/android/gms/wearable/internal/zzit;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzhe;

    .line 3
    invoke-direct {v0, p4, p2}, Lcom/google/android/gms/wearable/internal/zzhe;-><init>(Ljava/lang/String;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;)V

    iget-object p2, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzh:Lcom/google/android/gms/wearable/internal/zzff;

    .line 4
    invoke-static {p3, p4, p5}, Lcom/google/android/gms/wearable/internal/zzit;->zzn(Lcom/google/android/gms/common/api/internal/ListenerHolder;Ljava/lang/String;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzit;

    move-result-object p3

    .line 5
    invoke-virtual {p2, p0, p1, v0, p3}, Lcom/google/android/gms/wearable/internal/zzff;->zza(Lcom/google/android/gms/wearable/internal/zzim;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/Object;Lcom/google/android/gms/wearable/internal/zzit;)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/wearable/DataApi$DataListener;Lcom/google/android/gms/common/api/internal/ListenerHolder;[Landroid/content/IntentFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzj:Lcom/google/android/gms/wearable/internal/zzff;

    invoke-static {p3, p4}, Lcom/google/android/gms/wearable/internal/zzit;->zzo(Lcom/google/android/gms/common/api/internal/ListenerHolder;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzit;

    move-result-object p3

    .line 2
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/wearable/internal/zzff;->zza(Lcom/google/android/gms/wearable/internal/zzim;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/Object;Lcom/google/android/gms/wearable/internal/zzit;)V

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/wearable/MessageApi$MessageListener;Lcom/google/android/gms/common/api/internal/ListenerHolder;[Landroid/content/IntentFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzk:Lcom/google/android/gms/wearable/internal/zzff;

    invoke-static {p3, p4}, Lcom/google/android/gms/wearable/internal/zzit;->zzp(Lcom/google/android/gms/common/api/internal/ListenerHolder;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzit;

    move-result-object p3

    .line 2
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/wearable/internal/zzff;->zza(Lcom/google/android/gms/wearable/internal/zzim;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/Object;Lcom/google/android/gms/wearable/internal/zzit;)V

    return-void
.end method

.method public final zzt(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/wearable/MessageClient$RpcService;Lcom/google/android/gms/common/api/internal/ListenerHolder;[Landroid/content/IntentFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzl:Lcom/google/android/gms/wearable/internal/zzff;

    invoke-static {p3, p4}, Lcom/google/android/gms/wearable/internal/zzit;->zzq(Lcom/google/android/gms/common/api/internal/ListenerHolder;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzit;

    move-result-object p3

    .line 2
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/wearable/internal/zzff;->zza(Lcom/google/android/gms/wearable/internal/zzim;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/Object;Lcom/google/android/gms/wearable/internal/zzit;)V

    return-void
.end method

.method public final zzu(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/wearable/Asset;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzfb;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzhz;

    invoke-direct {v1, p1}, Lcom/google/android/gms/wearable/internal/zzhz;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 2
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/wearable/internal/zzfb;->zzr(Lcom/google/android/gms/wearable/internal/zzex;Lcom/google/android/gms/wearable/Asset;)V

    return-void
.end method

.method public final zzv(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/wearable/PutDataRequest;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/wearable/PutDataRequest;->getAssets()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/wearable/Asset;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/wearable/Asset;->zza()[B

    move-result-object v4

    if-nez v4, :cond_0

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/wearable/Asset;->getDigest()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/wearable/Asset;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    if-nez v4, :cond_0

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/wearable/Asset;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/wearable/PutDataRequest;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Put for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " contains invalid asset: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/wearable/PutDataRequest;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/PutDataRequest;->zza(Landroid/net/Uri;)Lcom/google/android/gms/wearable/PutDataRequest;

    move-result-object v0

    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/wearable/PutDataRequest;->getData()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/wearable/PutDataRequest;->setData([B)Lcom/google/android/gms/wearable/PutDataRequest;

    .line 10
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/wearable/PutDataRequest;->isUrgent()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/PutDataRequest;->setUrgent()Lcom/google/android/gms/wearable/PutDataRequest;

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/wearable/PutDataRequest;->getAssets()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/wearable/Asset;

    .line 15
    invoke-virtual {v6}, Lcom/google/android/gms/wearable/Asset;->zza()[B

    move-result-object v7

    const-string v8, "WearableClient"

    if-eqz v7, :cond_6

    .line 16
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x3

    .line 17
    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_5

    .line 18
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aget-object v12, v7, v11

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aget-object v13, v7, v10

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "processAssets: replacing data with FD in asset: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " read:"

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " write:"

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_5
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aget-object v8, v7, v11

    invoke-static {v8}, Lcom/google/android/gms/wearable/Asset;->createFromFd(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Lcom/google/android/gms/wearable/PutDataRequest;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/wearable/PutDataRequest;

    .line 20
    aget-object v5, v7, v10

    invoke-virtual {v6}, Lcom/google/android/gms/wearable/Asset;->zza()[B

    move-result-object v6

    new-instance v7, Ljava/util/concurrent/FutureTask;

    new-instance v8, Lcom/google/android/gms/wearable/internal/zzij;

    .line 21
    invoke-direct {v8, v1, v5, v6}, Lcom/google/android/gms/wearable/internal/zzij;-><init>(Lcom/google/android/gms/wearable/internal/zzim;Landroid/os/ParcelFileDescriptor;[B)V

    invoke-direct {v7, v8}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 22
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/google/android/gms/wearable/internal/zzim;->zze:Ljava/util/concurrent/ExecutorService;

    .line 23
    invoke-interface {v5, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unable to create ParcelFileDescriptor for asset in request: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 24
    :cond_6
    invoke-virtual {v6}, Lcom/google/android/gms/wearable/Asset;->getUri()Landroid/net/Uri;

    move-result-object v7

    const/16 v9, 0xfa5

    const/4 v10, 0x0

    if-eqz v7, :cond_7

    .line 25
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/android/gms/wearable/Asset;->getUri()Landroid/net/Uri;

    move-result-object v11

    const-string v12, "r"

    invoke-virtual {v7, v11, v12}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 26
    invoke-static {v7}, Lcom/google/android/gms/wearable/Asset;->createFromFd(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v7

    .line 27
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Lcom/google/android/gms/wearable/PutDataRequest;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/wearable/PutDataRequest;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 35
    :catch_1
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzid;

    .line 36
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/wearable/internal/zzid;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/util/List;)V

    new-instance v2, Lcom/google/android/gms/wearable/internal/zzgu;

    invoke-direct {v2, v9, v10}, Lcom/google/android/gms/wearable/internal/zzgu;-><init>(ILcom/google/android/gms/wearable/internal/zzdi;)V

    .line 37
    invoke-virtual {v0, v2}, Lcom/google/android/gms/wearable/internal/zza;->zzC(Lcom/google/android/gms/wearable/internal/zzgu;)V

    .line 38
    invoke-virtual {v6}, Lcom/google/android/gms/wearable/Asset;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Couldn\'t resolve asset URI: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 28
    :cond_7
    invoke-virtual {v6}, Lcom/google/android/gms/wearable/Asset;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 29
    :try_start_2
    invoke-virtual {v6}, Lcom/google/android/gms/wearable/Asset;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    iget-object v11, v1, Lcom/google/android/gms/wearable/internal/zzim;->zzq:Ljava/io/File;

    invoke-static {v7, v11}, Lcom/google/android/gms/internal/wearable/zzj;->zza(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Ljava/io/File;

    move-result-object v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/high16 v11, 0x10000000

    .line 30
    :try_start_3
    invoke-static {v7, v11}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    .line 31
    invoke-static {v11}, Lcom/google/android/gms/wearable/Asset;->createFromFd(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v11

    .line 32
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5, v11}, Lcom/google/android/gms/wearable/PutDataRequest;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/wearable/PutDataRequest;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_4

    .line 33
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v7, v10

    :goto_2
    :try_start_4
    const-string v4, "DataItem asset copy failed"

    .line 39
    invoke-static {v8, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzid;

    .line 40
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/wearable/internal/zzid;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/util/List;)V

    new-instance v2, Lcom/google/android/gms/wearable/internal/zzgu;

    invoke-direct {v2, v9, v10}, Lcom/google/android/gms/wearable/internal/zzgu;-><init>(ILcom/google/android/gms/wearable/internal/zzdi;)V

    .line 41
    invoke-virtual {v0, v2}, Lcom/google/android/gms/wearable/internal/zza;->zzC(Lcom/google/android/gms/wearable/internal/zzgu;)V

    .line 42
    invoke-virtual {v6}, Lcom/google/android/gms/wearable/Asset;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t asset from a file descriptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v7, :cond_8

    .line 33
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_8
    return-void

    :catchall_1
    move-exception v0

    move-object v10, v7

    :goto_3
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 43
    :cond_9
    throw v0

    .line 34
    :cond_a
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/wearable/PutDataRequest;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/wearable/PutDataRequest;

    goto/16 :goto_1

    .line 44
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/wearable/internal/zzfb;

    new-instance v5, Lcom/google/android/gms/wearable/internal/zzid;

    invoke-direct {v5, v2, v3}, Lcom/google/android/gms/wearable/internal/zzid;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/util/List;)V

    .line 45
    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/wearable/internal/zzfb;->zzv(Lcom/google/android/gms/wearable/internal/zzex;Lcom/google/android/gms/wearable/PutDataRequest;)V

    return-void
.end method

.method public final zzw(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzim;->zze:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/google/android/gms/wearable/internal/zzik;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/wearable/internal/zzik;-><init>(Lcom/google/android/gms/wearable/internal/zzim;Landroid/net/Uri;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;ZLjava/lang/String;)V

    .line 4
    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 5
    new-instance p3, Lcom/google/android/gms/common/api/Status;

    const/16 p4, 0x8

    invoke-direct {p3, p4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, p3}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V

    .line 6
    throw p2
.end method

.method public final zzx(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzo:Lcom/google/android/gms/wearable/internal/zzff;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzff;->zzc(Lcom/google/android/gms/wearable/internal/zzim;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzy(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzh:Lcom/google/android/gms/wearable/internal/zzff;

    invoke-virtual {p3, p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzff;->zzc(Lcom/google/android/gms/wearable/internal/zzim;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzhe;

    .line 2
    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/wearable/internal/zzhe;-><init>(Ljava/lang/String;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;)V

    iget-object p2, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzh:Lcom/google/android/gms/wearable/internal/zzff;

    .line 3
    invoke-virtual {p2, p0, p1, v0}, Lcom/google/android/gms/wearable/internal/zzff;->zzc(Lcom/google/android/gms/wearable/internal/zzim;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzz(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/wearable/DataApi$DataListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzim;->zzj:Lcom/google/android/gms/wearable/internal/zzff;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzff;->zzc(Lcom/google/android/gms/wearable/internal/zzim;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/Object;)V

    return-void
.end method
