.class public final Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$Staking$RestakeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$Staking$Restake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/IoTeX$Staking$Restake;",
        "Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$Staking$RestakeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2711
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->access$3900()Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/IoTeX$1;)V
    .locals 0

    .line 2704
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAutoStake()Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;
    .locals 1

    .line 2830
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2831
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->access$4500(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V

    return-object p0
.end method

.method public clearBucketIndex()Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;
    .locals 1

    .line 2750
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2751
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->access$4100(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V

    return-object p0
.end method

.method public clearPayload()Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;
    .locals 1

    .line 2870
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2871
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->access$4700(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V

    return-object p0
.end method

.method public clearStakedDuration()Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;
    .locals 1

    .line 2790
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2791
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->access$4300(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V

    return-object p0
.end method

.method public getAutoStake()Z
    .locals 1

    .line 2805
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->getAutoStake()Z

    move-result v0

    return v0
.end method

.method public getBucketIndex()J
    .locals 2

    .line 2725
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->getBucketIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2845
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStakedDuration()I
    .locals 1

    .line 2765
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->getStakedDuration()I

    move-result v0

    return v0
.end method

.method public setAutoStake(Z)Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2817
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2818
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->access$4400(Lwallet/core/jni/proto/IoTeX$Staking$Restake;Z)V

    return-object p0
.end method

.method public setBucketIndex(J)Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2737
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2738
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->access$4000(Lwallet/core/jni/proto/IoTeX$Staking$Restake;J)V

    return-object p0
.end method

.method public setPayload(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2857
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2858
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->access$4600(Lwallet/core/jni/proto/IoTeX$Staking$Restake;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setStakedDuration(I)Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2777
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2778
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->access$4200(Lwallet/core/jni/proto/IoTeX$Staking$Restake;I)V

    return-object p0
.end method
