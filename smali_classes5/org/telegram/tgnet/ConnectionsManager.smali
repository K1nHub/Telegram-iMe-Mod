.class public Lorg/telegram/tgnet/ConnectionsManager;
.super Lorg/telegram/messenger/BaseController;
.source "ConnectionsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;,
        Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;,
        Lorg/telegram/tgnet/ConnectionsManager$GoogleDnsLoadTask;,
        Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask;,
        Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;,
        Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field public static final CPU_COUNT:I

.field public static final ConnectionStateConnected:I = 0x3

.field public static final ConnectionStateConnecting:I = 0x1

.field public static final ConnectionStateConnectingToProxy:I = 0x4

.field public static final ConnectionStateUpdating:I = 0x5

.field public static final ConnectionStateWaitingForNetwork:I = 0x2

.field public static final ConnectionTypeDownload:I = 0x2

.field public static final ConnectionTypeDownload2:I = 0x10002

.field public static final ConnectionTypeGeneric:I = 0x1

.field public static final ConnectionTypePush:I = 0x8

.field public static final ConnectionTypeUpload:I = 0x4

.field public static final DEFAULT_DATACENTER_ID:I = 0x7fffffff

.field public static final DNS_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final FileTypeAudio:I = 0x3000000

.field public static final FileTypeFile:I = 0x4000000

.field public static final FileTypePhoto:I = 0x1000000

.field public static final FileTypeVideo:I = 0x2000000

.field private static final Instance:[Lorg/telegram/tgnet/ConnectionsManager;

.field private static final KEEP_ALIVE_SECONDS:I = 0x1e

.field private static final MAXIMUM_POOL_SIZE:I

.field public static final RequestFlagCanCompress:I = 0x4

.field public static final RequestFlagDoNotWaitFloodWait:I = 0x400

.field public static final RequestFlagEnableUnauthorized:I = 0x1

.field public static final RequestFlagFailOnServerErrors:I = 0x2

.field public static final RequestFlagForceDownload:I = 0x20

.field public static final RequestFlagInvokeAfter:I = 0x40

.field public static final RequestFlagNeedQuickAck:I = 0x80

.field public static final RequestFlagTryDifferentDc:I = 0x10

.field public static final RequestFlagWithoutLogin:I = 0x8

.field public static final USE_IPV4_IPV6_RANDOM:B = 0x2t

.field public static final USE_IPV4_ONLY:B = 0x0t

.field public static final USE_IPV6_ONLY:B = 0x1t

.field private static currentTask:Landroid/os/AsyncTask;

.field private static dnsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;",
            ">;"
        }
    .end annotation
.end field

.field private static lastClassGuid:I

.field private static lastDnsRequestTime:J

.field private static resolvingHostnameTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private appPaused:Z

.field private appResumeCount:I

.field private connectionState:I

.field private forceTryIpV6:Z

.field private isUpdating:Z

.field private lastPauseTime:J

.field private lastRequestToken:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static synthetic $r8$lambda$1CQqQgszYUQsRQRuFe8xqQcQqsE(I)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->lambda$onLogout$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4PAKMvk4MVS_gwqTE2ck5_WRghU(Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZJIJILjava/lang/String;IJJ)V
    .locals 0

    invoke-direct/range {p0 .. p21}, Lorg/telegram/tgnet/ConnectionsManager;->lambda$sendRequest$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZJIJILjava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$6d2G5WILAZVBjearmA2QIFbPDgE(Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lorg/telegram/tgnet/ConnectionsManager;->lambda$sendRequest$2(Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$AxKbRSVQjmoDSwTOxDKWhxJVEFg(ILorg/telegram/tgnet/TLRPC$TL_config;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->lambda$onUpdateConfig$12(ILorg/telegram/tgnet/TLRPC$TL_config;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EfMOCjVPsTkJsX5Ec_f6VRT97ig(Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->lambda$getHostByName$11(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$FzxxqUyauK8BvygedGrVLV3VhGc(II)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->lambda$onConnectionStateChanged$6(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$MKbXoQMWVCvx9DM7EMUdgwP4-9Q(Lorg/telegram/tgnet/ConnectionsManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->lambda$setIsUpdating$13(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q7f5lqP0y4a_f5lEgUFSHUisrqA(I)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->lambda$onUpdate$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WXaEGclxuhltTlOpxgh8n1RqY0k(ILorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->lambda$onUnparsedMessageReceived$3(ILorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gOm1F9zd2zundI13c0KfGUC_Igs(II)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->lambda$onRequestNewServerIpAndPort$9(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$ib71F1q99ToFRubQ9aGPYJxbSKQ(Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/RequestDelegateTimestamp;J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/telegram/tgnet/ConnectionsManager;->lambda$sendRequest$0(Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/RequestDelegateTimestamp;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$jBkbOpE65qrQM2HoZg1oE3F70B8(IZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->lambda$onRequestNewServerIpAndPort$8(IZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$qN5_ykWab6zX6YejMuelnFGOx7Q()V
    .locals 0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->lambda$onProxyError$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$ymO4sUr2LUfwaqEBWF3dBnSn0VM(I)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->lambda$onSessionCreated$5(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 11

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/tgnet/ConnectionsManager;->resolvingHostnameTasks:Ljava/util/HashMap;

    .line 108
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lorg/telegram/tgnet/ConnectionsManager;->CPU_COUNT:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x4

    .line 109
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sput v4, Lorg/telegram/tgnet/ConnectionsManager;->CORE_POOL_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    add-int/lit8 v5, v0, 0x1

    .line 110
    sput v5, Lorg/telegram/tgnet/ConnectionsManager;->MAXIMUM_POOL_SIZE:I

    .line 112
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x80

    invoke-direct {v9, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v9, Lorg/telegram/tgnet/ConnectionsManager;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 113
    new-instance v10, Lorg/telegram/tgnet/ConnectionsManager$1;

    invoke-direct {v10}, Lorg/telegram/tgnet/ConnectionsManager$1;-><init>()V

    sput-object v10, Lorg/telegram/tgnet/ConnectionsManager;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 124
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1e

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 125
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 126
    sput-object v0, Lorg/telegram/tgnet/ConnectionsManager;->DNS_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/tgnet/ConnectionsManager;->dnsCache:Ljava/util/HashMap;

    .line 153
    sput v1, Lorg/telegram/tgnet/ConnectionsManager;->lastClassGuid:I

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/tgnet/ConnectionsManager;

    .line 155
    sput-object v0, Lorg/telegram/tgnet/ConnectionsManager;->Instance:[Lorg/telegram/tgnet/ConnectionsManager;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 20

    move-object/from16 v13, p0

    move/from16 v0, p1

    const-string v1, "SDK "

    const-string v2, "App version unknown"

    const-string v3, "Android unknown"

    const-string v4, "en"

    .line 170
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v13, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    const/4 v5, 0x1

    .line 97
    iput-boolean v5, v13, Lorg/telegram/tgnet/ConnectionsManager;->appPaused:Z

    .line 100
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v6, v13, Lorg/telegram/tgnet/ConnectionsManager;->lastRequestToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 171
    iget v5, v13, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->native_getConnectionState(I)I

    move-result v5

    iput v5, v13, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    .line 177
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v5

    if-eqz v0, :cond_0

    .line 179
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "account"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-object v5, v6

    .line 182
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    .line 183
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/tgnet/ConnectionsManager;->isPushConnectionEnabled()Z

    move-result v16

    const/4 v0, 0x0

    .line 185
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getSystemLocaleStringIso639()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 186
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getLocaleStringIso639()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 187
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 188
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 189
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 190
    sget-boolean v10, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v10, :cond_1

    .line 191
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " pbeta"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 192
    :cond_1
    sget-boolean v10, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v10, :cond_2

    .line 193
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " beta"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 195
    :cond_2
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v19, v8

    move-object v8, v6

    move-object/from16 v6, v19

    goto :goto_1

    .line 201
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    move-object v6, v2

    move-object v7, v3

    move-object v8, v5

    move-object v5, v4

    .line 203
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_3

    move-object v11, v4

    goto :goto_2

    :cond_3
    move-object v11, v5

    .line 206
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    move-object v4, v3

    goto :goto_3

    :cond_4
    move-object v4, v7

    .line 209
    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    move-object v6, v2

    .line 212
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    const-string v1, "SDK Unknown"

    :cond_6
    move-object v5, v1

    .line 215
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->loadConfig()V

    .line 216
    invoke-direct/range {p0 .. p0}, Lorg/telegram/tgnet/ConnectionsManager;->getRegId()Ljava/lang/String;

    move-result-object v12

    .line 217
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCertificateSHA256Fingerprint()Ljava/lang/String;

    move-result-object v17

    .line 219
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit16 v7, v1, 0x3e8

    .line 221
    iget v1, v13, Lorg/telegram/messenger/BaseController;->currentAccount:I

    const-string v2, "mainconfig"

    if-nez v1, :cond_7

    .line 222
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    goto :goto_4

    .line 224
    :cond_7
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    :goto_4
    const-string v2, "forceTryIpV6"

    .line 226
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v13, Lorg/telegram/tgnet/ConnectionsManager;->forceTryIpV6:Z

    .line 227
    sget v1, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION:I

    const/16 v2, 0x98

    sget v3, Lorg/telegram/messenger/BuildVars;->APP_ID:I

    invoke-static {}, Lorg/telegram/messenger/FileLog;->getNetworkLogPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v14

    move-object/from16 v0, p0

    move/from16 v18, v7

    move-object v7, v8

    move-object v8, v11

    move-object v11, v12

    move-object/from16 v12, v17

    move/from16 v13, v18

    invoke-virtual/range {v0 .. v16}, Lorg/telegram/tgnet/ConnectionsManager;->init(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZ)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .line 59
    sget-object v0, Lorg/telegram/tgnet/ConnectionsManager;->dnsCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .line 59
    sget-object v0, Lorg/telegram/tgnet/ConnectionsManager;->resolvingHostnameTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$202(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 59
    sput-object p0, Lorg/telegram/tgnet/ConnectionsManager;->currentTask:Landroid/os/AsyncTask;

    return-object p0
.end method

.method public static generateClassGuid()I
    .locals 2

    .line 780
    sget v0, Lorg/telegram/tgnet/ConnectionsManager;->lastClassGuid:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/tgnet/ConnectionsManager;->lastClassGuid:I

    return v0
.end method

.method public static getHostByName(Ljava/lang/String;J)V
    .locals 1

    .line 674
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getInitFlags()I
    .locals 1

    .line 607
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/messenger/EmuDetector;->with(Landroid/content/Context;)Lorg/telegram/messenger/EmuDetector;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Lorg/telegram/messenger/EmuDetector;->detect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "detected emu"

    .line 610
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x400

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;
    .locals 3

    .line 157
    sget-object v0, Lorg/telegram/tgnet/ConnectionsManager;->Instance:[Lorg/telegram/tgnet/ConnectionsManager;

    aget-object v1, v0, p0

    if-nez v1, :cond_1

    .line 159
    const-class v2, Lorg/telegram/tgnet/ConnectionsManager;

    monitor-enter v2

    .line 160
    :try_start_0
    aget-object v1, v0, p0

    if-nez v1, :cond_0

    .line 162
    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager;

    invoke-direct {v1, p0}, Lorg/telegram/tgnet/ConnectionsManager;-><init>(I)V

    aput-object v1, v0, p0

    .line 164
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method private getRegId()Ljava/lang/String;
    .locals 3

    .line 231
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->pushString:Ljava/lang/String;

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lorg/telegram/messenger/SharedConfig;->pushType:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "huawei://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->pushStringStatus:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->pushStringStatus:Ljava/lang/String;

    .line 238
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 239
    sget v0, Lorg/telegram/messenger/SharedConfig;->pushType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "FIREBASE"

    goto :goto_0

    :cond_2
    const-string v0, "HUAWEI"

    .line 240
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_GENERATING_SINCE_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->pushStringStatus:Ljava/lang/String;

    :cond_3
    return-object v0
.end method

.method private static synthetic lambda$getHostByName$11(Ljava/lang/String;J)V
    .locals 6

    .line 675
    sget-object v0, Lorg/telegram/tgnet/ConnectionsManager;->dnsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;

    if-eqz v0, :cond_0

    .line 676
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;->ttl:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x493e0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 677
    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_onHostNameResolved(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    .line 679
    :cond_0
    sget-object v0, Lorg/telegram/tgnet/ConnectionsManager;->resolvingHostnameTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;

    if-nez v0, :cond_1

    .line 681
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;-><init>(Ljava/lang/String;)V

    .line 683
    :try_start_0
    sget-object v1, Lorg/telegram/tgnet/ConnectionsManager;->DNS_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    sget-object v1, Lorg/telegram/tgnet/ConnectionsManager;->resolvingHostnameTasks:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 685
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string v0, ""

    .line 686
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_onHostNameResolved(Ljava/lang/String;JLjava/lang/String;)V

    return-void

    .line 691
    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager$ResolveHostByNameTask;->addAddress(J)V

    :goto_1
    return-void
.end method

.method private static synthetic lambda$onConnectionStateChanged$6(II)V
    .locals 1

    .line 590
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iput p1, v0, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    .line 591
    invoke-static {p0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$onLogout$7(I)V
    .locals 5

    .line 597
    invoke-static {p0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p0

    .line 598
    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 599
    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->clearConfig()V

    .line 600
    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->performLogout(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onProxyError$10()V
    .locals 5

    .line 670
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$onRequestNewServerIpAndPort$8(IZI)V
    .locals 5

    .line 629
    sget-object v0, Lorg/telegram/tgnet/ConnectionsManager;->currentTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_9

    if-nez p0, :cond_0

    sget-wide v0, Lorg/telegram/tgnet/ConnectionsManager;->lastDnsRequestTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-ltz v4, :cond_9

    :cond_0
    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 635
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/tgnet/ConnectionsManager;->lastDnsRequestTime:J

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne p0, v2, :cond_3

    .line 637
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_2

    const-string/jumbo p0, "start mozilla txt task"

    .line 638
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 640
    :cond_2
    new-instance p0, Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;

    invoke-direct {p0, p2}, Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;-><init>(I)V

    .line 641
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    aput-object v3, v2, p1

    aput-object v3, v2, v0

    aput-object v3, v2, v1

    invoke-virtual {p0, p2, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 642
    sput-object p0, Lorg/telegram/tgnet/ConnectionsManager;->currentTask:Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    if-ne p0, v1, :cond_5

    .line 644
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_4

    const-string/jumbo p0, "start google txt task"

    .line 645
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 647
    :cond_4
    new-instance p0, Lorg/telegram/tgnet/ConnectionsManager$GoogleDnsLoadTask;

    invoke-direct {p0, p2}, Lorg/telegram/tgnet/ConnectionsManager$GoogleDnsLoadTask;-><init>(I)V

    .line 648
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    aput-object v3, v2, p1

    aput-object v3, v2, v0

    aput-object v3, v2, v1

    invoke-virtual {p0, p2, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 649
    sput-object p0, Lorg/telegram/tgnet/ConnectionsManager;->currentTask:Landroid/os/AsyncTask;

    goto :goto_0

    :cond_5
    if-ne p0, v0, :cond_7

    .line 651
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_6

    const-string/jumbo p0, "start dns txt task"

    .line 652
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 654
    :cond_6
    new-instance p0, Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask;

    invoke-direct {p0, p2}, Lorg/telegram/tgnet/ConnectionsManager$DnsTxtLoadTask;-><init>(I)V

    .line 655
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    aput-object v3, v2, p1

    aput-object v3, v2, v0

    aput-object v3, v2, v1

    invoke-virtual {p0, p2, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 656
    sput-object p0, Lorg/telegram/tgnet/ConnectionsManager;->currentTask:Landroid/os/AsyncTask;

    goto :goto_0

    .line 658
    :cond_7
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_8

    const-string/jumbo p0, "start firebase task"

    .line 659
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 661
    :cond_8
    new-instance p0, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;

    invoke-direct {p0, p2}, Lorg/telegram/tgnet/ConnectionsManager$FirebaseTask;-><init>(I)V

    .line 662
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    aput-object v3, v2, p1

    aput-object v3, v2, v0

    aput-object v3, v2, v1

    invoke-virtual {p0, p2, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 663
    sput-object p0, Lorg/telegram/tgnet/ConnectionsManager;->currentTask:Landroid/os/AsyncTask;

    :goto_0
    return-void

    .line 630
    :cond_9
    :goto_1
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_a

    .line 631
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "don\'t start task, current task = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lorg/telegram/tgnet/ConnectionsManager;->currentTask:Landroid/os/AsyncTask;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " next task = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " time diff = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lorg/telegram/tgnet/ConnectionsManager;->lastDnsRequestTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " network = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isNetworkOnline()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method private static synthetic lambda$onRequestNewServerIpAndPort$9(II)V
    .locals 3

    .line 627
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isNetworkOnline()Z

    move-result v0

    .line 628
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda7;-><init>(IZI)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$onSessionCreated$5(I)V
    .locals 0

    .line 585
    invoke-static {p0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getDifference()V

    return-void
.end method

.method private static synthetic lambda$onUnparsedMessageReceived$3(ILorg/telegram/tgnet/TLObject;)V
    .locals 1

    .line 569
    invoke-static {p0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private static synthetic lambda$onUpdate$4(I)V
    .locals 0

    .line 581
    invoke-static {p0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->updateTimerProc()V

    return-void
.end method

.method private static synthetic lambda$onUpdateConfig$12(ILorg/telegram/tgnet/TLRPC$TL_config;)V
    .locals 0

    .line 710
    invoke-static {p0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->updateConfig(Lorg/telegram/tgnet/TLRPC$TL_config;)V

    return-void
.end method

.method private static synthetic lambda$sendRequest$0(Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/RequestDelegateTimestamp;J)V
    .locals 0

    if-eqz p0, :cond_0

    .line 354
    invoke-interface {p0, p1, p2}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 356
    invoke-interface {p3, p1, p2, p4, p5}, Lorg/telegram/tgnet/RequestDelegateTimestamp;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 359
    invoke-virtual {p1}, Lorg/telegram/tgnet/TLObject;->freeResources()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$sendRequest$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZJIJILjava/lang/String;IJJ)V
    .locals 12

    move-object v1, p0

    move-object v0, p1

    move-object/from16 v2, p16

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmp-long v7, p13, v3

    if-eqz v7, :cond_1

    .line 316
    :try_start_0
    invoke-static/range {p13 .. p14}, Lorg/telegram/tgnet/NativeByteBuffer;->wrap(J)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v2

    .line 317
    iput-boolean v6, v2, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
    :try_start_1
    invoke-virtual {v2, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v3

    invoke-virtual {p1, v2, v3, v6}, Lorg/telegram/tgnet/TLObject;->deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v11, v2

    move-object v10, v5

    goto :goto_0

    :catch_0
    move-exception v0

    .line 321
    :try_start_2
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v2, :cond_0

    .line 324
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->fatal(Ljava/lang/Throwable;)V

    return-void

    .line 322
    :cond_0
    throw v0

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_1
    if-eqz v2, :cond_3

    .line 328
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_error;-><init>()V

    move/from16 v4, p15

    .line 329
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    .line 330
    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    .line 331
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_2

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " got error "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_2
    move-object v10, v3

    move-object v11, v5

    goto :goto_0

    :cond_3
    move-object v10, v5

    move-object v11, v10

    .line 335
    :goto_0
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v10, :cond_5

    iget v2, v10, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 v3, 0x190

    if-ne v2, v3, :cond_5

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "CONNECTION_NOT_INITED"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 336
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_4

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleanup keys for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " because of CONNECTION_NOT_INITED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 339
    :cond_4
    invoke-virtual {p0, v6}, Lorg/telegram/tgnet/ConnectionsManager;->cleanup(Z)V

    .line 340
    invoke-virtual/range {p0 .. p9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    return-void

    :cond_5
    if-eqz v11, :cond_6

    move/from16 v2, p17

    .line 344
    iput v2, v11, Lorg/telegram/tgnet/TLObject;->networkType:I

    .line 346
    :cond_6
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_7

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "java received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_7
    move-object v2, p1

    move-object v3, v11

    move-object v4, v10

    move-wide/from16 v5, p20

    move-wide/from16 v7, p10

    move/from16 v9, p12

    .line 349
    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/FileLog;->dumpResponseAndRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;JJI)V

    .line 352
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda11;

    move-object/from16 p4, v2

    move-object/from16 p5, p2

    move-object/from16 p6, v11

    move-object/from16 p7, v10

    move-object/from16 p8, p3

    move-wide/from16 p9, p18

    invoke-direct/range {p4 .. p10}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/RequestDelegateTimestamp;J)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 363
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$sendRequest$2(Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)V
    .locals 19

    move-object/from16 v0, p1

    .line 297
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p2

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move/from16 v15, p2

    .line 301
    :goto_0
    :try_start_0
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 302
    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 303
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/tgnet/TLObject;->freeResources()V

    const-wide/16 v2, 0x0

    .line 306
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v4, :cond_1

    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v4, :cond_1

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_1
    move-object/from16 v14, p0

    move-wide v12, v2

    .line 310
    iget v11, v14, Lorg/telegram/messenger/BaseController;->currentAccount:I

    iget-wide v9, v1, Lorg/telegram/tgnet/NativeByteBuffer;->address:J

    new-instance v16, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v17, v9

    move/from16 v9, p8

    move/from16 v10, p9

    move v0, v11

    move/from16 v11, p10

    move/from16 v14, p2

    invoke-direct/range {v1 .. v14}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZJI)V

    move v3, v0

    move-wide/from16 v4, v17

    move-object/from16 v6, v16

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p2

    invoke-static/range {v3 .. v13}, Lorg/telegram/tgnet/ConnectionsManager;->native_sendRequest(IJLorg/telegram/tgnet/RequestDelegateInternal;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 367
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$setIsUpdating$13(Z)V
    .locals 2

    .line 785
    iget-boolean v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->isUpdating:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 788
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->isUpdating:Z

    .line 789
    iget p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 790
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static native native_applyDatacenterAddress(IILjava/lang/String;I)V
.end method

.method public static native native_applyDnsConfig(IJLjava/lang/String;I)V
.end method

.method public static native native_bindRequestToGuid(III)V
.end method

.method public static native native_cancelRequest(IIZ)V
.end method

.method public static native native_cancelRequestsForGuid(II)V
.end method

.method public static native native_checkProxy(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/RequestTimeDelegate;)J
.end method

.method public static native native_cleanUp(IZ)V
.end method

.method public static native native_getConnectionState(I)I
.end method

.method public static native native_getCurrentDatacenterId(I)I
.end method

.method public static native native_getCurrentTime(I)I
.end method

.method public static native native_getCurrentTimeMillis(I)J
.end method

.method public static native native_getTimeDifference(I)I
.end method

.method public static native native_init(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZZI)V
.end method

.method public static native native_isTestBackend(I)I
.end method

.method public static native native_onHostNameResolved(Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public static native native_pauseNetwork(I)V
.end method

.method public static native native_resumeNetwork(IZ)V
.end method

.method public static native native_seSystemLangCode(ILjava/lang/String;)V
.end method

.method public static native native_sendRequest(IJLorg/telegram/tgnet/RequestDelegateInternal;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZI)V
.end method

.method public static native native_setIpStrategy(IB)V
.end method

.method public static native native_setJava(Z)V
.end method

.method public static native native_setLangCode(ILjava/lang/String;)V
.end method

.method public static native native_setNetworkAvailable(IZIZ)V
.end method

.method public static native native_setProxySettings(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native native_setPushConnectionEnabled(IZ)V
.end method

.method public static native native_setRegId(ILjava/lang/String;)V
.end method

.method public static native native_setSystemLangCode(ILjava/lang/String;)V
.end method

.method public static native native_setUserId(IJ)V
.end method

.method public static native native_switchBackend(IZ)V
.end method

.method public static native native_updateDcSettings(I)V
.end method

.method public static onBytesReceived(III)V
    .locals 3

    .line 698
    :try_start_0
    invoke-static {p2}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p2

    const/4 v0, 0x6

    int-to-long v1, p0

    invoke-virtual {p2, p1, v0, v1, v2}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 700
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static onBytesSent(III)V
    .locals 3

    .line 619
    :try_start_0
    invoke-static {p2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getStatsController()Lorg/telegram/messenger/StatsController;

    move-result-object p2

    const/4 v0, 0x6

    int-to-long v1, p0

    invoke-virtual {p2, p1, v0, v1, v2}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 621
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static onConnectionStateChanged(II)V
    .locals 1

    .line 589
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p0}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onInternalPushReceived(I)V
    .locals 0

    .line 718
    invoke-static {}, Lorg/telegram/messenger/KeepAliveJob;->startJob()V

    return-void
.end method

.method public static onLogout(I)V
    .locals 1

    .line 596
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onProxyError()V
    .locals 1

    .line 670
    sget-object v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda12;->INSTANCE:Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda12;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onRequestNewServerIpAndPort(II)V
    .locals 2

    .line 626
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda4;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static onSessionCreated(I)V
    .locals 2

    .line 585
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static onUnparsedMessageReceived(JIJ)V
    .locals 2

    .line 559
    :try_start_0
    invoke-static {p0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->wrap(J)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object p0

    const/4 p1, 0x1

    .line 560
    iput-boolean p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    .line 561
    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v0

    .line 562
    invoke-static {}, Lorg/telegram/tgnet/TLClassStore;->Instance()Lorg/telegram/tgnet/TLClassStore;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Lorg/telegram/tgnet/TLClassStore;->TLdeserialize(Lorg/telegram/tgnet/NativeByteBuffer;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    .line 563
    invoke-static {p0, p3, p4}, Lorg/telegram/messenger/FileLog;->dumpUnparsedMessage(Lorg/telegram/tgnet/TLObject;J)V

    .line 564
    instance-of p3, p0, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz p3, :cond_1

    .line 565
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 566
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "java received "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 568
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/KeepAliveJob;->finishJob()V

    .line 569
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p3, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda5;

    invoke-direct {p3, p2, p0}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda5;-><init>(ILorg/telegram/tgnet/TLObject;)V

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 571
    :cond_1
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_2

    const-string p0, "java received unknown constructor 0x%x"

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 572
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 576
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static onUpdate(I)V
    .locals 2

    .line 581
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static onUpdateConfig(JI)V
    .locals 1

    .line 706
    :try_start_0
    invoke-static {p0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->wrap(J)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object p0

    const/4 p1, 0x1

    .line 707
    iput-boolean p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    .line 708
    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v0

    invoke-static {p0, v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_config;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_config;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 710
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2, p0}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda6;-><init>(ILorg/telegram/tgnet/TLRPC$TL_config;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 713
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static setLangCode(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x5f

    const/16 v1, 0x2d

    .line 448
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 450
    invoke-static {v0, p0}, Lorg/telegram/tgnet/ConnectionsManager;->native_setLangCode(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setProxySettings(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p3, :cond_1

    move-object p3, v0

    :cond_1
    if-nez p4, :cond_2

    move-object p4, v0

    :cond_2
    if-nez p5, :cond_3

    move-object p5, v0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_6

    if-eqz p0, :cond_4

    .line 736
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 737
    invoke-static/range {v1 .. v6}, Lorg/telegram/tgnet/ConnectionsManager;->native_setProxySettings(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/16 v3, 0x438

    const-string v2, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move v1, v0

    .line 739
    invoke-static/range {v1 .. v6}, Lorg/telegram/tgnet/ConnectionsManager;->native_setProxySettings(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    .line 742
    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 743
    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->checkPromoInfo(Z)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static setRegId(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 456
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "huawei://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 459
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, p0

    .line 462
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    if-ne p1, p0, :cond_2

    const-string p0, "FIREBASE"

    goto :goto_1

    :cond_2
    const-string p0, "HUAWEI"

    .line 464
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "__"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_GENERATING_SINCE_"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lorg/telegram/messenger/SharedConfig;->pushStringStatus:Ljava/lang/String;

    :cond_3
    :goto_2
    const/4 p0, 0x5

    if-ge v0, p0, :cond_4

    .line 467
    invoke-static {v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->native_setRegId(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static setSystemLangCode(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x5f

    const/16 v1, 0x2d

    .line 472
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 474
    invoke-static {v0, p0}, Lorg/telegram/tgnet/ConnectionsManager;->native_setSystemLangCode(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public applyDatacenterAddress(ILjava/lang/String;I)V
    .locals 1

    .line 390
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0, p1, p2, p3}, Lorg/telegram/tgnet/ConnectionsManager;->native_applyDatacenterAddress(IILjava/lang/String;I)V

    return-void
.end method

.method public bindRequestToGuid(II)V
    .locals 1

    .line 386
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->native_bindRequestToGuid(III)V

    return-void
.end method

.method public cancelRequest(IZ)V
    .locals 1

    .line 374
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->native_cancelRequest(IIZ)V

    return-void
.end method

.method public cancelRequestsForGuid(I)V
    .locals 1

    .line 382
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_cancelRequestsForGuid(II)V

    return-void
.end method

.method public checkConnection()V
    .locals 4

    .line 405
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getIpStrategy()B

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->native_setIpStrategy(IB)V

    .line 406
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isNetworkOnline()Z

    move-result v1

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v2

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isConnectionSlow()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->native_setNetworkAvailable(IZIZ)V

    return-void
.end method

.method public checkProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/RequestTimeDelegate;)J
    .locals 8

    .line 501
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    const-string v0, ""

    if-nez p1, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    if-nez p3, :cond_2

    move-object v4, v0

    goto :goto_1

    :cond_2
    move-object v4, p3

    :goto_1
    if-nez p4, :cond_3

    move-object v5, v0

    goto :goto_2

    :cond_3
    move-object v5, p4

    :goto_2
    if-nez p5, :cond_4

    move-object v6, v0

    goto :goto_3

    :cond_4
    move-object v6, p5

    .line 516
    :goto_3
    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    move v3, p2

    move-object v7, p6

    invoke-static/range {v1 .. v7}, Lorg/telegram/tgnet/ConnectionsManager;->native_checkProxy(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/RequestTimeDelegate;)J

    move-result-wide p1

    return-wide p1
.end method

.method public cleanup(Z)V
    .locals 1

    .line 378
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_cleanUp(IZ)V

    return-void
.end method

.method public getConnectionState()I
    .locals 2

    .line 394
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->connectionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/tgnet/ConnectionsManager;->isUpdating:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    :cond_0
    return v0
.end method

.method public getCurrentDatacenterId()I
    .locals 1

    .line 263
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_getCurrentDatacenterId(I)I

    move-result v0

    return v0
.end method

.method public getCurrentTime()I
    .locals 1

    .line 259
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_getCurrentTime(I)I

    move-result v0

    return v0
.end method

.method public getCurrentTimeMillis()J
    .locals 2

    .line 255
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_getCurrentTimeMillis(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getIpStrategy()B
    .locals 10

    .line 797
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ge v0, v2, :cond_0

    return v1

    .line 800
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_7

    .line 803
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 804
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 805
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 806
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 809
    :cond_2
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_3

    .line 810
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "valid interface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 812
    :cond_3
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 813
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 814
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InterfaceAddress;

    .line 815
    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 816
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v5, :cond_4

    .line 817
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 819
    :cond_4
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    .line 822
    :cond_5
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v4, :cond_6

    const-string v4, "address is good"

    .line 823
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 828
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 833
    :cond_7
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 837
    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_e

    .line 838
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 839
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v5}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_3

    .line 842
    :cond_9
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    .line 843
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 844
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InterfaceAddress;

    .line 845
    invoke-virtual {v8}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    .line 846
    invoke-virtual {v8}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {v8}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {v8}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_5

    .line 849
    :cond_a
    instance-of v9, v8, Ljava/net/Inet6Address;

    if-eqz v9, :cond_b

    const/4 v2, 0x1

    goto :goto_5

    .line 851
    :cond_b
    instance-of v9, v8, Ljava/net/Inet4Address;

    if-eqz v9, :cond_d

    .line 852
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    const-string v9, "192.0.0."

    .line 853
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    const/4 v4, 0x1

    goto :goto_5

    :cond_c
    const/4 v3, 0x1

    :cond_d
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_e
    if-eqz v2, :cond_11

    .line 862
    iget-boolean v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->forceTryIpV6:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_f

    return v6

    :cond_f
    if-eqz v3, :cond_10

    const/4 v0, 0x2

    return v0

    :cond_10
    if-nez v4, :cond_11

    return v6

    :catchall_1
    move-exception v0

    .line 873
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_11
    return v1
.end method

.method public getPauseTime()J
    .locals 2

    .line 497
    iget-wide v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    return-wide v0
.end method

.method public getTimeDifference()I
    .locals 1

    .line 267
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_getTimeDifference(I)I

    move-result v0

    return v0
.end method

.method public init(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZ)V
    .locals 26

    move-object/from16 v0, p0

    .line 414
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "proxy_ip"

    const-string v4, ""

    .line 415
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "proxy_user"

    .line 416
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "proxy_pass"

    .line 417
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "proxy_secret"

    .line 418
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "proxy_port"

    const/16 v5, 0x438

    .line 419
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v2, "proxy_enabled"

    .line 421
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 422
    iget v5, v0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static/range {v5 .. v10}, Lorg/telegram/tgnet/ConnectionsManager;->native_setProxySettings(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_0
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v4

    :goto_0
    if-nez v1, :cond_1

    move-object/from16 v18, v4

    goto :goto_1

    :cond_1
    move-object/from16 v18, v1

    .line 435
    :goto_1
    :try_start_1
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-object v1, v4

    :goto_2
    if-nez v1, :cond_2

    move-object/from16 v19, v4

    goto :goto_3

    :cond_2
    move-object/from16 v19, v1

    .line 443
    :goto_3
    iget v5, v0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isNetworkOnline()Z

    move-result v24

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCurrentNetworkType()I

    move-result v25

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move/from16 v20, p13

    move-wide/from16 v21, p14

    move/from16 v23, p16

    invoke-static/range {v5 .. v25}, Lorg/telegram/tgnet/ConnectionsManager;->native_init(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZZI)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/tgnet/ConnectionsManager;->checkConnection()V

    return-void
.end method

.method public isPushConnectionEnabled()Z
    .locals 3

    .line 246
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pushConnection"

    .line 247
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 248
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 250
    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "backgroundConnection"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTestBackend()Z
    .locals 1

    .line 485
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_isTestBackend(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resumeNetworkMaybe()V
    .locals 2

    .line 489
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->native_resumeNetwork(IZ)V

    return-void
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 271
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;I)I

    move-result p1

    return p1
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    .line 275
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    move-result p1

    return p1
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;II)I
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0x7fffffff

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move v8, p4

    .line 279
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    move-result p1

    return p1
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;I)I
    .locals 10

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v6, p4

    .line 287
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    move-result p1

    return p1
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I
    .locals 10

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 291
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    move-result v0

    return v0
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I
    .locals 16

    move-object/from16 v12, p0

    .line 295
    iget-object v0, v12, Lorg/telegram/tgnet/ConnectionsManager;->lastRequestToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v13

    .line 296
    sget-object v14, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v15, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v13

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)V

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return v13
.end method

.method public sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegateTimestamp;III)I
    .locals 10

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v6, p3

    move v7, p5

    move v8, p4

    .line 283
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    move-result p1

    return p1
.end method

.method public setAppPaused(ZZ)V
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_3

    .line 521
    iput-boolean p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->appPaused:Z

    .line 522
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_0

    .line 523
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app paused = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 526
    iget p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    goto :goto_0

    .line 528
    :cond_1
    iget p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    .line 530
    :goto_0
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    .line 531
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "app resume count "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 533
    :cond_2
    iget p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    if-gez p1, :cond_3

    .line 534
    iput v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    .line 537
    :cond_3
    iget p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->appResumeCount:I

    const-wide/16 v1, 0x0

    if-nez p1, :cond_5

    .line 538
    iget-wide p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    cmp-long v0, p1, v1

    if-nez v0, :cond_4

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    .line 541
    :cond_4
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_pauseNetwork(I)V

    goto :goto_1

    .line 543
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->appPaused:Z

    if-eqz p1, :cond_6

    return-void

    .line 546
    :cond_6
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_7

    const-string p1, "reset app pause time"

    .line 547
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 549
    :cond_7
    iget-wide p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    cmp-long v3, p1, v1

    if-eqz v3, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v3, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    sub-long/2addr p1, v3

    const-wide/16 v3, 0x1388

    cmp-long v5, p1, v3

    if-lez v5, :cond_8

    .line 550
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ContactsController;->checkContacts()V

    .line 552
    :cond_8
    iput-wide v1, p0, Lorg/telegram/tgnet/ConnectionsManager;->lastPauseTime:J

    .line 553
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_resumeNetwork(IZ)V

    :goto_1
    return-void
.end method

.method public setForceTryIpV6(Z)V
    .locals 1

    .line 130
    iget-boolean v0, p0, Lorg/telegram/tgnet/ConnectionsManager;->forceTryIpV6:Z

    if-eq v0, p1, :cond_0

    .line 131
    iput-boolean p1, p0, Lorg/telegram/tgnet/ConnectionsManager;->forceTryIpV6:Z

    .line 132
    invoke-virtual {p0}, Lorg/telegram/tgnet/ConnectionsManager;->checkConnection()V

    :cond_0
    return-void
.end method

.method public setIsUpdating(Z)V
    .locals 1

    .line 784
    new-instance v0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/tgnet/ConnectionsManager;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPushConnectionEnabled(Z)V
    .locals 1

    .line 410
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_setPushConnectionEnabled(IZ)V

    return-void
.end method

.method public setUserId(J)V
    .locals 1

    .line 401
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->native_setUserId(IJ)V

    return-void
.end method

.method public switchBackend(Z)V
    .locals 2

    .line 479
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 480
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "language_showed2"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 481
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_switchBackend(IZ)V

    return-void
.end method

.method public updateDcSettings()V
    .locals 1

    .line 493
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_updateDcSettings(I)V

    return-void
.end method
