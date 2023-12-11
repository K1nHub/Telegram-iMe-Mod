.class public Lorg/telegram/messenger/ApplicationLoaderImpl;
.super Lorg/telegram/messenger/ApplicationLoader;
.source "ApplicationLoaderImpl.java"

# interfaces
.implements Lcom/microsoft/appcenter/distribute/DistributeListener;


# static fields
.field private static lastUpdateCheckTime:J


# instance fields
.field private appUpdateDialog:LComponents/UpdateAppAlertDialog;

.field private checkAppUpdateDialog:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method public static synthetic $r8$lambda$7t7IHyfMIiyYHy1KBSuW06O1b38(Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/ApplicationLoaderImpl;->lambda$onReleaseAvailable$1(Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B_4kC49HkcWE2_cOAADyfoUBWFc(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/ApplicationLoaderImpl;->lambda$checkForUpdatesInternal$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E7SWETTeT2c_MZCYu_kdJhAnLqc(Lorg/telegram/ui/IUpdateLayout;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/ApplicationLoaderImpl;->lambda$showUpdateAppPopup$0(Lorg/telegram/ui/IUpdateLayout;ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/telegram/messenger/ApplicationLoader;-><init>()V

    return-void
.end method

.method private clearPostponeStatus()V
    .locals 3

    .line 203
    const-class v0, Lcom/microsoft/appcenter/distribute/DistributeConstants;

    :try_start_0
    const-string v1, "PREFERENCE_KEY_POSTPONE_TIME"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 205
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->initialize(Landroid/content/Context;)V

    .line 208
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private static synthetic lambda$checkForUpdatesInternal$2(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p0, 0x1

    .line 284
    sput-boolean p0, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateCanceled:Z

    const/4 p0, 0x0

    .line 285
    sput-boolean p0, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateInProgress:Z

    return-void
.end method

.method private static synthetic lambda$onReleaseAvailable$1(Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 3

    .line 147
    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateCanceled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 148
    sput-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateCanceled:Z

    return-void

    :cond_0
    const/4 v0, 0x6

    .line 151
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->flags:I

    if-eqz p1, :cond_1

    or-int/lit8 v0, v0, 0x8

    .line 153
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->flags:I

    .line 155
    :cond_1
    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    .line 156
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAppUpdateAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 157
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->version:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 158
    :goto_0
    sget-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateInProgress:Z

    .line 159
    sput-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateCanceled:Z

    sput-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateInProgress:Z

    .line 160
    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setNewAppVersionAvailable(Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    if-eqz v2, :cond_4

    .line 163
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p0

    sget-object p1, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->url:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/messenger/ImageLoader;->loadHttpFile(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 166
    :cond_3
    sget-object p0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz p0, :cond_4

    .line 167
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->showAppUpdateDialog()V

    .line 171
    :cond_4
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->appUpdateAvailable:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$showUpdateAppPopup$0(Lorg/telegram/ui/IUpdateLayout;ILandroid/content/DialogInterface;)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lorg/telegram/ui/IUpdateLayout;->moveToSideMenu(I)V

    return-void
.end method


# virtual methods
.method protected appCenterLogInternal(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public checkApkInstallPermissions(Landroid/content/Context;)Z
    .locals 2

    .line 326
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

    .line 327
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->createApkRestrictedDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected checkForUpdatesInternal(Z)V
    .locals 3

    .line 274
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/messenger/ApplicationLoaderImpl;->lastUpdateCheckTime:J

    .line 276
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 280
    sput-boolean p1, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateInProgress:Z

    .line 281
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    sget-object v1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/messenger/ApplicationLoaderImpl;->checkAppUpdateDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 282
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 283
    iget-object p1, p0, Lorg/telegram/messenger/ApplicationLoaderImpl;->checkAppUpdateDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoaderImpl$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/messenger/ApplicationLoaderImpl$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 287
    iget-object p1, p0, Lorg/telegram/messenger/ApplicationLoaderImpl;->checkAppUpdateDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 289
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/ApplicationLoaderImpl;->clearPostponeStatus()V

    .line 291
    invoke-static {}, Lcom/microsoft/appcenter/distribute/Distribute;->checkForUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 294
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public dismissAppUpdateDialog()V
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/ApplicationLoaderImpl;->appUpdateDialog:LComponents/UpdateAppAlertDialog;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissCheckAppUpdateDialog()V
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/ApplicationLoaderImpl;->checkAppUpdateDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected isStandalone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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

    const v0, 0xf92c1

    return v0
.end method

.method protected onGetVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "10.2.6"

    return-object v0
.end method

.method public onNoReleaseAvailable(Landroid/app/Activity;)V
    .locals 5

    .line 178
    sget-boolean p1, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateCanceled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 179
    sput-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateCanceled:Z

    return-void

    .line 182
    :cond_0
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-nez p1, :cond_1

    return-void

    .line 185
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lorg/telegram/messenger/SharedConfig;->lastUpdateCheckTime:J

    const/4 p1, 0x0

    .line 186
    sput-object p1, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 187
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 188
    sput-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateCanceled:Z

    .line 189
    sget-boolean p1, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateInProgress:Z

    if-eqz p1, :cond_2

    .line 190
    sput-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateInProgress:Z

    .line 191
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const v4, 0x7f111e7d

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 192
    invoke-virtual {p0}, Lorg/telegram/messenger/ApplicationLoaderImpl;->dismissAppUpdateDialog()V

    .line 194
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appUpdateAvailable:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public onReleaseAvailable(Landroid/app/Activity;Lcom/microsoft/appcenter/distribute/ReleaseDetails;)Z
    .locals 7

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/messenger/SharedConfig;->lastUpdateCheckTime:J

    .line 107
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    const/4 v0, -0x2

    .line 108
    invoke-static {v0}, Lcom/microsoft/appcenter/distribute/Distribute;->notifyUpdateAction(I)V

    .line 109
    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateCanceled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 110
    sput-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->isCheckForUpdateCanceled:Z

    return v1

    .line 113
    :cond_0
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-nez v0, :cond_1

    return v1

    .line 116
    :cond_1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getReleaseNotes()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/iMe/fork/models/Changelog;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/models/Changelog;

    if-nez v0, :cond_2

    .line 118
    new-instance v0, Lcom/iMe/fork/models/Changelog;

    invoke-direct {v0}, Lcom/iMe/fork/models/Changelog;-><init>()V

    .line 120
    :cond_2
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;-><init>()V

    .line 121
    invoke-virtual {p2}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getShortVersion()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->version:Ljava/lang/String;

    .line 122
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-array v5, v2, [B

    .line 123
    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    const-string v5, "application/vnd.android.package-archive"

    .line 124
    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 125
    invoke-virtual {p2}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getSize()J

    move-result-wide v5

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 126
    invoke-virtual {p2}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->getDownloadUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->url:Ljava/lang/String;

    .line 127
    iget-object p2, v3, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, v0, Lcom/iMe/fork/models/Changelog;->currentDate:J

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p2, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 129
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt p2, v4, :cond_3

    .line 130
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    goto :goto_0

    .line 132
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_0
    if-eqz p1, :cond_5

    .line 134
    new-instance p2, Ljava/util/Locale;

    const-string/jumbo v2, "ru"

    invoke-direct {p2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p2, Ljava/util/Locale;

    const-string/jumbo v2, "uk"

    invoke-direct {p2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p2, Ljava/util/Locale;

    const-string v2, "be"

    invoke-direct {p2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 139
    :cond_4
    iget-object p1, v0, Lcom/iMe/fork/models/Changelog;->ruChangelog:Ljava/lang/String;

    iput-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->text:Ljava/lang/String;

    goto :goto_1

    .line 141
    :cond_5
    iget-object p1, v0, Lcom/iMe/fork/models/Changelog;->enChangelog:Ljava/lang/String;

    iput-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->text:Ljava/lang/String;

    .line 143
    :goto_1
    iget-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->text:Ljava/lang/String;

    if-nez p1, :cond_6

    const-string p1, ""

    .line 144
    iput-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->text:Ljava/lang/String;

    .line 146
    :cond_6
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object p2, v0, Lcom/iMe/fork/models/Changelog;->stickerPackName:Ljava/lang/String;

    iget v0, v0, Lcom/iMe/fork/models/Changelog;->stickerIndex:I

    new-instance v2, Lorg/telegram/messenger/ApplicationLoaderImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/ApplicationLoaderImpl$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;)V

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/messenger/MediaDataController;->loadSticker(Ljava/lang/String;ILcom/iMe/fork/utils/Callbacks$Callback1;)V

    return v1
.end method

.method public openApkInstall(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 5

    const/4 v0, 0x0

    .line 337
    :try_start_0
    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    .line 338
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p2

    .line 339
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 343
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v3, 0x18

    const-string v4, "application/vnd.android.package-archive"

    if-lt v2, v3, :cond_0

    .line 344
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

    .line 346
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v1, p2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/16 p2, 0x1f4

    .line 349
    :try_start_2
    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 351
    :try_start_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 355
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return v0
.end method

.method public showUpdateAppPopup(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;ILorg/telegram/ui/IUpdateLayout;)Z
    .locals 1

    .line 74
    iget-object p2, p0, Lorg/telegram/messenger/ApplicationLoaderImpl;->appUpdateDialog:LComponents/UpdateAppAlertDialog;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 75
    iget-object p1, p0, Lorg/telegram/messenger/ApplicationLoaderImpl;->appUpdateDialog:LComponents/UpdateAppAlertDialog;

    invoke-virtual {p1}, LComponents/UpdateAppAlertDialog;->updateUI()V

    goto :goto_0

    .line 77
    :cond_0
    new-instance p2, LComponents/UpdateAppAlertDialog;

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    invoke-direct {p2, p1, v0, p3}, LComponents/UpdateAppAlertDialog;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;I)V

    iput-object p2, p0, Lorg/telegram/messenger/ApplicationLoaderImpl;->appUpdateDialog:LComponents/UpdateAppAlertDialog;

    .line 78
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lorg/telegram/ui/IUpdateLayout;->moveToDialog(ILandroid/view/ViewGroup;)V

    .line 79
    iget-object p1, p0, Lorg/telegram/messenger/ApplicationLoaderImpl;->appUpdateDialog:LComponents/UpdateAppAlertDialog;

    new-instance p2, Lorg/telegram/messenger/ApplicationLoaderImpl$$ExternalSyntheticLambda1;

    invoke-direct {p2, p4, p3}, Lorg/telegram/messenger/ApplicationLoaderImpl$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/IUpdateLayout;I)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 80
    iget-object p1, p0, Lorg/telegram/messenger/ApplicationLoaderImpl;->appUpdateDialog:LComponents/UpdateAppAlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected startAppCenterInternal(Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x1

    .line 230
    :try_start_0
    invoke-static {v0}, Lcom/microsoft/appcenter/distribute/Distribute;->setEnabledForDebuggableBuild(Z)V

    const-string v1, "94aaaf72-ec99-4ca3-97fc-c3c9f46b1cb7"

    .line 232
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    invoke-static {}, Lcom/microsoft/appcenter/distribute/Distribute;->disableAutomaticCheckForUpdate()V

    .line 237
    invoke-static {p0}, Lcom/microsoft/appcenter/distribute/Distribute;->setListener(Lcom/microsoft/appcenter/distribute/DistributeListener;)V

    .line 239
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/microsoft/appcenter/distribute/Distribute;

    aput-object v3, v0, v2

    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/AppCenter;->start(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 259
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

    .line 233
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "App Center hash is empty. add to local.properties field APP_CENTER_HASH_PRIVATE and APP_CENTER_HASH_PUBLIC"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 262
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public takeUpdateLayout(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Lorg/telegram/ui/IUpdateLayout;
    .locals 1

    .line 101
    new-instance v0, LComponents/UpdateLayout;

    invoke-direct {v0, p1, p2, p3}, LComponents/UpdateLayout;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    return-object v0
.end method
