.class public abstract Lio/grpc/NameResolverProvider;
.super Lio/grpc/NameResolver$Factory;
.source "NameResolverProvider.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/grpc/NameResolver$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract isAvailable()Z
.end method

.method protected abstract priority()I
.end method
