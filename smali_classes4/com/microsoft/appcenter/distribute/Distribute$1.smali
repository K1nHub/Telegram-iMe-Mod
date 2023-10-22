.class Lcom/microsoft/appcenter/distribute/Distribute$1;
.super Ljava/lang/Object;
.source "Distribute.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/async/AppCenterConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/distribute/Distribute;->handleUpdateAction(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/appcenter/utils/async/AppCenterConsumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/distribute/Distribute;

.field final synthetic val$updateAction:I


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/distribute/Distribute;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$updateAction"
        }
    .end annotation

    .line 581
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute$1;->this$0:Lcom/microsoft/appcenter/distribute/Distribute;

    iput p2, p0, Lcom/microsoft/appcenter/distribute/Distribute$1;->val$updateAction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 585
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "AppCenterDistribute"

    if-nez p1, :cond_0

    const-string p1, "Distribute is disabled"

    .line 586
    invoke-static {v0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 589
    :cond_0
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute$1;->this$0:Lcom/microsoft/appcenter/distribute/Distribute;

    invoke-static {p1}, Lcom/microsoft/appcenter/distribute/Distribute;->access$000(Lcom/microsoft/appcenter/distribute/Distribute;)Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute$1;->this$0:Lcom/microsoft/appcenter/distribute/Distribute;

    invoke-static {p1}, Lcom/microsoft/appcenter/distribute/Distribute;->access$000(Lcom/microsoft/appcenter/distribute/Distribute;)Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader;

    move-result-object p1

    invoke-interface {p1}, Lcom/microsoft/appcenter/distribute/download/ReleaseDownloader;->isDownloading()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 590
    :goto_0
    invoke-static {}, Lcom/microsoft/appcenter/distribute/DistributeUtils;->getStoredDownloadState()I

    move-result v2

    if-ne v2, v1, :cond_7

    if-eqz p1, :cond_2

    goto :goto_2

    .line 594
    :cond_2
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute$1;->this$0:Lcom/microsoft/appcenter/distribute/Distribute;

    invoke-static {p1}, Lcom/microsoft/appcenter/distribute/Distribute;->access$100(Lcom/microsoft/appcenter/distribute/Distribute;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Cannot handle user update action when using default dialog."

    .line 595
    invoke-static {v0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 598
    :cond_3
    iget p1, p0, Lcom/microsoft/appcenter/distribute/Distribute$1;->val$updateAction:I

    const/4 v1, -0x2

    if-eq p1, v1, :cond_5

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    .line 613
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid update action: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/microsoft/appcenter/distribute/Distribute$1;->val$updateAction:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 601
    :cond_4
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute$1;->this$0:Lcom/microsoft/appcenter/distribute/Distribute;

    invoke-static {p1}, Lcom/microsoft/appcenter/distribute/Distribute;->access$200(Lcom/microsoft/appcenter/distribute/Distribute;)Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/appcenter/distribute/Distribute;->enqueueDownloadAndRequestPermissions(Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    goto :goto_1

    .line 605
    :cond_5
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute$1;->this$0:Lcom/microsoft/appcenter/distribute/Distribute;

    invoke-static {p1}, Lcom/microsoft/appcenter/distribute/Distribute;->access$200(Lcom/microsoft/appcenter/distribute/Distribute;)Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->isMandatoryUpdate()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "Cannot postpone a mandatory update."

    .line 606
    invoke-static {v0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 609
    :cond_6
    iget-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute$1;->this$0:Lcom/microsoft/appcenter/distribute/Distribute;

    invoke-static {p1}, Lcom/microsoft/appcenter/distribute/Distribute;->access$200(Lcom/microsoft/appcenter/distribute/Distribute;)Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/appcenter/distribute/Distribute;->access$300(Lcom/microsoft/appcenter/distribute/Distribute;Lcom/microsoft/appcenter/distribute/ReleaseDetails;)V

    :goto_1
    return-void

    :cond_7
    :goto_2
    const-string p1, "Cannot handle user update action at this time."

    .line 591
    invoke-static {v0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 581
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/distribute/Distribute$1;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
