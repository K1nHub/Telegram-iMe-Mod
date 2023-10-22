.class public Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity;
.super Landroid/app/Activity;
.source "ReleaseInstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity$Result;
    }
.end annotation


# static fields
.field static sResultFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<",
            "Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static complete(Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity;->sResultFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, p0}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 70
    sput-object p0, Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity;->sResultFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    :cond_0
    return-void
.end method

.method public static startActivityForResult(Landroid/content/Context;Landroid/content/Intent;)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "trackedIntent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture<",
            "Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity$Result;",
            ">;"
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity;->sResultFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    if-eqz v0, :cond_0

    const-string p0, "AppCenterDistribute"

    const-string p1, "Another installing activity already in progress."

    .line 54
    invoke-static {p0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_0
    new-instance v0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    invoke-direct {v0}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    sput-object v0, Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity;->sResultFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.INTENT"

    .line 62
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    sget-object p0, Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity;->sResultFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    return-object p0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 104
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Release installer activity result="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AppCenterDistribute"

    invoke-static {p3, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance p1, Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity$Result;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity$Result;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity;->complete(Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity$Result;)V

    .line 99
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-nez p1, :cond_0

    const-string p1, "AppCenterDistribute"

    const-string v0, "Missing extra intent."

    .line 81
    invoke-static {p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 86
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    new-instance v0, Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity$Result;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity$Result;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity;->complete(Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity$Result;)V

    .line 91
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/install/ReleaseInstallerActivity;->finish()V

    :goto_0
    return-void
.end method
