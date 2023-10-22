.class public final Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/IoTeX$SigningInput;",
        "Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$SigningInputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8171
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$13500()Lwallet/core/jni/proto/IoTeX$SigningInput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/IoTeX$1;)V
    .locals 0

    .line 8164
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAction()Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1

    .line 8181
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8182
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$13600(Lwallet/core/jni/proto/IoTeX$SigningInput;)V

    return-object p0
.end method

.method public clearCall()Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1

    .line 8507
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8508
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$15300(Lwallet/core/jni/proto/IoTeX$SigningInput;)V

    return-object p0
.end method

.method public clearCandidateRegister()Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1

    .line 8915
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8916
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$17700(Lwallet/core/jni/proto/IoTeX$SigningInput;)V

    return-object p0
.end method

.method public clearCandidateUpdate()Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1

    .line 8963
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8964
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$18000(Lwallet/core/jni/proto/IoTeX$SigningInput;)V

    return-object p0
.end method

.method public clearGasLimit()Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1

    .line 8302
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8303
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$14200(Lwallet/core/jni/proto/IoTeX$SigningInput;)V

    return-object p0
.end method

.method public clearGasPrice()Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1

    .line 8356
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8357
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$14400(Lwallet/core/jni/proto/IoTeX$SigningInput;)V

    return-object p0
.end method

.method public clearNonce()Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1

    .line 8262
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8263
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$14000(Lwallet/core/jni/proto/IoTeX$SigningInput;)V

    return-object p0
.end method

.method public clearPrivateKey()Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1

    .line 8411
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8412
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$14700(Lwallet/core/jni/proto/IoTeX$SigningInput;)V

    return-object p0
.end method

.method public clearStakeAddDeposit()Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1

    .line 8723
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8724
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$16500(Lwallet/core/jni/proto/IoTeX$SigningInput;)V

    return-object p0
.end method

.method public clearStakeChangeCandidate()Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1

    .line 8819
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8820
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$17100(Lwallet/core/jni/proto/IoTeX$SigningInput;)V

    return-object p0
.end method

.method public clearStakeCreate()Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1

    .line 8579
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8580
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$15600(Lwallet/core/jni/proto/IoTeX$SigningInput;)V

    return-object p0
.end method

.method public clearStakeRestake()Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1

    .line 8771
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8772
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$16800(Lwallet/core/jni/proto/IoTeX$SigningInput;)V

    return-object p0
.end method

.method public clearStakeTransferOwnership()Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1

    .line 8867
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8868
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$17400(Lwallet/core/jni/proto/IoTeX$SigningInput;)V

    return-object p0
.end method

.method public clearStakeUnstake()Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1

    .line 8627
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8628
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$15900(Lwallet/core/jni/proto/IoTeX$SigningInput;)V

    return-object p0
.end method

.method public clearStakeWithdraw()Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1

    .line 8675
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8676
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$16200(Lwallet/core/jni/proto/IoTeX$SigningInput;)V

    return-object p0
.end method

.method public clearTransfer()Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1

    .line 8459
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8460
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$15000(Lwallet/core/jni/proto/IoTeX$SigningInput;)V

    return-object p0
.end method

.method public clearVersion()Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1

    .line 8222
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8223
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$13800(Lwallet/core/jni/proto/IoTeX$SigningInput;)V

    return-object p0
.end method

.method public getActionCase()Lwallet/core/jni/proto/IoTeX$SigningInput$ActionCase;
    .locals 1

    .line 8177
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->getActionCase()Lwallet/core/jni/proto/IoTeX$SigningInput$ActionCase;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lwallet/core/jni/proto/IoTeX$ContractCall;
    .locals 1

    .line 8476
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->getCall()Lwallet/core/jni/proto/IoTeX$ContractCall;

    move-result-object v0

    return-object v0
.end method

.method public getCandidateRegister()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
    .locals 1

    .line 8884
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->getCandidateRegister()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    move-result-object v0

    return-object v0
.end method

.method public getCandidateUpdate()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;
    .locals 1

    .line 8932
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->getCandidateUpdate()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    move-result-object v0

    return-object v0
.end method

.method public getGasLimit()J
    .locals 2

    .line 8277
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->getGasLimit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGasPrice()Ljava/lang/String;
    .locals 1

    .line 8317
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->getGasPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGasPriceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8330
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->getGasPriceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()J
    .locals 2

    .line 8237
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->getNonce()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8386
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStakeAddDeposit()Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;
    .locals 1

    .line 8692
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->getStakeAddDeposit()Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    move-result-object v0

    return-object v0
.end method

.method public getStakeChangeCandidate()Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;
    .locals 1

    .line 8788
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->getStakeChangeCandidate()Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    move-result-object v0

    return-object v0
.end method

.method public getStakeCreate()Lwallet/core/jni/proto/IoTeX$Staking$Create;
    .locals 1

    .line 8532
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->getStakeCreate()Lwallet/core/jni/proto/IoTeX$Staking$Create;

    move-result-object v0

    return-object v0
.end method

.method public getStakeRestake()Lwallet/core/jni/proto/IoTeX$Staking$Restake;
    .locals 1

    .line 8740
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->getStakeRestake()Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    move-result-object v0

    return-object v0
.end method

.method public getStakeTransferOwnership()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
    .locals 1

    .line 8836
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->getStakeTransferOwnership()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    move-result-object v0

    return-object v0
.end method

.method public getStakeUnstake()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
    .locals 1

    .line 8596
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->getStakeUnstake()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    move-result-object v0

    return-object v0
.end method

.method public getStakeWithdraw()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
    .locals 1

    .line 8644
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->getStakeWithdraw()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    move-result-object v0

    return-object v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/IoTeX$Transfer;
    .locals 1

    .line 8428
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->getTransfer()Lwallet/core/jni/proto/IoTeX$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 8197
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasCall()Z
    .locals 1

    .line 8469
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->hasCall()Z

    move-result v0

    return v0
.end method

.method public hasCandidateRegister()Z
    .locals 1

    .line 8877
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->hasCandidateRegister()Z

    move-result v0

    return v0
.end method

.method public hasCandidateUpdate()Z
    .locals 1

    .line 8925
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->hasCandidateUpdate()Z

    move-result v0

    return v0
.end method

.method public hasStakeAddDeposit()Z
    .locals 1

    .line 8685
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->hasStakeAddDeposit()Z

    move-result v0

    return v0
.end method

.method public hasStakeChangeCandidate()Z
    .locals 1

    .line 8781
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->hasStakeChangeCandidate()Z

    move-result v0

    return v0
.end method

.method public hasStakeCreate()Z
    .locals 1

    .line 8521
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->hasStakeCreate()Z

    move-result v0

    return v0
.end method

.method public hasStakeRestake()Z
    .locals 1

    .line 8733
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->hasStakeRestake()Z

    move-result v0

    return v0
.end method

.method public hasStakeTransferOwnership()Z
    .locals 1

    .line 8829
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->hasStakeTransferOwnership()Z

    move-result v0

    return v0
.end method

.method public hasStakeUnstake()Z
    .locals 1

    .line 8589
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->hasStakeUnstake()Z

    move-result v0

    return v0
.end method

.method public hasStakeWithdraw()Z
    .locals 1

    .line 8637
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->hasStakeWithdraw()Z

    move-result v0

    return v0
.end method

.method public hasTransfer()Z
    .locals 1

    .line 8421
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->hasTransfer()Z

    move-result v0

    return v0
.end method

.method public mergeCall(Lwallet/core/jni/proto/IoTeX$ContractCall;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8499
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8500
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$15200(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$ContractCall;)V

    return-object p0
.end method

.method public mergeCandidateRegister(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8907
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8908
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$17600(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V

    return-object p0
.end method

.method public mergeCandidateUpdate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8955
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8956
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$17900(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-object p0
.end method

.method public mergeStakeAddDeposit(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8715
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8716
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$16400(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V

    return-object p0
.end method

.method public mergeStakeChangeCandidate(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8811
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8812
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$17000(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V

    return-object p0
.end method

.method public mergeStakeCreate(Lwallet/core/jni/proto/IoTeX$Staking$Create;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8567
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8568
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$15500(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$Create;)V

    return-object p0
.end method

.method public mergeStakeRestake(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8763
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8764
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$16700(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V

    return-object p0
.end method

.method public mergeStakeTransferOwnership(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8859
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8860
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$17300(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V

    return-object p0
.end method

.method public mergeStakeUnstake(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8619
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8620
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$15800(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-object p0
.end method

.method public mergeStakeWithdraw(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8667
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8668
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$16100(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-object p0
.end method

.method public mergeTransfer(Lwallet/core/jni/proto/IoTeX$Transfer;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8451
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8452
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$14900(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Transfer;)V

    return-object p0
.end method

.method public setCall(Lwallet/core/jni/proto/IoTeX$ContractCall$Builder;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8491
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8492
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$ContractCall;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$15100(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$ContractCall;)V

    return-object p0
.end method

.method public setCall(Lwallet/core/jni/proto/IoTeX$ContractCall;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8482
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8483
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$15100(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$ContractCall;)V

    return-object p0
.end method

.method public setCandidateRegister(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8899
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8900
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$17500(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V

    return-object p0
.end method

.method public setCandidateRegister(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8890
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8891
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$17500(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V

    return-object p0
.end method

.method public setCandidateUpdate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8947
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8948
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$17800(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-object p0
.end method

.method public setCandidateUpdate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8938
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8939
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$17800(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-object p0
.end method

.method public setGasLimit(J)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8289
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8290
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$14100(Lwallet/core/jni/proto/IoTeX$SigningInput;J)V

    return-object p0
.end method

.method public setGasPrice(Ljava/lang/String;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8343
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8344
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$14300(Lwallet/core/jni/proto/IoTeX$SigningInput;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGasPriceBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8371
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8372
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$14500(Lwallet/core/jni/proto/IoTeX$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNonce(J)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8249
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8250
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$13900(Lwallet/core/jni/proto/IoTeX$SigningInput;J)V

    return-object p0
.end method

.method public setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8398
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8399
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$14600(Lwallet/core/jni/proto/IoTeX$SigningInput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setStakeAddDeposit(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit$Builder;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8707
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8708
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$16300(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V

    return-object p0
.end method

.method public setStakeAddDeposit(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8698
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8699
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$16300(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V

    return-object p0
.end method

.method public setStakeChangeCandidate(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate$Builder;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8803
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8804
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$16900(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V

    return-object p0
.end method

.method public setStakeChangeCandidate(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8794
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8795
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$16900(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V

    return-object p0
.end method

.method public setStakeCreate(Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8555
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8556
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$15400(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$Create;)V

    return-object p0
.end method

.method public setStakeCreate(Lwallet/core/jni/proto/IoTeX$Staking$Create;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8542
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8543
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$15400(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$Create;)V

    return-object p0
.end method

.method public setStakeRestake(Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8755
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8756
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$16600(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V

    return-object p0
.end method

.method public setStakeRestake(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8746
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8747
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$16600(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V

    return-object p0
.end method

.method public setStakeTransferOwnership(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8851
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8852
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$17200(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V

    return-object p0
.end method

.method public setStakeTransferOwnership(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8842
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8843
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$17200(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V

    return-object p0
.end method

.method public setStakeUnstake(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8611
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8612
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$15700(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-object p0
.end method

.method public setStakeUnstake(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8602
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8603
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$15700(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-object p0
.end method

.method public setStakeWithdraw(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8659
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8660
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$16000(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-object p0
.end method

.method public setStakeWithdraw(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8650
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8651
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$16000(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/IoTeX$Transfer$Builder;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8443
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8444
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$14800(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Transfer;)V

    return-object p0
.end method

.method public setTransfer(Lwallet/core/jni/proto/IoTeX$Transfer;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8434
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8435
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$14800(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Transfer;)V

    return-object p0
.end method

.method public setVersion(I)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8209
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8210
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->access$13700(Lwallet/core/jni/proto/IoTeX$SigningInput;I)V

    return-object p0
.end method
