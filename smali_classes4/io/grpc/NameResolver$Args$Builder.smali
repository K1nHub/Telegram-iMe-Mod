.class public final Lio/grpc/NameResolver$Args$Builder;
.super Ljava/lang/Object;
.source "NameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/NameResolver$Args;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private channelLogger:Lio/grpc/ChannelLogger;

.field private defaultPort:Ljava/lang/Integer;

.field private executor:Ljava/util/concurrent/Executor;

.field private proxyDetector:Lio/grpc/ProxyDetector;

.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private serviceConfigParser:Lio/grpc/NameResolver$ServiceConfigParser;

.field private syncContext:Lio/grpc/SynchronizationContext;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/grpc/NameResolver$Args;
    .locals 10

    .line 655
    new-instance v9, Lio/grpc/NameResolver$Args;

    iget-object v1, p0, Lio/grpc/NameResolver$Args$Builder;->defaultPort:Ljava/lang/Integer;

    iget-object v2, p0, Lio/grpc/NameResolver$Args$Builder;->proxyDetector:Lio/grpc/ProxyDetector;

    iget-object v3, p0, Lio/grpc/NameResolver$Args$Builder;->syncContext:Lio/grpc/SynchronizationContext;

    iget-object v4, p0, Lio/grpc/NameResolver$Args$Builder;->serviceConfigParser:Lio/grpc/NameResolver$ServiceConfigParser;

    iget-object v5, p0, Lio/grpc/NameResolver$Args$Builder;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lio/grpc/NameResolver$Args$Builder;->channelLogger:Lio/grpc/ChannelLogger;

    iget-object v7, p0, Lio/grpc/NameResolver$Args$Builder;->executor:Ljava/util/concurrent/Executor;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/grpc/NameResolver$Args;-><init>(Ljava/lang/Integer;Lio/grpc/ProxyDetector;Lio/grpc/SynchronizationContext;Lio/grpc/NameResolver$ServiceConfigParser;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/ChannelLogger;Ljava/util/concurrent/Executor;Lio/grpc/NameResolver$1;)V

    return-object v9
.end method

.method public setChannelLogger(Lio/grpc/ChannelLogger;)Lio/grpc/NameResolver$Args$Builder;
    .locals 0

    .line 634
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/ChannelLogger;

    iput-object p1, p0, Lio/grpc/NameResolver$Args$Builder;->channelLogger:Lio/grpc/ChannelLogger;

    return-object p0
.end method

.method public setDefaultPort(I)Lio/grpc/NameResolver$Args$Builder;
    .locals 0

    .line 583
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/NameResolver$Args$Builder;->defaultPort:Ljava/lang/Integer;

    return-object p0
.end method

.method public setOffloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/NameResolver$Args$Builder;
    .locals 0

    .line 645
    iput-object p1, p0, Lio/grpc/NameResolver$Args$Builder;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public setProxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/NameResolver$Args$Builder;
    .locals 0

    .line 593
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/ProxyDetector;

    iput-object p1, p0, Lio/grpc/NameResolver$Args$Builder;->proxyDetector:Lio/grpc/ProxyDetector;

    return-object p0
.end method

.method public setScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/NameResolver$Args$Builder;
    .locals 0

    .line 613
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lio/grpc/NameResolver$Args$Builder;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public setServiceConfigParser(Lio/grpc/NameResolver$ServiceConfigParser;)Lio/grpc/NameResolver$Args$Builder;
    .locals 0

    .line 623
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/NameResolver$ServiceConfigParser;

    iput-object p1, p0, Lio/grpc/NameResolver$Args$Builder;->serviceConfigParser:Lio/grpc/NameResolver$ServiceConfigParser;

    return-object p0
.end method

.method public setSynchronizationContext(Lio/grpc/SynchronizationContext;)Lio/grpc/NameResolver$Args$Builder;
    .locals 0

    .line 603
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/SynchronizationContext;

    iput-object p1, p0, Lio/grpc/NameResolver$Args$Builder;->syncContext:Lio/grpc/SynchronizationContext;

    return-object p0
.end method
