.class public final Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$Staking$ReclaimOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;",
        "Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$Staking$ReclaimOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1715
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->access$2400()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/IoTeX$1;)V
    .locals 0

    .line 1708
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBucketIndex()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;
    .locals 1

    .line 1754
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1755
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->access$2600(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-object p0
.end method

.method public clearPayload()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;
    .locals 1

    .line 1794
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1795
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->access$2800(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-object p0
.end method

.method public getBucketIndex()J
    .locals 2

    .line 1729
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->getBucketIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1769
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setBucketIndex(J)Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1741
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1742
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->access$2500(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;J)V

    return-object p0
.end method

.method public setPayload(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1781
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1782
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->access$2700(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
