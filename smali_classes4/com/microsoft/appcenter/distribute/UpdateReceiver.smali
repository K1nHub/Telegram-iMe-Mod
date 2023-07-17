.class public Lcom/microsoft/appcenter/distribute/UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getInstallCompletedMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 48
    invoke-static {p0}, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 50
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 51
    invoke-static {v0}, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->getVersionCode(Landroid/content/pm/PackageInfo;)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v2, "?"

    move v0, v1

    .line 53
    :goto_0
    sget v3, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_install_completed_message:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-static {p0}, Lcom/microsoft/appcenter/utils/AppNameHelper;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    const/4 p0, 0x1

    aput-object v2, v4, p0

    const/4 p0, 0x2

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onPackageReplaced(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "AppCenterDistribute"

    const-string v1, "Post a notification as the installation finished in background."

    .line 39
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget v0, Lcom/microsoft/appcenter/distribute/R$string;->appcenter_distribute_install_completed_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {p1}, Lcom/microsoft/appcenter/distribute/DistributeUtils;->getResumeAppIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 42
    invoke-static {p1}, Lcom/microsoft/appcenter/distribute/UpdateReceiver;->getInstallCompletedMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2, v1}, Lcom/microsoft/appcenter/distribute/DistributeUtils;->postNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive broadcast action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCenterDistribute"

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 29
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/distribute/UpdateReceiver;->onPackageReplaced(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
