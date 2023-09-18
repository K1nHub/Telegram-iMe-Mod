.class public final Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationRewardOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;",
        "Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationRewardOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6349
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->access$10800()Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 6342
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDelegatorAddress()Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;
    .locals 1

    .line 6386
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6387
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->access$11000(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;)V

    return-object p0
.end method

.method public clearTypePrefix()Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;
    .locals 1

    .line 6484
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6485
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->access$11600(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;)V

    return-object p0
.end method

.method public clearValidatorAddress()Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;
    .locals 1

    .line 6435
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6436
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->access$11300(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;)V

    return-object p0
.end method

.method public getDelegatorAddress()Ljava/lang/String;
    .locals 1

    .line 6359
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->getDelegatorAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDelegatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6368
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->getDelegatorAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTypePrefix()Ljava/lang/String;
    .locals 1

    .line 6457
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->getTypePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypePrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6466
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->getTypePrefixBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorAddress()Ljava/lang/String;
    .locals 1

    .line 6408
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->getValidatorAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6417
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->getValidatorAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setDelegatorAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6377
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6378
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->access$10900(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDelegatorAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6397
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6398
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->access$11100(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTypePrefix(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6475
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6476
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->access$11500(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTypePrefixBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6495
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6496
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->access$11700(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValidatorAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6426
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6427
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->access$11200(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;Ljava/lang/String;)V

    return-object p0
.end method

.method public setValidatorAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6446
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6447
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->access$11400(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
