.class public abstract Lio/grpc/ManagedChannelProvider;
.super Ljava/lang/Object;
.source "ManagedChannelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/ManagedChannelProvider$HardcodedClasses;
    }
.end annotation


# static fields
.field static final HARDCODED_CLASSES:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    const-class v0, Lio/grpc/ManagedChannelProvider;

    new-instance v1, Lio/grpc/ManagedChannelProvider$HardcodedClasses;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/grpc/ManagedChannelProvider$HardcodedClasses;-><init>(Lio/grpc/ManagedChannelProvider$1;)V

    sput-object v1, Lio/grpc/ManagedChannelProvider;->HARDCODED_CLASSES:Ljava/lang/Iterable;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-instance v3, Lio/grpc/ManagedChannelProvider$1;

    invoke-direct {v3}, Lio/grpc/ManagedChannelProvider$1;-><init>()V

    .line 37
    invoke-static {v0, v1, v2, v3}, Lio/grpc/ServiceProviders;->load(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lio/grpc/ServiceProviders$PriorityAccessor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ManagedChannelProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract isAvailable()Z
.end method

.method protected abstract priority()I
.end method
