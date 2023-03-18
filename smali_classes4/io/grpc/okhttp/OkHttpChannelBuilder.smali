.class public Lio/grpc/okhttp/OkHttpChannelBuilder;
.super Lio/grpc/internal/AbstractManagedChannelImplBuilder;
.source "OkHttpChannelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;,
        Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/AbstractManagedChannelImplBuilder<",
        "Lio/grpc/okhttp/OkHttpChannelBuilder;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final AS_LARGE_AS_INFINITE:J

.field static final INTERNAL_DEFAULT_CONNECTION_SPEC:Lio/grpc/okhttp/internal/ConnectionSpec;

.field private static final SHARED_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/SharedResourceHolder$Resource<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

.field private flowControlWindow:I

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private keepAliveTimeNanos:J

.field private keepAliveTimeoutNanos:J

.field private keepAliveWithoutCalls:Z

.field private maxInboundMetadataSize:I

.field private negotiationType:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private socketFactory:Ljavax/net/SocketFactory;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private transportExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 75
    new-instance v0, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    sget-object v1, Lio/grpc/okhttp/internal/ConnectionSpec;->MODERN_TLS:Lio/grpc/okhttp/internal/ConnectionSpec;

    invoke-direct {v0, v1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;-><init>(Lio/grpc/okhttp/internal/ConnectionSpec;)V

    const/16 v1, 0x8

    new-array v1, v1, [Lio/grpc/okhttp/internal/CipherSuite;

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lio/grpc/okhttp/internal/CipherSuite;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lio/grpc/okhttp/internal/CipherSuite;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    const/4 v5, 0x3

    aput-object v2, v1, v5

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    const/4 v5, 0x4

    aput-object v2, v1, v5

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_DHE_DSS_WITH_AES_128_GCM_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    const/4 v5, 0x5

    aput-object v2, v1, v5

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_GCM_SHA384:Lio/grpc/okhttp/internal/CipherSuite;

    const/4 v5, 0x6

    aput-object v2, v1, v5

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_DHE_DSS_WITH_AES_256_GCM_SHA384:Lio/grpc/okhttp/internal/CipherSuite;

    const/4 v5, 0x7

    aput-object v2, v1, v5

    .line 77
    invoke-virtual {v0, v1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->cipherSuites([Lio/grpc/okhttp/internal/CipherSuite;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    new-array v1, v4, [Lio/grpc/okhttp/internal/TlsVersion;

    sget-object v2, Lio/grpc/okhttp/internal/TlsVersion;->TLS_1_2:Lio/grpc/okhttp/internal/TlsVersion;

    aput-object v2, v1, v3

    .line 87
    invoke-virtual {v0, v1}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->tlsVersions([Lio/grpc/okhttp/internal/TlsVersion;)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v4}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lio/grpc/okhttp/internal/ConnectionSpec$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lio/grpc/okhttp/internal/ConnectionSpec$Builder;->build()Lio/grpc/okhttp/internal/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->INTERNAL_DEFAULT_CONNECTION_SPEC:Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 91
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->AS_LARGE_AS_INFINITE:J

    .line 92
    new-instance v0, Lio/grpc/okhttp/OkHttpChannelBuilder$1;

    invoke-direct {v0}, Lio/grpc/okhttp/OkHttpChannelBuilder$1;-><init>()V

    sput-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->SHARED_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 143
    invoke-direct {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    sget-object p1, Lio/grpc/okhttp/OkHttpChannelBuilder;->INTERNAL_DEFAULT_CONNECTION_SPEC:Lio/grpc/okhttp/internal/ConnectionSpec;

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 125
    sget-object p1, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->TLS:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    const-wide v0, 0x7fffffffffffffffL

    .line 126
    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTimeNanos:J

    .line 127
    sget-wide v0, Lio/grpc/internal/GrpcUtil;->DEFAULT_KEEPALIVE_TIMEOUT_NANOS:J

    iput-wide v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTimeoutNanos:J

    const p1, 0xffff

    .line 128
    iput p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->flowControlWindow:I

    const p1, 0x7fffffff

    .line 130
    iput p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->maxInboundMetadataSize:I

    return-void
.end method

.method static synthetic access$100()Lio/grpc/internal/SharedResourceHolder$Resource;
    .locals 1

    .line 57
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->SHARED_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;

    return-object v0
.end method

.method public static forTarget(Ljava/lang/String;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 1

    .line 115
    new-instance v0, Lio/grpc/okhttp/OkHttpChannelBuilder;

    invoke-direct {v0, p0}, Lio/grpc/okhttp/OkHttpChannelBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected final buildTransportFactory()Lio/grpc/internal/ClientTransportFactory;
    .locals 22

    move-object/from16 v0, p0

    .line 369
    iget-wide v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTimeNanos:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 370
    :goto_0
    new-instance v1, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;

    move-object v2, v1

    iget-object v3, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->transportExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v5, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->socketFactory:Ljavax/net/SocketFactory;

    .line 374
    invoke-virtual/range {p0 .. p0}, Lio/grpc/okhttp/OkHttpChannelBuilder;->createSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    iget-object v7, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v8, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 377
    invoke-virtual/range {p0 .. p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxInboundMessageSize()I

    move-result v9

    iget-wide v11, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTimeNanos:J

    iget-wide v13, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTimeoutNanos:J

    iget v15, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->flowControlWindow:I

    move-object/from16 v21, v1

    iget-boolean v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveWithoutCalls:Z

    move/from16 v16, v1

    iget v1, v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->maxInboundMetadataSize:I

    move/from16 v17, v1

    iget-object v1, v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    move-object/from16 v18, v1

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v2 .. v20}, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lio/grpc/okhttp/internal/ConnectionSpec;IZJJIZILio/grpc/internal/TransportTracer$Factory;ZLio/grpc/okhttp/OkHttpChannelBuilder$1;)V

    return-object v21
.end method

.method createSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    .line 403
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder$2;->$SwitchMap$io$grpc$okhttp$OkHttpChannelBuilder$NegotiationType:[I

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 406
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    const-string v0, "Default"

    .line 407
    invoke-static {}, Lio/grpc/okhttp/internal/Platform;->get()Lio/grpc/okhttp/internal/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/okhttp/internal/Platform;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 410
    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 412
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "TLS Provider failure"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 417
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown negotiation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDefaultPort()I
    .locals 3

    .line 390
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder$2;->$SwitchMap$io$grpc$okhttp$OkHttpChannelBuilder$NegotiationType:[I

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1bb

    return v0

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const/16 v0, 0x50

    return v0
.end method

.method public bridge synthetic keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/okhttp/OkHttpChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "keepalive time must be positive"

    .line 210
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 211
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTimeNanos:J

    .line 212
    invoke-static {p1, p2}, Lio/grpc/internal/KeepAliveManager;->clampKeepAliveTimeInNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTimeNanos:J

    .line 213
    sget-wide v0, Lio/grpc/okhttp/OkHttpChannelBuilder;->AS_LARGE_AS_INFINITE:J

    cmp-long p3, p1, v0

    if-ltz p3, :cond_1

    const-wide p1, 0x7fffffffffffffffL

    .line 215
    iput-wide p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->keepAliveTimeNanos:J

    :cond_1
    return-object p0
.end method

.method public final scheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 1

    const-string v0, "scheduledExecutorService"

    .line 342
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public final sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 0

    .line 259
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 260
    sget-object p1, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->TLS:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    return-object p0
.end method

.method public final transportExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 0

    .line 160
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->transportExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public bridge synthetic usePlaintext()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpChannelBuilder;->usePlaintext()Lio/grpc/okhttp/OkHttpChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final usePlaintext()Lio/grpc/okhttp/OkHttpChannelBuilder;
    .locals 1

    .line 311
    sget-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->PLAINTEXT:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder;->negotiationType:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    return-object p0
.end method
