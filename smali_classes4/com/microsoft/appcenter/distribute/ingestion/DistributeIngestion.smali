.class public Lcom/microsoft/appcenter/distribute/ingestion/DistributeIngestion;
.super Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;
.source "DistributeIngestion.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;-><init>()V

    .line 36
    invoke-static {}, Lcom/microsoft/appcenter/DependencyConfiguration;->getHttpClient()Lcom/microsoft/appcenter/http/HttpClient;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    invoke-static {p1}, Lcom/microsoft/appcenter/http/HttpUtils;->createHttpClient(Landroid/content/Context;)Lcom/microsoft/appcenter/http/HttpClient;

    move-result-object v0

    .line 40
    :cond_0
    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;->setHttpClient(Lcom/microsoft/appcenter/http/HttpClient;)V

    return-void
.end method


# virtual methods
.method public checkReleaseAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appSecret",
            "url",
            "headers",
            "serviceCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/appcenter/http/ServiceCallback;",
            ")",
            "Lcom/microsoft/appcenter/http/ServiceCall;"
        }
    .end annotation

    .line 44
    new-instance v4, Lcom/microsoft/appcenter/distribute/ingestion/DistributeIngestion$1;

    invoke-direct {v4, p0, p1}, Lcom/microsoft/appcenter/distribute/ingestion/DistributeIngestion$1;-><init>(Lcom/microsoft/appcenter/distribute/ingestion/DistributeIngestion;Ljava/lang/String;)V

    const-string v2, "GET"

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/appcenter/ingestion/AbstractAppCenterIngestion;->getServiceCall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/appcenter/http/HttpClient$CallTemplate;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;

    move-result-object p1

    return-object p1
.end method
