.class public Lorg/telegram/messenger/ApplicationLoader;
.super Landroid/app/Application;
.source "ApplicationLoader.java"


# static fields
.field public static volatile applicationContext:Landroid/content/Context; = null

.field public static volatile applicationHandler:Landroid/os/Handler; = null

.field private static volatile applicationInited:Z = false

.field public static applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader; = null

.field public static canDrawOverlays:Z = false

.field private static connectivityManager:Landroid/net/ConnectivityManager; = null

.field public static volatile currentNetworkInfo:Landroid/net/NetworkInfo; = null

.field public static volatile externalInterfacePaused:Z = true

.field public static isCheckForUpdateCanceled:Z = false

.field public static isCheckForUpdateInProgress:Z = false

.field public static volatile isScreenOn:Z = false

.field private static lastKnownNetworkType:I = -0x1

.field private static lastNetworkCheck:J = -0x1L

.field private static lastNetworkCheckTypeTime:J = 0x0L

.field private static locationServiceProvider:Lorg/telegram/messenger/ILocationServiceProvider; = null

.field public static volatile mainInterfacePaused:Z = true

.field public static volatile mainInterfacePausedStageQueue:Z = true

.field public static volatile mainInterfacePausedStageQueueTime:J = 0x0L

.field public static volatile mainInterfaceStopped:Z = true

.field private static mapsProvider:Lorg/telegram/messenger/IMapsProvider;

.field private static volatile networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private static pushProvider:Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;

.field public static startTime:J


# direct methods
.method public static synthetic $r8$lambda$Y6r52PizaOIrsXdMR309wrb0Qn8()V
    .locals 0

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->lambda$initPushServices$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 354
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/net/ConnectivityManager;
    .locals 1

    .line 69
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$100(Z)V
    .locals 0

    .line 69
    invoke-static {p0}, Lorg/telegram/messenger/ApplicationLoader;->ensureCurrentNetworkGet(Z)V

    return-void
.end method

.method static synthetic access$202(I)I
    .locals 0

    .line 69
    sput p0, Lorg/telegram/messenger/ApplicationLoader;->lastKnownNetworkType:I

    return p0
.end method

.method public static appCenterLog(Ljava/lang/Throwable;)V
    .locals 1

    .line 675
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/ApplicationLoader;->appCenterLogInternal(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static checkForUpdates(Z)V
    .locals 1

    .line 671
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/ApplicationLoader;->checkForUpdatesInternal(Z)V

    return-void
.end method

.method public static checkKoinInit()V
    .locals 0

    .line 81
    :try_start_0
    invoke-static {}, Lorg/koin/java/KoinJavaComponent;->getKoin()Lorg/koin/core/Koin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    :try_start_1
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->initKoin()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method private checkPlayServices()Z
    .locals 2

    const/4 v0, 0x1

    .line 462
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    .line 465
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method private static ensureCurrentNetworkGet()V
    .locals 6

    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 473
    sget-wide v2, Lorg/telegram/messenger/ApplicationLoader;->lastNetworkCheck:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/ApplicationLoader;->ensureCurrentNetworkGet(Z)V

    .line 474
    sput-wide v0, Lorg/telegram/messenger/ApplicationLoader;->lastNetworkCheck:J

    return-void
.end method

.method private static ensureCurrentNetworkGet(Z)V
    .locals 1

    if-nez p0, :cond_0

    .line 478
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    if-nez p0, :cond_2

    .line 480
    :cond_0
    :try_start_0
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez p0, :cond_1

    .line 481
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    sput-object p0, Lorg/telegram/messenger/ApplicationLoader;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 483
    :cond_1
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    sput-object p0, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    .line 484
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p0, v0, :cond_2

    .line 485
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez p0, :cond_2

    .line 486
    new-instance p0, Lorg/telegram/messenger/ApplicationLoader$3;

    invoke-direct {p0}, Lorg/telegram/messenger/ApplicationLoader$3;-><init>()V

    sput-object p0, Lorg/telegram/messenger/ApplicationLoader;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 497
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->connectivityManager:Landroid/net/ConnectivityManager;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public static getApplicationId()Ljava/lang/String;
    .locals 1

    .line 212
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/ApplicationLoader;->onGetApplicationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAutodownloadNetworkType()I
    .locals 7

    const/4 v0, 0x0

    .line 569
    :try_start_0
    invoke-static {v0}, Lorg/telegram/messenger/ApplicationLoader;->ensureCurrentNetworkGet(Z)V

    .line 570
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v1, :cond_0

    return v0

    .line 573
    :cond_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 585
    :cond_1
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x2

    return v0

    .line 574
    :cond_2
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_4

    sget v1, Lorg/telegram/messenger/ApplicationLoader;->lastKnownNetworkType:I

    if-eqz v1, :cond_3

    if-ne v1, v2, :cond_4

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lorg/telegram/messenger/ApplicationLoader;->lastNetworkCheckTypeTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1388

    cmp-long v1, v3, v5

    if-gez v1, :cond_4

    .line 575
    sget v0, Lorg/telegram/messenger/ApplicationLoader;->lastKnownNetworkType:I

    return v0

    .line 577
    :cond_4
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 578
    sput v0, Lorg/telegram/messenger/ApplicationLoader;->lastKnownNetworkType:I

    goto :goto_1

    .line 580
    :cond_5
    sput v2, Lorg/telegram/messenger/ApplicationLoader;->lastKnownNetworkType:I

    .line 582
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lorg/telegram/messenger/ApplicationLoader;->lastNetworkCheckTypeTime:J

    .line 583
    sget v0, Lorg/telegram/messenger/ApplicationLoader;->lastKnownNetworkType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 589
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    return v0
.end method

.method public static getCurrentNetworkType()I
    .locals 1

    .line 595
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isConnectedOrConnectingToWiFi()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 597
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getFilesDirFixed()Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 237
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_1
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 244
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v2, "files"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 248
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 250
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/data/org.telegram.messenger/files"

    const-string/jumbo v3, "org.telegram.messenger"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;
    .locals 2

    .line 178
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->locationServiceProvider:Lorg/telegram/messenger/ILocationServiceProvider;

    if-nez v0, :cond_0

    .line 179
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/ApplicationLoader;->onCreateLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->locationServiceProvider:Lorg/telegram/messenger/ILocationServiceProvider;

    .line 180
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/ILocationServiceProvider;->init(Landroid/content/Context;)V

    .line 182
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->locationServiceProvider:Lorg/telegram/messenger/ILocationServiceProvider;

    return-object v0
.end method

.method public static getMapsProvider()Lorg/telegram/messenger/IMapsProvider;
    .locals 1

    .line 190
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->mapsProvider:Lorg/telegram/messenger/IMapsProvider;

    if-nez v0, :cond_0

    .line 191
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/ApplicationLoader;->onCreateMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->mapsProvider:Lorg/telegram/messenger/IMapsProvider;

    .line 193
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->mapsProvider:Lorg/telegram/messenger/IMapsProvider;

    return-object v0
.end method

.method public static getPushProvider()Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;
    .locals 1

    .line 201
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->pushProvider:Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;

    if-nez v0, :cond_0

    .line 202
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/ApplicationLoader;->onCreatePushProvider()Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->pushProvider:Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;

    .line 204
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->pushProvider:Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;

    return-object v0
.end method

.method public static getVersionCode()I
    .locals 1

    .line 95
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/ApplicationLoader;->onGetVersionCode()I

    move-result v0

    return v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    .line 91
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/ApplicationLoader;->onGetVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initAnalytics()V
    .locals 1

    .line 112
    new-instance v0, Lcom/iMe/storage/data/manager/analytics/providers/FirebaseAnalyticsProvider;

    invoke-direct {v0}, Lcom/iMe/storage/data/manager/analytics/providers/FirebaseAnalyticsProvider;-><init>()V

    invoke-static {v0}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->registerProvider(Lcom/iMe/storage/data/manager/analytics/AnalyticsProvider;)V

    .line 113
    new-instance v0, Lcom/iMe/storage/data/manager/analytics/providers/LoggerProvider;

    invoke-direct {v0}, Lcom/iMe/storage/data/manager/analytics/providers/LoggerProvider;-><init>()V

    invoke-static {v0}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->registerProvider(Lcom/iMe/storage/data/manager/analytics/AnalyticsProvider;)V

    return-void
.end method

.method private static initCryptoSecureServices()V
    .locals 2

    .line 108
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/iMe/common/AppLifecycleObserver;

    invoke-direct {v1}, Lcom/iMe/common/AppLifecycleObserver;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private static initDebugTools()V
    .locals 1

    .line 99
    new-instance v0, Lcom/iMe/utils/debug/FileLogTree;

    invoke-direct {v0}, Lcom/iMe/utils/debug/FileLogTree;-><init>()V

    invoke-static {v0}, Ltimber/log/Timber;->plant(Ltimber/log/Timber$Tree;)V

    .line 100
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/messenger/ApplicationLoader$$ExternalSyntheticLambda0;

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setErrorHandler(Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method private static initGoogleServices()Lcom/google/firebase/FirebaseApp;
    .locals 3

    .line 104
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v1, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/iMe/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {v1}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->getEnvironmentInformation()Lcom/iMe/storage/domain/model/common/EnvironmentInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->getGoogleServiceOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->getEnvironment()Lcom/iMe/storage/domain/model/common/Environment;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    return-object v0
.end method

.method private static initKoin()V
    .locals 1

    .line 117
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iMe/di/KoinJavaAppKt;->start(Landroid/content/Context;)V

    return-void
.end method

.method private initPushServices()V
    .locals 3

    .line 447
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/messenger/ApplicationLoader$$ExternalSyntheticLambda1;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static isConnectedOrConnectingToWiFi()Z
    .locals 4

    const/4 v0, 0x0

    .line 518
    :try_start_0
    invoke-static {v0}, Lorg/telegram/messenger/ApplicationLoader;->ensureCurrentNetworkGet(Z)V

    .line 519
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_2

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_2

    .line 520
    :cond_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 521
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v3, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v1, v3, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v3, :cond_2

    :cond_1
    return v2

    :catch_0
    move-exception v1

    .line 526
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    return v0
.end method

.method public static isConnectedToWiFi()Z
    .locals 4

    const/4 v0, 0x0

    .line 533
    :try_start_0
    invoke-static {v0}, Lorg/telegram/messenger/ApplicationLoader;->ensureCurrentNetworkGet(Z)V

    .line 534
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_1

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_1

    :cond_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v3, :cond_1

    return v2

    :catch_0
    move-exception v1

    .line 538
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public static isConnectionSlow()Z
    .locals 4

    const/4 v0, 0x0

    .line 550
    :try_start_0
    invoke-static {v0}, Lorg/telegram/messenger/ApplicationLoader;->ensureCurrentNetworkGet(Z)V

    .line 551
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_1

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_1

    .line 552
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x7

    if-eq v1, v3, :cond_0

    const/16 v3, 0xb

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :catchall_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static isHuaweiStoreBuild()Z
    .locals 1

    .line 220
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/ApplicationLoader;->isHuaweiBuild()Z

    move-result v0

    return v0
.end method

.method public static isNetworkOnline()Z
    .locals 2

    .line 656
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isNetworkOnlineRealtime()Z

    move-result v0

    .line 657
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v1, :cond_0

    .line 658
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isNetworkOnlineFast()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const-string/jumbo v1, "network online mismatch"

    .line 660
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static isNetworkOnlineFast()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 606
    :try_start_0
    invoke-static {v0}, Lorg/telegram/messenger/ApplicationLoader;->ensureCurrentNetworkGet(Z)V

    .line 607
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v2, :cond_0

    return v1

    .line 610
    :cond_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 614
    :cond_1
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 615
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 618
    :cond_2
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 619
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .line 624
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v1
.end method

.method public static isNetworkOnlineRealtime()Z
    .locals 4

    const/4 v0, 0x1

    .line 632
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 633
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 634
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v0

    :cond_1
    const/4 v2, 0x0

    .line 638
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 640
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    .line 643
    :cond_2
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 644
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    return v0

    :cond_3
    return v2

    :catch_0
    move-exception v1

    .line 649
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static isRoaming()Z
    .locals 2

    const/4 v0, 0x0

    .line 508
    :try_start_0
    invoke-static {v0}, Lorg/telegram/messenger/ApplicationLoader;->ensureCurrentNetworkGet(Z)V

    .line 509
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 511
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static isStandaloneBuild()Z
    .locals 1

    .line 224
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/ApplicationLoader;->isStandalone()Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$initPushServices$0()V
    .locals 2

    .line 448
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getPushProvider()Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;->hasServices()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getPushProvider()Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;->onRequestPushToken()V

    goto :goto_0

    .line 451
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getPushProvider()Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;->getLogTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " APK found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    const-string v0, "__NO_GOOGLE_PLAY_SERVICES__"

    .line 454
    sput-object v0, Lorg/telegram/messenger/SharedConfig;->pushStringStatus:Ljava/lang/String;

    .line 455
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getPushProvider()Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;->getPushType()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/PushListenerController;->sendRegistrationToServer(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static logDualCamera(ZZ)V
    .locals 1

    .line 691
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {v0, p0, p1}, Lorg/telegram/messenger/ApplicationLoader;->logDualCameraInternal(ZZ)V

    return-void
.end method

.method public static postInitApplication()V
    .locals 6

    .line 254
    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->applicationInited:Z

    if-nez v0, :cond_8

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v0, 0x1

    .line 258
    sput-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->applicationInited:Z

    .line 259
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/telegram/messenger/NativeLoader;->initNativeLibs(Landroid/content/Context;)V

    .line 262
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->checkKoinInit()V

    .line 263
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->initGoogleServices()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    .line 264
    sget-object v2, Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;->INSTANCE:Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;

    const-class v3, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v1, v3}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object v1, v2, Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;->firebaseMessaging:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 265
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->initDebugTools()V

    .line 266
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->initCryptoSecureServices()V

    .line 267
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->initAnalytics()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 269
    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->loadConfig()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    :cond_1
    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/CryptoLibsLoader;->initTrustWalletCoreLibrary()V

    .line 274
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 276
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    :goto_1
    :try_start_1
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    sput-object v2, Lorg/telegram/messenger/ApplicationLoader;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 281
    new-instance v2, Lorg/telegram/messenger/ApplicationLoader$1;

    invoke-direct {v2}, Lorg/telegram/messenger/ApplicationLoader$1;-><init>()V

    .line 297
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 298
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 300
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    :goto_2
    :try_start_2
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SCREEN_OFF"

    .line 305
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    new-instance v4, Lorg/telegram/messenger/ScreenReceiver;

    invoke-direct {v4}, Lorg/telegram/messenger/ScreenReceiver;-><init>()V

    .line 307
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    .line 309
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 313
    :goto_3
    :try_start_3
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 314
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    .line 315
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_2

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "screen state = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    .line 319
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 322
    :cond_2
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->loadConfig()V

    .line 323
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/telegram/messenger/SharedPrefsHelper;->init(Landroid/content/Context;)V

    move v2, v1

    :goto_5
    if-ge v2, v3, :cond_5

    .line 326
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    if-nez v2, :cond_3

    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "__FIREBASE_GENERATING_SINCE_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "__"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/telegram/messenger/SharedConfig;->pushStringStatus:Ljava/lang/String;

    goto :goto_6

    .line 330
    :cond_3
    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    .line 332
    :goto_6
    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 334
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 335
    invoke-static {v2}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/SendMessagesHelper;->checkUnsentMessages()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 339
    :cond_5
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    check-cast v0, Lorg/telegram/messenger/ApplicationLoader;

    .line 340
    invoke-direct {v0}, Lorg/telegram/messenger/ApplicationLoader;->initPushServices()V

    .line 341
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_6

    const-string v0, "app initied"

    .line 342
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 345
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    :goto_7
    if-ge v1, v3, :cond_7

    .line 347
    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->checkAppAccount()V

    .line 348
    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 350
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/BillingController;->startConnection()V

    return-void

    .line 255
    :cond_8
    :goto_8
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->checkKoinInit()V

    return-void
.end method

.method public static startAppCenter(Landroid/app/Activity;)V
    .locals 1

    .line 667
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/ApplicationLoader;->startAppCenterInternal(Landroid/app/Activity;)V

    return-void
.end method

.method public static startPushService()V
    .locals 4

    .line 415
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pushService"

    .line 417
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 418
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 420
    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "keepAliveService"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 424
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/NotificationsService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 429
    :cond_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/NotificationsService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :catchall_0
    :goto_1
    return-void
.end method

.method public static useLessData()Z
    .locals 1

    .line 544
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->ensureCurrentNetworkGet()V

    .line 545
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->forceLessData:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isConnectionSlow()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected appCenterLogInternal(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 173
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 174
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public checkApkInstallPermissions(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected checkForUpdatesInternal(Z)V
    .locals 0

    return-void
.end method

.method public dismissAppUpdateDialog()V
    .locals 0

    return-void
.end method

.method public dismissCheckAppUpdateDialog()V
    .locals 0

    return-void
.end method

.method protected isHuaweiBuild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isStandalone()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected logDualCameraInternal(ZZ)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 435
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 437
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LocaleController;->onDeviceConfigurationChange(Landroid/content/res/Configuration;)V

    .line 438
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 439
    invoke-static {}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->checkScreenCapturerSize()V

    .line 440
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->resetTabletFlag()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 442
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 360
    invoke-static {p0}, Lcom/jakewharton/processphoenix/ProcessPhoenix;->isPhoenixProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 364
    :cond_0
    sput-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    .line 366
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :catchall_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 373
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app start time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lorg/telegram/messenger/ApplicationLoader;->startTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 376
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildVersion = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 378
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 381
    :cond_1
    :goto_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 382
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    .line 385
    :cond_2
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/messenger/NativeLoader;->initNativeLibs(Landroid/content/Context;)V

    .line 387
    :try_start_2
    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->native_setJava(Z)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    .line 391
    new-instance v0, Lorg/telegram/messenger/ApplicationLoader$2;

    invoke-direct {v0, p0, p0}, Lorg/telegram/messenger/ApplicationLoader$2;-><init>(Lorg/telegram/messenger/ApplicationLoader;Landroid/app/Application;)V

    .line 401
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_3

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "load libs time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lorg/telegram/messenger/ApplicationLoader;->startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 405
    :cond_3
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    .line 407
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/messenger/ApplicationLoader$$ExternalSyntheticLambda2;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 409
    invoke-static {}, Lorg/telegram/ui/LauncherIconController;->tryFixLauncherIconIfNeeded()V

    .line 410
    invoke-static {}, Lorg/telegram/messenger/ProxyRotationController;->init()V

    .line 411
    invoke-static {p0}, Lcom/iMe/storage/data/manager/FlipperManager;->start(Landroid/content/Context;)V

    return-void

    .line 389
    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t load native libraries "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " lookup folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/NativeLoader;->getAbiFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onCreateLocationServiceProvider()Lorg/telegram/messenger/ILocationServiceProvider;
    .locals 1

    .line 186
    new-instance v0, Lorg/telegram/messenger/GoogleLocationProvider;

    invoke-direct {v0}, Lorg/telegram/messenger/GoogleLocationProvider;-><init>()V

    return-object v0
.end method

.method protected onCreateMapsProvider()Lorg/telegram/messenger/IMapsProvider;
    .locals 1

    .line 197
    new-instance v0, Lorg/telegram/messenger/GoogleMapsProvider;

    invoke-direct {v0}, Lorg/telegram/messenger/GoogleMapsProvider;-><init>()V

    return-object v0
.end method

.method protected onCreatePushProvider()Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;
    .locals 1

    .line 208
    sget-object v0, Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;->INSTANCE:Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;

    return-object v0
.end method

.method protected onGetApplicationId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onGetVersionCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onGetVersionName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public openApkInstall(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public showUpdateAppPopup(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;ILorg/telegram/ui/IUpdateLayout;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected startAppCenterInternal(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public takeUpdateLayout(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Lorg/telegram/ui/IUpdateLayout;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
