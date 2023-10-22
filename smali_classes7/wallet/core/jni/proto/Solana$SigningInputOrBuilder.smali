.class public interface abstract Lwallet/core/jni/proto/Solana$SigningInputOrBuilder;
.super Ljava/lang/Object;
.source "Solana.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SigningInputOrBuilder"
.end annotation


# virtual methods
.method public abstract getCreateAndTransferTokenTransaction()Lwallet/core/jni/proto/Solana$CreateAndTransferToken;
.end method

.method public abstract getCreateTokenAccountTransaction()Lwallet/core/jni/proto/Solana$CreateTokenAccount;
.end method

.method public abstract getDeactivateAllStakeTransaction()Lwallet/core/jni/proto/Solana$DeactivateAllStake;
.end method

.method public abstract getDeactivateStakeTransaction()Lwallet/core/jni/proto/Solana$DeactivateStake;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getDelegateStakeTransaction()Lwallet/core/jni/proto/Solana$DelegateStake;
.end method

.method public abstract getPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRecentBlockhash()Ljava/lang/String;
.end method

.method public abstract getRecentBlockhashBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTokenTransferTransaction()Lwallet/core/jni/proto/Solana$TokenTransfer;
.end method

.method public abstract getTransactionTypeCase()Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;
.end method

.method public abstract getTransferTransaction()Lwallet/core/jni/proto/Solana$Transfer;
.end method

.method public abstract getV0Msg()Z
.end method

.method public abstract getWithdrawAllTransaction()Lwallet/core/jni/proto/Solana$WithdrawAllStake;
.end method

.method public abstract getWithdrawTransaction()Lwallet/core/jni/proto/Solana$WithdrawStake;
.end method

.method public abstract hasCreateAndTransferTokenTransaction()Z
.end method

.method public abstract hasCreateTokenAccountTransaction()Z
.end method

.method public abstract hasDeactivateAllStakeTransaction()Z
.end method

.method public abstract hasDeactivateStakeTransaction()Z
.end method

.method public abstract hasDelegateStakeTransaction()Z
.end method

.method public abstract hasTokenTransferTransaction()Z
.end method

.method public abstract hasTransferTransaction()Z
.end method

.method public abstract hasWithdrawAllTransaction()Z
.end method

.method public abstract hasWithdrawTransaction()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
