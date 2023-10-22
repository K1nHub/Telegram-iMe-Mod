.class public final Lio/grpc/util/SecretRoundRobinLoadBalancerProvider$Provider;
.super Lio/grpc/LoadBalancerProvider;
.source "SecretRoundRobinLoadBalancerProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lio/grpc/LoadBalancerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getPolicyName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "round_robin"

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
