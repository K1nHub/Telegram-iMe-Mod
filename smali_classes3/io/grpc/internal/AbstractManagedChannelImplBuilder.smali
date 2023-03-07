.class public abstract Lio/grpc/internal/AbstractManagedChannelImplBuilder;
.super Lio/grpc/ManagedChannelBuilder;
.source "AbstractManagedChannelImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/grpc/internal/AbstractManagedChannelImplBuilder<",
        "TT;>;>",
        "Lio/grpc/ManagedChannelBuilder<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

.field private static final DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

.field private static final DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field static final IDLE_MODE_DEFAULT_TIMEOUT_MILLIS:J

.field static final IDLE_MODE_MIN_TIMEOUT_MILLIS:J

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field authorityOverride:Ljava/lang/String;

.field channelz:Lio/grpc/InternalChannelz;

.field compressorRegistry:Lio/grpc/CompressorRegistry;

.field decompressorRegistry:Lio/grpc/DecompressorRegistry;

.field defaultLbPolicy:Ljava/lang/String;

.field defaultServiceConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field executorPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field fullStreamDecompression:Z

.field idleTimeoutMillis:J

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field lookUpServiceConfig:Z

.field maxHedgedAttempts:I

.field private maxInboundMessageSize:I

.field maxRetryAttempts:I

.field maxTraceEvents:I

.field private nameResolverFactory:Lio/grpc/NameResolver$Factory;

.field final nameResolverRegistry:Lio/grpc/NameResolverRegistry;

.field offloadExecutorPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field perRpcBufferLimit:J

.field proxyDetector:Lio/grpc/ProxyDetector;

.field private recordFinishedRpcs:Z

.field private recordRealTimeMetrics:Z

.field private recordStartedRpcs:Z

.field retryBufferSize:J

.field retryEnabled:Z

.field private statsEnabled:Z

.field final target:Ljava/lang/String;

.field temporarilyDisableRetry:Z

.field private tracingEnabled:Z

.field protected transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

.field userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    const-class v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    .line 83
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->IDLE_MODE_DEFAULT_TIMEOUT_MILLIS:J

    .line 88
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->IDLE_MODE_MIN_TIMEOUT_MILLIS:J

    .line 90
    sget-object v0, Lio/grpc/internal/GrpcUtil;->SHARED_CHANNEL_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 91
    invoke-static {v0}, Lio/grpc/internal/SharedResourcePool;->forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    .line 94
    invoke-static {}, Lio/grpc/DecompressorRegistry;->getDefaultInstance()Lio/grpc/DecompressorRegistry;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    .line 97
    invoke-static {}, Lio/grpc/CompressorRegistry;->getDefaultInstance()Lio/grpc/CompressorRegistry;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 184
    invoke-direct {p0}, Lio/grpc/ManagedChannelBuilder;-><init>()V

    .line 102
    sget-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    .line 104
    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->offloadExecutorPool:Lio/grpc/internal/ObjectPool;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->interceptors:Ljava/util/List;

    .line 107
    invoke-static {}, Lio/grpc/NameResolverRegistry;->getDefaultRegistry()Lio/grpc/NameResolverRegistry;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->nameResolverRegistry:Lio/grpc/NameResolverRegistry;

    .line 110
    invoke-virtual {v0}, Lio/grpc/NameResolverRegistry;->asFactory()Lio/grpc/NameResolver$Factory;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    const-string v0, "pick_first"

    .line 124
    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->defaultLbPolicy:Ljava/lang/String;

    .line 128
    sget-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 130
    sget-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 132
    sget-wide v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->IDLE_MODE_DEFAULT_TIMEOUT_MILLIS:J

    iput-wide v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->idleTimeoutMillis:J

    const/4 v0, 0x5

    .line 134
    iput v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxRetryAttempts:I

    .line 135
    iput v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxHedgedAttempts:I

    const-wide/32 v0, 0x1000000

    .line 136
    iput-wide v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->retryBufferSize:J

    const-wide/32 v0, 0x100000

    .line 137
    iput-wide v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->perRpcBufferLimit:J

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->retryEnabled:Z

    .line 144
    invoke-static {}, Lio/grpc/InternalChannelz;->instance()Lio/grpc/InternalChannelz;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->channelz:Lio/grpc/InternalChannelz;

    const/4 v1, 0x1

    .line 149
    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->lookUpServiceConfig:Z

    .line 151
    invoke-static {}, Lio/grpc/internal/TransportTracer;->getDefaultFactory()Lio/grpc/internal/TransportTracer$Factory;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    const/high16 v2, 0x400000

    .line 153
    iput v2, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxInboundMessageSize:I

    .line 178
    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->statsEnabled:Z

    .line 179
    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordStartedRpcs:Z

    .line 180
    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordFinishedRpcs:Z

    .line 181
    iput-boolean v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordRealTimeMetrics:Z

    .line 182
    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->tracingEnabled:Z

    const-string v0, "target"

    .line 185
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->target:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lio/grpc/ManagedChannel;
    .locals 10

    .line 511
    new-instance v0, Lio/grpc/internal/ManagedChannelOrphanWrapper;

    new-instance v9, Lio/grpc/internal/ManagedChannelImpl;

    .line 513
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->buildTransportFactory()Lio/grpc/internal/ClientTransportFactory;

    move-result-object v3

    new-instance v4, Lio/grpc/internal/ExponentialBackoffPolicy$Provider;

    invoke-direct {v4}, Lio/grpc/internal/ExponentialBackoffPolicy$Provider;-><init>()V

    sget-object v1, Lio/grpc/internal/GrpcUtil;->SHARED_CHANNEL_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 516
    invoke-static {v1}, Lio/grpc/internal/SharedResourcePool;->forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;

    move-result-object v5

    sget-object v6, Lio/grpc/internal/GrpcUtil;->STOPWATCH_SUPPLIER:Lcom/google/common/base/Supplier;

    .line 518
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->getEffectiveInterceptors()Ljava/util/List;

    move-result-object v7

    sget-object v8, Lio/grpc/internal/TimeProvider;->SYSTEM_TIME_PROVIDER:Lio/grpc/internal/TimeProvider;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lio/grpc/internal/ManagedChannelImpl;-><init>(Lio/grpc/internal/AbstractManagedChannelImplBuilder;Lio/grpc/internal/ClientTransportFactory;Lio/grpc/internal/BackoffPolicy$Provider;Lio/grpc/internal/ObjectPool;Lcom/google/common/base/Supplier;Ljava/util/List;Lio/grpc/internal/TimeProvider;)V

    invoke-direct {v0, v9}, Lio/grpc/internal/ManagedChannelOrphanWrapper;-><init>(Lio/grpc/ManagedChannel;)V

    return-object v0
.end method

.method protected abstract buildTransportFactory()Lio/grpc/internal/ClientTransportFactory;
.end method

.method protected getDefaultPort()I
    .locals 1

    const/16 v0, 0x1bb

    return v0
.end method

.method final getEffectiveInterceptors()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;"
        }
    .end annotation

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->interceptors:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 529
    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->temporarilyDisableRetry:Z

    .line 530
    iget-boolean v2, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->statsEnabled:Z

    const-string v3, "getClientInterceptor"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "Unable to apply census stats"

    if-eqz v2, :cond_0

    .line 531
    iput-boolean v5, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->temporarilyDisableRetry:Z

    :try_start_0
    const-string v2, "io.grpc.census.InternalCensusStatsAccessor"

    .line 535
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    .line 536
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v1

    aput-object v9, v8, v5

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 537
    invoke-virtual {v2, v3, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v7, v7, [Ljava/lang/Object;

    .line 542
    iget-boolean v8, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordStartedRpcs:Z

    .line 546
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v1

    iget-boolean v8, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordFinishedRpcs:Z

    .line 547
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v5

    iget-boolean v8, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordRealTimeMetrics:Z

    .line 548
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v10

    .line 544
    invoke-virtual {v2, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/ClientInterceptor;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 557
    sget-object v7, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 555
    sget-object v7, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v2

    .line 553
    sget-object v7, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v2

    .line 551
    sget-object v7, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_0

    .line 562
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 565
    :cond_0
    iget-boolean v2, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->tracingEnabled:Z

    if-eqz v2, :cond_1

    .line 566
    iput-boolean v5, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->temporarilyDisableRetry:Z

    :try_start_1
    const-string v2, "io.grpc.census.InternalCensusTracingAccessor"

    .line 570
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v5, v1, [Ljava/lang/Class;

    .line 572
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 573
    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/ClientInterceptor;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v4, v2

    goto :goto_2

    :catch_4
    move-exception v2

    .line 582
    sget-object v3, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_5
    move-exception v2

    .line 580
    sget-object v3, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_6
    move-exception v2

    .line 578
    sget-object v3, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_7
    move-exception v2

    .line 576
    sget-object v3, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-eqz v4, :cond_1

    .line 585
    invoke-interface {v0, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method getNameResolverFactory()Lio/grpc/NameResolver$Factory;
    .locals 3

    .line 611
    iget-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->authorityOverride:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 612
    iget-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    return-object v0

    .line 614
    :cond_0
    new-instance v0, Lio/grpc/internal/OverrideAuthorityNameResolverFactory;

    iget-object v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    iget-object v2, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->authorityOverride:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lio/grpc/internal/OverrideAuthorityNameResolverFactory;-><init>(Lio/grpc/NameResolver$Factory;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final maxInboundMessageSize()I
    .locals 1

    .line 175
    iget v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxInboundMessageSize:I

    return v0
.end method
