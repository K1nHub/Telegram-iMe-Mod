.class public Lcom/microsoft/appcenter/distribute/DownloadManagerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadManagerReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
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

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive broadcast action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppCenterDistribute"

    invoke-static {v2, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-static {}, Lcom/microsoft/appcenter/distribute/Distribute;->getInstance()Lcom/microsoft/appcenter/distribute/Distribute;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/microsoft/appcenter/distribute/Distribute;->resumeApp(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "extra_download_id"

    const-wide/16 v3, -0x1

    .line 42
    invoke-virtual {p2, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long p2, v0, v3

    if-eqz p2, :cond_1

    .line 44
    new-instance p2, Lcom/microsoft/appcenter/distribute/ResumeFromBackgroundTask;

    invoke-direct {p2, p1, v0, v1}, Lcom/microsoft/appcenter/distribute/ResumeFromBackgroundTask;-><init>(Landroid/content/Context;J)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-static {v2, p2, p1}, Lcom/microsoft/appcenter/utils/AsyncTaskUtils;->execute(Ljava/lang/String;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    return-void
.end method
