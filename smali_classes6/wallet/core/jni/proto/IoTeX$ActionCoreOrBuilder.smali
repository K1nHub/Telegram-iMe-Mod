.class public interface abstract Lwallet/core/jni/proto/IoTeX$ActionCoreOrBuilder;
.super Ljava/lang/Object;
.source "IoTeX.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionCoreOrBuilder"
.end annotation


# virtual methods
.method public abstract getActionCase()Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;
.end method

.method public abstract getCandidateRegister()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
.end method

.method public abstract getCandidateUpdate()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getExecution()Lwallet/core/jni/proto/IoTeX$ContractCall;
.end method

.method public abstract getGasLimit()J
.end method

.method public abstract getGasPrice()Ljava/lang/String;
.end method

.method public abstract getGasPriceBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getNonce()J
.end method

.method public abstract getStakeAddDeposit()Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;
.end method

.method public abstract getStakeChangeCandidate()Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;
.end method

.method public abstract getStakeCreate()Lwallet/core/jni/proto/IoTeX$Staking$Create;
.end method

.method public abstract getStakeRestake()Lwallet/core/jni/proto/IoTeX$Staking$Restake;
.end method

.method public abstract getStakeTransferOwnership()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
.end method

.method public abstract getStakeUnstake()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
.end method

.method public abstract getStakeWithdraw()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
.end method

.method public abstract getTransfer()Lwallet/core/jni/proto/IoTeX$Transfer;
.end method

.method public abstract getVersion()I
.end method

.method public abstract hasCandidateRegister()Z
.end method

.method public abstract hasCandidateUpdate()Z
.end method

.method public abstract hasExecution()Z
.end method

.method public abstract hasStakeAddDeposit()Z
.end method

.method public abstract hasStakeChangeCandidate()Z
.end method

.method public abstract hasStakeCreate()Z
.end method

.method public abstract hasStakeRestake()Z
.end method

.method public abstract hasStakeTransferOwnership()Z
.end method

.method public abstract hasStakeUnstake()Z
.end method

.method public abstract hasStakeWithdraw()Z
.end method

.method public abstract hasTransfer()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
