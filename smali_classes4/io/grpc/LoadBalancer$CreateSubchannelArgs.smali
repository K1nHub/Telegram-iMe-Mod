.class public final Lio/grpc/LoadBalancer$CreateSubchannelArgs;
.super Ljava/lang/Object;
.source "LoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/LoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateSubchannelArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;
    }
.end annotation


# instance fields
.field private final addrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final attrs:Lio/grpc/Attributes;

.field private final customOptions:[[Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/util/List;Lio/grpc/Attributes;[[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;",
            "Lio/grpc/Attributes;",
            "[[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "addresses are not set"

    .line 706
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->addrs:Ljava/util/List;

    const-string p1, "attrs"

    .line 707
    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/Attributes;

    iput-object p1, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->attrs:Lio/grpc/Attributes;

    const-string p1, "customOptions"

    .line 708
    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/Object;

    iput-object p1, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->customOptions:[[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lio/grpc/Attributes;[[Ljava/lang/Object;Lio/grpc/LoadBalancer$1;)V
    .locals 0

    .line 699
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/LoadBalancer$CreateSubchannelArgs;-><init>(Ljava/util/List;Lio/grpc/Attributes;[[Ljava/lang/Object;)V

    return-void
.end method

.method public static newBuilder()Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;
    .locals 1

    .line 752
    new-instance v0, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    invoke-direct {v0}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation

    .line 715
    iget-object v0, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->addrs:Ljava/util/List;

    return-object v0
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 722
    iget-object v0, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->attrs:Lio/grpc/Attributes;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 757
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->addrs:Ljava/util/List;

    const-string v2, "addrs"

    .line 758
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->attrs:Lio/grpc/Attributes;

    const-string v2, "attrs"

    .line 759
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->customOptions:[[Ljava/lang/Object;

    .line 760
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "customOptions"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 761
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
