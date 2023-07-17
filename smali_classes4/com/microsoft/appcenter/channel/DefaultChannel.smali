.class public Lcom/microsoft/appcenter/channel/DefaultChannel;
.super Ljava/lang/Object;
.source "DefaultChannel.java"

# interfaces
.implements Lcom/microsoft/appcenter/channel/Channel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;
    }
.end annotation


# instance fields
.field private final mAppCenterHandler:Landroid/os/Handler;

.field private mAppSecret:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mDevice:Lcom/microsoft/appcenter/ingestion/models/Device;

.field private mDiscardLogs:Z

.field private mEnabled:Z

.field private final mGroupStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;",
            ">;"
        }
    .end annotation
.end field

.field private final mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

.field private final mIngestions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/microsoft/appcenter/ingestion/Ingestion;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstallId:Ljava/util/UUID;

.field private final mListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/microsoft/appcenter/channel/Channel$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;Lcom/microsoft/appcenter/http/HttpClient;Landroid/os/Handler;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appSecret",
            "logSerializer",
            "httpClient",
            "appCenterHandler"
        }
    .end annotation

    .line 147
    invoke-static {p1, p3}, Lcom/microsoft/appcenter/channel/DefaultChannel;->buildDefaultPersistence(Landroid/content/Context;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;)Lcom/microsoft/appcenter/persistence/Persistence;

    move-result-object v3

    new-instance v4, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;

    invoke-direct {v4, p4, p3}, Lcom/microsoft/appcenter/ingestion/AppCenterIngestion;-><init>(Lcom/microsoft/appcenter/http/HttpClient;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/appcenter/channel/DefaultChannel;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/appcenter/persistence/Persistence;Lcom/microsoft/appcenter/ingestion/Ingestion;Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/appcenter/persistence/Persistence;Lcom/microsoft/appcenter/ingestion/Ingestion;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appSecret",
            "persistence",
            "ingestion",
            "appCenterHandler"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mContext:Landroid/content/Context;

    .line 162
    iput-object p2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppSecret:Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/microsoft/appcenter/utils/IdHelper;->getInstallId()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mInstallId:Ljava/util/UUID;

    .line 164
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    .line 165
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    .line 166
    iput-object p3, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    .line 167
    iput-object p4, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    .line 168
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestions:Ljava/util/Set;

    .line 169
    invoke-interface {p1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    iput-object p5, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppCenterHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 171
    iput-boolean p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/channel/DefaultChannel;->handleSendingSuccess(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/appcenter/channel/DefaultChannel;)Landroid/os/Handler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppCenterHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/appcenter/channel/DefaultChannel;->handleSendingFailure(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$300(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogsAfterPost(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->triggerIngestion(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    return-void
.end method

.method private static buildDefaultPersistence(Landroid/content/Context;Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;)Lcom/microsoft/appcenter/persistence/Persistence;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "logSerializer"
        }
    .end annotation

    .line 178
    new-instance v0, Lcom/microsoft/appcenter/persistence/DatabasePersistence;

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/persistence/DatabasePersistence;-><init>(Landroid/content/Context;)V

    .line 179
    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/persistence/Persistence;->setLogSerializer(Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;)V

    return-object v0
.end method

.method private checkPendingLogsAfterPost(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "groupState",
            "currentState"
        }
    .end annotation

    .line 554
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkStateDidNotChange(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 555
    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    :cond_0
    return-void
.end method

.method private checkStateDidNotChange(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "groupState",
            "stateSnapshot"
        }
    .end annotation

    .line 200
    iget v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mCurrentState:I

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    iget-object v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private deleteLogsOnSuspended(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "groupState"
        }
    .end annotation

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 429
    iget-object v1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    iget-object v2, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/microsoft/appcenter/persistence/Persistence;->getLogs(Ljava/lang/String;Ljava/util/Collection;ILjava/util/List;)Ljava/lang/String;

    .line 430
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    if-eqz v1, :cond_0

    .line 431
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/appcenter/ingestion/models/Log;

    .line 432
    iget-object v3, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    invoke-interface {v3, v2}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onBeforeSending(Lcom/microsoft/appcenter/ingestion/models/Log;)V

    .line 433
    iget-object v3, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    new-instance v5, Lcom/microsoft/appcenter/CancellationException;

    invoke-direct {v5}, Lcom/microsoft/appcenter/CancellationException;-><init>()V

    invoke-interface {v3, v2, v5}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onFailure(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V

    goto :goto_0

    .line 436
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v4, :cond_1

    iget-object v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    if-eqz v0, :cond_1

    .line 437
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->deleteLogsOnSuspended(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    goto :goto_1

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    iget-object p1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/persistence/Persistence;->deleteLogs(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private handleSendingFailure(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupState",
            "batchId",
            "e"
        }
    .end annotation

    .line 589
    iget-object v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    .line 590
    iget-object v1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mSendingBatches:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending logs groupName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " id="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AppCenter"

    invoke-static {v0, p2, p3}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 593
    invoke-static {p3}, Lcom/microsoft/appcenter/http/HttpUtils;->isRecoverableError(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 595
    iget v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    goto :goto_1

    .line 597
    :cond_0
    iget-object p1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    if-eqz p1, :cond_1

    .line 599
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/ingestion/models/Log;

    .line 600
    invoke-interface {p1, v1, p3}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onFailure(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 604
    iput-boolean p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z

    xor-int/lit8 p1, p2, 0x1

    .line 605
    invoke-direct {p0, p1, p3}, Lcom/microsoft/appcenter/channel/DefaultChannel;->suspend(ZLjava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method private handleSendingSuccess(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "groupState",
            "batchId"
        }
    .end annotation

    .line 566
    iget-object v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mSendingBatches:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 568
    iget-object v1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    iget-object v2, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/microsoft/appcenter/persistence/Persistence;->deleteLogs(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object p2, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    if-eqz p2, :cond_0

    .line 571
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/ingestion/models/Log;

    .line 572
    invoke-interface {p2, v1}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onSuccess(Lcom/microsoft/appcenter/ingestion/models/Log;)V

    goto :goto_0

    .line 575
    :cond_0
    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    :cond_1
    return-void
.end method

.method private resolveCustomTriggerInterval(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)Ljava/lang/Long;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupState"
        }
    .end annotation

    .line 756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startTimerPrefix."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 758
    iget v2, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    const-string v6, "AppCenter"

    if-lez v2, :cond_2

    const-wide/16 v7, 0x0

    cmp-long v2, v4, v7

    if-eqz v2, :cond_1

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    goto :goto_0

    .line 768
    :cond_0
    iget-wide v2, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mBatchTimeInterval:J

    sub-long/2addr v0, v4

    sub-long/2addr v2, v0

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 762
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putLong(Ljava/lang/String;J)V

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The timer value for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has been saved."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-wide v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mBatchTimeInterval:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 772
    :cond_2
    iget-wide v7, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mBatchTimeInterval:J

    add-long/2addr v4, v7

    cmp-long v0, v4, v0

    if-gez v0, :cond_3

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The timer for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " channel finished."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private resolveDefaultTriggerInterval(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupState"
        }
    .end annotation

    .line 781
    iget v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    iget v1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mMaxLogsPerBatch:I

    if-lt v0, v1, :cond_0

    const-wide/16 v0, 0x0

    .line 782
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    if-lez v0, :cond_1

    .line 784
    iget-wide v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mBatchTimeInterval:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private resolveTriggerInterval(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupState"
        }
    .end annotation

    .line 747
    iget-wide v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mBatchTimeInterval:J

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 748
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->resolveCustomTriggerInterval(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 750
    :cond_0
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->resolveDefaultTriggerInterval(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private sendLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;ILjava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10
        }
        names = {
            "groupState",
            "currentState",
            "batch",
            "batchId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;",
            "I",
            "Ljava/util/List<",
            "Lcom/microsoft/appcenter/ingestion/models/Log;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 516
    new-instance v0, Lcom/microsoft/appcenter/ingestion/models/LogContainer;

    invoke-direct {v0}, Lcom/microsoft/appcenter/ingestion/models/LogContainer;-><init>()V

    .line 517
    invoke-virtual {v0, p3}, Lcom/microsoft/appcenter/ingestion/models/LogContainer;->setLogs(Ljava/util/List;)V

    .line 518
    iget-object p3, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    iget-object v1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppSecret:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mInstallId:Ljava/util/UUID;

    new-instance v3, Lcom/microsoft/appcenter/channel/DefaultChannel$1;

    invoke-direct {v3, p0, p1, p4}, Lcom/microsoft/appcenter/channel/DefaultChannel$1;-><init>(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;Ljava/lang/String;)V

    invoke-interface {p3, v1, v2, v0, v3}, Lcom/microsoft/appcenter/ingestion/Ingestion;->sendAsync(Ljava/lang/String;Ljava/util/UUID;Lcom/microsoft/appcenter/ingestion/models/LogContainer;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;

    .line 544
    iget-object p3, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppCenterHandler:Landroid/os/Handler;

    new-instance p4, Lcom/microsoft/appcenter/channel/DefaultChannel$2;

    invoke-direct {p4, p0, p1, p2}, Lcom/microsoft/appcenter/channel/DefaultChannel$2;-><init>(Lcom/microsoft/appcenter/channel/DefaultChannel;Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;I)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private suspend(ZLjava/lang/Exception;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deleteLogs",
            "exception"
        }
    .end annotation

    .line 392
    iput-boolean p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mDiscardLogs:Z

    .line 393
    iget v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mCurrentState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mCurrentState:I

    .line 394
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    .line 395
    invoke-virtual {p0, v1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->cancelTimer(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 398
    iget-object v2, v1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mSendingBatches:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 400
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    if-eqz p1, :cond_1

    .line 402
    iget-object v4, v1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    if-eqz v4, :cond_1

    .line 404
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/appcenter/ingestion/models/Log;

    .line 405
    invoke-interface {v4, v5, p2}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onFailure(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V

    goto :goto_0

    .line 411
    :cond_2
    iget-object p2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestions:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/appcenter/ingestion/Ingestion;

    .line 413
    :try_start_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close ingestion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppCenter"

    invoke-static {v2, v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 419
    iget-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    .line 420
    invoke-direct {p0, p2}, Lcom/microsoft/appcenter/channel/DefaultChannel;->deleteLogsOnSuspended(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    goto :goto_2

    .line 423
    :cond_4
    iget-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    invoke-virtual {p1}, Lcom/microsoft/appcenter/persistence/Persistence;->clearPendingLogState()V

    :cond_5
    return-void
.end method

.method private triggerIngestion(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "groupState"
        }
    .end annotation

    .line 461
    iget-boolean v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    invoke-interface {v0}, Lcom/microsoft/appcenter/ingestion/Ingestion;->isEnabled()Z

    move-result v0

    const-string v1, "AppCenter"

    if-nez v0, :cond_1

    const-string p1, "SDK is in offline mode."

    .line 465
    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 468
    :cond_1
    iget v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    .line 469
    iget v2, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mMaxLogsPerBatch:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 470
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "triggerIngestion("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") pendingLogCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0, p1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->cancelTimer(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 474
    iget-object v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mSendingBatches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v3, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mMaxParallelBatches:I

    if-ne v0, v3, :cond_2

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already sending "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mMaxParallelBatches:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " batches of analytics data to the server."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 480
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 481
    iget-object v3, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    iget-object v5, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    iget-object v6, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPausedTargetKeys:Ljava/util/Collection;

    invoke-virtual {v3, v5, v6, v2, v0}, Lcom/microsoft/appcenter/persistence/Persistence;->getLogs(Ljava/lang/String;Ljava/util/Collection;ILjava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 484
    iget v5, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    sub-int/2addr v5, v2

    iput v5, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    if-nez v3, :cond_3

    return-void

    .line 490
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ingestLogs("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    if-eqz v1, :cond_4

    .line 494
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/appcenter/ingestion/models/Log;

    .line 495
    iget-object v4, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    invoke-interface {v4, v2}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onBeforeSending(Lcom/microsoft/appcenter/ingestion/models/Log;)V

    goto :goto_0

    .line 500
    :cond_4
    iget-object v1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mSendingBatches:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget v1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mCurrentState:I

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/microsoft/appcenter/channel/DefaultChannel;->sendLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;ILjava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addGroup(Ljava/lang/String;IJILcom/microsoft/appcenter/ingestion/Ingestion;Lcom/microsoft/appcenter/channel/Channel$GroupListener;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupName",
            "maxLogsPerBatch",
            "batchTimeInterval",
            "maxParallelBatches",
            "ingestion",
            "groupListener"
        }
    .end annotation

    move-object v9, p0

    move-object v10, p1

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addGroup("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCenter"

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p6, :cond_0

    .line 225
    iget-object v0, v9, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object/from16 v11, p6

    .line 226
    :goto_0
    iget-object v0, v9, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestions:Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v12, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object v7, v11

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;-><init>(Lcom/microsoft/appcenter/channel/DefaultChannel;Ljava/lang/String;IJILcom/microsoft/appcenter/ingestion/Ingestion;Lcom/microsoft/appcenter/channel/Channel$GroupListener;)V

    .line 228
    iget-object v0, v9, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {v0, p1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, v9, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/persistence/Persistence;->countLogs(Ljava/lang/String;)I

    move-result v0

    iput v0, v12, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    .line 238
    iget-object v0, v9, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppSecret:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, v9, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    if-eq v0, v11, :cond_2

    .line 241
    :cond_1
    invoke-virtual {p0, v12}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 245
    :cond_2
    iget-object v0, v9, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/channel/Channel$Listener;

    move-wide/from16 v2, p3

    move-object/from16 v4, p7

    .line 246
    invoke-interface {v1, p1, v4, v2, v3}, Lcom/microsoft/appcenter/channel/Channel$Listener;->onGroupAdded(Ljava/lang/String;Lcom/microsoft/appcenter/channel/Channel$GroupListener;J)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public addListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method cancelTimer(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupState"
        }
    .end annotation

    .line 445
    iget-boolean v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mScheduled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 446
    iput-boolean v0, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mScheduled:Z

    .line 447
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppCenterHandler:Landroid/os/Handler;

    iget-object v1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startTimerPrefix."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupState"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 716
    iget-object v1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    .line 717
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v3, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mBatchTimeInterval:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "checkPendingLogs(%s) pendingLogCount=%s batchTimeInterval=%s"

    .line 716
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCenter"

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->resolveTriggerInterval(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 721
    iget-boolean v1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPaused:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 726
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    .line 727
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->triggerIngestion(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    goto :goto_0

    .line 731
    :cond_1
    iget-boolean v1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mScheduled:Z

    if-nez v1, :cond_2

    .line 732
    iput-boolean v2, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mScheduled:Z

    .line 733
    iget-object v1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppCenterHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public clear(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupName"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 371
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCenter"

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/persistence/Persistence;->deleteLogs(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/channel/Channel$Listener;

    .line 376
    invoke-interface {v1, p1}, Lcom/microsoft/appcenter/channel/Channel$Listener;->onClear(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public enqueue(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "log",
            "groupName",
            "flags"
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    const-string v1, "AppCenter"

    if-nez v0, :cond_0

    .line 615
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid group name:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 620
    :cond_0
    iget-boolean v2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mDiscardLogs:Z

    if-eqz v2, :cond_2

    const-string p2, "Channel is disabled, the log is discarded."

    .line 621
    invoke-static {v1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object p2, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    if-eqz p2, :cond_1

    .line 623
    invoke-interface {p2, p1}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onBeforeSending(Lcom/microsoft/appcenter/ingestion/models/Log;)V

    .line 624
    iget-object p2, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    new-instance p3, Lcom/microsoft/appcenter/CancellationException;

    invoke-direct {p3}, Lcom/microsoft/appcenter/CancellationException;-><init>()V

    invoke-interface {p2, p1, p3}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onFailure(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V

    :cond_1
    return-void

    .line 630
    :cond_2
    iget-object v2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/appcenter/channel/Channel$Listener;

    .line 631
    invoke-interface {v3, p1, p2}, Lcom/microsoft/appcenter/channel/Channel$Listener;->onPreparingLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;)V

    goto :goto_0

    .line 635
    :cond_3
    invoke-interface {p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getDevice()Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v2

    if-nez v2, :cond_5

    .line 638
    iget-object v2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mDevice:Lcom/microsoft/appcenter/ingestion/models/Device;

    if-nez v2, :cond_4

    .line 640
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->getDeviceInfo(Landroid/content/Context;)Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mDevice:Lcom/microsoft/appcenter/ingestion/models/Device;
    :try_end_0
    .catch Lcom/microsoft/appcenter/utils/DeviceInfoHelper$DeviceInfoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Device log cannot be generated"

    .line 642
    invoke-static {v1, p2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 648
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mDevice:Lcom/microsoft/appcenter/ingestion/models/Device;

    invoke-interface {p1, v2}, Lcom/microsoft/appcenter/ingestion/models/Log;->setDevice(Lcom/microsoft/appcenter/ingestion/models/Device;)V

    .line 652
    :cond_5
    invoke-interface {p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_6

    .line 653
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-interface {p1, v2}, Lcom/microsoft/appcenter/ingestion/models/Log;->setTimestamp(Ljava/util/Date;)V

    .line 657
    :cond_6
    iget-object v2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/appcenter/channel/Channel$Listener;

    .line 658
    invoke-interface {v3, p1, p2, p3}, Lcom/microsoft/appcenter/channel/Channel$Listener;->onPreparedLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V

    goto :goto_2

    .line 663
    :cond_7
    iget-object v2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_8
    move v4, v3

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/appcenter/channel/Channel$Listener;

    if-nez v4, :cond_9

    .line 664
    invoke-interface {v5, p1}, Lcom/microsoft/appcenter/channel/Channel$Listener;->shouldFilter(Lcom/microsoft/appcenter/ingestion/models/Log;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_9
    move v4, v6

    goto :goto_3

    :cond_a
    const-string v2, "Log of type \'"

    if-eqz v4, :cond_b

    .line 669
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' was filtered out by listener(s)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 671
    :cond_b
    iget-object v3, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppSecret:Ljava/lang/String;

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    iget-object v4, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    if-ne v3, v4, :cond_c

    .line 674
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' was not filtered out by listener(s) but no app secret was provided. Not persisting/sending the log."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 680
    :cond_c
    :try_start_1
    iget-object v2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    invoke-virtual {v2, p1, p2, p3}, Lcom/microsoft/appcenter/persistence/Persistence;->putLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)J
    :try_end_1
    .catch Lcom/microsoft/appcenter/persistence/Persistence$PersistenceException; {:try_start_1 .. :try_end_1} :catch_1

    .line 691
    invoke-interface {p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getTransmissionTargetTokens()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 692
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/appcenter/ingestion/models/one/PartAUtils;->getTargetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_d
    const/4 p1, 0x0

    .line 693
    :goto_4
    iget-object p2, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPausedTargetKeys:Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 694
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Transmission target ikey="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is paused."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 699
    :cond_e
    iget p1, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    add-int/2addr p1, v6

    iput p1, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    .line 700
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enqueue("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") pendingLogCount="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mPendingLogCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-boolean p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z

    if-eqz p1, :cond_f

    .line 702
    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    goto :goto_5

    :cond_f
    const-string p1, "Channel is temporarily disabled, log was saved to disk."

    .line 704
    invoke-static {v1, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void

    :catch_1
    move-exception p2

    const-string p3, "Error persisting log"

    .line 682
    invoke-static {v1, p3, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 683
    iget-object p3, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    if-eqz p3, :cond_10

    .line 684
    invoke-interface {p3, p1}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onBeforeSending(Lcom/microsoft/appcenter/ingestion/models/Log;)V

    .line 685
    iget-object p3, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mListener:Lcom/microsoft/appcenter/channel/Channel$GroupListener;

    invoke-interface {p3, p1, p2}, Lcom/microsoft/appcenter/channel/Channel$GroupListener;->onFailure(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/Exception;)V

    :cond_10
    return-void
.end method

.method public removeGroup(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupName"
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeGroup("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCenter"

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/channel/DefaultChannel;->cancelTimer(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/channel/Channel$Listener;

    .line 260
    invoke-interface {v1, p1}, Lcom/microsoft/appcenter/channel/Channel$Listener;->onGroupRemoved(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeListener(Lcom/microsoft/appcenter/channel/Channel$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 804
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAppSecret(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appSecret"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mAppSecret:Ljava/lang/String;

    .line 211
    iget-boolean p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z

    if-eqz p1, :cond_1

    .line 212
    iget-object p1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    .line 213
    iget-object v1, v0, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    iget-object v2, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    if-ne v1, v2, :cond_0

    .line 214
    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 332
    iget-boolean v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 336
    iput-boolean v1, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z

    .line 337
    iput-boolean v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mDiscardLogs:Z

    .line 338
    iget v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mCurrentState:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mCurrentState:I

    .line 339
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/ingestion/Ingestion;

    .line 340
    invoke-interface {v1}, Lcom/microsoft/appcenter/ingestion/Ingestion;->reopen()V

    goto :goto_0

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mGroupStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;

    .line 343
    invoke-virtual {p0, v1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->checkPendingLogs(Lcom/microsoft/appcenter/channel/DefaultChannel$GroupState;)V

    goto :goto_1

    .line 346
    :cond_2
    iput-boolean v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z

    .line 347
    new-instance v0, Lcom/microsoft/appcenter/CancellationException;

    invoke-direct {v0}, Lcom/microsoft/appcenter/CancellationException;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/microsoft/appcenter/channel/DefaultChannel;->suspend(ZLjava/lang/Exception;)V

    .line 351
    :cond_3
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/channel/Channel$Listener;

    .line 352
    invoke-interface {v1, p1}, Lcom/microsoft/appcenter/channel/Channel$Listener;->onGloballyEnabled(Z)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public setLogUrl(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logUrl"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mIngestion:Lcom/microsoft/appcenter/ingestion/Ingestion;

    invoke-interface {v0, p1}, Lcom/microsoft/appcenter/ingestion/Ingestion;->setLogUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxStorageSize(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxStorageSizeInBytes"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mPersistence:Lcom/microsoft/appcenter/persistence/Persistence;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/appcenter/persistence/Persistence;->setMaxStorageSize(J)Z

    move-result p1

    return p1
.end method

.method public shutdown()V
    .locals 2

    const/4 v0, 0x0

    .line 809
    iput-boolean v0, p0, Lcom/microsoft/appcenter/channel/DefaultChannel;->mEnabled:Z

    .line 810
    new-instance v1, Lcom/microsoft/appcenter/CancellationException;

    invoke-direct {v1}, Lcom/microsoft/appcenter/CancellationException;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/microsoft/appcenter/channel/DefaultChannel;->suspend(ZLjava/lang/Exception;)V

    return-void
.end method
