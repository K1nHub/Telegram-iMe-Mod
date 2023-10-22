.class Lcom/microsoft/appcenter/distribute/Distribute$13;
.super Ljava/lang/Object;
.source "Distribute.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/distribute/Distribute;->enqueueDistributionStartSessionLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/distribute/Distribute;


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

    .line 1961
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute$13;->this$0:Lcom/microsoft/appcenter/distribute/Distribute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1965
    new-instance v0, Lcom/microsoft/appcenter/distribute/ingestion/models/DistributionStartSessionLog;

    invoke-direct {v0}, Lcom/microsoft/appcenter/distribute/ingestion/models/DistributionStartSessionLog;-><init>()V

    .line 1966
    iget-object v1, p0, Lcom/microsoft/appcenter/distribute/Distribute$13;->this$0:Lcom/microsoft/appcenter/distribute/Distribute;

    invoke-static {v1}, Lcom/microsoft/appcenter/distribute/Distribute;->access$1100(Lcom/microsoft/appcenter/distribute/Distribute;)Lcom/microsoft/appcenter/channel/Channel;

    move-result-object v1

    const-string v2, "group_distribute"

    const/4 v3, 0x1

    invoke-interface {v1, v0, v2, v3}, Lcom/microsoft/appcenter/channel/Channel;->enqueue(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V

    return-void
.end method
