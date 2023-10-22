.class Lcom/microsoft/appcenter/distribute/Distribute$2;
.super Ljava/lang/Object;
.source "Distribute.java"

# interfaces
.implements Lcom/microsoft/appcenter/http/ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/distribute/Distribute;->getLatestReleaseDetails(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/distribute/Distribute;

.field final synthetic val$distributionGroupId:Ljava/lang/String;

.field final synthetic val$releaseCallId:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/distribute/Distribute;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$releaseCallId",
            "val$distributionGroupId"
        }
    .end annotation

    .line 1072
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute$2;->this$0:Lcom/microsoft/appcenter/distribute/Distribute;

    iput-object p2, p0, Lcom/microsoft/appcenter/distribute/Distribute$2;->val$releaseCallId:Ljava/lang/Object;

    iput-object p3, p0, Lcom/microsoft/appcenter/distribute/Distribute$2;->val$distributionGroupId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallFailed(Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1086
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute$2;->this$0:Lcom/microsoft/appcenter/distribute/Distribute;

    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute$2;->val$releaseCallId:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lcom/microsoft/appcenter/distribute/Distribute;->access$500(Lcom/microsoft/appcenter/distribute/Distribute;Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public onCallSucceeded(Lcom/microsoft/appcenter/http/HttpResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "httpResponse"
        }
    .end annotation

    .line 1077
    :try_start_0
    invoke-virtual {p1}, Lcom/microsoft/appcenter/http/HttpResponse;->getPayload()Ljava/lang/String;

    move-result-object p1

    .line 1078
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/Distribute$2;->this$0:Lcom/microsoft/appcenter/distribute/Distribute;

    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute$2;->val$releaseCallId:Ljava/lang/Object;

    invoke-static {p1}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->parse(Ljava/lang/String;)Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/appcenter/distribute/Distribute$2;->val$distributionGroupId:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/microsoft/appcenter/distribute/Distribute;->access$400(Lcom/microsoft/appcenter/distribute/Distribute;Ljava/lang/Object;Ljava/lang/String;Lcom/microsoft/appcenter/distribute/ReleaseDetails;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1080
    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/distribute/Distribute$2;->onCallFailed(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
