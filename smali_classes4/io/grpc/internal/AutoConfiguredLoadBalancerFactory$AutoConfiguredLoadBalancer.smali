.class public final Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;
.super Ljava/lang/Object;
.source "AutoConfiguredLoadBalancerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AutoConfiguredLoadBalancer"
.end annotation


# instance fields
.field private delegate:Lio/grpc/LoadBalancer;

.field private delegateProvider:Lio/grpc/LoadBalancerProvider;

.field private final helper:Lio/grpc/LoadBalancer$Helper;

.field final synthetic this$0:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;


# direct methods
.method constructor <init>(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;Lio/grpc/LoadBalancer$Helper;)V
    .locals 2

    .line 91
    iput-object p1, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->this$0:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p2, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    .line 93
    invoke-static {p1}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->access$100(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;)Lio/grpc/LoadBalancerRegistry;

    move-result-object v0

    invoke-static {p1}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->access$000(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/LoadBalancerRegistry;->getProvider(Ljava/lang/String;)Lio/grpc/LoadBalancerProvider;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegateProvider:Lio/grpc/LoadBalancerProvider;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p2}, Lio/grpc/LoadBalancer$Factory;->newLoadBalancer(Lio/grpc/LoadBalancer$Helper;)Lio/grpc/LoadBalancer;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegate:Lio/grpc/LoadBalancer;

    return-void

    .line 95
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find policy \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->access$000(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. Make sure its implementation is either registered to LoadBalancerRegistry or included in META-INF/services/io.grpc.LoadBalancerProvider from your jar files."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public getDelegate()Lio/grpc/LoadBalancer;
    .locals 1

    .line 196
    iget-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegate:Lio/grpc/LoadBalancer;

    return-object v0
.end method

.method handleNameResolutionError(Lio/grpc/Status;)V
    .locals 1

    .line 177
    invoke-virtual {p0}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->getDelegate()Lio/grpc/LoadBalancer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancer;->handleNameResolutionError(Lio/grpc/Status;)V

    return-void
.end method

.method requestConnection()V
    .locals 1

    .line 186
    invoke-virtual {p0}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->getDelegate()Lio/grpc/LoadBalancer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer;->requestConnection()V

    return-void
.end method

.method shutdown()V
    .locals 1

    .line 190
    iget-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegate:Lio/grpc/LoadBalancer;

    invoke-virtual {v0}, Lio/grpc/LoadBalancer;->shutdown()V

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegate:Lio/grpc/LoadBalancer;

    return-void
.end method

.method tryHandleResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)Lio/grpc/Status;
    .locals 10

    .line 113
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAttributes()Lio/grpc/Attributes;

    move-result-object v1

    .line 115
    sget-object v2, Lio/grpc/LoadBalancer;->ATTR_LOAD_BALANCING_CONFIG:Lio/grpc/Attributes$Key;

    invoke-virtual {v1, v2}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    .line 121
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getLoadBalancingPolicyConfig()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 126
    :try_start_0
    iget-object v3, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->this$0:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    invoke-static {v3}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->access$000(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "using default policy"

    invoke-static {v3, v5, v6}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;->access$200(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;Ljava/lang/String;Ljava/lang/String;)Lio/grpc/LoadBalancerProvider;

    move-result-object v3
    :try_end_0
    .catch Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    new-instance v5, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;

    invoke-direct {v5, v3, v4, v4}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;-><init>(Lio/grpc/LoadBalancerProvider;Ljava/util/Map;Ljava/lang/Object;)V

    move-object v3, v5

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v2, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$FailingPicker;

    invoke-direct {v2, p1}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$FailingPicker;-><init>(Lio/grpc/Status;)V

    invoke-virtual {v0, v1, v2}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 130
    iget-object p1, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegate:Lio/grpc/LoadBalancer;

    invoke-virtual {p1}, Lio/grpc/LoadBalancer;->shutdown()V

    .line 131
    iput-object v4, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegateProvider:Lio/grpc/LoadBalancerProvider;

    .line 132
    new-instance p1, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$NoopLoadBalancer;

    invoke-direct {p1, v4}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$NoopLoadBalancer;-><init>(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$1;)V

    iput-object p1, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegate:Lio/grpc/LoadBalancer;

    .line 133
    sget-object p1, Lio/grpc/Status;->OK:Lio/grpc/Status;

    return-object p1

    .line 139
    :cond_0
    :goto_0
    iget-object v5, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegateProvider:Lio/grpc/LoadBalancerProvider;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    iget-object v5, v3, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;->provider:Lio/grpc/LoadBalancerProvider;

    .line 140
    invoke-virtual {v5}, Lio/grpc/LoadBalancerProvider;->getPolicyName()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegateProvider:Lio/grpc/LoadBalancerProvider;

    invoke-virtual {v8}, Lio/grpc/LoadBalancerProvider;->getPolicyName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 141
    :cond_1
    iget-object v5, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    sget-object v8, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    new-instance v9, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$EmptyPicker;

    invoke-direct {v9, v4}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$EmptyPicker;-><init>(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$1;)V

    invoke-virtual {v5, v8, v9}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 142
    iget-object v4, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegate:Lio/grpc/LoadBalancer;

    invoke-virtual {v4}, Lio/grpc/LoadBalancer;->shutdown()V

    .line 143
    iget-object v4, v3, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;->provider:Lio/grpc/LoadBalancerProvider;

    iput-object v4, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegateProvider:Lio/grpc/LoadBalancerProvider;

    .line 144
    iget-object v5, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegate:Lio/grpc/LoadBalancer;

    .line 145
    iget-object v8, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {v4, v8}, Lio/grpc/LoadBalancer$Factory;->newLoadBalancer(Lio/grpc/LoadBalancer$Helper;)Lio/grpc/LoadBalancer;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegate:Lio/grpc/LoadBalancer;

    .line 146
    iget-object v4, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {v4}, Lio/grpc/LoadBalancer$Helper;->getChannelLogger()Lio/grpc/ChannelLogger;

    move-result-object v4

    sget-object v8, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 148
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v7

    iget-object v5, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->delegate:Lio/grpc/LoadBalancer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v6

    const-string v5, "Load balancer changed from {0} to {1}"

    .line 146
    invoke-virtual {v4, v8, v5, v9}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :cond_2
    iget-object v4, v3, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;->config:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 152
    iget-object v5, p0, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {v5}, Lio/grpc/LoadBalancer$Helper;->getChannelLogger()Lio/grpc/ChannelLogger;

    move-result-object v5

    sget-object v8, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v9, v3, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;->config:Ljava/lang/Object;

    aput-object v9, v6, v7

    const-string v7, "Load-balancing config: {0}"

    invoke-virtual {v5, v8, v7, v6}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    invoke-virtual {v1}, Lio/grpc/Attributes;->toBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v1

    iget-object v3, v3, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$PolicySelection;->rawConfig:Ljava/util/Map;

    .line 156
    invoke-virtual {v1, v2, v3}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v1

    .line 160
    :cond_3
    invoke-virtual {p0}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->getDelegate()Lio/grpc/LoadBalancer;

    move-result-object v2

    .line 161
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 162
    invoke-virtual {v2}, Lio/grpc/LoadBalancer;->canHandleEmptyAddressListFromNameResolution()Z

    move-result v3

    if-nez v3, :cond_4

    .line 163
    sget-object p1, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NameResolver returned no usable address. addrs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", attrs="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    return-object p1

    .line 167
    :cond_4
    invoke-static {}, Lio/grpc/LoadBalancer$ResolvedAddresses;->newBuilder()Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object p1

    .line 169
    invoke-virtual {p1, v1}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setAttributes(Lio/grpc/Attributes;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object p1

    .line 170
    invoke-virtual {p1, v4}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setLoadBalancingPolicyConfig(Ljava/lang/Object;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->build()Lio/grpc/LoadBalancer$ResolvedAddresses;

    move-result-object p1

    .line 166
    invoke-virtual {v2, p1}, Lio/grpc/LoadBalancer;->handleResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)V

    .line 172
    sget-object p1, Lio/grpc/Status;->OK:Lio/grpc/Status;

    return-object p1

    .line 116
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ATTR_LOAD_BALANCING_CONFIG from upstream: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1, v2}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
