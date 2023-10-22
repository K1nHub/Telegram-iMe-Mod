.class public Lorg/telegram/messenger/ApplicationLoaderImpl;
.super Lorg/telegram/messenger/ApplicationLoader;
.source "ApplicationLoaderImpl.java"


# static fields
.field private static lastUpdateCheckTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/telegram/messenger/ApplicationLoader;-><init>()V

    return-void
.end method

.method private clearPostponeStatus()V
    .locals 3

    .line 65
    const-class v0, Lcom/microsoft/appcenter/distribute/DistributeConstants;

    :try_start_0
    const-string v1, "PREFERENCE_KEY_POSTPONE_TIME"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->initialize(Landroid/content/Context;)V

    .line 70
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

.method public checkApkInstallPermissions(Landroid/content/Context;)Z
    .locals 2

    .line 292
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 293
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->createApkRestrictedDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected checkForUpdatesInternal()V
    .locals 2

    .line 257
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/messenger/ApplicationLoaderImpl;->lastUpdateCheckTime:J

    .line 258
    invoke-direct {p0}, Lorg/telegram/messenger/ApplicationLoaderImpl;->clearPostponeStatus()V

    .line 259
    invoke-static {}, Lcom/microsoft/appcenter/distribute/Distribute;->checkForUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 262
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected logDualCameraInternal(ZZ)V
    .locals 0

    return-void
.end method

.method protected onGetApplicationId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.iMe.android.web"

    return-object v0
.end method

.method protected onGetVersionCode()I
    .locals 1

    const v0, 0xf6a21

    return v0
.end method

.method protected onGetVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "10.1.2"

    return-object v0
.end method

.method public openApkInstall(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 5

    const/4 v0, 0x0

    .line 303
    :try_start_0
    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    .line 304
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p2

    .line 305
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 309
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v3, 0x18

    const-string v4, "application/vnd.android.package-archive"

    if-lt v2, v3, :cond_0

    .line 310
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v1, p2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 312
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v1, p2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/16 p2, 0x1f4

    .line 315
    :try_start_2
    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 317
    :try_start_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 321
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return v0
.end method

.method protected startAppCenterInternal(Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x1

    .line 92
    :try_start_0
    invoke-static {v0}, Lcom/microsoft/appcenter/distribute/Distribute;->setEnabledForDebuggableBuild(Z)V

    const-string v1, "94aaaf72-ec99-4ca3-97fc-c3c9f46b1cb7"

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    invoke-static {}, Lcom/microsoft/appcenter/distribute/Distribute;->disableAutomaticCheckForUpdate()V

    .line 99
    new-instance v2, Lorg/telegram/messenger/ApplicationLoaderImpl$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ApplicationLoaderImpl$1;-><init>(Lorg/telegram/messenger/ApplicationLoaderImpl;)V

    invoke-static {v2}, Lcom/microsoft/appcenter/distribute/Distribute;->setListener(Lcom/microsoft/appcenter/distribute/DistributeListener;)V

    .line 222
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/microsoft/appcenter/distribute/Distribute;

    aput-object v3, v0, v2

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/AppCenter;->start(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 242
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

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "App Center hash is empty. add to local.properties field APP_CENTER_HASH_PRIVATE and APP_CENTER_HASH_PUBLIC"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 245
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
