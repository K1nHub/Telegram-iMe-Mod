.class final Lorg/solovyev/android/checkout/PendingRequests;
.super Ljava/lang/Object;
.source "PendingRequests.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/solovyev/android/checkout/RequestRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/solovyev/android/checkout/PendingRequests;->mList:Ljava/util/List;

    return-void
.end method

.method private remove(Lorg/solovyev/android/checkout/RequestRunnable;)V
    .locals 4

    .line 173
    iget-object v0, p0, Lorg/solovyev/android/checkout/PendingRequests;->mList:Ljava/util/List;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lorg/solovyev/android/checkout/PendingRequests;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 175
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing pending request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/solovyev/android/checkout/Billing;->debug(Ljava/lang/String;)V

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 182
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method add(Lorg/solovyev/android/checkout/RequestRunnable;)V
    .locals 3

    .line 48
    iget-object v0, p0, Lorg/solovyev/android/checkout/PendingRequests;->mList:Ljava/util/List;

    monitor-enter v0

    .line 49
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding pending request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/solovyev/android/checkout/Billing;->debug(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lorg/solovyev/android/checkout/PendingRequests;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method cancelAll()V
    .locals 3

    .line 58
    iget-object v0, p0, Lorg/solovyev/android/checkout/PendingRequests;->mList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    const-string v1, "Cancelling all pending requests"

    .line 59
    invoke-static {v1}, Lorg/solovyev/android/checkout/Billing;->debug(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lorg/solovyev/android/checkout/PendingRequests;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 61
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/solovyev/android/checkout/RequestRunnable;

    .line 63
    invoke-interface {v2}, Lorg/solovyev/android/checkout/RequestRunnable;->cancel()V

    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 66
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method cancelAll(Ljava/lang/Object;)V
    .locals 4

    .line 75
    iget-object v0, p0, Lorg/solovyev/android/checkout/PendingRequests;->mList:Ljava/util/List;

    monitor-enter v0

    .line 76
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling all pending requests with tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/solovyev/android/checkout/Billing;->debug(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lorg/solovyev/android/checkout/PendingRequests;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 78
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/solovyev/android/checkout/RequestRunnable;

    .line 80
    invoke-interface {v2}, Lorg/solovyev/android/checkout/RequestRunnable;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 82
    invoke-interface {v2}, Lorg/solovyev/android/checkout/RequestRunnable;->cancel()V

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    invoke-interface {v2}, Lorg/solovyev/android/checkout/RequestRunnable;->cancel()V

    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 96
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method onConnectionFailed()V
    .locals 3

    .line 190
    invoke-virtual {p0}, Lorg/solovyev/android/checkout/PendingRequests;->pop()Lorg/solovyev/android/checkout/RequestRunnable;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 192
    invoke-interface {v0}, Lorg/solovyev/android/checkout/RequestRunnable;->getRequest()Lorg/solovyev/android/checkout/Request;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x2710

    .line 194
    invoke-virtual {v1, v2}, Lorg/solovyev/android/checkout/Request;->onError(I)V

    .line 195
    invoke-interface {v0}, Lorg/solovyev/android/checkout/RequestRunnable;->cancel()V

    .line 197
    :cond_0
    invoke-virtual {p0}, Lorg/solovyev/android/checkout/PendingRequests;->pop()Lorg/solovyev/android/checkout/RequestRunnable;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method peek()Lorg/solovyev/android/checkout/RequestRunnable;
    .locals 3

    .line 142
    iget-object v0, p0, Lorg/solovyev/android/checkout/PendingRequests;->mList:Ljava/util/List;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lorg/solovyev/android/checkout/PendingRequests;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/solovyev/android/checkout/PendingRequests;->mList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/solovyev/android/checkout/RequestRunnable;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 144
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method pop()Lorg/solovyev/android/checkout/RequestRunnable;
    .locals 4

    .line 126
    iget-object v0, p0, Lorg/solovyev/android/checkout/PendingRequests;->mList:Ljava/util/List;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lorg/solovyev/android/checkout/PendingRequests;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/solovyev/android/checkout/PendingRequests;->mList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/solovyev/android/checkout/RequestRunnable;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing pending request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/solovyev/android/checkout/Billing;->debug(Ljava/lang/String;)V

    .line 131
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 132
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    .line 153
    invoke-virtual {p0}, Lorg/solovyev/android/checkout/PendingRequests;->peek()Lorg/solovyev/android/checkout/RequestRunnable;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running pending request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/solovyev/android/checkout/Billing;->debug(Ljava/lang/String;)V

    .line 156
    invoke-interface {v0}, Lorg/solovyev/android/checkout/RequestRunnable;->run()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-direct {p0, v0}, Lorg/solovyev/android/checkout/PendingRequests;->remove(Lorg/solovyev/android/checkout/RequestRunnable;)V

    .line 158
    invoke-virtual {p0}, Lorg/solovyev/android/checkout/PendingRequests;->peek()Lorg/solovyev/android/checkout/RequestRunnable;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method
