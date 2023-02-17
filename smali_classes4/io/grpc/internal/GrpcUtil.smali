.class public final Lio/grpc/internal/GrpcUtil;
.super Ljava/lang/Object;
.source "GrpcUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/GrpcUtil$TimeoutMarshaller;,
        Lio/grpc/internal/GrpcUtil$Http2Error;,
        Lio/grpc/internal/GrpcUtil$AcceptEncodingMarshaller;
    }
.end annotation


# static fields
.field public static final CALL_OPTIONS_RPC_OWNED_BY_BALANCER:Lio/grpc/CallOptions$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/CallOptions$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTENT_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final CONTENT_ENCODING_KEY:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTENT_TYPE_KEY:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_KEEPALIVE_TIMEOUT_NANOS:J

.field public static final DEFAULT_PROXY_DETECTOR:Lio/grpc/ProxyDetector;

.field public static final MESSAGE_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final MESSAGE_ENCODING_KEY:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHARED_CHANNEL_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/SharedResourceHolder$Resource<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public static final STOPWATCH_SUPPLIER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/base/Stopwatch;",
            ">;"
        }
    .end annotation
.end field

.field public static final TE_HEADER:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMEOUT_KEY:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/SharedResourceHolder$Resource<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field public static final USER_AGENT_KEY:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 72
    const-class v0, Lio/grpc/internal/GrpcUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil;->log:Ljava/util/logging/Logger;

    const-string v0, "US-ASCII"

    .line 74
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 79
    new-instance v0, Lio/grpc/internal/GrpcUtil$TimeoutMarshaller;

    invoke-direct {v0}, Lio/grpc/internal/GrpcUtil$TimeoutMarshaller;-><init>()V

    const-string v1, "grpc-timeout"

    .line 80
    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil;->TIMEOUT_KEY:Lio/grpc/Metadata$Key;

    .line 85
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    const-string v1, "grpc-encoding"

    .line 86
    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v1

    sput-object v1, Lio/grpc/internal/GrpcUtil;->MESSAGE_ENCODING_KEY:Lio/grpc/Metadata$Key;

    .line 91
    new-instance v1, Lio/grpc/internal/GrpcUtil$AcceptEncodingMarshaller;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/grpc/internal/GrpcUtil$AcceptEncodingMarshaller;-><init>(Lio/grpc/internal/GrpcUtil$1;)V

    const-string v3, "grpc-accept-encoding"

    .line 92
    invoke-static {v3, v1}, Lio/grpc/InternalMetadata;->keyOf(Ljava/lang/String;Lio/grpc/InternalMetadata$TrustedAsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v1

    sput-object v1, Lio/grpc/internal/GrpcUtil;->MESSAGE_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    const-string v1, "content-encoding"

    .line 98
    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v1

    sput-object v1, Lio/grpc/internal/GrpcUtil;->CONTENT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    .line 103
    new-instance v1, Lio/grpc/internal/GrpcUtil$AcceptEncodingMarshaller;

    invoke-direct {v1, v2}, Lio/grpc/internal/GrpcUtil$AcceptEncodingMarshaller;-><init>(Lio/grpc/internal/GrpcUtil$1;)V

    const-string v2, "accept-encoding"

    .line 104
    invoke-static {v2, v1}, Lio/grpc/InternalMetadata;->keyOf(Ljava/lang/String;Lio/grpc/InternalMetadata$TrustedAsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v1

    sput-object v1, Lio/grpc/internal/GrpcUtil;->CONTENT_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    const-string v1, "content-type"

    .line 122
    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v1

    sput-object v1, Lio/grpc/internal/GrpcUtil;->CONTENT_TYPE_KEY:Lio/grpc/Metadata$Key;

    const-string v1, "te"

    .line 128
    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v1

    sput-object v1, Lio/grpc/internal/GrpcUtil;->TE_HEADER:Lio/grpc/Metadata$Key;

    const-string v1, "user-agent"

    .line 134
    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil;->USER_AGENT_KEY:Lio/grpc/Metadata$Key;

    const/16 v0, 0x2c

    .line 197
    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->trimResults()Lcom/google/common/base/Splitter;

    .line 204
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sput-wide v3, Lio/grpc/internal/GrpcUtil;->DEFAULT_KEEPALIVE_TIMEOUT_NANOS:J

    .line 214
    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 219
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 229
    new-instance v0, Lio/grpc/internal/ProxyDetectorImpl;

    invoke-direct {v0}, Lio/grpc/internal/ProxyDetectorImpl;-><init>()V

    sput-object v0, Lio/grpc/internal/GrpcUtil;->DEFAULT_PROXY_DETECTOR:Lio/grpc/ProxyDetector;

    .line 234
    new-instance v0, Lio/grpc/internal/GrpcUtil$1;

    invoke-direct {v0}, Lio/grpc/internal/GrpcUtil$1;-><init>()V

    const-string v0, "io.grpc.internal.CALL_OPTIONS_RPC_OWNED_BY_BALANCER"

    .line 253
    invoke-static {v0}, Lio/grpc/CallOptions$Key;->create(Ljava/lang/String;)Lio/grpc/CallOptions$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil;->CALL_OPTIONS_RPC_OWNED_BY_BALANCER:Lio/grpc/CallOptions$Key;

    .line 521
    new-instance v0, Lio/grpc/internal/GrpcUtil$2;

    invoke-direct {v0}, Lio/grpc/internal/GrpcUtil$2;-><init>()V

    sput-object v0, Lio/grpc/internal/GrpcUtil;->SHARED_CHANNEL_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 543
    new-instance v0, Lio/grpc/internal/GrpcUtil$3;

    invoke-direct {v0}, Lio/grpc/internal/GrpcUtil$3;-><init>()V

    sput-object v0, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 596
    new-instance v0, Lio/grpc/internal/GrpcUtil$4;

    invoke-direct {v0}, Lio/grpc/internal/GrpcUtil$4;-><init>()V

    sput-object v0, Lio/grpc/internal/GrpcUtil;->STOPWATCH_SUPPLIER:Lcom/google/common/base/Supplier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authorityToUri(Ljava/lang/String;)Ljava/net/URI;
    .locals 7

    const-string v0, "authority"

    .line 483
    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 488
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid authority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static closeQuietly(Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 1

    .line 743
    :goto_0
    invoke-interface {p0}, Lio/grpc/internal/StreamListener$MessageProducer;->next()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 744
    invoke-static {v0}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 757
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 760
    sget-object v0, Lio/grpc/internal/GrpcUtil;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "exception caught in closeQuietly"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static getGrpcUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 437
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    .line 438
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "grpc-java-"

    .line 440
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    .line 442
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "1.28.0"

    .line 443
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHost(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 4

    .line 610
    :try_start_0
    const-class v0, Ljava/net/InetSocketAddress;

    const-string v1, "getHostString"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 611
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 619
    :catch_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getThreadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 587
    new-instance v0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    .line 588
    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setDaemon(Z)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object p1

    .line 589
    invoke-virtual {p1, p0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object p0

    .line 590
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object p0

    return-object p0
.end method

.method static getTransportFromPickResult(Lio/grpc/LoadBalancer$PickResult;Z)Lio/grpc/internal/ClientTransport;
    .locals 2

    .line 694
    invoke-virtual {p0}, Lio/grpc/LoadBalancer$PickResult;->getSubchannel()Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Subchannel;->getInternalSubchannel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/TransportProvider;

    invoke-interface {v0}, Lio/grpc/internal/TransportProvider;->obtainActiveTransport()Lio/grpc/internal/ClientTransport;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 701
    invoke-virtual {p0}, Lio/grpc/LoadBalancer$PickResult;->getStreamTracerFactory()Lio/grpc/ClientStreamTracer$Factory;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 705
    :cond_1
    new-instance p1, Lio/grpc/internal/GrpcUtil$5;

    invoke-direct {p1, v0, p0}, Lio/grpc/internal/GrpcUtil$5;-><init>(Lio/grpc/internal/ClientTransport;Lio/grpc/ClientStreamTracer$Factory;)V

    return-object p1

    .line 729
    :cond_2
    invoke-virtual {p0}, Lio/grpc/LoadBalancer$PickResult;->getStatus()Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-nez v0, :cond_4

    .line 730
    invoke-virtual {p0}, Lio/grpc/LoadBalancer$PickResult;->isDrop()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 731
    new-instance p1, Lio/grpc/internal/FailingClientTransport;

    invoke-virtual {p0}, Lio/grpc/LoadBalancer$PickResult;->getStatus()Lio/grpc/Status;

    move-result-object p0

    sget-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->DROPPED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-direct {p1, p0, v0}, Lio/grpc/internal/FailingClientTransport;-><init>(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;)V

    return-object p1

    :cond_3
    if-nez p1, :cond_4

    .line 734
    new-instance p1, Lio/grpc/internal/FailingClientTransport;

    invoke-virtual {p0}, Lio/grpc/LoadBalancer$PickResult;->getStatus()Lio/grpc/Status;

    move-result-object p0

    sget-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-direct {p1, p0, v0}, Lio/grpc/internal/FailingClientTransport;-><init>(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;)V

    return-object p1

    :cond_4
    return-object v1
.end method

.method private static httpStatusToGrpcCode(I)Lio/grpc/Status$Code;
    .locals 1

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    .line 277
    sget-object p0, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    return-object p0

    :cond_0
    const/16 v0, 0x190

    if-eq p0, v0, :cond_5

    const/16 v0, 0x191

    if-eq p0, v0, :cond_4

    const/16 v0, 0x193

    if-eq p0, v0, :cond_3

    const/16 v0, 0x194

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1ad

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1af

    if-eq p0, v0, :cond_5

    packed-switch p0, :pswitch_data_0

    .line 296
    sget-object p0, Lio/grpc/Status$Code;->UNKNOWN:Lio/grpc/Status$Code;

    return-object p0

    .line 294
    :cond_1
    :pswitch_0
    sget-object p0, Lio/grpc/Status$Code;->UNAVAILABLE:Lio/grpc/Status$Code;

    return-object p0

    .line 289
    :cond_2
    sget-object p0, Lio/grpc/Status$Code;->UNIMPLEMENTED:Lio/grpc/Status$Code;

    return-object p0

    .line 287
    :cond_3
    sget-object p0, Lio/grpc/Status$Code;->PERMISSION_DENIED:Lio/grpc/Status$Code;

    return-object p0

    .line 285
    :cond_4
    sget-object p0, Lio/grpc/Status$Code;->UNAUTHENTICATED:Lio/grpc/Status$Code;

    return-object p0

    .line 283
    :cond_5
    sget-object p0, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static httpStatusToGrpcStatus(I)Lio/grpc/Status;
    .locals 3

    .line 270
    invoke-static {p0}, Lio/grpc/internal/GrpcUtil;->httpStatusToGrpcCode(I)Lio/grpc/Status$Code;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 271
    invoke-virtual {v0, p0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p0

    return-object p0
.end method

.method public static isGrpcContentType(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 408
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-le v2, v1, :cond_1

    return v0

    .line 412
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "application/grpc"

    .line 413
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 418
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    return v3

    .line 426
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x2b

    if-eq p0, v1, :cond_4

    const/16 v1, 0x3b

    if-ne p0, v1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public static shouldBeCountedForInUse(Lio/grpc/CallOptions;)Z
    .locals 2

    .line 260
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lio/grpc/internal/GrpcUtil;->CALL_OPTIONS_RPC_OWNED_BY_BALANCER:Lio/grpc/CallOptions$Key;

    invoke-virtual {p0, v1}, Lio/grpc/CallOptions;->getOption(Lio/grpc/CallOptions$Key;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
