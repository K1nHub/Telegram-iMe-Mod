.class public final Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$ActionCoreOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$ActionCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/IoTeX$ActionCore;",
        "Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$ActionCoreOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10542
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$18800()Lwallet/core/jni/proto/IoTeX$ActionCore;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/IoTeX$1;)V
    .locals 0

    .line 10535
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAction()Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1

    .line 10552
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10553
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$18900(Lwallet/core/jni/proto/IoTeX$ActionCore;)V

    return-object p0
.end method

.method public clearCandidateRegister()Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1

    .line 11246
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11247
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$22800(Lwallet/core/jni/proto/IoTeX$ActionCore;)V

    return-object p0
.end method

.method public clearCandidateUpdate()Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1

    .line 11294
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11295
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$23100(Lwallet/core/jni/proto/IoTeX$ActionCore;)V

    return-object p0
.end method

.method public clearExecution()Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1

    .line 10838
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10839
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$20400(Lwallet/core/jni/proto/IoTeX$ActionCore;)V

    return-object p0
.end method

.method public clearGasLimit()Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1

    .line 10673
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10674
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$19500(Lwallet/core/jni/proto/IoTeX$ActionCore;)V

    return-object p0
.end method

.method public clearGasPrice()Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1

    .line 10727
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10728
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$19700(Lwallet/core/jni/proto/IoTeX$ActionCore;)V

    return-object p0
.end method

.method public clearNonce()Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1

    .line 10633
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10634
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$19300(Lwallet/core/jni/proto/IoTeX$ActionCore;)V

    return-object p0
.end method

.method public clearStakeAddDeposit()Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1

    .line 11054
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11055
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$21600(Lwallet/core/jni/proto/IoTeX$ActionCore;)V

    return-object p0
.end method

.method public clearStakeChangeCandidate()Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1

    .line 11150
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11151
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$22200(Lwallet/core/jni/proto/IoTeX$ActionCore;)V

    return-object p0
.end method

.method public clearStakeCreate()Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1

    .line 10910
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10911
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$20700(Lwallet/core/jni/proto/IoTeX$ActionCore;)V

    return-object p0
.end method

.method public clearStakeRestake()Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1

    .line 11102
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11103
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$21900(Lwallet/core/jni/proto/IoTeX$ActionCore;)V

    return-object p0
.end method

.method public clearStakeTransferOwnership()Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1

    .line 11198
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11199
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$22500(Lwallet/core/jni/proto/IoTeX$ActionCore;)V

    return-object p0
.end method

.method public clearStakeUnstake()Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1

    .line 10958
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10959
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$21000(Lwallet/core/jni/proto/IoTeX$ActionCore;)V

    return-object p0
.end method

.method public clearStakeWithdraw()Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1

    .line 11006
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11007
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$21300(Lwallet/core/jni/proto/IoTeX$ActionCore;)V

    return-object p0
.end method

.method public clearTransfer()Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1

    .line 10790
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10791
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$20100(Lwallet/core/jni/proto/IoTeX$ActionCore;)V

    return-object p0
.end method

.method public clearVersion()Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1

    .line 10593
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10594
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$19100(Lwallet/core/jni/proto/IoTeX$ActionCore;)V

    return-object p0
.end method

.method public getActionCase()Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;
    .locals 1

    .line 10548
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->getActionCase()Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    move-result-object v0

    return-object v0
.end method

.method public getCandidateRegister()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
    .locals 1

    .line 11215
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->getCandidateRegister()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    move-result-object v0

    return-object v0
.end method

.method public getCandidateUpdate()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;
    .locals 1

    .line 11263
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->getCandidateUpdate()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    move-result-object v0

    return-object v0
.end method

.method public getExecution()Lwallet/core/jni/proto/IoTeX$ContractCall;
    .locals 1

    .line 10807
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->getExecution()Lwallet/core/jni/proto/IoTeX$ContractCall;

    move-result-object v0

    return-object v0
.end method

.method public getGasLimit()J
    .locals 2

    .line 10648
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->getGasLimit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGasPrice()Ljava/lang/String;
    .locals 1

    .line 10688
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->getGasPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGasPriceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10701
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->getGasPriceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()J
    .locals 2

    .line 10608
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->getNonce()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStakeAddDeposit()Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;
    .locals 1

    .line 11023
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->getStakeAddDeposit()Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    move-result-object v0

    return-object v0
.end method

.method public getStakeChangeCandidate()Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;
    .locals 1

    .line 11119
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->getStakeChangeCandidate()Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    move-result-object v0

    return-object v0
.end method

.method public getStakeCreate()Lwallet/core/jni/proto/IoTeX$Staking$Create;
    .locals 1

    .line 10863
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->getStakeCreate()Lwallet/core/jni/proto/IoTeX$Staking$Create;

    move-result-object v0

    return-object v0
.end method

.method public getStakeRestake()Lwallet/core/jni/proto/IoTeX$Staking$Restake;
    .locals 1

    .line 11071
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->getStakeRestake()Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    move-result-object v0

    return-object v0
.end method

.method public getStakeTransferOwnership()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
    .locals 1

    .line 11167
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->getStakeTransferOwnership()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    move-result-object v0

    return-object v0
.end method

.method public getStakeUnstake()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
    .locals 1

    .line 10927
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->getStakeUnstake()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    move-result-object v0

    return-object v0
.end method

.method public getStakeWithdraw()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
    .locals 1

    .line 10975
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->getStakeWithdraw()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    move-result-object v0

    return-object v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/IoTeX$Transfer;
    .locals 1

    .line 10759
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->getTransfer()Lwallet/core/jni/proto/IoTeX$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 10568
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasCandidateRegister()Z
    .locals 1

    .line 11208
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->hasCandidateRegister()Z

    move-result v0

    return v0
.end method

.method public hasCandidateUpdate()Z
    .locals 1

    .line 11256
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->hasCandidateUpdate()Z

    move-result v0

    return v0
.end method

.method public hasExecution()Z
    .locals 1

    .line 10800
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->hasExecution()Z

    move-result v0

    return v0
.end method

.method public hasStakeAddDeposit()Z
    .locals 1

    .line 11016
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->hasStakeAddDeposit()Z

    move-result v0

    return v0
.end method

.method public hasStakeChangeCandidate()Z
    .locals 1

    .line 11112
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->hasStakeChangeCandidate()Z

    move-result v0

    return v0
.end method

.method public hasStakeCreate()Z
    .locals 1

    .line 10852
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->hasStakeCreate()Z

    move-result v0

    return v0
.end method

.method public hasStakeRestake()Z
    .locals 1

    .line 11064
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->hasStakeRestake()Z

    move-result v0

    return v0
.end method

.method public hasStakeTransferOwnership()Z
    .locals 1

    .line 11160
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->hasStakeTransferOwnership()Z

    move-result v0

    return v0
.end method

.method public hasStakeUnstake()Z
    .locals 1

    .line 10920
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->hasStakeUnstake()Z

    move-result v0

    return v0
.end method

.method public hasStakeWithdraw()Z
    .locals 1

    .line 10968
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->hasStakeWithdraw()Z

    move-result v0

    return v0
.end method

.method public hasTransfer()Z
    .locals 1

    .line 10752
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->hasTransfer()Z

    move-result v0

    return v0
.end method

.method public mergeCandidateRegister(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11238
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11239
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$22700(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V

    return-object p0
.end method

.method public mergeCandidateUpdate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11286
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11287
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$23000(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-object p0
.end method

.method public mergeExecution(Lwallet/core/jni/proto/IoTeX$ContractCall;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10830
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10831
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$20300(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$ContractCall;)V

    return-object p0
.end method

.method public mergeStakeAddDeposit(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11046
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11047
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$21500(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V

    return-object p0
.end method

.method public mergeStakeChangeCandidate(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11142
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11143
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$22100(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V

    return-object p0
.end method

.method public mergeStakeCreate(Lwallet/core/jni/proto/IoTeX$Staking$Create;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10898
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10899
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$20600(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$Create;)V

    return-object p0
.end method

.method public mergeStakeRestake(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11094
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11095
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$21800(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V

    return-object p0
.end method

.method public mergeStakeTransferOwnership(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11190
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11191
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$22400(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V

    return-object p0
.end method

.method public mergeStakeUnstake(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10950
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10951
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$20900(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-object p0
.end method

.method public mergeStakeWithdraw(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10998
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10999
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$21200(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-object p0
.end method

.method public mergeTransfer(Lwallet/core/jni/proto/IoTeX$Transfer;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10782
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10783
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$20000(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Transfer;)V

    return-object p0
.end method

.method public setCandidateRegister(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 11230
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11231
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$22600(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V

    return-object p0
.end method

.method public setCandidateRegister(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11221
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11222
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$22600(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V

    return-object p0
.end method

.method public setCandidateUpdate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 11278
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11279
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$22900(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-object p0
.end method

.method public setCandidateUpdate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11269
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11270
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$22900(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-object p0
.end method

.method public setExecution(Lwallet/core/jni/proto/IoTeX$ContractCall$Builder;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 10822
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10823
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$ContractCall;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$20200(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$ContractCall;)V

    return-object p0
.end method

.method public setExecution(Lwallet/core/jni/proto/IoTeX$ContractCall;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10813
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10814
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$20200(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$ContractCall;)V

    return-object p0
.end method

.method public setGasLimit(J)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10660
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10661
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$19400(Lwallet/core/jni/proto/IoTeX$ActionCore;J)V

    return-object p0
.end method

.method public setGasPrice(Ljava/lang/String;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10714
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10715
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$19600(Lwallet/core/jni/proto/IoTeX$ActionCore;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGasPriceBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10742
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10743
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$19800(Lwallet/core/jni/proto/IoTeX$ActionCore;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNonce(J)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10620
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10621
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$19200(Lwallet/core/jni/proto/IoTeX$ActionCore;J)V

    return-object p0
.end method

.method public setStakeAddDeposit(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit$Builder;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 11038
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11039
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$21400(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V

    return-object p0
.end method

.method public setStakeAddDeposit(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11029
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11030
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$21400(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V

    return-object p0
.end method

.method public setStakeChangeCandidate(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate$Builder;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 11134
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11135
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$22000(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V

    return-object p0
.end method

.method public setStakeChangeCandidate(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11125
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11126
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$22000(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V

    return-object p0
.end method

.method public setStakeCreate(Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 10886
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10887
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$20500(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$Create;)V

    return-object p0
.end method

.method public setStakeCreate(Lwallet/core/jni/proto/IoTeX$Staking$Create;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10873
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10874
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$20500(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$Create;)V

    return-object p0
.end method

.method public setStakeRestake(Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 11086
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11087
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$21700(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V

    return-object p0
.end method

.method public setStakeRestake(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11077
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11078
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$21700(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V

    return-object p0
.end method

.method public setStakeTransferOwnership(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 11182
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11183
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$22300(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V

    return-object p0
.end method

.method public setStakeTransferOwnership(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11173
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11174
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$22300(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V

    return-object p0
.end method

.method public setStakeUnstake(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 10942
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10943
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$20800(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-object p0
.end method

.method public setStakeUnstake(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10933
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10934
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$20800(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-object p0
.end method

.method public setStakeWithdraw(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 10990
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10991
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$21100(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-object p0
.end method

.method public setStakeWithdraw(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10981
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10982
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$21100(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/IoTeX$Transfer$Builder;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 10774
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10775
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$19900(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Transfer;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/IoTeX$Transfer;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10765
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10766
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$19900(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Transfer;)V

    return-object p0
.end method

.method public setVersion(I)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10580
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10581
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->access$19000(Lwallet/core/jni/proto/IoTeX$ActionCore;I)V

    return-object p0
.end method
