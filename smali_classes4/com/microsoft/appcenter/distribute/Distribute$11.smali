.class Lcom/microsoft/appcenter/distribute/Distribute$11;
.super Ljava/lang/Object;
.source "Distribute.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/distribute/Distribute;->requestPermissionsForDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/appcenter/utils/async/AppCenterConsumer<",
        "Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/distribute/Distribute;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1722
    iget-object v0, p1, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;->exception:Ljava/lang/Exception;

    const-string v1, "AppCenterDistribute"

    if-eqz v0, :cond_0

    const-string p1, "Error when trying to request permissions."

    .line 1723
    invoke-static {v1, p1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1724
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;->areAllPermissionsGranted()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Permissions have been successfully granted."

    .line 1725
    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "Permissions were not granted."

    .line 1727
    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 1718
    check-cast p1, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/distribute/Distribute$11;->accept(Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;)V

    return-void
.end method
