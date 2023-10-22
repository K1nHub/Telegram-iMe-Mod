.class public final Lwallet/core/jni/proto/IoTeX$Staking$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$StakingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$Staking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/IoTeX$Staking;",
        "Lwallet/core/jni/proto/IoTeX$Staking$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$StakingOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5883
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking;->access$9500()Lwallet/core/jni/proto/IoTeX$Staking;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/IoTeX$1;)V
    .locals 0

    .line 5876
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCandidateRegister()Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1

    .line 6278
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6279
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->access$12000(Lwallet/core/jni/proto/IoTeX$Staking;)V

    return-object p0
.end method

.method public clearCandidateUpdate()Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1

    .line 6326
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6327
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->access$12300(Lwallet/core/jni/proto/IoTeX$Staking;)V

    return-object p0
.end method

.method public clearMessage()Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1

    .line 5893
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5894
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->access$9600(Lwallet/core/jni/proto/IoTeX$Staking;)V

    return-object p0
.end method

.method public clearStakeAddDeposit()Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1

    .line 6086
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6087
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->access$10800(Lwallet/core/jni/proto/IoTeX$Staking;)V

    return-object p0
.end method

.method public clearStakeChangeCandidate()Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1

    .line 6182
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6183
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->access$11400(Lwallet/core/jni/proto/IoTeX$Staking;)V

    return-object p0
.end method

.method public clearStakeCreate()Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1

    .line 5942
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5943
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->access$9900(Lwallet/core/jni/proto/IoTeX$Staking;)V

    return-object p0
.end method

.method public clearStakeRestake()Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1

    .line 6134
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6135
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->access$11100(Lwallet/core/jni/proto/IoTeX$Staking;)V

    return-object p0
.end method

.method public clearStakeTransferOwnership()Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1

    .line 6230
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6231
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->access$11700(Lwallet/core/jni/proto/IoTeX$Staking;)V

    return-object p0
.end method

.method public clearStakeUnstake()Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1

    .line 5990
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5991
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->access$10200(Lwallet/core/jni/proto/IoTeX$Staking;)V

    return-object p0
.end method

.method public clearStakeWithdraw()Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1

    .line 6038
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6039
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->access$10500(Lwallet/core/jni/proto/IoTeX$Staking;)V

    return-object p0
.end method

.method public getCandidateRegister()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
    .locals 1

    .line 6247
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->getCandidateRegister()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    move-result-object v0

    return-object v0
.end method

.method public getCandidateUpdate()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;
    .locals 1

    .line 6295
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->getCandidateUpdate()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMessageCase()Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;
    .locals 1

    .line 5889
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->getMessageCase()Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    move-result-object v0

    return-object v0
.end method

.method public getStakeAddDeposit()Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;
    .locals 1

    .line 6055
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->getStakeAddDeposit()Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    move-result-object v0

    return-object v0
.end method

.method public getStakeChangeCandidate()Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;
    .locals 1

    .line 6151
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->getStakeChangeCandidate()Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    move-result-object v0

    return-object v0
.end method

.method public getStakeCreate()Lwallet/core/jni/proto/IoTeX$Staking$Create;
    .locals 1

    .line 5911
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->getStakeCreate()Lwallet/core/jni/proto/IoTeX$Staking$Create;

    move-result-object v0

    return-object v0
.end method

.method public getStakeRestake()Lwallet/core/jni/proto/IoTeX$Staking$Restake;
    .locals 1

    .line 6103
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->getStakeRestake()Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    move-result-object v0

    return-object v0
.end method

.method public getStakeTransferOwnership()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
    .locals 1

    .line 6199
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->getStakeTransferOwnership()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    move-result-object v0

    return-object v0
.end method

.method public getStakeUnstake()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
    .locals 1

    .line 5959
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->getStakeUnstake()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    move-result-object v0

    return-object v0
.end method

.method public getStakeWithdraw()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
    .locals 1

    .line 6007
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->getStakeWithdraw()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    move-result-object v0

    return-object v0
.end method

.method public hasCandidateRegister()Z
    .locals 1

    .line 6240
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->hasCandidateRegister()Z

    move-result v0

    return v0
.end method

.method public hasCandidateUpdate()Z
    .locals 1

    .line 6288
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->hasCandidateUpdate()Z

    move-result v0

    return v0
.end method

.method public hasStakeAddDeposit()Z
    .locals 1

    .line 6048
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->hasStakeAddDeposit()Z

    move-result v0

    return v0
.end method

.method public hasStakeChangeCandidate()Z
    .locals 1

    .line 6144
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->hasStakeChangeCandidate()Z

    move-result v0

    return v0
.end method

.method public hasStakeCreate()Z
    .locals 1

    .line 5904
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->hasStakeCreate()Z

    move-result v0

    return v0
.end method

.method public hasStakeRestake()Z
    .locals 1

    .line 6096
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->hasStakeRestake()Z

    move-result v0

    return v0
.end method

.method public hasStakeTransferOwnership()Z
    .locals 1

    .line 6192
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->hasStakeTransferOwnership()Z

    move-result v0

    return v0
.end method

.method public hasStakeUnstake()Z
    .locals 1

    .line 5952
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->hasStakeUnstake()Z

    move-result v0

    return v0
.end method

.method public hasStakeWithdraw()Z
    .locals 1

    .line 6000
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking;->hasStakeWithdraw()Z

    move-result v0

    return v0
.end method

.method public mergeCandidateRegister(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6270
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6271
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$11900(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V

    return-object p0
.end method

.method public mergeCandidateUpdate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6318
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6319
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$12200(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-object p0
.end method

.method public mergeStakeAddDeposit(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6078
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6079
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$10700(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V

    return-object p0
.end method

.method public mergeStakeChangeCandidate(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6174
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6175
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$11300(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V

    return-object p0
.end method

.method public mergeStakeCreate(Lwallet/core/jni/proto/IoTeX$Staking$Create;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5934
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5935
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$9800(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$Create;)V

    return-object p0
.end method

.method public mergeStakeRestake(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6126
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6127
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$11000(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V

    return-object p0
.end method

.method public mergeStakeTransferOwnership(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6222
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6223
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$11600(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V

    return-object p0
.end method

.method public mergeStakeUnstake(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5982
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5983
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$10100(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-object p0
.end method

.method public mergeStakeWithdraw(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6030
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6031
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$10400(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-object p0
.end method

.method public setCandidateRegister(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6262
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6263
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$11800(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V

    return-object p0
.end method

.method public setCandidateRegister(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6253
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6254
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$11800(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V

    return-object p0
.end method

.method public setCandidateUpdate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6310
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6311
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$12100(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-object p0
.end method

.method public setCandidateUpdate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6301
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6302
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$12100(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-object p0
.end method

.method public setStakeAddDeposit(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit$Builder;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6070
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6071
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$10600(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V

    return-object p0
.end method

.method public setStakeAddDeposit(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6061
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6062
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$10600(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V

    return-object p0
.end method

.method public setStakeChangeCandidate(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate$Builder;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6166
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6167
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$11200(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V

    return-object p0
.end method

.method public setStakeChangeCandidate(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6157
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6158
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$11200(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V

    return-object p0
.end method

.method public setStakeCreate(Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5926
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5927
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$9700(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$Create;)V

    return-object p0
.end method

.method public setStakeCreate(Lwallet/core/jni/proto/IoTeX$Staking$Create;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5917
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5918
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$9700(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$Create;)V

    return-object p0
.end method

.method public setStakeRestake(Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6118
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6119
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$10900(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V

    return-object p0
.end method

.method public setStakeRestake(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6109
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6110
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$10900(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V

    return-object p0
.end method

.method public setStakeTransferOwnership(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6214
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6215
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$11500(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V

    return-object p0
.end method

.method public setStakeTransferOwnership(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6205
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6206
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$11500(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V

    return-object p0
.end method

.method public setStakeUnstake(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5974
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5975
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$10000(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-object p0
.end method

.method public setStakeUnstake(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5965
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5966
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$10000(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-object p0
.end method

.method public setStakeWithdraw(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6022
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6023
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$10300(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-object p0
.end method

.method public setStakeWithdraw(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6013
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6014
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->access$10300(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-object p0
.end method
