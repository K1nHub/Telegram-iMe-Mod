.class public final Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;",
        "Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4304
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->access$6700()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/IoTeX$1;)V
    .locals 0

    .line 4297
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearName()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;
    .locals 1

    .line 4341
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4342
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->access$6900(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-object p0
.end method

.method public clearOperatorAddress()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;
    .locals 1

    .line 4390
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4391
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->access$7200(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-object p0
.end method

.method public clearRewardAddress()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;
    .locals 1

    .line 4439
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4440
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->access$7500(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 4314
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4323
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOperatorAddress()Ljava/lang/String;
    .locals 1

    .line 4363
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->getOperatorAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4372
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->getOperatorAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRewardAddress()Ljava/lang/String;
    .locals 1

    .line 4412
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->getRewardAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRewardAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4421
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->getRewardAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4332
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4333
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->access$6800(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4352
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4353
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->access$7000(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOperatorAddress(Ljava/lang/String;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4381
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4382
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->access$7100(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOperatorAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4401
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4402
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->access$7300(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRewardAddress(Ljava/lang/String;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4430
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4431
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->access$7400(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRewardAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4450
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4451
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->access$7600(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
