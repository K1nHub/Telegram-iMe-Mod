.class public final Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$DirectiveCollectRewardsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;",
        "Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$DirectiveCollectRewardsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8508
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->access$16800()Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Harmony$1;)V
    .locals 0

    .line 8501
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDelegatorAddress()Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards$Builder;
    .locals 1

    .line 8561
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8562
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->access$17000(Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;)V

    return-object p0
.end method

.method public getDelegatorAddress()Ljava/lang/String;
    .locals 1

    .line 8522
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->getDelegatorAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDelegatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8535
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->getDelegatorAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setDelegatorAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8548
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8549
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->access$16900(Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDelegatorAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8576
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8577
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->access$17100(Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
