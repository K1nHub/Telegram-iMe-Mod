.class public Lorg/telegram/messenger/ApplicationLoaderImpl;
.super Lorg/telegram/messenger/ApplicationLoader;
.source "ApplicationLoaderImpl.java"


# static fields
.field private static lastUpdateCheckTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/telegram/messenger/ApplicationLoader;-><init>()V

    return-void
.end method

.method private clearPostponeStatus()V
    .locals 3

    .line 52
    const-class v0, Lcom/microsoft/appcenter/distribute/DistributeConstants;

    :try_start_0
    const-string v1, "PREFERENCE_KEY_POSTPONE_TIME"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->initialize(Landroid/content/Context;)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method protected appCenterLogInternal(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method protected checkForUpdatesInternal()V
    .locals 2

    .line 232
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/messenger/ApplicationLoaderImpl;->lastUpdateCheckTime:J

    .line 233
    invoke-direct {p0}, Lorg/telegram/messenger/ApplicationLoaderImpl;->clearPostponeStatus()V

    .line 234
    invoke-static {}, Lcom/microsoft/appcenter/distribute/Distribute;->checkForUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 237
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected onGetApplicationId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.iMe.android.web"

    return-object v0
.end method

.method protected onGetVersionCode()I
    .locals 1

    const v0, 0xeaa55

    return v0
.end method

.method protected onGetVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "9.6.11"

    return-object v0
.end method

.method protected startAppCenterInternal(Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x1

    .line 79
    :try_start_0
    invoke-static {v0}, Lcom/microsoft/appcenter/distribute/Distribute;->setEnabledForDebuggableBuild(Z)V

    const-string v1, "94aaaf72-ec99-4ca3-97fc-c3c9f46b1cb7"

    .line 81
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    invoke-static {}, Lcom/microsoft/appcenter/distribute/Distribute;->disableAutomaticCheckForUpdate()V

    .line 86
    new-instance v2, Lorg/telegram/messenger/ApplicationLoaderImpl$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ApplicationLoaderImpl$1;-><init>(Lorg/telegram/messenger/ApplicationLoaderImpl;)V

    invoke-static {v2}, Lcom/microsoft/appcenter/distribute/Distribute;->setListener(Lcom/microsoft/appcenter/distribute/DistributeListener;)V

    .line 209
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/microsoft/appcenter/distribute/Distribute;

    aput-object v3, v0, v2

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/AppCenter;->start(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/appcenter/AppCenter;->setUserId(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "App Center hash is empty. add to local.properties field APP_CENTER_HASH_PRIVATE and APP_CENTER_HASH_PUBLIC"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 220
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
