.class final Lorg/solovyev/android/checkout/Billing$OnConnectedServiceRunnable;
.super Ljava/lang/Object;
.source "Billing.java"

# interfaces
.implements Lorg/solovyev/android/checkout/RequestRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/Billing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnConnectedServiceRunnable"
.end annotation


# instance fields
.field private mRequest:Lorg/solovyev/android/checkout/Request;

.field final synthetic this$0:Lorg/solovyev/android/checkout/Billing;


# direct methods
.method public constructor <init>(Lorg/solovyev/android/checkout/Billing;Lorg/solovyev/android/checkout/Request;)V
    .locals 0

    .line 804
    iput-object p1, p0, Lorg/solovyev/android/checkout/Billing$OnConnectedServiceRunnable;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    iput-object p2, p0, Lorg/solovyev/android/checkout/Billing$OnConnectedServiceRunnable;->mRequest:Lorg/solovyev/android/checkout/Request;

    return-void
.end method

.method private checkCache(Lorg/solovyev/android/checkout/Request;)Z
    .locals 4

    .line 849
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$OnConnectedServiceRunnable;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-static {v0}, Lorg/solovyev/android/checkout/Billing;->access$000(Lorg/solovyev/android/checkout/Billing;)Lorg/solovyev/android/checkout/ConcurrentCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/solovyev/android/checkout/ConcurrentCache;->hasCache()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 852
    :cond_0
    invoke-virtual {p1}, Lorg/solovyev/android/checkout/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 856
    :cond_1
    iget-object v2, p0, Lorg/solovyev/android/checkout/Billing$OnConnectedServiceRunnable;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-static {v2}, Lorg/solovyev/android/checkout/Billing;->access$000(Lorg/solovyev/android/checkout/Billing;)Lorg/solovyev/android/checkout/ConcurrentCache;

    move-result-object v2

    invoke-virtual {p1}, Lorg/solovyev/android/checkout/Request;->getType()Lorg/solovyev/android/checkout/RequestType;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/solovyev/android/checkout/RequestType;->getCacheKey(Ljava/lang/String;)Lorg/solovyev/android/checkout/Cache$Key;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/solovyev/android/checkout/ConcurrentCache;->get(Lorg/solovyev/android/checkout/Cache$Key;)Lorg/solovyev/android/checkout/Cache$Entry;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 860
    :cond_2
    iget-object v0, v0, Lorg/solovyev/android/checkout/Cache$Entry;->data:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/solovyev/android/checkout/Request;->onSuccess(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 873
    monitor-enter p0

    .line 874
    :try_start_0
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$OnConnectedServiceRunnable;->mRequest:Lorg/solovyev/android/checkout/Request;

    if-eqz v0, :cond_0

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancelling request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/solovyev/android/checkout/Billing$OnConnectedServiceRunnable;->mRequest:Lorg/solovyev/android/checkout/Request;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/solovyev/android/checkout/Billing;->debug(Ljava/lang/String;)V

    .line 876
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$OnConnectedServiceRunnable;->mRequest:Lorg/solovyev/android/checkout/Request;

    invoke-virtual {v0}, Lorg/solovyev/android/checkout/Request;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 878
    iput-object v0, p0, Lorg/solovyev/android/checkout/Billing$OnConnectedServiceRunnable;->mRequest:Lorg/solovyev/android/checkout/Request;

    .line 879
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequest()Lorg/solovyev/android/checkout/Request;
    .locals 1

    .line 867
    monitor-enter p0

    .line 868
    :try_start_0
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$OnConnectedServiceRunnable;->mRequest:Lorg/solovyev/android/checkout/Request;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 869
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 892
    monitor-enter p0

    .line 893
    :try_start_0
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$OnConnectedServiceRunnable;->mRequest:Lorg/solovyev/android/checkout/Request;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/solovyev/android/checkout/Request;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 894
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()Z
    .locals 5

    .line 810
    invoke-virtual {p0}, Lorg/solovyev/android/checkout/Billing$OnConnectedServiceRunnable;->getRequest()Lorg/solovyev/android/checkout/Request;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 816
    :cond_0
    invoke-direct {p0, v0}, Lorg/solovyev/android/checkout/Billing$OnConnectedServiceRunnable;->checkCache(Lorg/solovyev/android/checkout/Request;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 821
    :cond_1
    iget-object v2, p0, Lorg/solovyev/android/checkout/Billing$OnConnectedServiceRunnable;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-static {v2}, Lorg/solovyev/android/checkout/Billing;->access$700(Lorg/solovyev/android/checkout/Billing;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 822
    :try_start_0
    iget-object v3, p0, Lorg/solovyev/android/checkout/Billing$OnConnectedServiceRunnable;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-static {v3}, Lorg/solovyev/android/checkout/Billing;->access$800(Lorg/solovyev/android/checkout/Billing;)Lorg/solovyev/android/checkout/Billing$State;

    move-result-object v3

    .line 823
    iget-object v4, p0, Lorg/solovyev/android/checkout/Billing$OnConnectedServiceRunnable;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-static {v4}, Lorg/solovyev/android/checkout/Billing;->access$900(Lorg/solovyev/android/checkout/Billing;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v4

    .line 824
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    sget-object v2, Lorg/solovyev/android/checkout/Billing$State;->CONNECTED:Lorg/solovyev/android/checkout/Billing$State;

    if-ne v3, v2, :cond_2

    .line 829
    :try_start_1
    iget-object v2, p0, Lorg/solovyev/android/checkout/Billing$OnConnectedServiceRunnable;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-static {v2}, Lorg/solovyev/android/checkout/Billing;->access$1000(Lorg/solovyev/android/checkout/Billing;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lorg/solovyev/android/checkout/Request;->start(Lcom/android/vending/billing/IInAppBillingService;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/solovyev/android/checkout/RequestException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    .line 831
    :goto_0
    invoke-virtual {v0, v2}, Lorg/solovyev/android/checkout/Request;->onError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 835
    :cond_2
    sget-object v2, Lorg/solovyev/android/checkout/Billing$State;->FAILED:Lorg/solovyev/android/checkout/Billing$State;

    if-eq v3, v2, :cond_3

    .line 837
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$OnConnectedServiceRunnable;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-virtual {v0}, Lorg/solovyev/android/checkout/Billing;->connect()V

    const/4 v0, 0x0

    return v0

    :cond_3
    const/16 v2, 0x2710

    .line 841
    invoke-virtual {v0, v2}, Lorg/solovyev/android/checkout/Request;->onError(I)V

    :goto_1
    return v1

    :catchall_0
    move-exception v0

    .line 824
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 899
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$OnConnectedServiceRunnable;->mRequest:Lorg/solovyev/android/checkout/Request;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
