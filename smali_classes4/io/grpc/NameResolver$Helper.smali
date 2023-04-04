.class public abstract Lio/grpc/NameResolver$Helper;
.super Ljava/lang/Object;
.source "NameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/NameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Helper"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDefaultPort()I
.end method

.method public abstract getProxyDetector()Lio/grpc/ProxyDetector;
.end method

.method public abstract getSynchronizationContext()Lio/grpc/SynchronizationContext;
.end method

.method public abstract parseServiceConfig(Ljava/util/Map;)Lio/grpc/NameResolver$ConfigOrError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/NameResolver$ConfigOrError;"
        }
    .end annotation
.end method
