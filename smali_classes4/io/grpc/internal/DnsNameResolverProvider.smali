.class public final Lio/grpc/internal/DnsNameResolverProvider;
.super Lio/grpc/internal/BaseDnsNameResolverProvider;
.source "DnsNameResolverProvider.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "io.grpc.internal.DnsNameResolverProvider.enable_grpclb"

    const-string v1, "false"

    .line 37
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lio/grpc/internal/BaseDnsNameResolverProvider;-><init>()V

    return-void
.end method
